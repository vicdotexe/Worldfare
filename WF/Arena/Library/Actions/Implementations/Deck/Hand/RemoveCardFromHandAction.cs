using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.CardCollections;

namespace WF.Arena.Library.Actions.Implementations.Deck.Hand
{
    public class RemoveCardFromHandAction : CardAction
    {
        public readonly IHand Hand;

        public ICard Card;

        public RemoveCardFromHandAction(IHand hand, ICard card, bool isAborted = false)
            : base(isAborted)
        {
            Hand = hand;
            Card = card;
        }

        public override void Execute(IGame game)
        {
            Hand.Remove(Card);
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return Hand.Contains(Card);
        }
    }
}
