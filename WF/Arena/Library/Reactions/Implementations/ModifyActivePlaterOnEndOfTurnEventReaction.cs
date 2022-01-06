using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Game;
using WF.Arena.Library.Event.Implementations.TurnEvent;

namespace WF.Arena.Library.Reactions.EventReactions
{
    public class ModifyActivePlayerOnEndOfTurnEventReaction : Reaction
    {
        public override void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            if (actionEvent.IsAfter(typeof(EndOfTurnEvent)))
            {
                int playerIndex = game.Players.ToList().IndexOf(game.ActivePlayer);
                playerIndex = (playerIndex + 1) % game.Players.Count;
                game.Execute(new ModifyActivePlayerAction(game.Players[playerIndex]));
            }
        }
    }
}
