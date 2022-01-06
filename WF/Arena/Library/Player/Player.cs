using System;
using System.Collections.Generic;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Card.MonsterCard;
using WF.Arena.Library.Actions.Implementations.Card.SpellCard;
using WF.Arena.Library.Actions.Implementations.Player;
using WF.Arena.Library.Card.MonsterCards;
using WF.Arena.Library.Card.SpellCards;
using WF.Arena.Library.CardCollections;

namespace WF.Arena.Library.Player
{
    public class Player : IPlayer
    {
        protected PowerPoolStat powerPoolStat;

        protected AttackStat attackStat;

        protected LifeStat lifeStat;

        public List<IReaction> Reactions { get; }

        public IDeck Deck { get; protected set; }
        public IHand Hand { get; protected set; }
        public IBoard Board { get; protected set; }
        public IDeck Graveyard { get; protected set; }

        /// <summary>
        /// Represents a Player and all his/her associated Cards.
        /// </summary>
        public Player() : this(new Deck())
        {
        }

        /// <summary>
        /// Represents a Player and all his/her associated Cards.
        /// </summary>
        /// <param name="deck"></param>
        public Player(IDeck deck)
            : this(deck, new Hand(), new Board(), new Deck(),
                  new PowerPoolStat(0, 0), new AttackStat(0), new LifeStat(0),
                  new List<IReaction>())
        {
        }

        protected Player(IDeck deck, IHand hand, IBoard board, IDeck graveyard,
            PowerPoolStat manaPoolStat, AttackStat attackStat, LifeStat lifeStat,
            List<IReaction> reactions)
        {
            Deck = deck;
            Hand = hand;
            Board = board;
            Graveyard = graveyard;

            this.powerPoolStat = manaPoolStat;
            this.attackStat = attackStat;
            this.lifeStat = lifeStat;
            Reactions = reactions;
        }

        public bool IsAlive => lifeStat.Value > 0;

        public List<ICard> AllCards
        {
            get
            {
                List<ICard> allCards = new List<ICard>();
                allCards.AddRange(Deck.AllCards);
                allCards.AddRange(Hand.AllCards);
                allCards.AddRange(Board.AllCards);
                allCards.AddRange(Graveyard.AllCards);
                return allCards;
            }
        }

        public int AttackValue
        {
            get => attackStat.Value;
            set => attackStat.Value = Math.Max(0, value);
        }

        public int AttackBaseValue
        {
            get => attackStat.BaseValue;
            set => attackStat.BaseValue = Math.Max(0, value);
        }

        public int LifeValue
        {
            get => lifeStat.Value;
            set => lifeStat.Value = Math.Max(0, value);
        }

        public int LifeBaseValue
        {
            get => lifeStat.BaseValue;
            set => lifeStat.BaseValue = Math.Max(0, value);
        }

        public int PowerValue
        {
            get => powerPoolStat.Value;
            set => powerPoolStat.Value = Math.Max(0, value);
        }

        public int PowerBaseValue
        {
            get => powerPoolStat.BaseValue;
            set => powerPoolStat.BaseValue = Math.Max(0, value);
        }

        public List<ICharacter> Characters
        {
            get
            {
                List<ICharacter> characters = new List<ICharacter>
                {
                    this
                };
                Board.AllCards.ForEach(c => characters.Add((ICharacter)c));
                return characters;
            }
        }

        public List<IReaction> AllReactions()
        {
            List<IReaction> allReactions = new List<IReaction>(Reactions);
            AllCards.ForEach(c => allReactions.AddRange(c.AllReactions()));
            return allReactions;
        }

        public void DrawCard(IGame game)
        {
            game.Execute(new DrawCardAction(this));
        }

        public void CastMonster(IGame game, IMonsterCard monsterCard, int boardIndex)
        {
            if (!monsterCard.IsSummonable(game))
            {
                throw new NotImplementedException("Tried to play a card that is " +
                    "not playable!");
            }

            if (!Board.IsFreeSlot(boardIndex))
            {
                throw new NotImplementedException("Slot with index " + boardIndex +
                    " is already occupied!");
            }

            game.Execute(new CastMonsterAction(this, monsterCard, boardIndex));
        }

        public void CastSpell(IGame game, ITargetlessSpellCard spellCard)
        {
            if (!spellCard.IsCastable(game))
            {
                throw new NotImplementedException("Tried to play a card that is " +
                    "not playable!");
            }

            game.Execute(new CastTargetlessSpellAction(this, spellCard));
        }

        public void CastSpell(IGame game, ITargetfulSpellCard spellCard, ICharacter target)
        {
            if (!spellCard.IsCastable(game))
            {
                throw new NotImplementedException("Tried to play a card that is " +
                    "not playable!");
            }

            game.Execute(new CastTargetfulSpellAction(this, spellCard, target));
        }

        public HashSet<ICharacter> GetPotentialTargets(IGameState gameState)
        {
            return new HashSet<ICharacter>();
        }

        public void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            AllReactions().ForEach(r => r.ReactTo(game, actionEvent));
        }

        public ICard FindParentCard(IGameState gameState)
        {
            throw new NotImplementedException("Cannot use method 'FindParentCard' on " +
                "instance of type 'Player'");
        }

        public IPlayer FindParentPlayer(IGameState gameState)
        {
            return this;
        }
    }
}
