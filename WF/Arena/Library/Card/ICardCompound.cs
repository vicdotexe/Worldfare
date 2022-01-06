using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card
{
    public interface ICardCompound
    {
        /// <summary>
        /// List of components that this Compound is made of.
        /// </summary>
        List<ICardComponent> CardComponents { get; }
    }
}
