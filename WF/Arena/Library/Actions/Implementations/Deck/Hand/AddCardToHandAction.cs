using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.CardCollections;

namespace WF.Arena.Library.Actions.Implementations.Deck.Hand
{
    public class AddCardToHandAction : CardAction
    {
        public readonly IHand Hand;

        public ICard Card;

        public AddCardToHandAction(IHand hand, ICard card, bool isAborted = false)
            : base(isAborted)
        {
            Hand = hand;
            Card = card;
        }

        public override void Execute(IGame game)
        {
            Hand.Add(Card);
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return Card != null && Hand.Size < Hand.MaxSize;
        }
    }
}
