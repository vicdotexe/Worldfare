using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.CardCollections
{
    public class Hand : CardCollection, IHand
    {
        /// <summary>
        /// Data container.
        /// </summary>
        protected List<ICard> cards;

        public Hand() : this(new List<ICard>())
        {
        }

        protected Hand(List<ICard> cards)
        {
            this.cards = cards;
        }

        public int MaxSize { get => 10; }

        public override List<ICard> AllCards => new List<ICard>(cards);

        public override bool IsEmpty
        {
            get => cards.Count == 0;
        }

        public override int Size => cards.Count;

        public override bool Contains(ICard card)
        {
            return cards.Contains(card);
        }

        public void Add(ICard card)
        {
            if (cards.Count < MaxSize)
            {
                cards.Add(card);
            }
        }

        public void Remove(ICard card)
        {
            cards.Remove(card);
        }

        public ICard this[int index]
        {
            get => cards[index];
        }
    }
}
