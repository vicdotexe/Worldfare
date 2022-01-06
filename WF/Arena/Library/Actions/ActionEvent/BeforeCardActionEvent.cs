using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Actions.ActionEvent
{
    public class BeforeCardActionEvent : CardActionEvent
    {
        public BeforeCardActionEvent(ICardAction action) : base(action)
        {
        }

        public override bool IsAfter(Type type)
        {
            return false;
        }

        public override bool IsBefore(Type type)
        {
            return type.IsAssignableFrom(Action.GetType());
        }
    }
}
