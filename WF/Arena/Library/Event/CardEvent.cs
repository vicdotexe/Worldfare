using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Event
{
    public abstract class CardEvent : CardAction
    {
        public CardEvent()
        {
        }

        public override void Execute(IGame game)
        {
            // An event should not alter the game state.
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return true;
        }
    }
}
