using System.Drawing.Imaging;
using Android.Media.Audiofx;
using Java.Lang;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Input.Touch;
using Nez;
using Nez.UI;
using WF.Arena;
using WF.Arena.Library.Game;
using WF.Arena.Library.Player;
using Worldfare;
using Camera = Android.Hardware.Camera;

namespace WF
{
    public class Game1 : Core
    {

        public Game1()
        {

        }

        public Game1(int width, int height) : base(width, height, true)
        {

        }

        protected override void Initialize()
        {
            // TODO: Add your initialization logic here
            Screen.IsFullscreen = true;
            Screen.SupportedOrientations = DisplayOrientation.LandscapeLeft | DisplayOrientation.LandscapeRight;
            base.Initialize();
            Input.Touch.EnableTouchSupport();

            Scene = new Scene();
            var game = new Arena.Library.Game.Game();
            game.Players.Add(new Player());
            game.Players.Add(new Player());

            game.StartGame();

            var arena = Scene.AddSceneComponent(new ArenaSceneComponent(game));
            var canvas = new UICanvas();
            var stage = canvas.Stage;

            var table = stage.AddElement(new Table());

            table.Bottom();
            table.Right();
            table.SetFillParent(true);
            var button = new Button(ButtonStyle.Create(Color.DarkGray, Color.Yellow, Color.Green));
            button.Add(new Label("End Turn", Graphics.Instance.BitmapFont, Color.Red, 2));
            table.Add(button).SetMinWidth(200).SetMinHeight(60);
            button.OnClicked += ButtonOnOnClicked;
            var uiEntity = new Entity();
            uiEntity.AddComponent(canvas);
            Scene.AddEntity(uiEntity);
            Scene.AddEntity(new Entity()).AddComponent(new FingerComponent());
            var entity = new Entity();
            entity.AddComponent<ResourceCardComponent>();
            Scene.AddEntity(entity);


        }

        private void ButtonOnOnClicked(Button obj)
        {
            Scene.GetSceneComponent<ArenaSceneComponent>().NextTurn();
        }
    }

 
}
