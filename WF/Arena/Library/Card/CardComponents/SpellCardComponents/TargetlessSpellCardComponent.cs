using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card.CardComponents.SpellCardComponents
{
    public abstract class TargetlessSpellCardComponent : CardComponent, ITargetlessSpellCardComponent
    {
        public TargetlessSpellCardComponent(int mana) : base(mana)
        {
        }

        protected TargetlessSpellCardComponent(PowerCostStat powerCostStat,
            List<IReaction> reactions)
            : base(powerCostStat, reactions)
        {
        }

        public abstract void Cast(IGame game);
    }
}
