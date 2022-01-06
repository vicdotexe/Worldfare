using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Deck.Deck;
using WF.Arena.Library.Actions.Implementations.Deck.Hand;

namespace WF.Arena.Library.Actions.Implementations.Player
{
    public class DrawCardAction : CardAction
    {
        public IPlayer Player;

        public ICard DrawnCard;

        public DrawCardAction(IPlayer player, bool isAborted = false)
            : base(isAborted)
        {
            Player = player;
        }

        public override void Execute(IGame game)
        {
            RemoveCardFromDeckAction removeAction = new RemoveCardFromDeckAction(Player.Deck);
            game.Execute(removeAction);
            DrawnCard = removeAction.Card;
            game.Execute(new AddCardToHandAction(Player.Hand, DrawnCard));
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return !Player.Deck.IsEmpty;
        }
    }
}
