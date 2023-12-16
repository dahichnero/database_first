﻿using System;
using System.Collections.Generic;

namespace Reciepe.Models;

public partial class Receipt
{
    public int ReceiptId { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public string? Image { get; set; }

    public virtual ICollection<ReceiptIngridient> ReceiptIngridients { get; } = new List<ReceiptIngridient>();
}
