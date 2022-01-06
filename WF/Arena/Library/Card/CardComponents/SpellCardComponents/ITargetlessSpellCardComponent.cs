using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card.CardComponents.SpellCardComponents
{
    public interface ITargetlessSpellCardComponent : ISpellCardComponent, ITargetless
    {
        /// <summary>
        /// Called when spell card is cast. Execute Actions here.
        /// </summary>
        /// <param name="gameState"></param>
        void Cast(IGame game);
    }
}
