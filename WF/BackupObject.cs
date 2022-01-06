using System;
using System.Collections.Generic;
using System.Text;

namespace WF
{
    public class BackupObject
    {
        public List<ActionCard> ActionCards = new List<ActionCard>();
        public List<ResourceCard> ResourceCards = new List<ResourceCard>();
        public Dictionary<Guid, byte[]> Images = new Dictionary<Guid, byte[]>();
    }
}
