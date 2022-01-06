using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using Nez;
using Nez.Textures;
using Random = Nez.Random;

namespace WF
{
    public abstract class CardComponent : RenderableComponent
    {
        public override RectangleF Bounds
        {
            get
            {
                return new RectangleF(Entity.Position.X - Width*0.5f,Entity.Position.Y -Height*0.5f,Width,Height);
            }
        }

        public override float Width => 400 * Entity.Transform.Scale.X;
        public override float Height => 600 * Entity.Transform.Scale.Y;

        public string Name = Utils.RandomString(10);
        public string Description;

        public enum Location {Field, Hand, Deck, Discard}

        public Location CurrentLocation = Location.Field;

        public override void OnAddedToEntity()
        {
            base.OnAddedToEntity();
            Entity.Position = Screen.Size * 0.5f;
            Color = Color.Green;
            Entity.Scale = Vector2.One * 0.5f;
            Entity.AddComponent(new BoxCollider(Width, Height)).SetShouldColliderScaleAndRotateWithTransform(true);
        }

        public override void Render(Batcher batcher, Camera camera)
        {
            batcher.DrawHollowRect(Bounds, Color);
            batcher.DrawString(Graphics.Instance.BitmapFont,Name, Entity.Position, Color.Black,Entity.Rotation,(Graphics.Instance.BitmapFont.MeasureString(Name) *0.5f) + (new Vector2(0,80)) , Entity.Scale*3, SpriteEffects.None,0);
        }
    }

    public class ResourceCardComponent : CardComponent
    {
        public string ResourceType;

        public ResourceCardComponent()
        {
            
        }



    }
}
