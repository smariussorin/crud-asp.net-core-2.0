using System;
using System.ComponentModel.DataAnnotations.Schema;
using Domain.Core.Models;
using Infra.CrossCutting.Identity.Models.Account;

namespace Infra.CrossCutting.Identity.Models.Account
{
    [Table("APeople", Schema = "Account")]
    public class APerson : Entity
    {
        public APerson(Guid id, string name, string email, DateTime birthDate)
        {
            Id = id;
            Name = name;
            Email = email;
            BirthDate = birthDate;
        }

        // Empty constructor for EF
        protected APerson() { }

        public string Name { get; set; }

        public string Email { get; set; }

        public DateTime BirthDate { get; set; }
    }
}