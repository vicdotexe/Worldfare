using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public class PowerPoolStat : Stat
    {
        /// <summary>
        /// Represents available mana.
        /// </summary>
        /// <param name="value"></param>
        /// <param name="baseValue"></param>
        public PowerPoolStat(int value, int baseValue) : base(value, baseValue)
        {
        }

        public override int Value
        {
            get => base.Value;
            set => base.Value = Math.Max(0, value);
        }

        public override int BaseValue
        {
            get => base.BaseValue;
            set => base.BaseValue = Math.Max(0, value);
        }
    }
}
