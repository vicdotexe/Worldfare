using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public class LifeStat : Stat
    {
        /// <summary>
        /// Maximum number of damage that can be taken.
        /// </summary>
        public LifeStat(int value) : this(value, value)
        {
        }

        public LifeStat(int value, int baseValue) : base(value, baseValue)
        {
        }
    }
}
