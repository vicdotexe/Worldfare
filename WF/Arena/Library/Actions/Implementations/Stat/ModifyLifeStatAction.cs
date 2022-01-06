using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Card.MonsterCard;
using WF.Arena.Library.Card.MonsterCards;
using WF.Arena.Library.Event.Implementations.GameEvent;

namespace WF.Arena.Library.Actions.Implementations.Stat
{
    public class ModifyLifeStatAction : CardAction
    {
        public ILiving Living;

        public int Delta;

        public ModifyLifeStatAction(ILiving living, int delta, bool isAborted = false)
            : base(isAborted)
        {
            Living = living;
            Delta = delta;
        }

        public override void Execute(IGame game)
        {
            Living.LifeValue += Delta;
            if (Living.LifeValue <= 0)
            {
                if (Living is IMonsterCard monsterCard)
                {
                    game.Execute(new DieAction(monsterCard));
                }
                else if (Living is IPlayer)
                {
                    game.Execute(new EndOfGameEvent());
                }
            }

        }

        public override bool IsExecutable(IGameState gameState)
        {
            return !(Living is ICardComponent)
                   && Living.LifeValue > 0;
        }
    }
}
