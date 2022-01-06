using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.CardCollections;

namespace WF.Arena.Library.Actions.Implementations.Deck.Deck
{
    public class RemoveCardFromDeckAction : CardAction
    {
        public ICard Card;

        public readonly IDeck Deck;

        public RemoveCardFromDeckAction(IDeck deck, ICard card = null, bool isAborted = false)
            : base(isAborted)
        {
            Deck = deck;
            Card = card;
        }

        public override void Execute(IGame game)
        {
            Card = Deck.Pop();
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return !Deck.IsEmpty;
        }
    }
}
