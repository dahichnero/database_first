using System;
using System.Collections.Generic;

namespace Hehe.Models;

public partial class Speciality
{
    public int SpecialityId { get; set; }

    public string SpecialityName { get; set; } = null!;

    public int Oklad { get; set; }

    public virtual ICollection<Sotrudnik> Sotrudniks { get; } = new List<Sotrudnik>();
}
