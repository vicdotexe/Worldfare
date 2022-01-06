using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card.CardComponents.SpellCardComponents
{
    public abstract class TargetfulSpellCardComponent : CardComponent, ITargetfulSpellCardComponent
    {
        public TargetfulSpellCardComponent(int power) : base(power)
        {
        }

        protected TargetfulSpellCardComponent(PowerCostStat powerCostStat,
            List<IReaction> reactions)
            : base(powerCostStat, reactions)
        {
        }

        public abstract void Cast(IGame game, ICharacter target);

        public abstract HashSet<ICharacter> GetPotentialTargets(IGameState gameState);
    }
}
