using System;
using Application.Interfaces;
using Application.ViewModels;
using Domain.Core.Notifications;
using Infra.CrossCutting.Identity.Models;
using Infra.CrossCutting.Identity.Services;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Admin.Controllers
{
    [Authorize]
    public class AccountConfController : Controller
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly IEmailSender _emailSender;
        private readonly ILogger _logger;

        private readonly RoleManager<ApplicationRole> _roleManager;


        public AccountConfController(
            UserManager<ApplicationUser> userManager,
            SignInManager<ApplicationUser> signInManager,
            IEmailSender emailSender,
            ILogger<AccountConfController> logger)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _emailSender = emailSender;
            _logger = logger;
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("accountconf/list-all")]
        public IActionResult Index()
        {

            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("accountconf/new-menu")]
        public IActionResult NewMenu()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("accountconf/role-list")]
        public IActionResult RoleList()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("accountconf/role-new")]
        public IActionResult RoleNew()
        {
            return View();
        }

        [HttpGet]
        [AllowAnonymous]
        [Route("accountconf/client-list")]
        public IActionResult ClientList()
        {
            return View();
        }

    }
}
