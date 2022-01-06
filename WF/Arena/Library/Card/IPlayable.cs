using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card
{
    public interface IPlayable
    {
        /// <summary>
        /// Checks if this Card is playable.
        /// </summary>
        /// <returns>True if this Card can be played.</returns>
        bool IsPlayable(IGameState gameState);
    }
}
