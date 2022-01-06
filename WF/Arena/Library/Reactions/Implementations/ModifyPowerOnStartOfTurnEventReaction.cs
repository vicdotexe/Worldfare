using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Stat;
using WF.Arena.Library.Event.Implementations.TurnEvent;

namespace WF.Arena.Library.Reactions.EventReactions
{
    public class ModifyManaOnStartOfTurnEventReaction : Reaction
    {
        public override void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            if (actionEvent.IsAfter(typeof(StartOfTurnEvent)))
            {
                int manaDelta = game.ActivePlayer.PowerBaseValue + 1 - game.ActivePlayer.PowerValue;
                game.Execute(new ModifyPowerStatAction(game.ActivePlayer, manaDelta, 1));
            }
        }
    }
}
