using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Actions.ActionEvent
{
    public class AfterCardActionEvent : CardActionEvent
    {
        public AfterCardActionEvent(ICardAction action) : base(action)
        {
        }

        public override bool IsAfter(Type type)
        {
            return type.IsAssignableFrom(Action.GetType());
        }

        public override bool IsBefore(Type type)
        {
            return false;
        }
    }
}
