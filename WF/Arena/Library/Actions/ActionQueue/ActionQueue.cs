using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.ActionEvent;
using WF.Arena.Library.Event.Implementations.GameEvent;

namespace WF.Arena.Library.Actions.ActionQueue
{
    public class ActionQueue : IActionQueue
    {
        protected bool isGameOver = false;

        public bool ExecuteReactions { get; set; }

        public ActionQueue(bool executeReactions = true)
            : this(executeReactions, false)
        {
        }

        protected ActionQueue(bool executeReactions, bool isGameOver)
        {
            ExecuteReactions = executeReactions;
            this.isGameOver = isGameOver;
        }

        public void Execute(IGame game, ICardAction action)
        {
            if (!isGameOver && !action.IsAborted && action.IsExecutable(game))
            {
                ExecReactions(game, new BeforeCardActionEvent(action));
                if (!action.IsAborted)
                {
                    action.Execute(game);
                    ExecReactions(game, new AfterCardActionEvent(action));
                }
            }

            if (action is EndOfGameEvent)
            {
                isGameOver = true;
            }
        }

        private void ExecReactions(IGame game, ICardActionEvent actionEvent)
        {
            if (ExecuteReactions)
            {
                game.ReactTo(game, actionEvent);
            }
        }
    }
}
