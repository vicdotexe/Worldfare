using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Deck.Board;
using WF.Arena.Library.Actions.Implementations.Deck.Hand;
using WF.Arena.Library.Actions.Implementations.Stat;
using WF.Arena.Library.Card.MonsterCards;

namespace WF.Arena.Library.Actions.Implementations.Card.MonsterCard
{
    public class CastMonsterAction : CardAction
    {
        public IPlayer Player;

        public IMonsterCard MonsterCard;

        public int BoardIndex;

        public CastMonsterAction(IPlayer player, IMonsterCard monsterCard,
            int boardIndex, bool isAborted = false
        ) : base(isAborted)
        {
            Player = player;
            MonsterCard = monsterCard;
            BoardIndex = boardIndex;
        }

        public override void Execute(IGame game)
        {
            game.Execute(new ModifyPowerStatAction(Player, -MonsterCard.PowerValue, 0));
            game.Execute(new RemoveCardFromHandAction(Player.Hand, MonsterCard));
            game.Execute(new AddCardToBoardAction(Player.Board, MonsterCard, BoardIndex));
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return MonsterCard.IsSummonable(gameState)
                   && Player.Board.IsFreeSlot(BoardIndex);
        }
    }
}
