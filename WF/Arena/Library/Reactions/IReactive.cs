using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public interface IReactive : IReaction
    {
        /// <summary>
        /// Reactions of this IReactive.
        /// </summary>
        List<IReaction> Reactions { get; }

        /// <summary>
        /// All reactions of this IReactive including its children.
        /// </summary>
        /// <returns>All reactions of this IReactive including its children.</returns>
        List<IReaction> AllReactions();
    }
}
