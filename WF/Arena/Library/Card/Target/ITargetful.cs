using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public interface ITargetful
    {
        /// <summary>
        /// Get a set of potential target Characters based on the current
        /// state of the Game.
        /// </summary>
        /// <param name="gameState"></param>
        /// <returns>All valid target Characters.</returns>
        HashSet<ICharacter> GetPotentialTargets(IGameState gameState);
    }
}
