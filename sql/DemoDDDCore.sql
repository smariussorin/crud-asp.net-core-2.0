USE [DemoDDDCore]
GO
/****** Object:  Schema [Admin]    Script Date: 13/09/2018 17:47:03 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Admin')
EXEC sys.sp_executesql N'CREATE SCHEMA [Admin]'
GO
/****** Object:  Schema [App]    Script Date: 13/09/2018 17:47:03 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'App')
EXEC sys.sp_executesql N'CREATE SCHEMA [App]'
GO
/****** Object:  Schema [Site]    Script Date: 13/09/2018 17:47:03 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Site')
EXEC sys.sp_executesql N'CREATE SCHEMA [Site]'
GO
/****** Object:  Table [dbo].[Admin_RoleClaims]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_RoleClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Admin_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Admin_Roles]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_Roles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Admin_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Admin_UserClaims]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_UserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Admin_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Admin_UserLogins]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_UserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Admin_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Admin_UserRoles]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_UserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Admin_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Admin_Users]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_Users](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Admin_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Admin_UserTokens]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_UserTokens]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admin_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Site].[Customers]    Script Date: 13/09/2018 17:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Site].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [Site].[Customers](
	[Id] [uniqueidentifier] NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_RoleClaims_Admin_Roles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_RoleClaims]'))
ALTER TABLE [dbo].[Admin_RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_Admin_RoleClaims_Admin_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Admin_Roles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_RoleClaims_Admin_Roles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_RoleClaims]'))
ALTER TABLE [dbo].[Admin_RoleClaims] CHECK CONSTRAINT [FK_Admin_RoleClaims_Admin_Roles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserClaims_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserClaims]'))
ALTER TABLE [dbo].[Admin_UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_Admin_UserClaims_Admin_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Admin_Users] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserClaims_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserClaims]'))
ALTER TABLE [dbo].[Admin_UserClaims] CHECK CONSTRAINT [FK_Admin_UserClaims_Admin_Users_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserLogins_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserLogins]'))
ALTER TABLE [dbo].[Admin_UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_Admin_UserLogins_Admin_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Admin_Users] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserLogins_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserLogins]'))
ALTER TABLE [dbo].[Admin_UserLogins] CHECK CONSTRAINT [FK_Admin_UserLogins_Admin_Users_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserRoles_Admin_Roles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserRoles]'))
ALTER TABLE [dbo].[Admin_UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_Admin_UserRoles_Admin_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Admin_Roles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserRoles_Admin_Roles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserRoles]'))
ALTER TABLE [dbo].[Admin_UserRoles] CHECK CONSTRAINT [FK_Admin_UserRoles_Admin_Roles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserRoles_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserRoles]'))
ALTER TABLE [dbo].[Admin_UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_Admin_UserRoles_Admin_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Admin_Users] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserRoles_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserRoles]'))
ALTER TABLE [dbo].[Admin_UserRoles] CHECK CONSTRAINT [FK_Admin_UserRoles_Admin_Users_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserTokens_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserTokens]'))
ALTER TABLE [dbo].[Admin_UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_Admin_UserTokens_Admin_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Admin_Users] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Admin_UserTokens_Admin_Users_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Admin_UserTokens]'))
ALTER TABLE [dbo].[Admin_UserTokens] CHECK CONSTRAINT [FK_Admin_UserTokens_Admin_Users_UserId]
GO
