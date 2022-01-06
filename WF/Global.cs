using System;
using System.Collections.Generic;
using System.Text;
using Android.Graphics;
using Microsoft.Xna.Framework.Graphics;
using Nez;
using Nez.Systems;
using Worldfare;

namespace WF
{
    public static class Global
    {
        public static Emitter<GlobalEvents> Emitter = new Emitter<GlobalEvents>();
        public static BackupObject BackupObject;
        public static int READBACKUP = 1;
        public static int READPIC = 2;
        public static Dictionary<Guid, Texture2D> Textures = new Dictionary<Guid, Texture2D>();
        public static Texture2D TestTexture;

        static Global()
        {
            Emitter.AddObserver(GlobalEvents.BackupFileLoaded, OnBackupObjectLoaded);
        }

        private static void OnBackupObjectLoaded()
        {
            var test = BackupObject;
            foreach (var item in test.Images)
            {
                var texture = Texture2D.FromFile(Core.GraphicsDevice,
                    DroidServices.AppStoragePath + "/" + item.Key + ".jpg");

                Textures.Add(item.Key, texture);
            }
        }
    }
}
