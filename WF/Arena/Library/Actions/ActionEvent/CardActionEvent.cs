using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library;
using WF.Arena.Library.Event;

namespace WF.Arena
{
    public abstract class CardActionEvent : CardEvent, ICardActionEvent
    {
        public ICardAction Action { get; protected set; }

        public CardActionEvent(ICardAction action)
        {
            Action = action;
        }

        public abstract bool IsBefore(Type type);

        public abstract bool IsAfter(Type type);
    }
}
