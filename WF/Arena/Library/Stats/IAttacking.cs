using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public interface IAttacking : ITargetful
    {
        int AttackValue { get; set; }
        int AttackBaseValue { get; set; }
    }
}
