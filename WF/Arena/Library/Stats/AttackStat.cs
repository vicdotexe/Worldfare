using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public class AttackStat : Stat
    {
        /// <summary>
        /// Potential damage to be dealt.
        /// </summary>
        public AttackStat(int value) : this(value, value)
        {
        }

        public AttackStat(int value, int baseValue) : base(value, baseValue)
        {
        }
    }
}
