using System;
using System.Collections.Generic;
using System.Text;
using Nez;
using WF.Arena.Library.Game;
using WF.Arena.Library.Player;

namespace WF.Arena
{
    public class ArenaSceneComponent : SceneComponent
    {
        private IGame _game;

        public ArenaSceneComponent(IGame game)
        {
            _game = game;

        }

        public override void Update()
        {
            base.Update();
        }

        public void NextTurn()
        {
            _game.NextTurn();
        }
    }
}
