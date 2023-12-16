using System;
using System.Collections.Generic;

namespace Hehe.Models;

public partial class Sotrudnik
{
    public int SotrudnikId { get; set; }

    public string Name { get; set; } = null!;

    public string SurName { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public DateTime Birthday { get; set; }

    public string Address { get; set; } = null!;

    public string Passport { get; set; } = null!;

    public string Email { get; set; } = null!;

    public int Specialty { get; set; }

    public virtual Speciality SpecialtyNavigation { get; set; } = null!;
}
