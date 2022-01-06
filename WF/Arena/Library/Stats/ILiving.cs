using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public interface ILiving
    {
        int LifeValue { get; set; }
        int LifeBaseValue { get; set; }
    }
}
