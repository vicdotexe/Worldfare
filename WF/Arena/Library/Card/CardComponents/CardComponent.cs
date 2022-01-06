using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Nez;
using WF.Arena.Library;
using WF.Arena.Library.Card;

namespace WF.Arena
{
    public class CardComponent : Reaction, ICardComponent
    {
        protected PowerCostStat powerCostStat;

        public List<IReaction> Reactions { get; }

        public CardComponent(int power)
            : this(new PowerCostStat(power, power), new List<IReaction>())
        {
        }

        public CardComponent(int powerValue, int powerBaseValue)
            : this(new PowerCostStat(powerValue, powerBaseValue), new List<IReaction>())
        {
        }

        protected CardComponent(PowerCostStat manaCostStat, List<IReaction> reactions)
        {
            this.powerCostStat = manaCostStat;
            Reactions = reactions;
        }

        public int PowerValue
        {
            get => powerCostStat.Value;
            set => powerCostStat.Value = value;
        }

        public int PowerBaseValue
        {
            get => powerCostStat.BaseValue;
            set => powerCostStat.BaseValue = value;
        }

        public List<IReaction> AllReactions()
        {
            return new List<IReaction>(Reactions);
        }

        public override void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            AllReactions().ForEach(r => r.ReactTo(game, actionEvent));
        }

        public ICard FindCard(IGameState gameState)
        {
            foreach (ICard card in gameState.AllCards)
            {
                foreach (ICardComponent cardComponent in card.CardComponents)
                {
                    if (cardComponent == this)
                    {
                        return card;
                    }
                }
            }
            return null;
        }
    }





}
