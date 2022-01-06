using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Card.CardComponents.SpellCardComponents;

namespace WF.Arena.Library.Card.SpellCards
{
    public abstract class SpellCard : CardBase, ISpellCard
    {
        public SpellCard()
            : this(new List<ISpellCardComponent>())
        {
        }

        /// <summary>
        /// Represents a certain type of Card that has an
        /// immediate effect on the Game's state.
        /// </summary>
        /// <param name="components"></param>
        public SpellCard(List<ISpellCardComponent> components)
            : this(components.ConvertAll(c => (ICardComponent)c), new List<IReaction>())
        {
        }

        public SpellCard(List<ICardComponent> components, List<IReaction> reactions)
            : base(components, reactions)
        {
        }
    }
}
