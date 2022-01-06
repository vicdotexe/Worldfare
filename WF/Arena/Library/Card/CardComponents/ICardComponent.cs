using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library;

namespace WF.Arena
{
    public interface ICardComponent : IPowerful, IReactive
    {
        /// <summary>
        /// Find the ICard this ICardComponent is attached to.
        /// </summary>
        /// <param name="gameState"></param>
        /// <returns>The ICard this ICardComponent is attached to or null
        /// if it is not attached.</returns>
        ICard FindCard(IGameState gameState);
    }
}
