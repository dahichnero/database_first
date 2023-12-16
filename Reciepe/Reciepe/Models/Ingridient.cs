using System;
using System.Collections.Generic;

namespace Reciepe.Models;

public partial class Ingridient
{
    public int IngridientId { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<ReceiptIngridient> ReceiptIngridients { get; } = new List<ReceiptIngridient>();
}
