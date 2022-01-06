using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Dynamic;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace WF
{

    public class Card
    {
        public Guid Guid;
        public string ImageFileName;
        public string Name;
        public string Description;
    }

    public class ActionCard : Card
    {
        public int Health;
        public int Cost;
        public string ActionType;
        public int Attack;
    }

    public class ResourceCard : Card
    {
        public string ResourceType;

    }
}
