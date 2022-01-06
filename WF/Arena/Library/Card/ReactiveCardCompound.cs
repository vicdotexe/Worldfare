using System;
using System.Collections.Generic;
using System.Text;
using Nez;
using WF.Arena.Library.Card;

namespace WF.Arena.Library
{
    public abstract class ReactiveCardCompound : CardCompound, IReactive
    {
        public List<IReaction> Reactions { get; }

        public ReactiveCardCompound(List<ICardComponent> components)
            : this(components, new List<IReaction>())
        {
        }

        protected ReactiveCardCompound(List<ICardComponent> components, List<IReaction> reactions)
            : base(components)
        {
            Reactions = reactions;
        }

        public List<IReaction> AllReactions()
        {
            List<IReaction> allReactions = new List<IReaction>(Reactions);
            CardComponents.ForEach(c => allReactions.AddRange(c.AllReactions()));
            return allReactions;
        }

        public virtual void ReactTo(IGame game, ICardActionEvent actionEvent)
        {
            AllReactions().ForEach(r => r.ReactTo(game, actionEvent));
        }

        public abstract ICard FindParentCard(IGameState gameState);

        public abstract IPlayer FindParentPlayer(IGameState gameState);
    }
}
