using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public interface ICardActionEvent : ICardAction
    {
        /// <summary>
        /// Contains the Action this event refers to.
        /// </summary>
        ICardAction Action { get; }

        /// <summary>
        /// Checks if this event is triggered directly before an Action that is
        /// an instance of the specified type.
        /// </summary>
        /// <param name="type"></param>
        /// <returns>True if this event is triggered directly before an Action
        /// that is an instance of the specified type.</returns>
        bool IsBefore(Type type);

        /// <summary>
        /// Checks if this event is triggered directly after an Action that is
        /// an instance of the specified type.
        /// </summary>
        /// <param name="type"></param>
        /// <returns>True if this event is triggered directly after an Action
        /// that is an instance of the specified type.</returns>
        bool IsAfter(Type type);
    }
}
