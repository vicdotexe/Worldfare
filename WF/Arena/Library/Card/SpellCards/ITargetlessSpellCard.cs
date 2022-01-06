using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card.SpellCards
{
    public interface ITargetlessSpellCard : ITargetless, ISpellCard
    {
        /// <summary>
        /// Called when the spell card is cast.
        /// </summary>
        /// <param name="gameState"></param>
        void Cast(IGame game);
    }
}
