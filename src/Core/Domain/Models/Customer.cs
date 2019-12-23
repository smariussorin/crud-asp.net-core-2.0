using System;
using System.ComponentModel.DataAnnotations.Schema;
using Domain.Core.Models;

namespace Domain.Models
{
    [Table("Customer", Schema = "App")]
    public class Customer : Entity
    {
        public Customer(Guid id, string name, string email, DateTime birthDate)
        {
            Id = id;
            Name = name;
            Email = email;
            BirthDate = birthDate;
        }

        // Empty constructor for EF
        protected Customer() { }

        public string Name { get; set; }

        public string Email { get; set; }

        public DateTime BirthDate { get; set; }
    }
}