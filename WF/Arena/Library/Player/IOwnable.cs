using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Player
{
    public interface IOwnable
    {
        /// <summary>
        /// Find the owner of this IOwnable.
        /// </summary>
        /// <param name="gameState"></param>
        /// <returns>The player that owns this IOwnable or null if it
        /// is not owned by a player.</returns>
        IPlayer FindOwner(IGameState gameState);
    }
}
