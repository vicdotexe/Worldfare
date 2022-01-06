using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WF.Arena.Library.Card
{
    public abstract class CardBase : ReactiveCardCompound, ICard
    {
        public CardBase() : this(new List<ICardComponent>(), new List<IReaction>())
        {
        }

        protected CardBase(List<ICardComponent> components, List<IReaction> reactions)
            : base(components, reactions)
        {
        }

        public int PowerValue
        {
            get => Math.Max(0, CardComponents.Sum(c => c.PowerValue));
            set
            {
                CardComponents.Add(new CardComponent(value - CardComponents.Sum(c => c.PowerValue), 0));
            }
        }

        public int PowerBaseValue
        {
            get => Math.Max(0, CardComponents.Sum(c => c.PowerBaseValue));
            set
            {
                CardComponents.Add(new CardComponent(0, value - CardComponents.Sum(c => c.PowerBaseValue)));
            }
        }

        public virtual bool IsCastable(IGameState gameState)
        {
            IPlayer owner = FindParentPlayer(gameState);
            return owner != null
                   && owner == gameState.ActivePlayer
                   && owner.Hand.Contains(this)
                   && PowerValue <= gameState.ActivePlayer.PowerValue;
        }

        public override ICard FindParentCard(IGameState gameState)
        {
            return this;
        }

        public override IPlayer FindParentPlayer(IGameState gameState)
        {
            foreach (IPlayer player in gameState.Players)
            {
                if (player.AllCards.Contains(this))
                {
                    return player;
                }
            }
            return null;
        }
    }
}
