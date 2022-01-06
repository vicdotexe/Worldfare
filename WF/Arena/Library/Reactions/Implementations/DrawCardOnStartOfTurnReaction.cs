using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Player;
using WF.Arena.Library.Event.Implementations.TurnEvent;

namespace WF.Arena.Library.Reactions.EventReactions
{
    public class DrawCardOnStartOfTurnEventReaction : Reaction
    {
        public override void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            if (actionEvent.IsAfter(typeof(StartOfTurnEvent)))
            {
                game.Execute(new DrawCardAction(game.ActivePlayer));
            }
        }
    }
}
