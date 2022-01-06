using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Deck.Deck;
using WF.Arena.Library.Actions.Implementations.Deck.Hand;
using WF.Arena.Library.Actions.Implementations.Stat;
using WF.Arena.Library.Card.SpellCards;

namespace WF.Arena.Library.Actions.Implementations.Card.SpellCard
{
    public class CastTargetfulSpellAction : CastSpellAction
    {
        public ICharacter Target;

        public CastTargetfulSpellAction(
            IPlayer player,
            ITargetfulSpellCard spellCard,
            ICharacter target,
            bool isAborted = false
        ) : base(player, spellCard, isAborted)
        {
            SpellCard = spellCard;
            Target = target;
        }

        public override void Execute(IGame game)
        {
            game.Execute(new ModifyPowerStatAction(Player, -SpellCard.PowerValue, 0));
            game.Execute(new RemoveCardFromHandAction(Player.Hand, SpellCard));
            ((ITargetfulSpellCard)SpellCard).Cast(game, Target);
            game.Execute(new AddCardToGraveyardAction(Player.Graveyard, SpellCard));
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return SpellCard.IsCastable(gameState);
        }
    }
}
