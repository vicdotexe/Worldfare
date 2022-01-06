using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Actions.Implementations.Game
{
    public class ModifyActivePlayerAction : CardAction
    {
        public IPlayer NewActivePlayer;

        public ModifyActivePlayerAction(IPlayer newActivePlayer, bool isAborted = false)
            : base(isAborted)
        {
            NewActivePlayer = newActivePlayer;
        }

        public override void Execute(IGame game)
        {
            game.ActivePlayer = NewActivePlayer;
        }

        public override bool IsExecutable(IGameState gameState)
        {
            if (!gameState.Players.Contains(NewActivePlayer))
            {
                throw new NotImplementedException("Could not change the active " +
                                          "player because the specified player is not involved " +
                                          "in the game!");
            }
            return NewActivePlayer != gameState.ActivePlayer;
        }
    }
}
