using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library
{
    public interface ICharacter : IPowerful, IAttacking, ILiving
    {
        /// <summary>
        /// Indicates if this Character is still alive.
        /// </summary>
        bool IsAlive { get; }
    }
}
