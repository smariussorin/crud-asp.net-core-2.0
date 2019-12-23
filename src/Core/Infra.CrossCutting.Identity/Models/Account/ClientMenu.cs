using System;
using System.ComponentModel.DataAnnotations.Schema;
using Domain.Core.Models;

using Infra.CrossCutting.Identity.Models.Account;

namespace Infra.CrossCutting.Identity.Models.Account
{
    [Table("ClientMenu", Schema = "Account")]
    public class ClientMenu : Entity
    {
        public ClientMenu(Guid id, Guid menuId, Guid clientId)
        {
            Id = id;
            MenuId = menuId;
            ClientId = clientId;
        }
        public Guid MenuId { get; set; }
        public Guid ClientId { get; set; }


        // Empty constructor for EF
        protected ClientMenu() { }

    }
}