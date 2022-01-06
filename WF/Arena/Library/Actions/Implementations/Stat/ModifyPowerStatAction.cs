using System;
using System.Collections.Generic;
using System.Text;

namespace WF.Arena.Library.Actions.Implementations.Stat
{
    public class ModifyPowerStatAction : CardAction
    {
        public IPowerful Manaful;

        public int DeltaValue;

        public int DeltaBaseValue;

        public ModifyPowerStatAction(
            IPowerful manaful,
            int deltaValue,
            int deltaBaseValue,
            bool isAborted = false
        ) : base(isAborted)
        {
            Manaful = manaful;
            DeltaValue = deltaValue;
            DeltaBaseValue = deltaBaseValue;
        }

        public override void Execute(IGame game)
        {
            Manaful.PowerBaseValue += DeltaBaseValue;
            Manaful.PowerValue += DeltaValue;
        }

        public override bool IsExecutable(IGameState gameState)
        {
            return true;
        }
    }
}
