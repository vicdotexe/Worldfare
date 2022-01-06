using System;
using System.Collections.Generic;
using System.Text;

namespace WF
{
    public enum GlobalEvents
    {
       BackupFileLoaded
    }


    /// <summary>
    /// comparer that should be passed to a dictionary constructor to avoid boxing/unboxing when using an enum as a key
    /// on Mono
    /// </summary>
    public struct CoreEventsComparer : IEqualityComparer<GlobalEvents>
    {
        public bool Equals(GlobalEvents x, GlobalEvents y)
        {
            return x == y;
        }


        public int GetHashCode(GlobalEvents obj)
        {
            return (int)obj;
        }
    }
}
