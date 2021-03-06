using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.CardCollections;

namespace WF.Arena.Library.Actions.Implementations.Deck.Board
{
    public class AddCardToBoardAction : CardAction
    {
        public readonly IBoard Board;

        public ICard Card;

        public int BoardIndex;

        public AddCardToBoardAction(IBoard board, ICard card, int boardIndex, bool isAborted = false)
            : base(isAborted)
        {
            Board = board;
            Card = card;
            BoardIndex = boardIndex;
        }

        public override void Execute(IGame game)
        {
            Board.AddAt(BoardIndex, Card);
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return Card != null
                   && Board.IsFreeSlot(BoardIndex);
        }
    }
}
