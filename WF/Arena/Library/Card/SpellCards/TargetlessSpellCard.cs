using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Card.CardComponents.SpellCardComponents;

namespace WF.Arena.Library.Card.SpellCards
{
    public class TargetlessSpellCard : SpellCard, ITargetlessSpellCard
    {
        public TargetlessSpellCard()
            : this(new List<ITargetlessSpellCardComponent>())
        {
        }

        public TargetlessSpellCard(ITargetlessSpellCardComponent component)
            : this(new List<ITargetlessSpellCardComponent> { component })
        {
        }

        public TargetlessSpellCard(List<ITargetlessSpellCardComponent> components)
            : this(components.ConvertAll(c => (ICardComponent)c), new List<IReaction>())
        {
        }

        public TargetlessSpellCard(List<ICardComponent> components, List<IReaction> reactions)
            : base(components, reactions)
        {
        }

        public void Cast(IGame game)
        {
            foreach (ICardComponent component in CardComponents)
            {
                if (component is ITargetlessSpellCardComponent targetlessComponent)
                {
                    targetlessComponent.Cast(game);
                }
            }
        }
    }
}
