using System;
using System.Collections.Generic;
using System.Text;
using Nez;

namespace WF.Arena.Library.Card
{
    public abstract class CardCompound : Component, ICardCompound
    {
        public List<ICardComponent> CardComponents { get; }

        public CardCompound(List<ICardComponent> cardComponents)
        {
            CardComponents = cardComponents;
        }
    }
}
