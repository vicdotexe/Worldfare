using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input.Touch;
using Nez;
using Math = Java.Lang.Math;

namespace WF
{
    public class FingerComponent : RenderableComponent, IUpdatable
    {
        private Vector2 _lastPosition;

        public bool IsDown { get; private set; }
        public bool Pressed { get; private set; }
        public bool Released { get; private set; }

        public override float Width { get; } = 32;
        public override float Height { get; } = 32;

        private Vector2 _start;
        private Vector2 _end;
        private RectangleF rect;
        private Entity _grabbedEntity;
        private Vector2 _grabbedStart;
        private Vector2 _holdDelta;

        public FingerComponent()
        {

        }

        public override void OnAddedToEntity()
        {
            base.OnAddedToEntity();
            Entity.AddComponent(new CircleCollider(50));
        }

        public override void Render(Batcher batcher, Camera camera)
        {
            var pos = new Vector2();
            //if (Input.Touch.CurrentTouches.Count>0)
            //    pos = Input.Touch.CurrentTouches[0].ScaledPosition();
            Color color;
            if (IsDown)
                color = Color.Red;
            else if (Pressed)
                color = Color.LimeGreen;
            else if (Released)
                color = Color.Yellow;
            else
                color = Color.Blue;

            batcher.DrawRect(pos, Width, Height, color);

            if (IsDown)
            {
                batcher.DrawHollowRect(rect, Color.Red);
            }

            if (Global.TestTexture != null)
                batcher.Draw(Global.TestTexture, Vector2.One);

            /*
            if (Global.Textures.Count > 0)
            {
                foreach (var t in Global.Textures)
                {
                    batcher.Draw(t.Value, Vector2.One);
                }
            }
            */
        }

        public void Update()
        {

            if (Released && Input.Touch.CurrentTouches.Count == 0)
                Released = false;

            if (Input.Touch.CurrentTouches.Count > 0)
            {
                Entity.Position = Input.Touch.CurrentTouches[0].Position;
                IsDown = Input.Touch.CurrentTouches[0].State == TouchLocationState.Moved;
                Pressed = Input.Touch.CurrentTouches[0].State == TouchLocationState.Pressed;
                Released = Input.Touch.CurrentTouches[0].State == TouchLocationState.Released;
            }

            if (Pressed)
            {

                if (Entity.GetComponent<Collider>().CollidesWithAny(out var result))
                {
                    _grabbedEntity = result.Collider.Entity;
                    _grabbedStart = result.Collider.Entity.Position;
                }

                _start = Entity.Position;

            }

            if (Released)
            {
                _start = new Vector2();
                if (_grabbedEntity != null)
                    _grabbedEntity.Scale = Vector2.One*0.5f;
                _grabbedEntity = null;
            }

            if (IsDown)
            {
                rect.X = _start.X < Entity.Position.X ? _start.X : Entity.Position.X;
                rect.Y = _start.Y < Entity.Position.Y ? _start.Y : Entity.Position.Y;

                rect.Width = Java.Lang.Math.Abs(_start.X - Entity.Position.X);
                rect.Height = Math.Abs(_start.Y - Entity.Position.Y);

                _holdDelta = _start - Entity.Position;
                if (_grabbedEntity != null)
                    _grabbedEntity.Scale = Vector2.Lerp(_grabbedEntity.Scale, Vector2.One, 0.1f);
                if (_grabbedEntity != null)
                    _grabbedEntity.Position = _grabbedStart - _holdDelta;
            }

        }
    }
}
