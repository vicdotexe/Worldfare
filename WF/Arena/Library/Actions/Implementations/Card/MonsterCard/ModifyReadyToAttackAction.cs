using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Card.MonsterCards;

namespace WF.Arena.Library.Actions.Implementations.Card.MonsterCard
{
    public class ModifyReadyToAttackAction : CardAction
    {
        public IMonsterCard MonsterCard;

        public bool IsReadyToAttack;

        public ModifyReadyToAttackAction(
            IMonsterCard monsterCard,
            bool isReadyToAttack,
            bool isAborted = false
        ) : base(isAborted)
        {
            MonsterCard = monsterCard;
            IsReadyToAttack = isReadyToAttack;
        }

        public override void Execute(IGame game)
        {
            MonsterCard.IsReadyToAttack = IsReadyToAttack;
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return MonsterCard.IsReadyToAttack != IsReadyToAttack
                   && gameState.AllCardsOnTheBoard.Contains(MonsterCard);
        }
    }
}
