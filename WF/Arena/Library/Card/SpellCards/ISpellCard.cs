using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Card.SpellCards
{
    public interface ISpellCard : ICard
    {
        bool IsCastable(IGameState gameState);
    }
}
