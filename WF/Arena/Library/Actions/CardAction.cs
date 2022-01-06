using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public abstract class CardAction : ICardAction
    {
        public bool IsAborted { get; set; }

        public CardAction(bool isAborted = false)
        {
            IsAborted = isAborted;
        }

        public abstract void Execute(IGame game);
        public abstract bool IsExecutable(IGameState gameState);
    }
}
