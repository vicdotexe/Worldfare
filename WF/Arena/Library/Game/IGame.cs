using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library;

namespace WF.Arena
{
    public interface IGame : IGameState, IReactive
    {
        /// <summary>
        /// Start the game.
        /// </summary>
        void StartGame(int initialHandSize, int initialPlayerLife);

        /// <summary>
        /// Start the next turn.
        /// </summary>
        void NextTurn();

        /// <summary>
        /// Queue an Action for execution. Changes on the Game state should
        /// only be performed via Actions queued through this method!
        /// </summary>
        /// <param name="action"></param>
        void Execute(ICardAction action);
    }
}
