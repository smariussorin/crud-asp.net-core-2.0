using System;
using System.ComponentModel.DataAnnotations.Schema;
using Domain.Core.Models;
using Infra.CrossCutting.Identity.Models.Account;
namespace Infra.CrossCutting.Identity.Models.Account
{
    [Table("RoleMenu", Schema = "Account")]
    public class RoleMenu : Entity
    {
        public RoleMenu(Guid id, Guid subMenuId, string name)
        {
            Id = id;
            SubMenuId = subMenuId;
            Name = name;
        }

        public Guid SubMenuId { get; set; }
        protected RoleMenu() { }
        public string Name { get; set; }
    }
}