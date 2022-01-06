using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.CardCollections
{
    public interface IDeck : ICardCollection
    {
        /// <summary>
        /// Remove and return the top Card from this Deck.
        /// </summary>
        /// <returns>The top Card from this Deck.</returns>
        ICard Pop();

        /// <summary>
        /// Push the given Card to this Deck.
        /// </summary>
        /// <param name="card"></param>
        void Push(ICard card);

        /// <summary>
        /// Shuffle this Deck.
        /// </summary>
        void Shuffle();
    }
}
