using Domain.Models;
using Infra.CrossCutting.Identity.Models.Account;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Infra.CrossCutting.Identity.Models
{
    public class ApplicationUser : IdentityUser
    {
        public virtual ICollection<ApplicationUserClaim> Claims { get; set; }
        public virtual ICollection<ApplicationUserLogin> Logins { get; set; }
        public virtual ICollection<ApplicationUserToken> Tokens { get; set; }

        public virtual ICollection<ApplicationClientUser> ClientUsers { get; set; }
        public virtual ICollection<ApplicationUserRole> UserRoles { get; set; }
        public virtual APerson APersons { get; set; }
    }

    public class ApplicationClient : Client
    {
        public virtual ICollection<ApplicationClientMenu> ClientMenus { get; set; }
        public virtual ICollection<ApplicationClientUser> ClientUsers { get; set; }
    }

    public class ApplicationRoleMenu : RoleMenu
    {
        public virtual ICollection<ApplicationRole> Roles { get; set; }
        public virtual ICollection<ApplicationClientMenu> ClientMenus { get; set; }
    }

    public class ApplicationClientUser : ClientUser
    {
        public virtual ApplicationClient Client { get; set; }
        public virtual ApplicationUser User { get; set; }
    }

    public class ApplicationClientMenu : ClientMenu
    {
        public virtual ApplicationClient Client { get; set; }
        public virtual ApplicationRoleMenu RoleMenu { get; set; }
    }
    
    public class ApplicationRole : IdentityRole
    {
        //public virtual ICollection<ApplicationUserRole> UserRoles { get; set; }
        //public virtual ICollection<ApplicationClientMenu> ClientMenus { get; set; }
        public virtual ICollection<ApplicationRoleClaim> RoleClaims { get; set; }
        //public virtual RoleMenu RoleMenus { get; set; }


        public virtual ApplicationRoleMenu RoleMenu { get; set; }
        public virtual ICollection<ApplicationUserRole> UserRoles { get; set; }
    }

    public class ApplicationUserRole : IdentityUserRole<string>
    {
        public virtual ApplicationRole Role { get; set; }
        public virtual ApplicationUser User { get; set; }
    }

    public class ApplicationUserClaim : IdentityUserClaim<string>
    {
        public virtual ApplicationUser User { get; set; }
    }

    public class ApplicationUserLogin : IdentityUserLogin<string>
    {
        public virtual ApplicationUser User { get; set; }
    }

    public class ApplicationRoleClaim : IdentityRoleClaim<string>
    {
        public virtual ApplicationRole Role { get; set; }
    }

    public class ApplicationUserToken : IdentityUserToken<string>
    {
        public virtual ApplicationUser User { get; set; }
    }

}
