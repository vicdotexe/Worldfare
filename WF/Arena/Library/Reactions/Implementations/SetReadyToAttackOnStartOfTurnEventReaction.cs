using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Card.MonsterCard;
using WF.Arena.Library.Card.MonsterCards;
using WF.Arena.Library.Event.Implementations.TurnEvent;

namespace WF.Arena.Library.Reactions.EventReactions
{
    public class SetReadyToAttackOnStartOfTurnEventReaction : Reaction
    {
        public override void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            if (actionEvent.IsAfter(typeof(StartOfTurnEvent)))
            {
                IMonsterCard monsterCard = (IMonsterCard)FindParentCard(game);
                IPlayer owner = monsterCard.FindParentPlayer(game);
                bool isReadyToAttack = owner == game.ActivePlayer
                                       && game.ActivePlayer.Board.Contains(monsterCard);

                game.Execute(new ModifyReadyToAttackAction(monsterCard, isReadyToAttack));
            }
        }
    }
}
