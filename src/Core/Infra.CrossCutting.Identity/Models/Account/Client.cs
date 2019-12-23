using System;
using System.ComponentModel.DataAnnotations.Schema;
using Domain.Core.Models;

using Infra.CrossCutting.Identity.Models.Account;

namespace Infra.CrossCutting.Identity.Models.Account
{
    [Table("Client", Schema = "Account")]
    public class Client : Entity
    {
        public Client(Guid id, string name, string email, DateTime birthDate)
        {
            Id = id;
            Name = name;
            Email = email;
            BirthDate = birthDate;
        }

        // Empty constructor for EF
        protected Client() { }

        public string Name { get; set; }

        public string Email { get; set; }

        public DateTime BirthDate { get; set; }
    }
}