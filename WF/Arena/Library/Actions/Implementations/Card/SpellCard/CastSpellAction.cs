using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Card.SpellCards;

namespace WF.Arena.Library.Actions.Implementations.Card.SpellCard
{
    public abstract class CastSpellAction : CardAction
    {
        public IPlayer Player;

        public ISpellCard SpellCard;

        public CastSpellAction(IPlayer player, ISpellCard spellCard, bool isAborted = false)
            : base(isAborted)
        {
            Player = player;
            SpellCard = spellCard;
        }

        public override abstract void Execute(IGame game);

        public override abstract bool IsExecutable(IGameState gameState);
    }
}
