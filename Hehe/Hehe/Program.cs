using Bogus;
using Hehe;
using Hehe.Models;

Faker<Sotrudnik> faker = new Faker<Sotrudnik>("ru");

List<Sotrudnik> employees = faker

    .RuleFor(s => s.Birthday, r => r.Date.Between(DateTime.Now.AddYears(-20), DateTime.Now))

    .RuleFor(s => s.Address, r => r.Address.FullAddress())

    .RuleFor(s => s.Phone, r => r.Person.Phone)

    .RuleFor(s => s.Name, r => r.Person.FirstName)

    .RuleFor(s => s.Email, r => r.Person.Email)

    .RuleFor(s => s.Passport, f => f.Phone.PhoneNumber("##-#######"))

    .RuleFor(s => s.Specialty, f => f.Random.Number(1, 3))

    .RuleFor(s => s.SurName, r => r.Person.LastName).Generate(100);


var context = new SotrudContext();

foreach (Sotrudnik employee in employees)
{
    context.Sotrudniks.Add(employee);
    try
    {
        context.SaveChanges();
    }
    catch
    {
        Console.WriteLine("...");
        context.Sotrudniks.Remove(employee);
    }
}
