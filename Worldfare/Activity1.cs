using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Content.Res;
using Android.Graphics;
using Android.OS;
using Android.Views;
using Microsoft.Xna.Framework;
using WF;

namespace Worldfare
{
    [Activity(
        Label = "@string/app_name",
        MainLauncher = true,
        Icon = "@drawable/icon",
        AlwaysRetainTaskState = true,
        LaunchMode = LaunchMode.SingleInstance,
        ScreenOrientation = ScreenOrientation.UserLandscape,
        ConfigurationChanges = ConfigChanges.Orientation | ConfigChanges.Keyboard | ConfigChanges.KeyboardHidden | ConfigChanges.ScreenSize
    )]
    public class Activity1 : AndroidGameActivity
    {
        public static Activity1 Instance;

        private Game1 _game;
        private View _view;
        
        protected override void OnCreate(Bundle bundle)
        {
            Instance = this;
            var currentflags = Window.DecorView.SystemUiVisibility;
            SystemUiFlags flags = SystemUiFlags.HideNavigation | SystemUiFlags.Fullscreen | SystemUiFlags.LayoutFullscreen|SystemUiFlags.ImmersiveSticky | SystemUiFlags.Immersive | SystemUiFlags.Visible; 
            Window.DecorView.SystemUiVisibility = (StatusBarVisibility)flags; 
            Immersive = true;
            ActionBar.Hide();
            Android.Graphics.Point size = new Android.Graphics.Point();
            WindowManager.DefaultDisplay.GetRealSize(size);

            base.OnCreate(bundle);
            _game = new Game1(size.X, size.Y);
            _view = ((Game)_game).Services.GetService(typeof(View)) as View;

            SetContentView(_view);
            _game.Run();
        }

        protected override void OnActivityResult(int requestCode, Result resultCode, Intent? data)
        {
            base.OnActivityResult(requestCode, resultCode, data);
            DroidServices.OnActivityResult(requestCode, resultCode, data);
        }
    }
}
