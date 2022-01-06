using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Android.Graphics;
using Android.Net;
using Java.IO;
using Microsoft.Xna.Framework.Graphics;
using Newtonsoft.Json;
using Nez;
using WF;
using File = Java.IO.File;
using Path = Android.Graphics.Path;

namespace Worldfare
{
    public static class DroidServices
    {
        public static string AppStoragePath => Android.App.Application.Context.GetExternalFilesDir("").AbsolutePath;

        public static void LoadBackupFileDialog()
        {
            Intent intent = new Intent(Intent.ActionOpenDocument);
            intent.SetType("text/*");
            intent.AddCategory(Intent.CategoryOpenable);
            Activity1.Instance.StartActivityForResult(intent, Global.READBACKUP);
        }

        public static void LoadPictureDialog()
        {
            Intent intent = new Intent(Intent.ActionOpenDocument);
            intent.SetType("image/*");
            intent.AddCategory(Intent.CategoryOpenable);
            Activity1.Instance.StartActivityForResult(intent, Global.READPIC);
        }

        public static void OnActivityResult(int requestCode, Result resultCode, Intent data)
        {
            // Read Backup
            if (requestCode == Global.READBACKUP && (resultCode == Result.Ok))
            {
                Uri uri = null;
                if (data != null)
                {
                    uri = data.Data;
                    
                    string test = ReadFile(uri);
                    Global.BackupObject = JsonConvert.DeserializeObject<BackupObject>(test);

                    foreach (var file in Directory.GetFiles(AppStoragePath))
                    {
                        System.IO.File.Delete(file);
                    }

                    foreach (var pair in Global.BackupObject.Images)
                    {

                        var ms = new MemoryStream();
                        var fs = new FileStream(AppStoragePath+ "/"+pair.Key + ".jpg", FileMode.OpenOrCreate);
                        BitmapFactory.Options option = new BitmapFactory.Options();
                        Bitmap pictureBitmap = BitmapFactory.DecodeByteArray(pair.Value, 0, pair.Value.Length);
                        pictureBitmap.Compress(Bitmap.CompressFormat.Jpeg, 100, ms);
                        fs.Write(ms.ToArray());
                        fs.Flush();
                        fs.Close();
                        
                    }
                    Global.Emitter.Emit(GlobalEvents.BackupFileLoaded);
                    //BackupView.Instance.RestoreBackUp(test);
                }
            }

            // Read Backup
            if (requestCode == Global.READPIC && (resultCode == Result.Ok))
            {
                Uri uri = null;
                if (data != null)
                {
                    uri = data.Data;

                    //using (var stream = new System.IO.FileStream(uri.Path, FileMode.Open))
                    Global.TestTexture = Texture2D.FromStream(Core.GraphicsDevice, Activity1.Instance.ContentResolver.OpenInputStream(uri));
                    //BackupView.Instance.RestoreBackUp(test);
                }
            }
        }

        public static Texture2D TextureFromBytes(byte[] data)
        {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.InScaled = false;

            
            Bitmap bitmap = BitmapFactory.DecodeByteArray(data, 0, data.Length, options);
            
            var tex = Texture2D.FromStream(Core.GraphicsDevice, bitmap);
            return tex;
        }

        public static string ReadFile(Uri uri)
        {
            InputStreamReader inputStreamReader = new InputStreamReader(Activity1.Instance.ContentResolver.OpenInputStream(uri));
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder sb = new StringBuilder();
            string s;
            while ((s = bufferedReader.ReadLine()) != null)
            {
                sb.Append(s);
            }
            string fileContent = sb.ToString();
            return fileContent;
        }
    }
}