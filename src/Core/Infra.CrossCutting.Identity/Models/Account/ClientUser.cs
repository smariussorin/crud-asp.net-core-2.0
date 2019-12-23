using System;
using System.ComponentModel.DataAnnotations.Schema;
using Domain.Core.Models;

using Infra.CrossCutting.Identity.Models.Account;

namespace Infra.CrossCutting.Identity.Models.Account
{
    [Table("ClientUser", Schema = "Account")]
    public class ClientUser : Entity
    {
        public ClientUser(Guid id, string userId, Guid clientId)
        {
            Id = id;
            UserId = userId;
            ClientId = clientId;
        }
        public string UserId { get; set; }
        public Guid ClientId { get; set; }


        // Empty constructor for EF
        protected ClientUser() { }

    }
}