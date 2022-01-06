using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WF.Arena.Library.Actions.Implementations.Card.MonsterCard;
using WF.Arena.Library.Card.CardComponents.MonsterCards;
using WF.Arena.Library.CardCollections;
using WF.Arena.Library.Reactions.EventReactions;

namespace WF.Arena.Library.Card.MonsterCards
{
    public class MonsterCard : CardBase, IMonsterCard
    {
        public bool IsReadyToAttack { get; set; }

        public MonsterCard()
            : this(new List<IMonsterCardComponent>())
        {
        }

        /// <summary>
        /// Represents a certain type of Card that is played
        /// onto the Player's Board.
        /// </summary>
        /// <param name="mana"></param>
        /// <param name="attack"></param>
        /// <param name="life"></param>
        public MonsterCard(int mana, int attack, int life)
            : this(new List<IMonsterCardComponent> { new MonsterCardComponent(mana, attack, life) })
        {
        }

        /// <summary>
        /// Represents a certain type of Card that is played
        /// onto the Player's Board.
        /// </summary>
        /// <param name="components"></param>
        public MonsterCard(List<IMonsterCardComponent> components)
            : this(components, false)
        {
        }

        public MonsterCard(
            List<IMonsterCardComponent> components,
            bool isReadyToAttack
            ) : this(components.ConvertAll(c => (ICardComponent)c), new List<IReaction>(), isReadyToAttack)
        {
            Reactions.Add(new SetReadyToAttackOnStartOfTurnEventReaction());
        }

        public MonsterCard(
            List<ICardComponent> components,
            List<IReaction> reactions,
            bool isReadyToAttack
            ) : base(components, reactions)
        {
            IsReadyToAttack = isReadyToAttack;
        }

        public bool IsAlive => LifeValue > 0;

        public int AttackValue
        {
            get => Math.Max(0, GetSum(c => c.AttackValue));
            set
            {
                CardComponents.Add(new MonsterCardComponent(0, 0, value - GetSum(c => c.AttackValue), 0, 0, 0));
            }
        }

        public int AttackBaseValue
        {
            get => Math.Max(0, GetSum(c => c.AttackBaseValue));
            set
            {
                CardComponents.Add(new MonsterCardComponent(0, 0, 0, value - GetSum(c => c.AttackBaseValue), 0, 0));
            }
        }

        public int LifeValue
        {
            get => Math.Max(0, GetSum(c => c.LifeValue));
            set
            {
                CardComponents.Add(new MonsterCardComponent(0, 0, 0, 0, value - GetSum(c => c.LifeValue), 0));
            }
        }

        public int LifeBaseValue
        {
            get => Math.Max(0, GetSum(c => c.LifeBaseValue));
            set
            {
                CardComponents.Add(new MonsterCardComponent(0, 0, 0, 0, 0, value - GetSum(c => c.LifeBaseValue)));
            }
        }

        private int GetSum(Func<IMonsterCardComponent, int> GetValue)
        {
            return CardComponents.Where(c => c is IMonsterCardComponent).Sum(c => GetValue((IMonsterCardComponent)c));
        }

        public void Attack(IGame game, ICharacter target)
        {
            if (!IsReadyToAttack)
            {
                throw new NotImplementedException("Failed to attack with a MonsterCard " +
                    "that is not ready to attack!");
            }
            if (!GetPotentialTargets(game).Contains(target))
            {
                throw new NotImplementedException("Cannot attack a target character " +
                    "that is not specified in the list of potential targets!");
            }

            game.Execute(new AttackAction(this, target));
        }

        public virtual HashSet<ICharacter> GetPotentialTargets(IGameState gameState)
        {
            if (CardComponents.Count == 0)
            {
                return new HashSet<ICharacter>();
            }

            //Compute the intersection of all potential targets
            HashSet<ICharacter> potentialTargets = ((ITargetful)CardComponents[0]).GetPotentialTargets(gameState);
            foreach (ICardComponent component in CardComponents)
            {
                potentialTargets.IntersectWith(((ITargetful)component).GetPotentialTargets(gameState));
            }
            return potentialTargets;
        }

        public bool IsSummonable(IGameState gameState)
        {
            IBoard board = gameState.ActivePlayer.Board;
            return base.IsCastable(gameState)
                    && board.AllCards.Count < board.MaxSize;
        }
    }
}
