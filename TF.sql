USE [master]
GO
/****** Object:  Database [TF]    Script Date: 06/11/2016 15:29:17 ******/
CREATE DATABASE [TF] ON  PRIMARY 
( NAME = N'TF', FILENAME = N'C:\DATA\TF.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TF_log', FILENAME = N'C:\DATA\TF_log.ldf' , SIZE = 7616KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TF] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TF] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TF] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TF] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TF] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TF] SET ARITHABORT OFF
GO
ALTER DATABASE [TF] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TF] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TF] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TF] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TF] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TF] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TF] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TF] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TF] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TF] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TF] SET  DISABLE_BROKER
GO
ALTER DATABASE [TF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TF] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TF] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TF] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TF] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TF] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TF] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TF] SET  READ_WRITE
GO
ALTER DATABASE [TF] SET RECOVERY FULL
GO
ALTER DATABASE [TF] SET  MULTI_USER
GO
ALTER DATABASE [TF] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TF] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TF', N'ON'
GO
USE [TF]
GO
/****** Object:  Table [dbo].[TF_UserGroup]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_UserGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Roles] [varchar](500) NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_UserGroup] ON
INSERT [dbo].[TF_UserGroup] ([ID], [Name], [Roles], [Remark]) VALUES (1, N'销售部经理', N'', N'0')
SET IDENTITY_INSERT [dbo].[TF_UserGroup] OFF
/****** Object:  Table [dbo].[TF_User]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Depart] [varchar](500) NULL,
	[Usergroup] [varchar](500) NULL,
	[Roles] [varchar](500) NULL,
	[Flag] [int] NOT NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Index_Username] ON [dbo].[TF_User] 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TF_User] ON
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (1, N'kell', N'12', N'12', N'', N'1,2,3,4,5,6,7,8', 0, N'')
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (2, N'谢信', N'', N'2', N'', N'2', 1, N'')
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (3, N'戴君', N'123456', N'3', N'', N'1', 0, N'')
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (4, N'甘慧铭', N'', N'4', N'', N'3,7', 0, N'')
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (6, N'老胡', N'', N'12', N'', N'7', 0, N'')
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (7, N'老毛', N'', N'12', N'', N'4,1,2,3,5,6,7,8', 0, N'')
INSERT [dbo].[TF_User] ([ID], [Username], [Password], [Depart], [Usergroup], [Roles], [Flag], [Remark]) VALUES (10, N'江姐', N'', N'13', N'', N'8', 0, N'')
SET IDENTITY_INSERT [dbo].[TF_User] OFF
/****** Object:  Table [dbo].[TF_SystemLog]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_SystemLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserIP] [varchar](50) NULL,
	[UserMac] [varchar](50) NULL,
	[Addr] [varchar](50) NULL,
	[LogType] [varchar](50) NULL,
	[Msg] [varchar](500) NULL,
	[LogTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TF_SystemLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_SystemLog] ON
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (5, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5830154E490 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (6, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5830156B434 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (7, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58301594141 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (8, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5830159FD29 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (9, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A583015F7CCC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (10, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58301600723 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (11, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5830163AD8E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (12, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5830165C714 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (13, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5830165CB20 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (14, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A583016693B0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (15, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5830169AFA8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (16, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A583016EBAE9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (17, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A583016EDD15 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (18, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A583016F7D6E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (19, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A583016FA094 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (20, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58301702D1E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (21, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58301703729 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (22, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A583017039A9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (23, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58301704E1B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (24, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58301705BA4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (25, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A583017245B8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (26, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58400EFE16D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (27, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58400F5B7F9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (28, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58400F61BA2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (29, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58500F57D67 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (30, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58500F59768 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (31, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58500F6DA28 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (32, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在将 varchar 值 ''男'' 转换成数据类型 int 时失败。', CAST(0x0000A58500F70442 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (33, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A58500F75DAE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (34, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A58500F7953F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (35, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58501247957 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (36, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5850124A646 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (37, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58501254521 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (38, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5860102F915 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (39, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''depart'' 无效。', CAST(0x0000A586010468FC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (40, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58601048E19 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (41, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5860104C217 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (42, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5860106605C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (43, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5860107784D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (44, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58601079124 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (45, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5860108A196 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (46, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5860135C7EC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (47, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A586013722C9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (48, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5860137A894 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (49, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5860137C392 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (50, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58601380A43 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (51, N'甘惠铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘惠铭', CAST(0x0000A586013AD72C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (52, N'甘惠铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘惠铭', CAST(0x0000A5860142AC73 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (53, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58601506D4D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (54, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A58601510C9D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (55, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A586015168F3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (56, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'字符串 ''2016-01-07 20:30:02.926 order by 更新时间 desc'' 后的引号不完整。
''2016-01-07 20:30:02.926 order by 更新时间 desc'' 附近有语法错误。', CAST(0x0000A5860151A9B0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (57, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A5860151E99C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (58, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5860152CD83 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (59, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5860152D522 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (60, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5860153FD52 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (61, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A586015505CB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (62, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58700FF9D3B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (63, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58701000BFC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (64, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58701377241 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (65, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58701384374 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (66, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5870138BBBF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (67, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A587013F79D2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (68, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A587013FF8B7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (69, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5870144D290 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (70, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5870144E89A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (71, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A587014CC612 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (72, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58701653DE9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (73, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A587016557CE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (74, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5870169E837 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (75, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58800FCA0A0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (76, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58800FCF719 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (77, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58800FD21EB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (78, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58800FD56C4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (79, N'魏军', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：魏军', CAST(0x0000A58800FDEB2C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (80, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58800FE220F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (81, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58800FE2A76 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (82, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A588010C815D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (83, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A588010FAE8B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (84, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A588010FF788 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (85, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58801119C67 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (86, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5880112C556 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (88, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5880113534F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (90, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58801142B8E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (91, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5880114E546 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (92, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5880116BFDD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (93, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58801173AFB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (94, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58801180DF5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (95, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A588015052B5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (96, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5880152EA0C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (97, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58801534AE6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (98, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58801538273 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (99, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5880153BB74 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (100, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5880155254B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (101, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58A00F9A7DE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (102, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58A010FA54A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (103, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58A015BFF4F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (104, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。
在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 您的主机中的软件中止了一个已建立的连接。)', CAST(0x0000A58A01658D79 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (105, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58A016F39C6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (106, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58A01736712 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (107, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58A0175FA94 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (108, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B00E1CA7C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (109, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00E45DAC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (110, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B00E85DA5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (111, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00E8D511 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (112, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B00E8F347 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (113, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00E8F75A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (114, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00E95866 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (115, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00EB894B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (116, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00EC0CB2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (117, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'列名 ''员工事假请假单'' 无效。', CAST(0x0000A58B00ECCA7B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (118, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00ED4877 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (119, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B00EE22E3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (120, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00EE391D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (121, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00F0320D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (122, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B00F1BC63 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (123, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00F22FD2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (124, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B00F23E3E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (125, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00F2F424 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (126, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00F4B4D1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (127, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00F6A881 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (128, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B00F6F4F8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (129, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58B00F8066C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (130, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00F8EACB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (131, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B00FC205F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (132, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B00FDE2BC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (133, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B01033328 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (134, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B010345DB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (135, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B0103A24D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (136, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B010451DD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (137, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B01057D9B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (138, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B0105A00B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (139, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B01073979 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (140, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B01093FEE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (141, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B0109532F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (142, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B010A3509 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (143, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A58B010A95F8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (144, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B010AFFA3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (145, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58B0110CD94 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (146, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58B0110DC2F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (147, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58B0111106E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (148, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58B01114D43 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (149, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A58B0111697E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (150, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58B0111EE21 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (151, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B0113241E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (152, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B01140EBE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (153, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B0114B4FC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (154, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A58B013AEF0A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (155, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A58B013B8E6F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (156, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B013C3773 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (157, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B013F08A3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (158, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B013F3BF6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (159, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58B015E5CB1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (160, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58B01616617 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (161, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58B01619CA1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (162, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。
在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 您的主机中的软件中止了一个已建立的连接。)', CAST(0x0000A58B0169DD84 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (163, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58B0171C8B1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (164, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C00FA088F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (165, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58C00FA5801 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (166, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C00FB9871 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (167, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C00FCC9AB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (168, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C00FCE931 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (169, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C00FD1B6A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (170, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C00FD2C99 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (171, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58C00FF2B86 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (172, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C00FF41D9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (173, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C00FFEEF2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (174, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A58C01002587 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (175, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C01003E3F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (177, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C010061D8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (178, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C01008FB7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (179, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58C0100A2A9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (180, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C01019236 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (181, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''经手人'' 无效。', CAST(0x0000A58C01023E98 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (182, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58C01025C34 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (183, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C0102F606 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (184, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58C010375E7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (185, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C0105B798 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (186, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A58C0106F25B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (187, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C01070FBD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (188, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C01071D82 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (189, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C01073A76 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (190, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C010AB625 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (191, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C010B5594 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (192, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C010BD488 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (193, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C01163BED AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (194, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C011A0FCC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (195, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C011A28CC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (196, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A58C011A3E38 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (197, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A58C011A4D8B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (198, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C011DEB77 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (199, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C01208157 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (200, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C0120AC4A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (201, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C013C70F2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (202, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A58C013D107C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (203, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C013DB332 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (204, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C013DE770 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (205, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A58C01413708 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (206, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A58C0141D542 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (207, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C016446B1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (208, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A58C01653278 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (209, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58C016548FB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (210, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58C016AE7BC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (211, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A58D0150F813 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (212, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A58D01523357 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (213, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A58D01720F8D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (214, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59100FAB5AC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (215, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A591011CEFED AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (216, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59101397DF0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (217, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59101399695 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (218, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5910143121D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (219, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A5910144881C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (220, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A5910145ECE5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (221, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A59101465CB8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (222, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A5910146C7F4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (223, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59101492BE4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (224, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59101495D6B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (225, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A591015067F7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (226, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59101519A90 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (227, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59101538670 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (228, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59101540E8F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (229, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5910154240B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (230, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59101555F8D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (231, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59101686CD6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (232, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5910168E226 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (233, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A591016913A4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (234, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A591016920D3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (235, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A591016A960D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (236, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A591016F784D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (237, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59101704C0C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (238, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A592010A7085 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (239, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59201127C5A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (240, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5920112A9B7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (241, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59201176591 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (242, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5920119CB2A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (243, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A592011A054B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (244, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（ExecuteSql函数）', N'error', N'''='' 附近有语法错误。', CAST(0x0000A592011A109A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (245, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A592011C4A4A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (246, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A592011CA97F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (247, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A592011E161B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (248, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A592011E50AC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (249, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59201205859 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (250, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5920120B45C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (251, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A592012389EE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (252, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59201250125 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (253, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。
在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 您的主机中的软件中止了一个已建立的连接。)', CAST(0x0000A5920125BFFF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (254, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59201265898 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (255, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59201289E2F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (256, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5920128F850 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (257, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。', CAST(0x0000A592012FC8D8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (258, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5920133E926 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (259, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A592014DFEC7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (260, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。
在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 您的主机中的软件中止了一个已建立的连接。)', CAST(0x0000A59201586F38 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (261, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A592015AD921 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (262, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A592016BBD97 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (263, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A592016FCD67 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (264, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A593010D830E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (265, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A593011A0909 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (266, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A593011A7F87 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (267, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5930150E47B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (268, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A593015CC030 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (269, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A593015E08F5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (270, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A593016394BC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (271, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5930163D673 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (272, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5930164C7A6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (273, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A594016B8D8E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (274, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A594016C9A47 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (275, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A594016F79C2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (276, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59501071C34 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (277, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A595010BFBE6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (278, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5950116E49A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (279, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A595011773AD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (280, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5950118C3BF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (281, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A595011A5691 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (282, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A595011DBA6D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (283, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A595011DDA3E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (284, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A595011E0995 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (285, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A595011E449C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (286, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A595014C79B3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (287, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A595014D7C20 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (288, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5950154A382 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (289, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59501651917 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (290, N'戴君', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A59501654B38 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (291, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59501657D65 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (292, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5950165D93D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (293, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5950165ECDB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (294, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A595016614BC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (295, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5950166B89E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (296, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5950166ED89 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (297, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59600BA86FD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (298, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59600BAA459 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (299, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59600BC09C1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (300, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59600C87334 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (301, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59600F9DA4B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (302, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A59600FB999E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (303, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59600FCF40F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (304, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59600FD2335 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (305, N'老毛', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A59600FD5342 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (306, N'老胡', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59600FD6569 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (307, N'江姐', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：江姐', CAST(0x0000A59600FD79FF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (308, N'江姐', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：江姐', CAST(0x0000A59600FD947F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (309, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601010B46 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (310, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5960101AE7E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (311, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A596010E4096 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (312, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A596010E4C45 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (313, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A596010E6153 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (314, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5960110113E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (315, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601106D4A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (316, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5960111ECD7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (317, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5960112568E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (319, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A596011343A5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (321, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5960113E374 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (322, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601141BB4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (323, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A59601144C3D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (324, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A5960114517F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (325, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在将 varchar 值 ''男'' 转换成数据类型 bit 时失败。', CAST(0x0000A5960114A083 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (326, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A59601150B47 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (327, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A5960115149D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (328, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''姓名'' 无效。', CAST(0x0000A59601153AEC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (329, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59601155661 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (330, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601158769 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (331, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5960115F87B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (332, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601165D1B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (336, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601175301 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (338, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601180C4E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (339, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A596011843BB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (340, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A59601184935 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (341, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A596011881B1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (342, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5960118E069 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (343, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A596011AB2CF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (344, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''发生时间'' 无效。', CAST(0x0000A596011ACDC5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (345, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A596011B2235 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (346, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A596011B3511 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (347, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A596011BAB34 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (348, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A596011C52CA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (349, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A596011CDCE1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (350, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601229BBF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (351, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59601241B11 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (352, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59601728EAC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (353, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5960172FBBD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (354, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59701495646 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (355, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A597014A7452 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (356, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A597014B5AEC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (357, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A597014C6766 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (358, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A597014DFC07 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (363, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59701515E4D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (364, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59701527F76 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (365, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59701543847 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (366, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5970154AC53 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (368, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A597015584A1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (370, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59701569183 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (371, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5970157462F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (372, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5970158C59E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (373, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A597015AC0D5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (374, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A597015C3623 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (375, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A597015C6863 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (376, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59800F7D654 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (377, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59800FC4442 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (378, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''姓名'' 无效。
列名 ''电话'' 无效。', CAST(0x0000A59800FC7F05 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (379, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59800FCD1FB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (380, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。', CAST(0x0000A59800FD0671 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (381, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A59800FE53E5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (382, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A59800FFFFAF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (383, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A59801000E98 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (384, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A59801001450 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (385, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A59801001B5F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (386, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A5980100210B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (387, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A59801002A2C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (388, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598010063E0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (389, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801028BAF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (390, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980103F08B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (391, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598010460D2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (392, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801049437 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (393, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980104DD75 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (394, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980105CC29 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (395, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598010622A6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (396, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5980106A7E9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (397, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801072F82 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (398, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980108638D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (399, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A598010A0E58 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (400, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598010A1F7B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (401, N'戴君', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A598010A9EA7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (402, N'老毛', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A598010C4AAF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (403, N'老胡', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A598010CA68A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (404, N'老胡', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：老胡', CAST(0x0000A598010D9495 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (405, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A598010DC7C0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (406, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598010DDA68 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (407, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598010E3D22 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (408, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5980110AD7F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (409, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980110E862 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (410, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59801138CBF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (411, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980113AA21 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (412, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801154367 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (413, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''性别'' 无效。', CAST(0x0000A5980115790B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (414, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598011662FF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (415, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''姓名'' 无效。', CAST(0x0000A59801168D61 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (416, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''电话'' 无效。', CAST(0x0000A5980116A920 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (417, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5980116B78A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (418, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980116F47E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (419, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598012923B6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (420, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A598012A6365 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (421, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598012F661C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (422, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980134E62D AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (423, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598013612D3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (424, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801386EED AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (425, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598013A84AF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (426, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598013AF292 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (427, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801476C40 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (428, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A598014836F4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (429, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''是否进账'' 无效。', CAST(0x0000A59801483CAA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (430, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''姓名'' 无效。
列名 ''电话'' 无效。', CAST(0x0000A598014925FC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (431, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5980149AE89 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (432, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59801546E06 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (433, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59801571E4A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (434, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5980163DF8B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (435, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5980168FB85 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (436, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801690B49 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (437, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A598016D8EF1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (438, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59801703E5A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (439, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59801705791 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (440, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59801713929 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (441, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5990164243D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (442, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5990164794E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (443, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59901696EE5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (444, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A599016A7827 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (445, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00E7FE77 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (446, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A00EA151A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (447, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00F0EB79 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (448, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00F0F3FE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (449, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在将 varchar 值 ''女'' 转换成数据类型 int 时失败。', CAST(0x0000A59A00F1ADB7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (450, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00F1B98A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (451, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在将 varchar 值 ''女'' 转换成数据类型 int 时失败。', CAST(0x0000A59A00F1DE21 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (452, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在将 varchar 值 ''女'' 转换成数据类型 int 时失败。', CAST(0x0000A59A00F1E745 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (453, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在将 varchar 值 ''女'' 转换成数据类型 int 时失败。', CAST(0x0000A59A00F1F343 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (454, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00F4398E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (455, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A00F4F37B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (456, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A00F9F929 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (457, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00FA8E0B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (458, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A00FB75C1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (459, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A00FBCDD3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (460, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A00FFB370 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (461, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A01321564 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (462, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A013AE338 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (463, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A013CE751 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (464, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A013F31B3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (465, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A013FC47F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (466, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A013FC983 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (467, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A01401720 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (468, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A0140197D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (469, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A01410C75 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (470, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A01428946 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (471, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A01466223 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (472, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A014875D6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (473, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A0149ED60 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (474, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A015DFB60 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (475, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A015E13C0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (476, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务顺利停止。', CAST(0x0000A59A015EC781 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (477, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'StartDownloadListen', N'error', N'开启下载监听服务失败！', CAST(0x0000A59A015F036B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (478, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A59A015F036C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (479, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务顺利停止。', CAST(0x0000A59A015F43FB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (480, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'StartDownloadListen', N'error', N'开启下载监听服务失败！', CAST(0x0000A59A015F4CDD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (481, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A59A015F4CDD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (482, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A01602909 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (483, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A016138CA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (484, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59A01620543 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (485, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59A0162C4B8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (486, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务顺利停止。', CAST(0x0000A59B00D94DE1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (487, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A59B00D99B68 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (488, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B00DA4506 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (489, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B00DD6881 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (490, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B00E2F9CC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (491, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B00E482EF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (492, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B00E51D06 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (493, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B00ED3C5F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (494, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59B00EE1E2D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (495, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A59B00F4C4A8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (496, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B0100F170 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (497, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B01015020 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (498, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B0106CD69 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (499, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B010B81BD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (500, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B010D4F90 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (501, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B010E5FC9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (502, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B011123D8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (503, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59B01194F38 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (504, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A59B011A0569 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (505, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A59B011AA791 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (506, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B01460B41 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (507, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014A3DEE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (508, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014A44AD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (509, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B014A4AF4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (510, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014AA4DD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (511, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014AC02E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (512, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014AC0AE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (513, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B014ACB11 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (514, N'数据库操作日志', N'127.0.0.1', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014B1320 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (515, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B014B7307 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (516, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B014BE63B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (517, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014E9ED7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (518, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B014EA28E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (519, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014EB6E3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (520, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014EC996 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (521, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014ED421 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (522, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014EDB59 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (523, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B014EE7AB AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (524, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B015058C8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (525, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01509EB6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (526, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B015B1990 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (527, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B015BC59A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (528, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B015E8AD3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (529, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B015EA27E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (530, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B015EC692 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (531, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B015ED0D1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (532, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B015EE35B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (533, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B016245D5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (534, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B0162703E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (535, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B01632CDE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (536, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B016357A4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (537, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01637235 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (538, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B0163723F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (539, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B01637DB5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (540, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B0163F9DE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (541, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B0166930B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (542, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01669D0A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (543, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B0166E5F0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (544, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01671BEE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (545, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B0167538A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (546, N'数据库操作日志', N'127.0.0.1', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01677029 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (547, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59B0168FF0C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (548, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01693041 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (549, N'数据库操作日志', N'127.0.0.1', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59B01693CA9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (550, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00E2B9BF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (551, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00E358D8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (552, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00E38196 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (553, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00E6F553 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (554, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00E72392 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (555, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00E780C5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (556, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00ECFAEB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (557, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ECFBAB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (558, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED00AA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (559, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED01FF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (560, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED030C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (561, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED03FC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (562, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED04E1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (563, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED05B7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (564, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''from'' 附近有语法错误。', CAST(0x0000A59C00ED069E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (565, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00EDA364 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (566, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00F02D8B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (567, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00F195DF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (568, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00F1A27F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (569, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00F24B8F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (570, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00F4F011 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (571, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00F5AF8D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (572, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C00F6244B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (573, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00F65247 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (574, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C00FA08A2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (575, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C0100707B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (576, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C01012C1D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (577, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C01018A28 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (578, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C01019E92 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (579, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C0102C208 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (580, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C0102D4AE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (581, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C01034FB4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (582, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C01057455 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (583, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C0105B636 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (584, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C010CB8C3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (585, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C010CF559 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (586, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C011187CE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (587, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59C0111B2A3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (588, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C015243CC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (589, N'数据库操作日志', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''姓名'' 无效。
列名 ''电话'' 无效。', CAST(0x0000A59C01626FD5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (590, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59C01675758 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (591, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59C016A2584 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (592, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00953320 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (593, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00A42AE0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (594, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00A5361C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (595, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00A76AF4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (596, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59D00A997F3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (597, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00A9CD60 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (598, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00B2439D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (599, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00B6834A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (600, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00B76944 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (601, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59D00B90D21 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (602, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00B9BF09 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (603, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00BA97E0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (604, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00BAC6B8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (605, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59D00BB5E0E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (606, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00BBA2FA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (607, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00C30EE5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (608, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00C49059 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (609, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59D00C63DA8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (610, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00C68987 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (611, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00C77F32 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (612, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00D25803 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (613, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00D2B438 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (614, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59D00D44EC7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (615, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00D4F267 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (616, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00D63BF6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (617, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00D73D46 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (618, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00DD318E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (619, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00DE9FF9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (620, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00E07787 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (621, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00E356C3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (622, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00E6E576 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (623, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00E73535 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (624, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00E9D59A AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (625, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D00EA0BEB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (626, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D00EB4BB3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (627, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：老胡', CAST(0x0000A59D00EB7002 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (628, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D00F329C4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (629, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：老胡', CAST(0x0000A59D00F33F48 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (630, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D00F34AD1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (631, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：老胡', CAST(0x0000A59D00F35B28 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (632, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D00F3697F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (633, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：老胡', CAST(0x0000A59D00F37A47 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (634, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D00F3983A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (635, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D00F3A4CC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (636, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D00F3BBEF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (637, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D00F63A8A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (638, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：老胡', CAST(0x0000A59D00F6526A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (639, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D01001A73 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (640, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D010058DC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (641, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：老胡', CAST(0x0000A59D010071A6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (642, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D010076DA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (643, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D010180BD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (644, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：老胡', CAST(0x0000A59D010194A4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (645, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D0101A125 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (646, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D0101E9BD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (647, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D0102CFF2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (648, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D0108D5A8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (649, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：老胡', CAST(0x0000A59D0108E929 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (650, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D0108F95F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (651, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010915DE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (652, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010929BD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (653, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A59D010946FD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (654, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59D01099BFF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (655, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D0109C069 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (656, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D010B8AE1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (657, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010B97D1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (658, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010BC64B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (659, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010C0C56 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (660, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010C92B6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (661, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D010DB640 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (662, N'数据库操作日志', N'127.0.0.1', N'', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D0110324E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (663, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D01145D58 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (664, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D011477D5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (665, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01154018 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (666, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01163B55 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (667, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D01175889 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (668, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D0117829C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (669, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01180709 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (670, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01182190 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (671, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01184882 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (672, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D011882D5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (673, N'数据库操作日志', N'127.0.0.1', N'', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A59D0118FEB3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (674, N'数据库操作日志', N'127.0.0.1', N'', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D011954E5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (675, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D0119EC63 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (676, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D0119FCD9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (677, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D011A0B2C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (678, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D011A3E3A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (679, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D011C9617 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (680, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D01210CF5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (681, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01211487 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (682, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01213070 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (683, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01216CE9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (684, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D012197AF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (685, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59D01220D17 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (686, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59D0122680A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (687, N'数据库操作日志', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'A transport-level error has occurred when sending the request to the server. (provider: TCP Provider, error: 0 - 远程主机强迫关闭了一个现有的连接。)', CAST(0x0000A59D0125F1AC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (689, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D0126700D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (690, N'甘慧铭', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59D01268D86 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (691, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59D0127B3D1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (692, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E00C382D3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (693, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E00C65D4E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (694, N'kell', N'192.168.1.103', N'78:24:AF:D8:56:E8', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59E00C69B29 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (695, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59E00C6CDB1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (696, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E00C7126A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (697, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E00CCE128 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (698, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59E00CD860F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (699, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E01005E52 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (700, N'甘慧铭', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59E010DB7C2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (701, N'甘慧铭', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59E010DE247 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (702, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E011FAA90 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (703, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59E01229BD9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (704, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E017F108C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (705, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：kell', CAST(0x0000A59E017F69F7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (706, N'甘慧铭', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59E017F7D79 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (707, N'甘慧铭', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A59E017FA5B0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (708, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A59E0180C1E5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (709, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E018111AB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (710, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E0181D185 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (711, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A59E01838919 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (712, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59E018476A7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (713, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E01850D60 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (714, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E01851723 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (715, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E0185814C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (716, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59E018A706A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (717, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E018B3D90 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (718, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59E018B4FE5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (719, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59F00001359 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (720, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59F0000BCF0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (721, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A59F00041BF2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (722, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59F0004B023 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (723, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A59F0004E831 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (724, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5AB0136B25E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (725, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5AB013AD19D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (726, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5AB013E0EB2 AS DateTime))
GO
print 'Processed 700 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (727, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5AB013FF93A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (728, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5AB014ED0A2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (729, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5AB01505D89 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (730, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5AB0150859E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (731, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5AC010C14F9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (732, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5AC010C7366 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (733, N'甘慧铭', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5AC01113DE5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (734, N'甘慧铭', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5AC011154CD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (735, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5AD00E4E6D2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (736, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5AD00E52CF8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (737, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5AF0140CA53 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (738, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5AF0140D74A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (739, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016BFCF5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (740, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C15A0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (741, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C172E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (742, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C1869 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (743, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C18FE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (744, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C198B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (745, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C1EA5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (746, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C1EF5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (747, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C1F34 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (748, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016C613C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (749, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016CC673 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (750, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016CCAC3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (751, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016CCDAF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (752, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016CF110 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (753, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016CF2BE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (754, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B1016D8A9D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (755, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B1016D904E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (756, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B1016DD594 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (757, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B1016DDBB6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (758, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016E9278 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (759, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016E946D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (760, N'数据库操作日志', N'192.168.0.110', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B1016EEAC6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (761, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B301040A74 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (762, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B301043CC0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (763, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B30104CD55 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (764, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B301054D58 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (765, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B30105EB0B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (766, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B3010B69C3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (767, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B3010BC663 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (768, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''and'' 附近有语法错误。
关键字 ''order'' 附近有语法错误。', CAST(0x0000A5B3010BD2D5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (769, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'关键字 ''and'' 附近有语法错误。
关键字 ''order'' 附近有语法错误。', CAST(0x0000A5B3010C19F8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (770, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B3010CA55E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (771, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B3010CE9F3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (772, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（GetSingle(string SQLString)函数）:', N'error', N'''='' 附近有语法错误。', CAST(0x0000A5B3010CF466 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (773, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'''='' 附近有语法错误。
''='' 附近有语法错误。', CAST(0x0000A5B3010CF852 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (774, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B3010D3E62 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (775, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B3010D66EE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (776, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B3010F0E49 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (777, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B3010F5438 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (778, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：甘慧铭', CAST(0x0000A5B3010F5F26 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (779, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B3010F64E9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (780, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B3010FB690 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (781, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B301129397 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (782, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B30112D4DD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (783, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B30113598C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (784, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B301138D93 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (785, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B30113C4F9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (786, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：甘慧铭', CAST(0x0000A5B301152273 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (787, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B301152F9F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (788, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B301154C65 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (789, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B3011561B6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (790, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：甘慧铭', CAST(0x0000A5B301160699 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (791, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B301161036 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (792, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B30117A75F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (793, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B30117E851 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (794, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B3011B1D1E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (795, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B3011C571E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (796, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B3011CDA80 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (797, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B3011D918D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (798, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B3011D9C04 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (799, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B3011DCED9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (800, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B3012384E9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (801, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B30124A460 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (802, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B30125327B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (803, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B301277937 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (804, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B301277ABC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (805, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A4B4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (806, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A655 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (807, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A722 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (808, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A7BF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (809, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A842 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (810, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A8BA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (811, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A935 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (812, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A996 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (813, N'数据库操作日志', N'192.168.0.116', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B30127A9C4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (814, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B301283139 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (815, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B301287563 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (816, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B4011409B0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (817, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B4011420F2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (818, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B401142251 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (819, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B40114235E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (820, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B40114241D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (821, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B40114249B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (822, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B401142511 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (823, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B40114258B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (824, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B4011425F9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (825, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B401165BB8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (826, N'数据库操作日志', N'192.168.1.11', N'78:24:AF:D8:56:E8', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接)', CAST(0x0000A5B401165DE2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (827, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CD223 AS DateTime))
GO
print 'Processed 800 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (828, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CDDAA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (829, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CDEDB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (830, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CDF91 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (831, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CE159 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (832, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CE324 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (833, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CE3BE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (834, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CE45E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (835, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CE4F3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (836, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012CF451 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (837, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012D0402 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (838, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012D058D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (839, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "backup"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012D370F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (840, N'数据库操作日志', N'192.168.0.101', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B4012D41CE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (841, N'kell', N'192.168.0.101', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B4012DC40C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (842, N'kell', N'192.168.0.101', N'00:F1:40:81:19:E3', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：kell', CAST(0x0000A5B4012DCD76 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (843, N'甘慧铭', N'192.168.0.101', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B4012DD475 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (844, N'甘慧铭', N'192.168.0.101', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B4012DDC17 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (845, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B4012ED863 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (846, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：kell', CAST(0x0000A5B4012EDCF0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (847, N'甘慧铭', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B4012EE50A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (848, N'数据库操作日志', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''id'' 无效。', CAST(0x0000A5B4012F2D5F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (849, N'数据库操作日志', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''id'' 无效。', CAST(0x0000A5B4012F36D1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (850, N'数据库操作日志', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''id'' 无效。', CAST(0x0000A5B4012FF7B5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (851, N'数据库操作日志', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'列名 ''id'' 无效。', CAST(0x0000A5B401300245 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (852, N'甘慧铭', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B401306839 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (853, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B4015BED88 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (854, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B4015C851A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (855, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B5012D616B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (856, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B5012DC9C3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (857, N'kell', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B50131763B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (858, N'kell', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B501329C1D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (859, N'kell', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B50132F91D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (860, N'kell', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B50134BDF8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (861, N'江姐', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：江姐', CAST(0x0000A5B501356CD9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (862, N'江姐', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：江姐', CAST(0x0000A5B501368C20 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (863, N'江姐', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：江姐', CAST(0x0000A5B5013691D2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (864, N'江姐', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：江姐', CAST(0x0000A5B501374A98 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (865, N'江姐', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：江姐', CAST(0x0000A5B501375016 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (866, N'江姐', N'192.168.0.123', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：江姐', CAST(0x0000A5B5013759B3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (867, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B501387376 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (868, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B50138794D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (869, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B600FCD74A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (870, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B60113B6BF AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (871, N'老毛', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5B60113E2C4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (872, N'老毛', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5B601142DBA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (873, N'老毛', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5B601149185 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (874, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5B6011A9997 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (875, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5B6011E5330 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (876, N'老毛', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5B6012B69BE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (877, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6012F1818 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (878, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6012F5CED AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (879, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B601305573 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (880, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B60130AE7D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (881, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B601341D96 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (882, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B601349CEB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (883, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60135512F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (884, N'数据库操作日志', N'127.0.0.1', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'Timeout 时间已到。在操作完成之前超时时间已过或服务器未响应。', CAST(0x0000A5B60135BFF4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (885, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60135EF75 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (886, N'数据库操作日志', N'192.168.1.10', N'40:16:7E:44:71:4A', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5B60136193F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (887, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B60136CDC1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (888, N'kell', N'192.168.1.10', N'', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6013D0813 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (889, N'kell', N'127.0.0.1', N'', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6013D2F4F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (890, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6013D5DEE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (891, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6013DD6DA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (892, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B60147D5B6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (893, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B60148E7BB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (894, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B601498149 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (895, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6014BF6F2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (896, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6014C1D52 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (897, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6014C94F4 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (898, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6014CCD56 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (899, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6014CE5D3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (900, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6014D116D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (901, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6014D2430 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (902, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6014DAB15 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (903, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6014DC7D0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (904, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60150B6FB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (905, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B60150D2DE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (906, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60151CCBD AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (907, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B60151DF44 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (908, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60151FBBA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (909, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B601520C55 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (910, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5B60152BB9A AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (911, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：甘慧铭', CAST(0x0000A5B60152D760 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (912, N'甘慧铭', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5B60152DE4F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (913, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60154E102 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (914, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B60155128E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (915, N'数据库操作日志', N'169.254.161.255', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B601558151 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (916, N'数据库操作日志', N'169.254.161.255', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5B6015583C0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (917, N'kell', N'169.254.161.255', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60155E7D6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (918, N'kell', N'169.254.161.255', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B601562325 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (919, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60156DD96 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (920, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B60156F267 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (921, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B60159515F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (922, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B601599800 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (923, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6015A0BD1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (924, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6015B7297 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (925, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B6016B9747 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (926, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B6016C2E26 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (927, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5B7010C09F3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (928, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5B7010CB0AF AS DateTime))
GO
print 'Processed 900 total records'
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (929, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B800EAE16B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (930, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B800ED2EDA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (931, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B800EF24D1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (932, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5B800EF3786 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (933, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5B800FFC9B7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (934, N'kell', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：kell', CAST(0x0000A5B8010048F0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (935, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5B801006870 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (936, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5B801751D7B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (937, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5BC00C88F15 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (938, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.FormClosing', N'log', N'用户：戴君', CAST(0x0000A5BC00C8E81D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (939, N'戴君', N'192.168.1.12', N'E0:3F:49:48:3C:22', N'MainForm.Login', N'log', N'用户：戴君', CAST(0x0000A5BC00C97969 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (940, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5C101634BF2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (941, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5C101636182 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (942, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5C10163B474 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (943, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5C10163BE28 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (944, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5C10163F3C7 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (945, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.锁定ToolStripMenuItem1', N'log', N'用户：老毛', CAST(0x0000A5C10163FB0F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (946, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5C10163FFEC AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (947, N'老毛', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5C101640AF2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (948, N'kell', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5C10164217C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (949, N'kell', N'192.168.0.114', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5C101643E13 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (950, N'老毛', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5C101649357 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (951, N'老毛', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5C101649D23 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (952, N'老毛', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：老毛', CAST(0x0000A5C10165AE5F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (953, N'老毛', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：老毛', CAST(0x0000A5C10165B264 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (954, N'kell', N'192.168.0.120', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5C5011CD776 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (955, N'kell', N'192.168.0.120', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5C5011D847B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (956, N'kell', N'192.168.0.137', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5C501204582 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (957, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5C50120B0FB AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (958, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5C50120D13F AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (959, N'kell', N'192.168.0.137', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5C5012153A9 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (960, N'数据库操作日志', N'192.168.0.137', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5C5012167F5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (961, N'数据库操作日志', N'192.168.0.137', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5C501216F54 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (962, N'数据库操作日志', N'192.168.0.137', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5C501217470 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (963, N'甘慧铭', N'192.168.0.120', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：甘慧铭', CAST(0x0000A5C501621C57 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (964, N'kell', N'192.168.0.120', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5C50163328E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (965, N'kell', N'192.168.0.120', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5C501634B1D AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (966, N'甘慧铭', N'192.168.0.120', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：甘慧铭', CAST(0x0000A5C50163E7FE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (967, N'数据库操作日志', N'192.168.0.120', N'54:35:30:27:AB:DC', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'在从服务器接收结果时发生传输级错误。 (provider: TCP Provider, error: 0 - 指定的网络名不再可用。)', CAST(0x0000A5C501643637 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (968, N'kell', N'192.168.0.137', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5D401674F12 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (969, N'kell', N'192.168.0.137', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5D401676791 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (970, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5E600EF2501 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (971, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5E600EF6CD0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (972, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5E600EFA48E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (973, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5E600F1AEFA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (974, N'数据库操作日志', N'169.254.161.255', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5E600F7D5D5 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (975, N'数据库操作日志', N'169.254.161.255', N'00:F1:40:81:19:E3', N'DbHelperSQL类（Query(string SQLString)函数）', N'error', N'无法打开登录所请求的数据库 "TF"。登录失败。
用户 ''sa'' 登录失败。', CAST(0x0000A5E600F7E04C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (976, N'kell', N'169.254.161.255', N'00:F1:40:81:19:E3', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5E600F88D50 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (977, N'kell', N'169.254.161.255', N'00:F1:40:81:19:E3', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5E600F8B4A0 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (978, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务顺利停止。', CAST(0x0000A5E600F9D33E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (979, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A5E600F9E8E3 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (980, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A5E600FA9B03 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (981, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A5E600FABB66 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (983, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A60600F515E2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (984, N'老胡', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：老胡', CAST(0x0000A60600F5C46E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (985, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A60600F5D89C AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (986, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A60600F60E18 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (987, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A607013D519E AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (988, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A607013E0DBA AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (989, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A6070142C2D2 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (990, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A6070142CA24 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (991, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A60701454A80 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (992, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A607014569E6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (993, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务顺利停止。', CAST(0x0000A607014A3143 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (994, N'服务程序', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'鼎峰健身服务', N'log', N'服务启动...', CAST(0x0000A607014A4D64 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (995, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A607014A86CE AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (996, N'kell', N'192.168.1.13', N'40:16:7E:E7:15:3E', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A607014A8BA6 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (997, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A60801051E21 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (998, N'kell', N'192.168.1.10', N'40:16:7E:44:71:4A', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A6080107D7C8 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (999, N'老胡', N'192.168.0.135', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：老胡', CAST(0x0000A616015F8FB1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (1000, N'老胡', N'192.168.0.135', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：老胡', CAST(0x0000A616015FA13B AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (1002, N'kell', N'192.168.0.134', N'54:35:30:27:AB:DC', N'MainForm.Login', N'log', N'用户：kell', CAST(0x0000A62200FD73C1 AS DateTime))
INSERT [dbo].[TF_SystemLog] ([ID], [UserName], [UserIP], [UserMac], [Addr], [LogType], [Msg], [LogTime]) VALUES (1003, N'kell', N'192.168.0.134', N'54:35:30:27:AB:DC', N'MainForm.FormClosing', N'log', N'用户：kell', CAST(0x0000A62200FDDA2A AS DateTime))
SET IDENTITY_INSERT [dbo].[TF_SystemLog] OFF
/****** Object:  Table [dbo].[TF_StaffCondition]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_StaffCondition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[状态] [varchar](50) NULL,
	[是否在职] [bit] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_StaffStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_StaffCondition] ON
INSERT [dbo].[TF_StaffCondition] ([ID], [状态], [是否在职], [备注]) VALUES (2, N'离职', 0, N'')
INSERT [dbo].[TF_StaffCondition] ([ID], [状态], [是否在职], [备注]) VALUES (3, N'休假', 1, N'')
INSERT [dbo].[TF_StaffCondition] ([ID], [状态], [是否在职], [备注]) VALUES (4, N'请假', 1, N'')
INSERT [dbo].[TF_StaffCondition] ([ID], [状态], [是否在职], [备注]) VALUES (6, N'在职', 1, N'')
INSERT [dbo].[TF_StaffCondition] ([ID], [状态], [是否在职], [备注]) VALUES (7, N'学习', 0, N'')
SET IDENTITY_INSERT [dbo].[TF_StaffCondition] OFF
/****** Object:  Table [dbo].[TF_Staff]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Staff](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Depart] [int] NOT NULL,
	[Condition] [int] NOT NULL,
	[姓名] [varchar](50) NOT NULL,
	[性别] [bit] NOT NULL,
	[生日] [date] NULL,
	[电话] [varchar](50) NULL,
	[宿舍] [varchar](50) NULL,
	[钥匙数] [int] NOT NULL,
	[工衣数] [int] NOT NULL,
	[工牌数] [int] NOT NULL,
	[是否全部回收] [bit] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Staff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Staff] ON
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (3, 2, 6, N'魏军', 0, CAST(0xE2120B00 AS Date), N'15999849499', N'有', 1, 4, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (4, 4, 6, N'甘慧铭', 0, CAST(0xC50F0B00 AS Date), N'18664068138', N'有', 3, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (5, 2, 6, N'谢信', 0, CAST(0x500F0B00 AS Date), N'13724481805，13510661296', N'住', 2, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (6, 2, 6, N'刘金磊', 0, CAST(0x41180B00 AS Date), N'18680609021', N'住', 2, 3, 1, 0, N'新款冬装 1件 / L ，新款夏装 2 件 / L')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (7, 2, 6, N'张瑞雪', 1, CAST(0xA31E0B00 AS Date), N'13412298220', N'住', 2, 3, 1, 0, N'新款夏装 2 件 / L ，新款冬装 1件 / S')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (8, 2, 6, N'王晓华', 0, CAST(0xEA1C0B00 AS Date), N'13549383061', N'不住', 0, 1, 1, 0, N'新款冬装 1件 / XL')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (9, 2, 6, N'邓振县', 0, CAST(0x441C0B00 AS Date), N'13410700849', N'住', 1, 3, 1, 0, N'新款夏装 2 件 / L ，新款冬装 1件 / M')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (10, 3, 6, N'戴君', 1, CAST(0x4C1B0B00 AS Date), N'18874908260', N'住', 2, 3, 1, 0, N'新款冬装 1件 ， 夏装 2 件')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (11, 3, 6, N'张瑞雨', 1, CAST(0x77210B00 AS Date), N'18838224033', N'住', 2, 3, 1, 0, N'新款冬装 1件 ， 夏装 2 件')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (12, 14, 6, N'朱冬华', 0, CAST(0x9E150B00 AS Date), N'13827284822', N'没住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (13, 14, 6, N'李志军', 0, CAST(0x900C0B00 AS Date), N'13268762362', N'没住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (14, 14, 6, N'李权', 0, CAST(0x90150B00 AS Date), N'15889638980', N'没住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (15, 14, 6, N'梁海炎', 0, CAST(0x14190B00 AS Date), N'13560867965', N'住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (16, 14, 6, N'綦辉', 0, CAST(0x8A160B00 AS Date), N'13556690824', N'没住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (17, 14, 6, N'曾俊', 0, CAST(0x89140B00 AS Date), N'13532887787', N'没住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (18, 14, 6, N'罗婧', 0, CAST(0xE11A0B00 AS Date), N'15807696490', N'没住', 1, 0, 1, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (19, 13, 6, N'江姐', 1, CAST(0xE73A0B00 AS Date), N'13326898369', N'无', 1, 0, 0, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (20, 6, 6, N'何柏林', 0, CAST(0xE73A0B00 AS Date), N'13622657583', N'无', 2, 2, 0, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (21, 6, 6, N'藏桂萍', 1, CAST(0xE73A0B00 AS Date), N'', N'无', 0, 2, 0, 0, N'')
INSERT [dbo].[TF_Staff] ([ID], [Depart], [Condition], [姓名], [性别], [生日], [电话], [宿舍], [钥匙数], [工衣数], [工牌数], [是否全部回收], [备注]) VALUES (22, 6, 6, N'王爱玉', 1, CAST(0xE73A0B00 AS Date), N'13544829313', N'无', 0, 0, 0, 0, N'')
SET IDENTITY_INSERT [dbo].[TF_Staff] OFF
/****** Object:  Table [dbo].[TF_Role]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Permissions] [varchar](500) NOT NULL,
	[Remark] [varchar](500) NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_TF_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Role] ON
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (1, N'前台经理', N'1,4,5,6,7,10,13,14,15,34,35,36,38,39,44,45,49,50,51,56,57,58,66,73,74,75', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (2, N'销售经理', N'5,25,26,36,38,39,67,68,75', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (3, N'行政主管', N'5,8,9,10,16,17,18,19,20,21,22,23,27,28,29,30,31,33,36,38,39,41,46,47,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,69,70,71,72,75,1,4,35', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (4, N'教练主管', N'5,24,34,36,38,39,66,75', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (5, N'所有用户', N'5,36,38,39,40,75', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (6, N'系统管理', N'5,27,28,29,30,36,38,39,48,69,70,71,72,75', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (7, N'财务总监', N'5,11,12,32,36,38,39,49,54,55,75,74', N'', 1)
INSERT [dbo].[TF_Role] ([ID], [Name], [Permissions], [Remark], [Flag]) VALUES (8, N'财务', N'4,5,9,34,35,36,38,39,42,43,75', N'', 1)
SET IDENTITY_INSERT [dbo].[TF_Role] OFF
/****** Object:  Table [dbo].[TF_Renew]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Renew](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[卡种] [int] NOT NULL,
	[卡号] [varchar](50) NOT NULL,
	[续卡时间] [date] NOT NULL,
	[经手人] [int] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Renew] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Renew] ON
INSERT [dbo].[TF_Renew] ([ID], [MemberID], [卡种], [卡号], [续卡时间], [经手人], [备注]) VALUES (1, 14, 6, N'123', CAST(0xF33A0B00 AS Date), 11, N'')
INSERT [dbo].[TF_Renew] ([ID], [MemberID], [卡种], [卡号], [续卡时间], [经手人], [备注]) VALUES (2, 780, 7, N'234234', CAST(0xF53A0B00 AS Date), 5, N'234234')
INSERT [dbo].[TF_Renew] ([ID], [MemberID], [卡种], [卡号], [续卡时间], [经手人], [备注]) VALUES (3, 780, 3, N'123', CAST(0xF73A0B00 AS Date), 10, N'')
SET IDENTITY_INSERT [dbo].[TF_Renew] OFF
/****** Object:  Table [dbo].[TF_Property]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Property](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[名称] [varchar](50) NOT NULL,
	[单位] [varchar](50) NULL,
	[用途] [varchar](50) NULL,
	[价格] [money] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Property] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Property] ON
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (1, N'电脑', N'台', N'登记', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (2, N'电冰箱', N'台', N'冰水', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (3, N'跑步机', N'台', N'跑步', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (4, N'办公桌', N'张', N'办公', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (5, N'椅子', N'张', N'办公', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (6, N'升降凳子', N'张', N'办公', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (7, N'圆桌', N'张', N'办公', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (8, N'打印机', N'台', N'办公', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (9, N'消毒柜', N'台', N'消毒', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (10, N'文件柜', N'个', N'放置文件', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (11, N'壁扇', N'台', N'吹风', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (12, N'体测仪', N'台', N'体测', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (13, N'称重仪', N'台', N'称重', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (14, N'血压仪', N'个', N'量血压', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (15, N'空调', N'台', N'降温', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (16, N'电视', N'台', N'直播宣传', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (17, N'碟机', N'台', N'播放', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (18, N'功放机', N'台', N'扩音', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (19, N'微波炉', N'台', N'加热', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (20, N'落地扇', N'台', N'吹风', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (21, N'挂钟', N'个', N'看时间', 0.0000, N'')
INSERT [dbo].[TF_Property] ([ID], [名称], [单位], [用途], [价格], [备注]) VALUES (22, N'动感单车', N'辆', N'上课', 0.0000, N'')
SET IDENTITY_INSERT [dbo].[TF_Property] OFF
/****** Object:  Table [dbo].[TF_ProductType]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[类型] [varchar](50) NOT NULL,
	[备注] [varchar](500) NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_TF_AlertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_ProductType] ON
INSERT [dbo].[TF_ProductType] ([ID], [类型], [备注], [Flag]) VALUES (2, N'饮料', N'', 0)
INSERT [dbo].[TF_ProductType] ([ID], [类型], [备注], [Flag]) VALUES (3, N'矿泉水', N'', 0)
INSERT [dbo].[TF_ProductType] ([ID], [类型], [备注], [Flag]) VALUES (4, N'消耗品', N'', 0)
INSERT [dbo].[TF_ProductType] ([ID], [类型], [备注], [Flag]) VALUES (6, N'运动产品', N'', 0)
SET IDENTITY_INSERT [dbo].[TF_ProductType] OFF
/****** Object:  Table [dbo].[TF_Product]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[品名] [varchar](50) NOT NULL,
	[种类] [int] NOT NULL,
	[单位] [varchar](50) NOT NULL,
	[进价] [money] NOT NULL,
	[售价] [money] NOT NULL,
	[厂家] [varchar](50) NULL,
	[姓名] [varchar](50) NULL,
	[电话] [varchar](50) NULL,
	[地址] [varchar](500) NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Product] ON
INSERT [dbo].[TF_Product] ([ID], [品名], [种类], [单位], [进价], [售价], [厂家], [姓名], [电话], [地址], [备注]) VALUES (4, N'宝矿力', 2, N'支', 3.3000, 6.0000, N'', N'', N'123456', N'', N'')
INSERT [dbo].[TF_Product] ([ID], [品名], [种类], [单位], [进价], [售价], [厂家], [姓名], [电话], [地址], [备注]) VALUES (5, N'佳得乐', 2, N'支', 3.0000, 6.0000, N'', N'', N'123456', N'', N'')
INSERT [dbo].[TF_Product] ([ID], [品名], [种类], [单位], [进价], [售价], [厂家], [姓名], [电话], [地址], [备注]) VALUES (7, N'健身包', 6, N'个', 100.0000, 100.0000, N'', N'', N'', N'', N'')
INSERT [dbo].[TF_Product] ([ID], [品名], [种类], [单位], [进价], [售价], [厂家], [姓名], [电话], [地址], [备注]) VALUES (8, N'毛巾', 6, N'条', 20.0000, 30.0000, N'', N'', N'', N'', N'')
INSERT [dbo].[TF_Product] ([ID], [品名], [种类], [单位], [进价], [售价], [厂家], [姓名], [电话], [地址], [备注]) VALUES (9, N'红牛', 2, N'罐', 4.8000, 8.0000, N'', N'', N'', N'', N'')
INSERT [dbo].[TF_Product] ([ID], [品名], [种类], [单位], [进价], [售价], [厂家], [姓名], [电话], [地址], [备注]) VALUES (10, N'啦啦', 2, N'支', 213.0000, 1231.0000, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[TF_Product] OFF
/****** Object:  Table [dbo].[TF_PersonalTrain]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_PersonalTrain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[私教项目] [varchar](50) NOT NULL,
	[开始日期] [date] NULL,
	[结束日期] [date] NULL,
	[次数] [int] NOT NULL,
	[教练] [int] NOT NULL,
	[备注] [varchar](500) NULL,
	[SaleTime] [date] NOT NULL,
 CONSTRAINT [PK_TF_PersonalTrain] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_PersonalTrain] ON
INSERT [dbo].[TF_PersonalTrain] ([ID], [MemberID], [私教项目], [开始日期], [结束日期], [次数], [教练], [备注], [SaleTime]) VALUES (2, 14, N'年卡', CAST(0xF13A0B00 AS Date), CAST(0x5F3C0B00 AS Date), 100, 12, N'田野天发货', CAST(0xF13A0B00 AS Date))
INSERT [dbo].[TF_PersonalTrain] ([ID], [MemberID], [私教项目], [开始日期], [结束日期], [次数], [教练], [备注], [SaleTime]) VALUES (3, 15, N'半年卡', CAST(0xDC3A0B00 AS Date), CAST(0x923B0B00 AS Date), 60, 12, N'接花非花', CAST(0xF33A0B00 AS Date))
INSERT [dbo].[TF_PersonalTrain] ([ID], [MemberID], [私教项目], [开始日期], [结束日期], [次数], [教练], [备注], [SaleTime]) VALUES (5, 780, N'减肥', CAST(0xDF3A0B00 AS Date), CAST(0xC73B0B00 AS Date), 30, 12, N'', CAST(0xF73A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[TF_PersonalTrain] OFF
/****** Object:  Table [dbo].[TF_Permission]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Permission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsExcept] [bit] NOT NULL,
	[TheModule] [int] NOT NULL,
	[TheAction] [int] NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Permission] ON
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (1, N'编辑会员', 0, 1, 1, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (4, N'会员导出', 0, 1, 6, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (5, N'锁定系统', 0, 9, 0, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (6, N'会员导入', 0, 1, 5, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (7, N'群发短信', 0, 1, 7, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (8, N'编辑员工', 0, 2, 8, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (9, N'查询员工', 0, 2, 9, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (10, N'会籍卡种管理', 0, 1, 10, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (11, N'流水账', 0, 5, 11, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (12, N'流水明细', 0, 5, 12, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (13, N'前台出库登记', 0, 7, 13, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (14, N'前台回访登记', 0, 7, 14, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (15, N'前台续卡登记', 0, 7, 15, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (16, N'行政入库', 0, 8, 16, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (17, N'行政出库', 0, 8, 17, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (18, N'库存查询', 0, 8, 18, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (19, N'报销明细', 0, 8, 19, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (20, N'产品维护', 0, 8, 20, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (21, N'资产维护', 0, 8, 21, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (22, N'提醒', 0, 8, 22, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (23, N'产品类型', 0, 8, 23, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (24, N'私教登记', 0, 10, 24, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (25, N'销售工作计划', 0, 11, 25, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (26, N'销售工作日报', 0, 11, 26, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (27, N'表单管理', 0, 12, 27, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (28, N'表单类型管理', 0, 12, 28, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (29, N'回访类型管理', 0, 12, 29, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (30, N'回访结果管理', 0, 12, 30, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (31, N'导出员工', 0, 2, 31, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (32, N'导出流水账', 0, 5, 32, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (33, N'导出资产', 0, 8, 33, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (34, N'私教查询', 0, 10, 34, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (35, N'查询会员', 0, 1, 4, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (36, N'退出系统', 0, 13, 0, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (37, N'财务', 0, 6, 0, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (38, N'工作区权限', 0, 14, 0, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (39, N'状态区权限', 0, 15, 0, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (40, N'禁止删除财务信息', 1, 16, 35, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (41, N'员工状态', 0, 2, 36, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (42, N'财务文档列表', 0, 6, 37, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (43, N'财务新建文档', 0, 6, 41, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (44, N'前台文档列表', 0, 7, 38, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (45, N'前台新建文档', 0, 7, 42, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (46, N'行政文档列表', 0, 8, 39, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (47, N'行政新建文档', 0, 8, 43, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (48, N'全部文档列表', 0, 12, 40, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (49, N'每日业绩', 0, 7, 45, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (50, N'卡种编辑查询都可以', 0, 1, 48, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (51, N'会员编辑查询都可以', 0, 1, 59, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (52, N'员工编辑查询都可以', 0, 2, 66, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (53, N'员工状态编辑查询都可以', 0, 2, 65, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (54, N'流水账编辑查询都可以', 0, 5, 51, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (55, N'流水明细编辑查询都可以', 0, 5, 50, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (56, N'每日业绩编辑查询都可以', 0, 7, 49, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (57, N'前台回访编辑查询都可以', 0, 7, 52, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (58, N'前台续卡编辑查询都可以', 0, 7, 64, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (59, N'产品和资产编辑查询都允许入库', 0, 8, 57, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (60, N'产品和资产编辑查询都允许出库', 0, 8, 60, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (61, N'产品和资产都允许查询', 0, 8, 58, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (62, N'产品编辑查询都可以', 0, 8, 62, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (63, N'资产编辑查询都可以', 0, 8, 63, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (64, N'提醒编辑查询都可以', 0, 8, 46, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (65, N'产品类型编辑查询都可以', 0, 8, 47, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (66, N'私教编辑查询都可以', 0, 10, 61, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (67, N'工作日报编辑查询都可以', 0, 11, 67, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (68, N'工作计划编辑查询都可以', 0, 11, 68, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (69, N'表单模板编辑查询都可以', 0, 12, 55, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (70, N'表单类型编辑查询都可以', 0, 12, 56, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (71, N'跟进结果编辑查询都可以', 0, 12, 53, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (72, N'回访方式编辑查询都可以', 0, 12, 54, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (73, N'前台充值', 0, 7, 70, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (74, N'前台查询会员账户', 0, 7, 71, N'')
INSERT [dbo].[TF_Permission] ([ID], [Name], [IsExcept], [TheModule], [TheAction], [Remark]) VALUES (75, N'修改密码', 0, 20, 0, N'')
SET IDENTITY_INSERT [dbo].[TF_Permission] OFF
/****** Object:  Table [dbo].[TF_MoneyRecord]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_MoneyRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [int] NOT NULL,
	[发生金额] [money] NOT NULL,
	[是否充值] [bit] NOT NULL,
	[操作人] [varchar](50) NOT NULL,
	[发生时间] [datetime] NOT NULL,
 CONSTRAINT [PK_TF_MoneyRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_MoneyRecord] ON
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (2, 2, 100.0000, 1, N'kell', CAST(0x0000A596011D2E80 AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (3, 2, 10.0000, 0, N'kell', CAST(0x0000A596011DD648 AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (4, 2, 12.0000, 0, N'kell', CAST(0x0000A59800FB6066 AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (5, 2, 100.0000, 1, N'kell', CAST(0x0000A59800FC6D55 AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (6, 2, 60.0000, 0, N'kell', CAST(0x0000A59800FCFAEF AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (7, 2, 6.0000, 0, N'kell', CAST(0x0000A5980148E27B AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (8, 2, 60.0000, 0, N'kell', CAST(0x0000A59C0162493D AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (9, 1, 100.0000, 1, N'kell', CAST(0x0000A59C01634450 AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (10, 3, 100.0000, 1, N'kell', CAST(0x0000A59C0164271C AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (11, 3, 12.0000, 0, N'kell', CAST(0x0000A59C016443F1 AS DateTime))
INSERT [dbo].[TF_MoneyRecord] ([ID], [MID], [发生金额], [是否充值], [操作人], [发生时间]) VALUES (12, 1, 6.0000, 0, N'kell', CAST(0x0000A59C01685502 AS DateTime))
SET IDENTITY_INSERT [dbo].[TF_MoneyRecord] OFF
/****** Object:  Table [dbo].[TF_Module]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Module](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FormName] [varchar](50) NULL,
	[ControlName] [varchar](50) NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Module] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Module] ON
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (1, N'会员', N'MainForm', N'会员ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (2, N'员工', N'MainForm', N'员工ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (3, N'项目', N'MainForm', N'项目ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (4, N'日常', N'MainForm', N'日常ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (5, N'报表', N'MainForm', N'报表ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (6, N'财务', N'MainForm', N'财务ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (7, N'前台', N'MainForm', N'前台ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (8, N'行政', N'MainForm', N'行政ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (9, N'锁定', N'MainForm', N'锁定ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (10, N'私教', N'MainForm', N'私教ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (11, N'销售', N'MainForm', N'销售ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (12, N'系统', N'MainForm', N'系统ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (13, N'退出', N'MainForm', N'退出ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (14, N'工作区', N'MainForm', N'tabControl1', N'全部用户均有权限！')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (15, N'状态区', N'MainForm', N'statusStrip1', N'全部用户均有权限！')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (16, N'财务模块', N'FinanceForm', N'tabPage1', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (17, N'报表', N'MainForm', N'报表ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (18, N'消费', N'MainForm', N'行政ToolStripMenuItem', N'')
INSERT [dbo].[TF_Module] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (20, N'修改密码', N'MainForm', N'修改密码ToolStripMenuItem', N'')
SET IDENTITY_INSERT [dbo].[TF_Module] OFF
/****** Object:  Table [dbo].[TF_MemberMoney]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_MemberMoney](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[会员姓名] [varchar](50) NOT NULL,
	[会员电话] [varchar](50) NOT NULL,
	[账户余额] [money] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_MemberMoney] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_MemberMoney] ON
INSERT [dbo].[TF_MemberMoney] ([ID], [会员姓名], [会员电话], [账户余额], [备注]) VALUES (1, N'邓伟谊', N'13662930608', 94.0000, N'账户创建于2016-01-23 17:13:50')
INSERT [dbo].[TF_MemberMoney] ([ID], [会员姓名], [会员电话], [账户余额], [备注]) VALUES (2, N'沈丽旋', N'13902610219', 52.0000, N'账户创建于2016-01-23 17:17:56')
INSERT [dbo].[TF_MemberMoney] ([ID], [会员姓名], [会员电话], [账户余额], [备注]) VALUES (3, N'付海洋', N'15899917096', 88.0000, N'账户创建于2016-01-29 21:37:43')
SET IDENTITY_INSERT [dbo].[TF_MemberMoney] OFF
/****** Object:  Table [dbo].[TF_Member]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Member](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[卡种] [int] NOT NULL,
	[姓名] [varchar](50) NOT NULL,
	[性别] [bit] NOT NULL,
	[开卡日] [date] NOT NULL,
	[到期日] [date] NOT NULL,
	[卡号] [varchar](50) NULL,
	[生日] [date] NULL,
	[电话] [varchar](50) NULL,
	[住址] [varchar](500) NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Member] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Member] ON
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (14, 0, N'沈丽旋', 1, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0127363764', CAST(0x00000000 AS Date), N'13902610219', N'定金100，1288 一年卡                                                                                      ', N'2015.9.7续年卡1500元，赠送一个健身包、一个水杯、一个毛巾，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (15, 0, N'王万斌', 0, CAST(0x113B0B00 AS Date), CAST(0xBC3B0B00 AS Date), N'0130857188', CAST(0x7FFD0A00 AS Date), N'18676968255', N'                                                                                                    ', N'定金单100，1288 一年卡
2015.7.2老会员续卡送一个月，送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (16, 0, N'骆换秀', 1, CAST(0x113B0B00 AS Date), CAST(0x3B3B0B00 AS Date), N'0116651812', CAST(0xB6380B00 AS Date), N'15099788691', N'                                                                                                    ', N'定金100，1288一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (17, 0, N'沈卫霞', 1, CAST(0x113B0B00 AS Date), CAST(0xDA3B0B00 AS Date), N'0127695892', CAST(0xB7380B00 AS Date), N'18820307741', N'                                                                                                    ', N'定金单100，1288 一年卡
2015.6.16公司奖品送一个月（已延期）
2015.6.27续卡一年1500元，赠送健身包一个，老会员续卡赠送一个月（已延期），免费请假两次（30天起60天止）
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (18, 0, N'聂翔', 0, CAST(0x113B0B00 AS Date), CAST(0x293B0B00 AS Date), N'0121278900', CAST(0xB8380B00 AS Date), N'13925530545', N'                                                                                                    ', N'定金单100，1288一年卡
2015.9.10续半年卡900元（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (19, 0, N'许美建', 0, CAST(0x113B0B00 AS Date), CAST(0x4A3B0B00 AS Date), N'0130742548', CAST(0xDC390B00 AS Date), N'18825596997', N'                                                                                                    ', N'1500年卡
2015.8.11刘鹏转卡给许美建')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (20, 0, N'张盟', 0, CAST(0x113B0B00 AS Date), CAST(0x4A3B0B00 AS Date), N'0127361972', CAST(0xDC390B00 AS Date), N'13412282202', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (21, 0, N'陈振军', 0, CAST(0x113B0B00 AS Date), CAST(0xAC3B0B00 AS Date), N'0130700628', CAST(0x00000000 AS Date), N'13790163100', N'定金单100 ，1288一年卡                                                                                     ', N'2014.7.3办卡交费。
2015.7.28第一次来
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (22, 0, N'李漫妮', 1, CAST(0x113B0B00 AS Date), CAST(0xED3A0B00 AS Date), N'0131547220', CAST(0xB8380B00 AS Date), N'13416695050', N'2014.07.19开通此卡                                                                                      ', N'定金单100，1288一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (23, 0, N'杨朝霞', 1, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3713607315', CAST(0x9B040B00 AS Date), N'13922976614', N'                                                                                                    ', N'1388 一年卡，2014.6.27
2015.8.4.曾冬英转卡给杨朝霞，已收取转卡费300元  经办人：童威')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (24, 0, N'张大鹏', 0, CAST(0x113B0B00 AS Date), CAST(0x103B0B00 AS Date), N'0119187940', CAST(0xB9380B00 AS Date), N'18664818062', N'                                                                                                    ', N'定金单100，1288一年卡
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (25, 0, N'梁晓霞', 1, CAST(0x113B0B00 AS Date), CAST(0xC73B0B00 AS Date), N'0131536052', CAST(0xB9380B00 AS Date), N'15622234083', N'                                                                                                    ', N'定金单100,1288一年卡
2015.8.12续年卡1500元，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (26, 0, N'李宇超', 0, CAST(0x113B0B00 AS Date), CAST(0xF63A0B00 AS Date), N'0126534356', CAST(0x88390B00 AS Date), N'18002818678', N'                                                                                                    ', N'1500一年卡,送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (27, 0, N'叶彤', 1, CAST(0x113B0B00 AS Date), CAST(0x813B0B00 AS Date), N'0126291828', CAST(0xBA380B00 AS Date), N'13592773277', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (28, 0, N'周谞', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'116633156', CAST(0x00000000 AS Date), N'18680061227', N'1388年卡                                                                                              ', N'多送两个月（已延期）
2015.7.12王珍珍转给周谞，王珍珍红单备注转卡不需要收取转卡费
2015.7.12-8.12停卡一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (29, 0, N'谢宝林', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0122815812', CAST(0xBA380B00 AS Date), N'13686012326', N'                                                                                                    ', N'定金单100,1288一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (30, 0, N'王万兵', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127414132', CAST(0xBA380B00 AS Date), N'13500090478', N'                                                                                                    ', N'情侣卡2888')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (31, 0, N'杨俐', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0126276196', CAST(0xBA380B00 AS Date), N'13500090478', N'                                                                                                    ', N'情侣卡2888元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (32, 0, N'唐汉堂', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0130977812', CAST(0xBB380B00 AS Date), N'13609667386', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (33, 0, N'魏伟雁', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0126471060', CAST(0xBB380B00 AS Date), N'13826972137', N'                                                                                                    ', N'1444一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (34, 0, N'李琼兰', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0126791204', CAST(0xBB380B00 AS Date), N'13925814007', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (35, 0, N'彭美南', 1, CAST(0x113B0B00 AS Date), CAST(0xA13B0B00 AS Date), N'0130754292', CAST(0xBA380B00 AS Date), N'13925728429', N'陈天翔转给彭美南                                                                                            ', N'1388 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (36, 0, N'黎林', 0, CAST(0x113B0B00 AS Date), CAST(0xEF3A0B00 AS Date), N'0116642596', CAST(0xBA380B00 AS Date), N'13922959683', N'2015.5.9已取卡                                                                                         ', N'1388一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (37, 0, N'翟亚杰', 0, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3714596275', CAST(0xBA380B00 AS Date), N'18825737199', N'                                                                                                    ', N'定金单100,1988一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (38, 0, N'左科', 0, CAST(0x113B0B00 AS Date), CAST(0xF23A0B00 AS Date), N'0126380596', CAST(0xBA380B00 AS Date), N'13556716062', N'                                                                                                    ', N'定金单100,1288一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (39, 0, N'肖开文', 0, CAST(0x113B0B00 AS Date), CAST(0xDB3B0B00 AS Date), N'0130741284', CAST(0xBA380B00 AS Date), N'13925794588', N' 2015.7.5补卡，已交补卡费30元                                                                                ', N'1388 一年卡
2015.7.29续年卡1500元，老会员续卡赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (40, 0, N'周谞', 1, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0130792948', CAST(0xC8380B00 AS Date), N'13790529273', N'2014.12.29开始停卡至2015.4.29共4个月                                                                        ', N'1388元 一年卡，另送一个月，共计13个月，送运动包
2015.7.12停卡一个月
2015.9.14已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (41, 0, N'袁柏明', 0, CAST(0x113B0B00 AS Date), CAST(0xA53B0B00 AS Date), N'0122821956', CAST(0xC8380B00 AS Date), N'13809638810', N'    2015.7.22第一次来                                                                                   ', N'2088情侣卡(袁惠娟，已过期，卡已收回)。
（寒暑假期间可带小孩锻炼，每次来必须签订免责协议）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (42, 0, N'余勇', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0116676164', CAST(0xCC380B00 AS Date), N'13612651712', N'                                                                                                    ', N'1388元 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (43, 0, N'袁具伟', 0, CAST(0x113B0B00 AS Date), CAST(0x643C0B00 AS Date), N'0120900644', CAST(0xCC380B00 AS Date), N'13509844941', N' 2015.7.12开卡锻炼。                                                                                     ', N'1388元 一年卡，送包一个，一年可停卡两次，最长时间半年，学生
2015.11.1-2016.5.1学生上课，停卡半年（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (44, 0, N'张德智', 0, CAST(0x113B0B00 AS Date), CAST(0xA73B0B00 AS Date), N'3713906131', CAST(0xCD380B00 AS Date), N'13332682230', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (45, 0, N'彭兴', 1, CAST(0x113B0B00 AS Date), CAST(0xA73B0B00 AS Date), N'0123059428', CAST(0xCD380B00 AS Date), N'13728195709', N'                                                                                                    ', N'公司赠送
2015.7.28毛总批准延长有效期一年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (46, 0, N'刘娜', 1, CAST(0x113B0B00 AS Date), CAST(0xA73B0B00 AS Date), N'0130744356', CAST(0xCD380B00 AS Date), N'', N'                                                                                                    ', N'公司赠送
2015.7.29毛总批准延长有效期一年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (47, 0, N'黄俊', 1, CAST(0x113B0B00 AS Date), CAST(0x3C3C0B00 AS Date), N'0122523508', CAST(0xBB380B00 AS Date), N'13556735119', N'年卡到期后续两年补差价７００就可,1288一年卡，定金单100                                                                     ', N'2015.12.20第一次激活使用。
2015.12.28王平安转卡黄俊费用300元（经办人：魏军）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (48, 0, N'黄润华', 0, CAST(0x113B0B00 AS Date), CAST(0x7A3B0B00 AS Date), N'0127429460', CAST(0xBC380B00 AS Date), N'13929220193', N'2015.3.1-7.1停卡四个月 （已收费50）已延期                                                                        ', N'1500一年卡,已停卡一次2014.9.1-2014.12.1{已延期}
2015.8.28-12.28停卡四个月（已收费200元）（已延期）经办人：孙文凯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (49, 0, N'王文彬', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0131367332', CAST(0xBD380B00 AS Date), N'13929252025', N'                                                                                                    ', N'1388 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (50, 0, N'谢静', 1, CAST(0x113B0B00 AS Date), CAST(0x843B0B00 AS Date), N'0131523284', CAST(0x12150B00 AS Date), N'13414429462', N'                                                                                                    ', N'1388 一年卡
2015.10.11已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (51, 0, N'凯利斯', 0, CAST(0x113B0B00 AS Date), CAST(0xE03B0B00 AS Date), N'0122222420', CAST(0x00000000 AS Date), N'15818266868', N'                                                                                                    ', N'定金单100,1288 一年卡
免费请假两次(每次30-60天)
2015.6.16奖品送一个月（已延期）
1500元年卡
2015.6.16续年卡12个月,老会员续卡，多赠送一个月，共需延期13个月（已延期）
老会员续年卡，赠送月卡一张（已赠送）
2015.6.16 年卡续卡1500元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (52, 0, N'于丽', 1, CAST(0x113B0B00 AS Date), CAST(0xE93B0B00 AS Date), N'0123115220', CAST(0xBE380B00 AS Date), N'13751496979', N'                                                                                                    ', N'1388一年卡
2015.7.27续卡 1500元年卡，送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (53, 0, N'温毅彦', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0120710196', CAST(0xBE380B00 AS Date), N'13560833386', N'                                                                                                    ', N'定金100,1288 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (54, 0, N'朱建均', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0123089236', CAST(0xBE380B00 AS Date), N'18681086363', N'                                                                                                    ', N'定金单100,1288 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (55, 0, N'刘志刚', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0120698212', CAST(0xBE380B00 AS Date), N'13711824208', N'                                                                                                    ', N'1388情侣卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (56, 0, N'曹小冬', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0119237492', CAST(0xBF380B00 AS Date), N'18029168555', N'                                                                                                    ', N'和平老会员，赠送4个月,2788情侣卡，定金单100（周保金）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (57, 0, N'莫带弟', 1, CAST(0x113B0B00 AS Date), CAST(0xB73B0B00 AS Date), N'0131364548', CAST(0x00000000 AS Date), N'13316680797', N'2688情侣卡（莫带弟）定金单200                                                                                  ', N'2015.9.16-11.16停卡两个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (58, 0, N'谢福贤', 0, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'0130792852', CAST(0x00000000 AS Date), N'13421900143', N'                                                                                                    ', N'定金单200,2688元情侣卡王兴和（莫带弟）2014.7.10办卡
2015.9.15第一次来，王兴和转卡给谢福贤，已收取转卡费300元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (59, 0, N'王卫华', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0131391380', CAST(0xBF380B00 AS Date), N'13377707977', N'                                                                                                    ', N'1388一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (60, 0, N'饶军', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0128414388', CAST(0xC0380B00 AS Date), N'13450068015', N'                                                                                                    ', N'1388 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (61, 0, N'饶汉民', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0130679556', CAST(0xC0380B00 AS Date), N'18813380704', N'                                                                                                    ', N'1388 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (62, 0, N'陈柏青', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0116656420', CAST(0xC0380B00 AS Date), N'13809829951', N'                                                                                                    ', N'1388一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (63, 0, N'张聃', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0119551364', CAST(0x41190B00 AS Date), N'13421999040', N'                                                                                                    ', N'定金单100,1288一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (64, 0, N'罗应波（已过期）', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127479044', CAST(0xC1380B00 AS Date), N'13794897095', N'                                                                                                    ', N'1388一年卡
来过三次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (65, 0, N'黄红萍', 1, CAST(0x113B0B00 AS Date), CAST(0xBC3B0B00 AS Date), N'3716251395', CAST(0xC3380B00 AS Date), N'13726429649', N'                                                                                                    ', N'定金单200，1888一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (66, 0, N'欧丽霞', 1, CAST(0x113B0B00 AS Date), CAST(0x2F3B0B00 AS Date), N'0116781844', CAST(0xC4380B00 AS Date), N'13723567211', N'3月25开卡                                                                                              ', N'定金单200，1188一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (67, 0, N'钟凤章', 1, CAST(0x113B0B00 AS Date), CAST(0x1E3C0B00 AS Date), N'0127326964', CAST(0xC5380B00 AS Date), N'13712177123', N'                                                                                                    ', N'1388一年卡
2015.7.20续卡 交费1588元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (68, 0, N'伦伟艳', 1, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0127453524', CAST(0xD4390B00 AS Date), N'13412283335', N'                                                                                                    ', N'送健身包，送一个月（已延期），1500一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (69, 0, N'黄逸莎', 1, CAST(0x113B0B00 AS Date), CAST(0xFA3A0B00 AS Date), N'0116767252', CAST(0x43390B00 AS Date), N'13662903328', N'                                                                                                    ', N'一年卡1688元，从2014.12.1号到2016.2.1号到期（已送两个月）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (70, 0, N'钟宇珊', 1, CAST(0x113B0B00 AS Date), CAST(0x0A3C0B00 AS Date), N'0126313732', CAST(0xCF380B00 AS Date), N'13537472475', N'                                                                                                    ', N'1500元 年卡，赠送运动背包一个
2015.8.30老会员续卡1500元，赠送两个月（已延期）赠送健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (71, 0, N'李志权', 0, CAST(0x113B0B00 AS Date), CAST(0x653B0B00 AS Date), N'0127406884', CAST(0xD2380B00 AS Date), N'13713414822', N'2015.5.18第一次来.                                                                                      ', N'1688元 一年卡，赠送运动包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (72, 0, N'刘元婷', 1, CAST(0x113B0B00 AS Date), CAST(0x4A3C0B00 AS Date), N'0127694356', CAST(0xD7380B00 AS Date), N'13712224198', N'                                                                                                    ', N'送背包一个，1388元 一年卡
2015.11.2续年卡，周年庆活动续年卡赠送两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (73, 0, N'严漫娜', 1, CAST(0x113B0B00 AS Date), CAST(0x393B0B00 AS Date), N'0121568660', CAST(0xCB390B00 AS Date), N'13790329655', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (74, 0, N'郑胜强', 0, CAST(0x113B0B00 AS Date), CAST(0xB63B0B00 AS Date), N'0127389444', CAST(0xDD380B00 AS Date), N'18666489833', N'                                                                                                    ', N'公司赠送
2015.11.24胡总特批延长一年时间。（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (75, 0, N'孙倩婷', 1, CAST(0x113B0B00 AS Date), CAST(0x143B0B00 AS Date), N'0127458836', CAST(0xA7390B00 AS Date), N'18666868212', N'赠送健身包一个                                                                                             ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (76, 0, N'胡建国', 0, CAST(0x113B0B00 AS Date), CAST(0x6E3B0B00 AS Date), N'0127347636', CAST(0x00000000 AS Date), N'13602313580', N'赠送一个包 在一个月内可提升2年卡补交800元                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (77, 0, N'廖立翊', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'0123044324', CAST(0xD3380B00 AS Date), N'18938581199', N'2014,。08.01开通此卡                                                                                     ', N'送背包一个，次卡一张，会员转介绍，1388元 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (78, 0, N'田青凡', 1, CAST(0x113B0B00 AS Date), CAST(0x4A3C0B00 AS Date), N'0130820708', CAST(0xD6380B00 AS Date), N'18925775111', N'2014.8.2号开通卡                                                                                        ', N'1388元  一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (79, 0, N'黄晓雁', 1, CAST(0x113B0B00 AS Date), CAST(0x673C0B00 AS Date), N'0122007988', CAST(0xDA380B00 AS Date), N'13925863666', N'                                                                                                    ', N'公司赠送。
2015.6.23-2016.12.23因怀孕停卡一年半（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (80, 0, N'曾必强', 0, CAST(0x113B0B00 AS Date), CAST(0x3A3B0B00 AS Date), N'0127375204', CAST(0xCC390B00 AS Date), N'18825787202', N'赠送健身包一个                                                                                             ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (81, 0, N'吴作琴', 1, CAST(0x113B0B00 AS Date), CAST(0x7A3B0B00 AS Date), N'0130809204', CAST(0x00000000 AS Date), N'13925830725', N'1680元年卡                                                                                             ', N'送一个健身包，洗车卷一张，7次卡一张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (82, 0, N'李振辉', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0121359636', CAST(0xEF380B00 AS Date), N'15820879688', N'                                                                                                    ', N'1年卡1688，送一个月，包一个，黄喜南送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (83, 0, N'朱茵', 1, CAST(0x113B0B00 AS Date), CAST(0xD53B0B00 AS Date), N'0131366612', CAST(0x00000000 AS Date), N'13424823635', N'2014.8.28办卡，2015.7.7第一次来，开通激活                                                                       ', N'1588年卡，送两个月，共14个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (84, 0, N'夏韬', 0, CAST(0x113B0B00 AS Date), CAST(0xEE3A0B00 AS Date), N'0119261908', CAST(0xEA380B00 AS Date), N'13712991447', N'                                                                                                    ', N'1588一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (85, 0, N'黄小红', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127465780', CAST(0xEB380B00 AS Date), N'15818432472', N'                                                                                                    ', N'1688一年卡，送一个月，共13个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (86, 0, N'杨世健', 0, CAST(0x113B0B00 AS Date), CAST(0x3A3B0B00 AS Date), N'0126224148', CAST(0xCC390B00 AS Date), N'13650223292', N'                                                                                                    ', N'1500年卡，赠送健身包一个
2015.10.13补卡，已收取工本费30元（原卡号：100311）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (87, 0, N'陈欣', 1, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0127309972', CAST(0xF5380B00 AS Date), N'15992936073', N'                                                                                                    ', N'1688一年卡，送一个月共13个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (88, 0, N'孟详斌', 0, CAST(0x113B0B00 AS Date), CAST(0x973B0B00 AS Date), N'0127432500', CAST(0xF9380B00 AS Date), N'15812885828', N'停卡时间：9/28-10/28第一次停卡（已延期）；                                                                          ', N'1688元一年卡，送包一个，送一个月共13个月 (停一个月)')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (89, 0, N'程荣钦', 0, CAST(0x113B0B00 AS Date), CAST(0xED3B0B00 AS Date), N'0121782612', CAST(0xFE380B00 AS Date), N'13537213145', N'                                                                                                    ', N'1188元一年卡，2014/08/29办月卡(400元)09/11提升一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (90, 0, N'李娜', 1, CAST(0x113B0B00 AS Date), CAST(0x0B3B0B00 AS Date), N'0131626084', CAST(0xFF380B00 AS Date), N'18676612520', N'送一个月，介绍刘禁办卡                                                                                         ', N'1588元一年卡，送一个月，包一个介绍甘小姐办卡送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (91, 0, N'杨荣', 1, CAST(0x113B0B00 AS Date), CAST(0x153B0B00 AS Date), N'0122522212', CAST(0xA8390B00 AS Date), N'13729985616', N'                                                                                                    ', N'年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (92, 1, N'叶小芬（年卡）', 1, CAST(0x113B0B00 AS Date), CAST(0x383B0B00 AS Date), N'0130691348', CAST(0x0D390B00 AS Date), N'13713381182', N'2014.12.9-2015.2.9停卡2个月（已延期} 已取卡                                                                    ', N'1500 一年卡，有效期11月4号开始算 另送两个月 共14个月
（介绍熊丽办卡，赠送一个月，已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (93, 0, N'杨洁', 1, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'0131353860', CAST(0x39390B00 AS Date), N'13713088518', N'2014.10.5-2015.6.16停卡8个月11天（已延期）                                                                    ', N'1700元一年卡，加送2个月时间共14个月（已延期）  2015.6.16取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (94, 0, N'金小辉', 1, CAST(0x113B0B00 AS Date), CAST(0x313F0B00 AS Date), N'3713575635', CAST(0x1A390B00 AS Date), N'18029122262', N'续卡：2988三年卡                                                                                          ', N'1500一年卡，送一个月共13个月
2015.11.15.续卡，三年卡。送健身包一个，水杯一个，毛巾一条，月卡一张，周卡6张。2015.12.26--2016.2.26停卡两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (95, 0, N'李金莲', 1, CAST(0x113B0B00 AS Date), CAST(0x773B0B00 AS Date), N'0123275556', CAST(0xFA390B00 AS Date), N'13712237968', N'                                                                                                    ', N'1600年卡，赠7次卡两张,赠送健身包一个
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (96, 0, N'刘锡昭', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127718052', CAST(0x1A390B00 AS Date), N'133549439968', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (97, 0, N'林铭伟', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0117943076', CAST(0x1A390B00 AS Date), N'13713300388', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (98, 0, N'陈珊珊', 1, CAST(0x113B0B00 AS Date), CAST(0x5D3B0B00 AS Date), N'0127331940', CAST(0x1A390B00 AS Date), N'13609668206', N'2015.1.26-2015.2.26停卡1个月{已延期}                                                                       ', N'1500  1年卡，另送2个月
2015.7.7-9.7停卡两个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (99, 0, N'易刚', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0126777284', CAST(0x1B390B00 AS Date), N'18122882128', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (100, 0, N'王佳', 1, CAST(0x113B0B00 AS Date), CAST(0x543B0B00 AS Date), N'0127361572', CAST(0x47390B00 AS Date), N'13827225105', N'2015.5.4停卡三个月，已延期（程鹏处理）                                                                             ', N'1年卡1500元，1年内可停卡2次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (101, 0, N'袁巧葵', 1, CAST(0x113B0B00 AS Date), CAST(0xF33A0B00 AS Date), N'0121858084', CAST(0x29390B00 AS Date), N'13553851771', N'2015.1.13停卡至2015.4.13共3个月                                                                           ', N'1年卡1388元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (102, 0, N'刘仕艳', 1, CAST(0x113B0B00 AS Date), CAST(0x473C0B00 AS Date), N'0126472532', CAST(0x3F390B00 AS Date), N'15817568256', N'100787原卡已丢失                                                                                         ', N'一年卡1388
2015.11.14.续卡（1500元）送健身包一个。一个月时间（已延期） 月卡一张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (103, 0, N'陈汉东', 0, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0117955844', CAST(0xA9390B00 AS Date), N'13929214411', N'赠送15天 赠送一个健身包                                                                                       ', N'1500一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (104, 0, N'郑彩容', 1, CAST(0x113B0B00 AS Date), CAST(0x173B0B00 AS Date), N'0126564052', CAST(0x3F390B00 AS Date), N'13509822985', N'                                                                                                    ', N'年卡1500元，有效期从12.1号开始')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (105, 0, N'姚淦堂', 0, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0119243844', CAST(0x1B390B00 AS Date), N'13929444418', N'                                                                                                    ', N'公司赠送，年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (106, 0, N'杨英军', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127390564', CAST(0x1B390B00 AS Date), N'15107690042', N'                                                                                                    ', N'公司赠送，年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (107, 0, N'巩少鹏', 0, CAST(0x113B0B00 AS Date), CAST(0x423C0B00 AS Date), N'0127343236', CAST(0x1B390B00 AS Date), N'18688788161', N'                                                                                                    ', N'1688一年卡
2015.11.25续年卡，赠送一个月（已延期），赠送健身包，水杯，毛巾，月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (108, 0, N'李瑞薇', 1, CAST(0x113B0B00 AS Date), CAST(0x863B0B00 AS Date), N'0121977780', CAST(0x00000000 AS Date), N'13902693916', N'                                                                                                    ', N'公司赠送！
胡总同意2015.6.22林楚明转赠给李瑞薇')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (109, 0, N'陈韶涛', 0, CAST(0x113B0B00 AS Date), CAST(0xFD3B0B00 AS Date), N'0121268132', CAST(0x22390B00 AS Date), N'15913838168', N'                                                                                                    ', N'公司赠送，2015.9.26胡总特批赠送一年。已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (110, 0, N'袁永龙', 0, CAST(0x113B0B00 AS Date), CAST(0xF93A0B00 AS Date), N'0127441188', CAST(0x24390B00 AS Date), N'13929466667', N'2014.12.13-2015.3.31停卡3.5月，已延期                                                                      ', N'1年卡1500
2015.7.3袁润龙转卡给袁永龙')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (111, 0, N'王耀裕', 0, CAST(0x113B0B00 AS Date), CAST(0x253C0B00 AS Date), N'0122239588', CAST(0x2C390B00 AS Date), N'13926810523', N'                                                                                                    ', N'1688一年卡，送一个月，共13个月
2015.12.2.毛总特批延长一年。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (112, 0, N'朱晓岩', 1, CAST(0x113B0B00 AS Date), CAST(0xFE3A0B00 AS Date), N'0127321316', CAST(0x36390B00 AS Date), N'13798887125', N'2014.11.17号开通此卡                                                                                     ', N'1年卡1688元，送包1个，送1个月，共13个月
2015.7.3-8.2停卡一个月，已延期
2015.8.29已取卡，介绍朋友办卡赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (113, 0, N'陈欣华', 1, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0127439892', CAST(0x41390B00 AS Date), N'13556696366', N'2015.3.11开卡                                                                                         ', N'一年卡1588元。
2015.6.11-8.11停卡两个月（已延期）
2015.9.13本人已取卡')
GO
print 'Processed 100 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (114, 0, N'庞刚', 0, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0127458276', CAST(0xAA390B00 AS Date), N'13532323787', N'                                                                                                    ', N'1544年卡。
2015.6.12-8.10停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (115, 0, N'蔡婷', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'0130699748', CAST(0x48390B00 AS Date), N'13553869654', N'2015.5.19第二次停卡2015.5.19-8.20停卡三个月（已延期）                                                              ', N'1年卡1500元，送2个月，1个包
2015.7.29邹国祥转卡给蔡婷 已收转卡费300元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (116, 0, N'张素芳', 1, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0119548292', CAST(0x59390B00 AS Date), N'18826857959', N'2015.1.21-2015.3.1停卡2个月。{已延期}                                                                       ', N'1688一年卡，送一个月，包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (117, 0, N'李岸滔', 0, CAST(0x113B0B00 AS Date), CAST(0x083B0B00 AS Date), N'0116625476', CAST(0x5E390B00 AS Date), N'13434563355', N'                                                                                                    ', N'一年卡，2588元，送两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (118, 0, N'梁炬斌', 0, CAST(0x113B0B00 AS Date), CAST(0xAC3B0B00 AS Date), N'0123169316', CAST(0x00000000 AS Date), N'15876430762', N'                                                                                                    ', N'年卡1688元
2015.7.29陈栩帆转卡给梁炬斌')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (119, 0, N'王云龙', 0, CAST(0x113B0B00 AS Date), CAST(0x363B0B00 AS Date), N'0128913668', CAST(0x73390B00 AS Date), N'13790611888', N'                                                                                                    ', N'年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (120, 0, N'卢锐添', 0, CAST(0x113B0B00 AS Date), CAST(0x903B0B00 AS Date), N'0127438356', CAST(0x4F390B00 AS Date), N'18664111022', N'                                                                                                    ', N'2288年卡，送6个月{毛总同意}（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (121, 0, N'赵晓晖', 1, CAST(0x113B0B00 AS Date), CAST(0x7D3B0B00 AS Date), N'0122121732', CAST(0xAA390B00 AS Date), N'13713435047', N'可免费停卡一次是3个月，另可再停一次1个月,。                                                                             ', N'2015.4.13开通，1544年卡。
2015.6.12-8.10停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (122, 0, N'彭琳', 1, CAST(0x113B0B00 AS Date), CAST(0xF03A0B00 AS Date), N'0127455812', CAST(0x65390B00 AS Date), N'13412305510', N'可以转卡3次，每次最多一个月                                                                                      ', N'年卡1588元，再给赵会萍的赠1个月（已延期），并送2次停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (123, 0, N'于吉亮', 0, CAST(0x113B0B00 AS Date), CAST(0x2F3B0B00 AS Date), N'0128081668', CAST(0x65390B00 AS Date), N'13798867626', N'送两个月共14个月 送一个包                                                                                      ', N'年卡1888元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (124, 0, N'杨倩', 1, CAST(0x113B0B00 AS Date), CAST(0x2A3B0B00 AS Date), N'0130818596', CAST(0x68390B00 AS Date), N'13975407753', N'                                                                                                    ', N'1888元一年卡。
2015.6.22-9.22停卡三个月(已延期）
2015.9.16提前结束假期，取卡
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (125, 0, N'温伟强', 0, CAST(0x113B0B00 AS Date), CAST(0xF63A0B00 AS Date), N'0130686804', CAST(0x6A390B00 AS Date), N'13712863888', N'                                                                                                    ', N'1588一年卡，送一个月，包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (126, 0, N'董碧琴', 1, CAST(0x113B0B00 AS Date), CAST(0xF13B0B00 AS Date), N'0121373108', CAST(0x00000000 AS Date), N'13929421182', N'1960年卡                                                                                              ', N'2015.1.25停卡至2016.10.9怀孕 停卡280天 已延期 
送一个包 送7次卡  
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (127, 0, N'黄小美', 1, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0116712340', CAST(0x74390B00 AS Date), N'13556631496', N'                                                                                                    ', N'1500年卡，在半年之内提
2015.9.9已补卡，已收取工本费30元。原卡号：100700
2015.10.17 小孩办理跆拳道年卡，赠送大礼包【水杯一个；毛巾一条；健身包一个；加一个月（已延期）】经办人：谢信')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (128, 0, N'肖翠娥', 1, CAST(0x113B0B00 AS Date), CAST(0x023B0B00 AS Date), N'0130097380', CAST(0x76390B00 AS Date), N'13560846506', N'送包，一年可以停卡三次，一次一个月                                                                                   ', N'一年卡1888，2015.1.9号开通卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (129, 0, N'陈晶莹', 1, CAST(0x113B0B00 AS Date), CAST(0x173B0B00 AS Date), N'0126470740', CAST(0x98390B00 AS Date), N'13790216333', N'  1500元年卡                                                                                           ', N'2015.3.1开始使用，年卡1588
2015.6.27补卡！之前的卡已丢失 
2015.8.31 叶朗转给陈晶莹，已收取转卡费200元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (130, 0, N'吴磊磊', 0, CAST(0x113B0B00 AS Date), CAST(0x143B0B00 AS Date), N'0120208580', CAST(0xA6390B00 AS Date), N'18922502255', N'送一个包                                                                                                ', N'一年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (131, 0, N'刘美嫦', 1, CAST(0x113B0B00 AS Date), CAST(0x4F3B0B00 AS Date), N'0122669028', CAST(0xA6390B00 AS Date), N'13450189953', N'赠送一个包                                                                                               ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (132, 0, N'胡星慧', 1, CAST(0x113B0B00 AS Date), CAST(0x6D3B0B00 AS Date), N'0127407828', CAST(0xA6390B00 AS Date), N'13751311397', N'赠送一个包                                                                                               ', N'2015.5.10-2015.8.10停卡三个月，年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (133, 0, N'梁少江', 0, CAST(0x113B0B00 AS Date), CAST(0x183B0B00 AS Date), N'0127478772', CAST(0xAA390B00 AS Date), N'13423329457', N'赠送一个健身包                                                                                             ', N'一年卡1688元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (134, 0, N'李小君', 1, CAST(0x113B0B00 AS Date), CAST(0x183B0B00 AS Date), N'0127472772', CAST(0xAB390B00 AS Date), N'13763281155', N'在3个月内提升两年卡补交600元                                                                                    ', N'1888年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (135, 0, N'周慧', 1, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0119498884', CAST(0xB4390B00 AS Date), N'15099759112', N'送一个包                                                                                                ', N'年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (136, 0, N'原卡已丢彭美容', 1, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0131516244', CAST(0xB4390B00 AS Date), N'13686100901', N'                                                                                                    ', N'年卡1500元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (137, 0, N'何思宁', 0, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0120213700', CAST(0xB4390B00 AS Date), N'18664001550', N'赠送健身包一个                                                                                             ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (138, 0, N'杨小丽', 1, CAST(0x113B0B00 AS Date), CAST(0x273B0B00 AS Date), N'0120702932', CAST(0xB5390B00 AS Date), N'18928288623', N'之前一百订金，再交1500一共1600元                                                                                ', N'2015.3.17开卡，1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (139, 0, N'成湘', 0, CAST(0x113B0B00 AS Date), CAST(0x233B0B00 AS Date), N'0127587396', CAST(0xB5390B00 AS Date), N'13751370100', N'                                                                                                    ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (140, 0, N'郑淼', 1, CAST(0x113B0B00 AS Date), CAST(0x543B0B00 AS Date), N'0130793700', CAST(0xB5390B00 AS Date), N'13922939007', N'                                                                                                    ', N'可请假两次 一至三个月，1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (141, 0, N'李雪玲', 1, CAST(0x113B0B00 AS Date), CAST(0x243B0B00 AS Date), N'0127340804', CAST(0xB6390B00 AS Date), N'18118787234', N'赠送周卡一张 赠送健身包一个                                                                                      ', N'1688年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (142, 0, N'陈盈妤', 1, CAST(0x113B0B00 AS Date), CAST(0x243B0B00 AS Date), N'0122235988', CAST(0xB6390B00 AS Date), N'13580998506', N'                                                                                                    ', N'1988年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (143, 0, N'王洁舒', 1, CAST(0x113B0B00 AS Date), CAST(0x253B0B00 AS Date), N'0131030292', CAST(0xB7390B00 AS Date), N'13602333476', N'送一个包                                                                                                ', N'年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (144, 0, N'麦宝珠', 1, CAST(0x113B0B00 AS Date), CAST(0x253B0B00 AS Date), N'0116665748', CAST(0xB7390B00 AS Date), N'13532314222', N'送一个包                                                                                                ', N'年卡1588
2015.10.27补卡，已收工本费30元（100726）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (145, 0, N'祁伟怡', 1, CAST(0x113B0B00 AS Date), CAST(0x253B0B00 AS Date), N'0128000900', CAST(0xB7390B00 AS Date), N'13532407889', N'送一个包                                                                                                ', N'年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (146, 0, N'桂华全', 0, CAST(0x113B0B00 AS Date), CAST(0x253B0B00 AS Date), N'0127332468', CAST(0xB7390B00 AS Date), N'13926822080', N'送一个包                                                                                                ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (147, 0, N'郭建新', 0, CAST(0x113B0B00 AS Date), CAST(0x053B0B00 AS Date), N'0130123220', CAST(0x79390B00 AS Date), N'13694933204', N'                                                                                                    ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (148, 0, N'黎兆标', 0, CAST(0x113B0B00 AS Date), CAST(0x053B0B00 AS Date), N'0128073508', CAST(0x79390B00 AS Date), N'13694938830', N'                                                                                                    ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (149, 0, N'黄裕烽', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'0121413220', CAST(0x7C390B00 AS Date), N'13662863222', N'赠送6个月时间（毛总已签字）                                                                                      ', N'一年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (150, 0, N'张盼', 1, CAST(0x113B0B00 AS Date), CAST(0xF33A0B00 AS Date), N'0127323332', CAST(0x84390B00 AS Date), N'13712703610', N'送包一个                                                                                                ', N'1388一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (151, 0, N'胡志谋', 0, CAST(0x113B0B00 AS Date), CAST(0x373B0B00 AS Date), N'0127333492', CAST(0xC9390B00 AS Date), N'13538668808', N'                                                                                                    ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (152, 0, N'赵瑞雪', 1, CAST(0x113B0B00 AS Date), CAST(0xF93A0B00 AS Date), N'0116760372', CAST(0x8C390B00 AS Date), N'13556608659', N'                                                                                                    ', N'送一个包，1388一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (153, 0, N'崔兰丹', 1, CAST(0x113B0B00 AS Date), CAST(0x183B0B00 AS Date), N'0127571252', CAST(0xAB390B00 AS Date), N'13790685561', N'送一个包                                                                                                ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (154, 0, N'李玮琪', 1, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0122579204', CAST(0xAC390B00 AS Date), N'18566117253', N'                                                                                                    ', N'年卡1588元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (155, 0, N'陈雪梅', 1, CAST(0x113B0B00 AS Date), CAST(0x203B0B00 AS Date), N'0121403988', CAST(0xB1390B00 AS Date), N'13711983328', N'赠送健身包                                                                                               ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (156, 0, N'陈兰柱', 1, CAST(0x113B0B00 AS Date), CAST(0x203B0B00 AS Date), N'0116647972', CAST(0xB1390B00 AS Date), N'13609697588', N'赠送健身包                                                                                               ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (157, 0, N'张浩彬', 0, CAST(0x113B0B00 AS Date), CAST(0x1F3B0B00 AS Date), N'0126294900', CAST(0xB1390B00 AS Date), N'18825825279', N'                                                                                                    ', N'1800年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (158, 0, N'卢杰', 0, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0119467860', CAST(0xB2390B00 AS Date), N'15920629123', N'                                                                                                    ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (159, 0, N'李伟军', 0, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0121036404', CAST(0xF2390B00 AS Date), N'13925776048', N'                                                                                                    ', N'1500年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (160, 0, N'柳宇', 0, CAST(0x113B0B00 AS Date), CAST(0x633B0B00 AS Date), N'0123092084', CAST(0xF5390B00 AS Date), N'13144875577', N'                                                                                                    ', N'1888年卡，赠送健身包一个
2015.10.7补卡，已收取补卡费30元，旧卡号100202，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (161, 0, N'肖卫军', 0, CAST(0x113B0B00 AS Date), CAST(0x643B0B00 AS Date), N'0122803268', CAST(0xF6390B00 AS Date), N'13825711285', N'                                                                                                    ', N'1800年卡，赠送健身包一个，赠送私教课两节')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (162, 0, N'周敏', 1, CAST(0x113B0B00 AS Date), CAST(0xA83B0B00 AS Date), N'0117926740', CAST(0xF7390B00 AS Date), N'13829105945', N'赠送一个健身包，赠送一个月                                                                                       ', N'1688年卡
2015.11.25-2016.1.25停卡2个月(已延期）
2015.12.31开卡、已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (163, 0, N'聂卫平', 0, CAST(0x113B0B00 AS Date), CAST(0x853B0B00 AS Date), N'0120179188', CAST(0x00000000 AS Date), N'13609679201', N'                                                                                                    ', N'赠送健身包一个，私人教练两节课，介绍朋友赠送一个月
1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (164, 0, N'张幸子', 0, CAST(0x113B0B00 AS Date), CAST(0x6D3B0B00 AS Date), N'0119501972', CAST(0xFF390B00 AS Date), N'18681010186', N'                                                                                                    ', N'1688年卡，赠送健身包一个，洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (165, 0, N'叶德娴', 1, CAST(0x113B0B00 AS Date), CAST(0x363B0B00 AS Date), N'0130985268', CAST(0xFF390B00 AS Date), N'13712105722', N'                                                                                                    ', N'1800元年卡，送一个包送一张次卡
2015.10.20原卡丢失已补卡，收取工本费30，原卡号：100215')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (166, 0, N'刘梨', 1, CAST(0x113B0B00 AS Date), CAST(0x6D3B0B00 AS Date), N'0116614468', CAST(0xFF390B00 AS Date), N'13556625459', N'                                                                                                    ', N'1500元年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (167, 0, N'李翠萍', 1, CAST(0x113B0B00 AS Date), CAST(0x8D3B0B00 AS Date), N'0127676404', CAST(0x003A0B00 AS Date), N'13829288811', N'                                                                                                    ', N'1500年卡
2015.9.21李秋林转卡给李翠萍，已收取转卡费200元，经办人：魏军')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (168, 0, N'张伟', 0, CAST(0x113B0B00 AS Date), CAST(0x8D3B0B00 AS Date), N'0122573572', CAST(0x003A0B00 AS Date), N'15013503597', N'赠送一个月                                                                                               ', N'1688年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (169, 0, N'曹人栋', 0, CAST(0x113B0B00 AS Date), CAST(0x0F3D0B00 AS Date), N'3714741939', CAST(0xB5380B00 AS Date), N'13660281625', N'2788三年卡                                                                                             ', N'可以带小孩，自己负责安全,定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (170, 0, N'付云飞', 0, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0131008132', CAST(0xB7390B00 AS Date), N'13790207985', N'送一个包                                                                                                ', N'年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (171, 0, N'袁淦成', 0, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0126866532', CAST(0xB7390B00 AS Date), N'13725823981', N'                                                                                                    ', N'赠送一个健身包，2188一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (172, 0, N'黄群', 1, CAST(0x113B0B00 AS Date), CAST(0x253B0B00 AS Date), N'0127327684', CAST(0xB7390B00 AS Date), N'13450669689', N'赠送体验券 赠送两节私教课 赠送一个包                                                                                 ', N'年卡1988')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (173, 0, N'罗义', 0, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0130794964', CAST(0xB8390B00 AS Date), N'13412890301', N'                                                                                                    ', N'送一个包，1688元年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (174, 0, N'邓建波', 0, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0130822948', CAST(0xB8390B00 AS Date), N'13790261297', N'                                                                                                    ', N'1500元年卡，送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (175, 0, N'朴元浩', 0, CAST(0x113B0B00 AS Date), CAST(0x273B0B00 AS Date), N'0127462068', CAST(0xB9390B00 AS Date), N'13829232079', N'                                                                                                    ', N'1588年卡，送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (176, 0, N'陈冬冬', 0, CAST(0x113B0B00 AS Date), CAST(0x273B0B00 AS Date), N'0130903492', CAST(0xB9390B00 AS Date), N'13450673154', N'                                                                                                    ', N'1588年卡，赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (177, 0, N'丁建龙', 0, CAST(0x113B0B00 AS Date), CAST(0x273B0B00 AS Date), N'0122117892', CAST(0xB9390B00 AS Date), N'18899748755', N'半年提升年卡补交200元，定金1388元                                                                                ', N'1588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (178, 0, N'甘敏', 1, CAST(0x113B0B00 AS Date), CAST(0x473B0B00 AS Date), N'0131989796', CAST(0xBA390B00 AS Date), N'13712859092', N'赠送一个月 送一个包                                                                                          ', N'年卡1588')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (179, 0, N'刘政', 0, CAST(0x113B0B00 AS Date), CAST(0x2B3B0B00 AS Date), N'0127710436', CAST(0xBD390B00 AS Date), N'18620230311', N'                                                                                                    ', N'1年卡2000块，送一个包，送一张次卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (180, 0, N'石雪', 1, CAST(0x113B0B00 AS Date), CAST(0x2C3B0B00 AS Date), N'0122650276', CAST(0xBE390B00 AS Date), N'13751498880', N'送一个健身包                                                                                              ', N'1588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (181, 0, N'蒋潇俊', 0, CAST(0x113B0B00 AS Date), CAST(0x2C3B0B00 AS Date), N'0128112052', CAST(0xBE390B00 AS Date), N'18890504799', N'赠送一个健身包，赠送100元水费                                                                                    ', N'1800年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (182, 0, N'黄杰媚', 1, CAST(0x113B0B00 AS Date), CAST(0x363B0B00 AS Date), N'0126453028', CAST(0xBF390B00 AS Date), N'13726433074', N'                                                                                                    ', N'1500 1年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (183, 0, N'黄秋青', 1, CAST(0x113B0B00 AS Date), CAST(0xA43C0B00 AS Date), N'0127352516', CAST(0xBF390B00 AS Date), N'15992794702', N'                                                                                                    ', N'1500 一年卡
2015.12.4-2016.12.4因怀孕停卡一年，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (184, 0, N'刘晓明', 0, CAST(0x113B0B00 AS Date), CAST(0x343B0B00 AS Date), N'0116658468', CAST(0xBF390B00 AS Date), N'13600270068', N'                                                                                                    ', N'1600 1年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (185, 0, N'钟苑瑜', 1, CAST(0x113B0B00 AS Date), CAST(0x343B0B00 AS Date), N'0131537364', CAST(0xBF390B00 AS Date), N'13926998788', N'                                                                                                    ', N'1600 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (186, 0, N'曹盼', 0, CAST(0x113B0B00 AS Date), CAST(0x2D3B0B00 AS Date), N'0123067620', CAST(0xBF390B00 AS Date), N'18684847677', N'                                                                                                    ', N'1800 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (187, 0, N'陈嘉鸿', 0, CAST(0x113B0B00 AS Date), CAST(0xFF3B0B00 AS Date), N'0129166724', CAST(0x00000000 AS Date), N'15602613082', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (188, 0, N'方武', 0, CAST(0x113B0B00 AS Date), CAST(0x2D3B0B00 AS Date), N'0127685860', CAST(0xBF390B00 AS Date), N'15820916925', N'                                                                                                    ', N'1800 一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (189, 0, N'刘英', 1, CAST(0x113B0B00 AS Date), CAST(0x4D3B0B00 AS Date), N'0126805508', CAST(0xC0390B00 AS Date), N'13728374847', N'赠送一个健身包                                                                                             ', N'1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (190, 0, N'吴莉莉', 1, CAST(0x113B0B00 AS Date), CAST(0xBA3C0B00 AS Date), N'0130851396', CAST(0xC0390B00 AS Date), N'13751345982', N'赠送一个健身包                                                                                             ', N'1600年卡
2015.10.6-2016.10.5停卡一年，本人怀孕（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (191, 0, N'蒋启航', 0, CAST(0x113B0B00 AS Date), CAST(0x4D3B0B00 AS Date), N'0130814244', CAST(0xC0390B00 AS Date), N'18665170158', N'赠送健身包一个                                                                                             ', N'1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (192, 0, N'谢美玲', 1, CAST(0x113B0B00 AS Date), CAST(0xBA3C0B00 AS Date), N'0127397844', CAST(0xC0390B00 AS Date), N'13728192368', N'赠送一个健身包                                                                                             ', N'1600年卡
2015.10.6-2016.10.5停卡一年，本人怀孕（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (193, 0, N'陈类联', 0, CAST(0x113B0B00 AS Date), CAST(0x2E3B0B00 AS Date), N'0123133924', CAST(0xC0390B00 AS Date), N'15217256585', N'                                                                                                    ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (194, 0, N'罗卫东', 0, CAST(0x113B0B00 AS Date), CAST(0x313B0B00 AS Date), N'0117958516', CAST(0xC3390B00 AS Date), N'13712020235', N'                                                                                                    ', N'2015.3.27胡总赠送年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (195, 0, N'施艺生', 0, CAST(0x113B0B00 AS Date), CAST(0x8F3B0B00 AS Date), N'0123261956', CAST(0xC3390B00 AS Date), N'13712273277', N'                                                                                                    ', N'2015.23.27胡总赠送年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (196, 0, N'崔洪硕', 0, CAST(0x113B0B00 AS Date), CAST(0x363B0B00 AS Date), N'0127296084', CAST(0xC5390B00 AS Date), N'13650045111', N'                                                                                                    ', N'1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (197, 0, N'陈志强', 0, CAST(0x113B0B00 AS Date), CAST(0x333B0B00 AS Date), N'0127298196', CAST(0xC5390B00 AS Date), N'18819118460', N'                                                                                                    ', N'1688年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (198, 0, N'刘晨爽', 1, CAST(0x113B0B00 AS Date), CAST(0x343B0B00 AS Date), N'0127701620', CAST(0xC6390B00 AS Date), N'15816828479', N'     原卡已丢失100313，2015.6.17日已补卡 现卡100314                                                             ', N'1500一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (199, 0, N'张瑞', 0, CAST(0x113B0B00 AS Date), CAST(0x363B0B00 AS Date), N'0130709428', CAST(0xC6390B00 AS Date), N'13922994077', N'                                                                                                    ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (200, 0, N'文咏枚', 1, CAST(0x113B0B00 AS Date), CAST(0x1F3B0B00 AS Date), N'0130831444', CAST(0xC6390B00 AS Date), N'13143250138', N'                                                                                                    ', N'1500年卡，送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (201, 0, N'张瑾', 1, CAST(0x113B0B00 AS Date), CAST(0x543B0B00 AS Date), N'0121279412', CAST(0xC6390B00 AS Date), N'18688610880', N'                                                                                                    ', N'1800年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (202, 0, N'谢银娟', 1, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0116734052', CAST(0xC7390B00 AS Date), N'13929498400', N'送健身包一个                                                                                              ', N'1500一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (203, 0, N'彭祖宏', 0, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0123102436', CAST(0xC7390B00 AS Date), N'13923784894', N'                                                                                                    ', N'1年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (204, 0, N'李禄勤', 0, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0130974996', CAST(0xC7390B00 AS Date), N'13556788158', N'                                                                                                    ', N'1年卡1500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (205, 0, N'高佳权', 0, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0123199012', CAST(0xC7390B00 AS Date), N'13728456850', N'                                                                                                    ', N'1500 1年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (206, 0, N'郭淑雯', 1, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0126347188', CAST(0xC7390B00 AS Date), N'13798937007', N'                                                                                                    ', N'1500一年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (207, 0, N'叶丽清', 1, CAST(0x113B0B00 AS Date), CAST(0x373B0B00 AS Date), N'0130031604', CAST(0xC9390B00 AS Date), N'13728130503', N'                                                                                                    ', N'1500 年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (208, 0, N'钱伟平', 0, CAST(0x113B0B00 AS Date), CAST(0x373B0B00 AS Date), N'0130800948', CAST(0xC9390B00 AS Date), N'18664018795', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (209, 0, N'危淑玲', 1, CAST(0x113B0B00 AS Date), CAST(0x373B0B00 AS Date), N'0119253348', CAST(0xC9390B00 AS Date), N'13580845175', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (210, 0, N'黄桂娇', 1, CAST(0x113B0B00 AS Date), CAST(0x373B0B00 AS Date), N'0127310132', CAST(0xC9390B00 AS Date), N'15917675160', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (211, 0, N'蔡林春', 0, CAST(0x113B0B00 AS Date), CAST(0x3B3B0B00 AS Date), N'0126467140', CAST(0xCD390B00 AS Date), N'13609674387', N'                                                                                                    ', N'送一个包，年卡1688')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (212, 0, N'高承芳', 1, CAST(0x113B0B00 AS Date), CAST(0x3B3B0B00 AS Date), N'0119559540', CAST(0xCD390B00 AS Date), N'13929458780', N'                                                                                                    ', N'送一个包，年卡1688')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (213, 0, N'马潇', 1, CAST(0x113B0B00 AS Date), CAST(0x3C3B0B00 AS Date), N'0130816868', CAST(0xCE390B00 AS Date), N'15576336941', N'                                                                                                    ', N'2588年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (214, 0, N'沈子琴', 1, CAST(0x113B0B00 AS Date), CAST(0x5B3B0B00 AS Date), N'0123116292', CAST(0xCF390B00 AS Date), N'13415955119', N'                                                                                                    ', N'1888年卡')
GO
print 'Processed 200 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (215, 0, N'袁芷程', 1, CAST(0x113B0B00 AS Date), CAST(0x643C0B00 AS Date), N'0127300980', CAST(0xD2390B00 AS Date), N'13694951051', N'                                                                                                    ', N'2015.11.23钟玉仪将剩下140天时间转给袁芷程（已延期）
2015.12.13-2016.5.13停卡5个月（已延期）经办人：谢信')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (216, 0, N'陈学然', 0, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'0127557956', CAST(0xD3390B00 AS Date), N'18929237308', N'                                                                                                    ', N'2588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (217, 0, N'李芳萍', 1, CAST(0x113B0B00 AS Date), CAST(0x6B3B0B00 AS Date), N'0127425348', CAST(0xDF390B00 AS Date), N'15061758598', N'                                                                                                    ', N'1688年卡，送一个月送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (218, 0, N'陈新伟', 0, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'0126313220', CAST(0xD3390B00 AS Date), N'13713343833', N'                                                                                                    ', N'2015.12.17原持卡人陈焕茂变更为陈新伟持卡
经办人：胡总特批')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (219, 0, N'高玲', 1, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0131629188', CAST(0xD4390B00 AS Date), N'15280569666', N'2015.4.13制卡                                                                                         ', N'1388年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (220, 0, N'单青卿', 1, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0120172020', CAST(0xD4390B00 AS Date), N'13650280307', N'2015.4.13制卡                                                                                         ', N'1388年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (221, 0, N'柯永顺', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'0116724340', CAST(0xD4390B00 AS Date), N'13365063666', N'2015.4.13制卡                                                                                         ', N'1388年卡
2015.12.1..免费停卡一次（易晨）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (222, 0, N'刘永嵩', 0, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0128007540', CAST(0xD4390B00 AS Date), N'13375076699', N'2015.4.13制卡                                                                                         ', N'1388年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (223, 0, N'陈华兵', 0, CAST(0x113B0B00 AS Date), CAST(0x433B0B00 AS Date), N'0130854340', CAST(0xD5390B00 AS Date), N'13827400993', N'                                                                                                    ', N'1388年卡，预售交现金，2015.4.14制卡消费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (224, 0, N'汪志梁', 0, CAST(0x113B0B00 AS Date), CAST(0x443B0B00 AS Date), N'0127295124', CAST(0xD6390B00 AS Date), N'15002011896', N'朋友过来享受同样价格                                                                                          ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (225, 0, N'彭美容', 1, CAST(0x113B0B00 AS Date), CAST(0x5F3B0B00 AS Date), N'0119183316', CAST(0xD7390B00 AS Date), N'13686100901', N'                                                                                                    ', N'年卡1500元，4.16补卡，已交补卡费30元
2015.10.29到12.29停卡两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (226, 0, N'祁嘉敏', 1, CAST(0x113B0B00 AS Date), CAST(0x793B0B00 AS Date), N'0127456084', CAST(0xD7390B00 AS Date), N'15818305888', N'                                                                                                    ', N'1600年卡，送一个健身包
2015.6.9 介绍朋友过来，赠送一个月
2015.8.23已补卡，已收取工本费30元，原卡号 100379')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (227, 0, N'鲁龙', 0, CAST(0x113B0B00 AS Date), CAST(0x673B0B00 AS Date), N'0121424660', CAST(0xDB390B00 AS Date), N'15820883815', N'                                                                                                    ', N'1500年卡，赠送一个月 赠送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (228, 0, N'谢文龙', 0, CAST(0x113B0B00 AS Date), CAST(0x673B0B00 AS Date), N'0119250516', CAST(0xDB390B00 AS Date), N'13725208818', N'                                                                                                    ', N'1500年卡，赠送一个月 赠送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (229, 0, N'陈腾云', 1, CAST(0x113B0B00 AS Date), CAST(0xDF3C0B00 AS Date), N'3584877406', CAST(0x00000000 AS Date), N'13929493876', N'                                                                                                    ', N'2015.6.14补交余款1800元，提升为两年卡。
（5.31办卡888双月卡，在一个月内可提升年卡或两年卡，一年补交余款1300元，两年卡补交余款1800元可提升）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (230, 0, N'何玉玲', 1, CAST(0x113B0B00 AS Date), CAST(0x493B0B00 AS Date), N'0130778132', CAST(0xDB390B00 AS Date), N'13829209415', N'                                                                                                    ', N'1688年卡，赠送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (231, 0, N'张伟龙', 0, CAST(0x113B0B00 AS Date), CAST(0x4A3B0B00 AS Date), N'0116695940', CAST(0xDC390B00 AS Date), N'13826912621', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (232, 0, N'张军港', 0, CAST(0x113B0B00 AS Date), CAST(0x873B0B00 AS Date), N'0127652228', CAST(0xDC390B00 AS Date), N'18676720865', N'                                                                                                    ', N'2015.11.21-2016.1.21停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (233, 0, N'张龙青', 0, CAST(0x113B0B00 AS Date), CAST(0x4A3B0B00 AS Date), N'0127395428', CAST(0xDC390B00 AS Date), N'18825818646', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (234, 0, N'李汉堂', 0, CAST(0x113B0B00 AS Date), CAST(0x4D3B0B00 AS Date), N'0130835268', CAST(0xDE390B00 AS Date), N'13609667386', N'                                                                                                    ', N'一年卡1388')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (235, 0, N'毛欢杰', 0, CAST(0x113B0B00 AS Date), CAST(0xED3B0B00 AS Date), N'0131417652', CAST(0xE3390B00 AS Date), N'13652536684', N'会员带朋友，送一个月（已延期）                                                                                     ', N'1500年卡
2015.6.16公司奖品送一个月（已延期）
该会员可免费停卡两次，每次停卡1-2个月。2015.8.12-2015.10.12停卡两个月（已延期)
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (236, 0, N'张晓宣', 1, CAST(0x113B0B00 AS Date), CAST(0x543B0B00 AS Date), N'0127388500', CAST(0xE1390B00 AS Date), N'18665014859', N'                                                                                                    ', N'1800年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (237, 0, N'梁娟梅', 1, CAST(0x113B0B00 AS Date), CAST(0xC93B0B00 AS Date), N'0127338276', CAST(0xE2390B00 AS Date), N'13421907885', N'                                                                                                    ', N'1800一年，送一个月 洗车卷一张 已制卡已送包
2016.1.8-2016.3.8停卡2个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (238, 0, N'梁火英', 1, CAST(0x113B0B00 AS Date), CAST(0xFB3C0B00 AS Date), N'0127329716', CAST(0xE2390B00 AS Date), N'13421907885', N'                                                                                                    ', N'1800一年卡，赠送一个月 洗车劵一张 已制卡已送包
该会员可免费停卡两次，2015.8.12-2016.8.12.怀孕，停卡一年(已延期) ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (239, 0, N'黄贤清', 0, CAST(0x113B0B00 AS Date), CAST(0x503B0B00 AS Date), N'0122178468', CAST(0xE2390B00 AS Date), N'15899927568', N'                                                                                                    ', N'1500年卡，已送包已制卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (240, 0, N'胡天奇', 0, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0127292212', CAST(0xF2390B00 AS Date), N'13112866079', N'                                                                                                    ', N'年卡1688，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (241, 0, N'郭梦慧', 1, CAST(0x113B0B00 AS Date), CAST(0x5A3B0B00 AS Date), N'0127362932', CAST(0xE2390B00 AS Date), N'18824354002', N'                                                                                                    ', N'1500元年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (242, 0, N'袁庆文', 0, CAST(0x113B0B00 AS Date), CAST(0x513B0B00 AS Date), N'0127392724', CAST(0xE3390B00 AS Date), N'13650177732', N'                                                                                                    ', N'1588一年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (243, 0, N'黄泽运', 0, CAST(0x113B0B00 AS Date), CAST(0x523B0B00 AS Date), N'0121304692', CAST(0xE4390B00 AS Date), N'15088158908', N'                                                                                                    ', N'1888年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (244, 0, N'谢惠君', 1, CAST(0x113B0B00 AS Date), CAST(0x583B0B00 AS Date), N'0127375716', CAST(0xE4390B00 AS Date), N'13612797876', N'                                                                                                    ', N'1588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (245, 0, N'邓辉南', 0, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0131644772', CAST(0xE5390B00 AS Date), N'13071349800', N'                                                                                                    ', N'1688年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (246, 0, N'陈筱雅', 1, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0130821988', CAST(0xE5390B00 AS Date), N'13549254208', N'                                                                                                    ', N'1900年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (247, 0, N'彭芙蓉', 1, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0127418996', CAST(0xE5390B00 AS Date), N'18922521585/13725824066', N'                                                                                                    ', N'1500年卡，送健身包一个
2015.11.30补卡、已收取工本费30元、原卡号（100238）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (248, 0, N'李达', 1, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0119192036', CAST(0xE5390B00 AS Date), N'13926804677', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (249, 0, N'聂江伟', 0, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0119194324', CAST(0xE5390B00 AS Date), N'15916941821', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (250, 0, N'聂文杰', 0, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0121386388', CAST(0xE5390B00 AS Date), N'15982330270', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (251, 0, N'江静科', 0, CAST(0x113B0B00 AS Date), CAST(0x5A3B0B00 AS Date), N'0119083348', CAST(0xE5390B00 AS Date), N'13424848568', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (252, 0, N'曲树先', 0, CAST(0x113B0B00 AS Date), CAST(0xA03B0B00 AS Date), N'0132112788', CAST(0xE6390B00 AS Date), N'15814145918', N'                                                                                                    ', N'1800年卡，赠送洗车券、健身包一个、K+会员卡
2015.12.10-2016.2.10停卡2个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (253, 0, N'李建华', 1, CAST(0x113B0B00 AS Date), CAST(0x623B0B00 AS Date), N'0126344148', CAST(0xE6390B00 AS Date), N'13925782707', N'                                                                                                    ', N'1800年卡，赠送洗车券、健身包一个、K+会员卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (254, 0, N'陈三莲', 1, CAST(0x113B0B00 AS Date), CAST(0x563B0B00 AS Date), N'0127586884', CAST(0xE8390B00 AS Date), N'13688989181', N'                                                                                                    ', N'一年卡1888，赠送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (255, 0, N'李春蕾', 0, CAST(0x113B0B00 AS Date), CAST(0x593B0B00 AS Date), N'0127329060', CAST(0xEB390B00 AS Date), N'18122864222', N'                                                                                                    ', N'1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (256, 5, N'乔义娜', 1, CAST(0x113B0B00 AS Date), CAST(0xB63B0B00 AS Date), N'0126509140', CAST(0xED390B00 AS Date), N'13431282698', N'', N'1888一年卡，赠送健身包、洗车券
2015.6.16公司奖品送一个月（已延期）
2015.8.8-10.8停卡2个月，已延期、
原来是月卡，已升级为年卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (257, 0, N'张嘉伦', 0, CAST(0x113B0B00 AS Date), CAST(0x5D3B0B00 AS Date), N'0131022212', CAST(0xEE390B00 AS Date), N'15817666401', N'                                                                                                    ', N'1500年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (258, 0, N'潘华养', 0, CAST(0x113B0B00 AS Date), CAST(0x5D3B0B00 AS Date), N'0127418164', CAST(0xEF390B00 AS Date), N'13712584599', N'                                                                                                    ', N'1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (259, 0, N'朱莉', 1, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0116728452', CAST(0xF0390B00 AS Date), N'13929258510', N'                                                                                                    ', N'1500年卡，送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (260, 0, N'朱文佳', 1, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0127409252', CAST(0xF0390B00 AS Date), N'13802454774', N'                                                                                                    ', N'1500年卡，送一个健身包
2015.6.16奖品月卡一张，延期1个月（未延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (261, 0, N'邓敏', 1, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0122222948', CAST(0xF0390B00 AS Date), N'13922538617', N'                                                                                                    ', N'1500年卡，送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (262, 0, N'秦金辉', 0, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0126327012', CAST(0xF0390B00 AS Date), N'18676046838', N'                                                                                                    ', N'1500年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (263, 0, N'储建国', 0, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0119223892', CAST(0xF0390B00 AS Date), N'13922916559', N'                                                                                                    ', N'1500年卡，暑假前小孩随家长，安全自理')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (264, 0, N'罗凤香', 1, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0126219684', CAST(0xF0390B00 AS Date), N'18688665847', N'                                                                                                    ', N'1500年卡，赠送健身包一个
（罗凤香老公储建国合同单有备注：暑假前小孩随家长，安全自理）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (265, 0, N'姜红九', 0, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'0121381316', CAST(0xF0390B00 AS Date), N'13826916946', N'赠送一个健身包                                                                                             ', N'1588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (266, 0, N'周小苹', 1, CAST(0x113B0B00 AS Date), CAST(0xBC3B0B00 AS Date), N'0127741540', CAST(0xF2390B00 AS Date), N'15999862477', N'送一个健身包                                                                                              ', N'1500年卡，2015.6.27-9.27停卡三个月，已延期
2015.11.15已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (267, 0, N'陈起顺', 0, CAST(0x113B0B00 AS Date), CAST(0x603B0B00 AS Date), N'0117948164', CAST(0xF2390B00 AS Date), N'13922539317', N'                                                                                                    ', N'1500年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (268, 0, N'林晓娜', 1, CAST(0x113B0B00 AS Date), CAST(0x753B0B00 AS Date), N'0122244452', CAST(0xF8390B00 AS Date), N'13538501628', N'                                                                                                    ', N'1600年卡，送私教课两节，送洗车劵一张，送健身包一个
介绍朋友办卡，赠送15天（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (269, 0, N'黄佳', 1, CAST(0x113B0B00 AS Date), CAST(0x863B0B00 AS Date), N'0131353060', CAST(0xF9390B00 AS Date), N'13790116254', N'                                                                                                    ', N'1600年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (270, 0, N'罗元佳', 1, CAST(0x113B0B00 AS Date), CAST(0x863B0B00 AS Date), N'0119475140', CAST(0xF9390B00 AS Date), N'15992836910', N'                                                                                                    ', N'1600年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (271, 0, N'周玉婷', 1, CAST(0x113B0B00 AS Date), CAST(0x863B0B00 AS Date), N'0130678804', CAST(0xF9390B00 AS Date), N'15014849068', N'                                                                                                    ', N'1600年卡，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (272, 0, N'贾克豪', 0, CAST(0x113B0B00 AS Date), CAST(0x673B0B00 AS Date), N'0130687844', CAST(0xF9390B00 AS Date), N'18038384828', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (273, 0, N'吴莲芳', 1, CAST(0x113B0B00 AS Date), CAST(0x903B0B00 AS Date), N'0119096132', CAST(0xFD390B00 AS Date), N'13763224739', N'赠送一个健身包。赠送一个月。                                                                                      ', N'1600年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (274, 0, N'胡玉红', 1, CAST(0x113B0B00 AS Date), CAST(0x6C3B0B00 AS Date), N'0127688420', CAST(0xFE390B00 AS Date), N'13580900715', N'                                                                                                    ', N'1500元年卡，赠送一个包 送一张洗车劵')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (275, 0, N'赵鹏', 0, CAST(0x113B0B00 AS Date), CAST(0xFC3C0B00 AS Date), N'3716671875', CAST(0x400F0B00 AS Date), N'15019002169', N'2788 三年卡                                                                                            ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (276, 0, N'吴俊义', 0, CAST(0x113B0B00 AS Date), CAST(0x903B0B00 AS Date), N'3716230387', CAST(0x04FE0A00 AS Date), N'13925564849', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (277, 0, N'莊一新', 0, CAST(0x113B0B00 AS Date), CAST(0x9B3B0B00 AS Date), N'3716213571', CAST(0xEFFE0A00 AS Date), N'13926801255', N'                                                                                                    ', N'有定金单 100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (278, 0, N'吴玉屛', 1, CAST(0x113B0B00 AS Date), CAST(0xDA3B0B00 AS Date), N'3714767091', CAST(0xAB060B00 AS Date), N'13662892810', N'                                                                                                    ', N'定金单100，2015.1.30至2015.3.30停两个月 已延期,2015.4.1已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (279, 0, N'胡大帅', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3584529130', CAST(0xDC020B00 AS Date), N'13914254352', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (280, 0, N'王艳萍', 1, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3713484867', CAST(0xEB130B00 AS Date), N'13798765739', N'                                                                                                    ', N'定金单  100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (281, 0, N'李天亮', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3714481059', CAST(0xE1FA0A00 AS Date), N'13580856026', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (282, 0, N'刘委', 0, CAST(0x113B0B00 AS Date), CAST(0x173C0B00 AS Date), N'0122227796', CAST(0x9E120B00 AS Date), N'13798829766', N'                                                                                                    ', N'2014.7.12号开通卡,2014.12.1-2014.04.01停卡4个月，{已延期}
2015.11.14已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (283, 0, N'赵丹', 1, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3584437154', CAST(0xB6380B00 AS Date), N'13580887261', N'                                                                                                    ', N'定金100
2015.8.30 已补卡，已收取工本费30元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (284, 0, N'郑飞燕', 1, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3716753507', CAST(0x0D140B00 AS Date), N'13925855772', N'                                                                                                    ', N'顶金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (285, 0, N'徐立建', 0, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3715768307', CAST(0x40120B00 AS Date), N'13827733361', N'                                                                                                    ', N'定金单200，赠送两个小孩暑假跆拳道训练')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (286, 0, N'朱建辉', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3714585875', CAST(0x01F80A00 AS Date), N'15322996701', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (287, 0, N'罗豪杰原卡已丢失', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3715100707', CAST(0xBE150B00 AS Date), N'18825830183', N'                                                                                                    ', N'和平会员赠送４个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (288, 0, N'周强', 0, CAST(0x113B0B00 AS Date), CAST(0x543C0B00 AS Date), N'3713766323', CAST(0x5A160B00 AS Date), N'18899748845', N'                                                                                                    ', N'和平会员赠送５个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (289, 0, N'方勇明', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3716182643', CAST(0x60080B00 AS Date), N'13450650716', N'                                                                                                    ', N'定金 100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (290, 0, N'何佩聪', 1, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3715897107', CAST(0xAE0C0B00 AS Date), N'13543711016', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (291, 0, N'陈志坚', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3585222501', CAST(0x4D060B00 AS Date), N'13509022156', N'                                                                                                    ', N'定金  100
2015.9.15原卡作废，原卡号200055')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (292, 0, N'黄蓉', 1, CAST(0x113B0B00 AS Date), CAST(0x6B3C0B00 AS Date), N'3715678803', CAST(0x26090B00 AS Date), N'13902605850', N'                                                                                                    ', N'2015.6.11-2016.1.1停卡6个月10天，因溺水住院。（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (293, 0, N'朱春梅', 1, CAST(0x113B0B00 AS Date), CAST(0x143C0B00 AS Date), N'3715293155', CAST(0xB7380B00 AS Date), N'13725882113', N'                                                                                                    ', N'定金 单200
2015.6.30-8.1停卡一个月（已延期）
2015.7.1-8.1停卡一个月（已延期）
2015.8.14.已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (294, 0, N'王云苗', 1, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'3716023267', CAST(0xB7380B00 AS Date), N'18666855757', N'                                                                                                    ', N'定金 100
2015.9.22-11.22停卡两个月（已延期），原因：没时间过来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (295, 0, N'李运青', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3715570195', CAST(0xB7380B00 AS Date), N'13925865888', N'                                                                                                    ', N'定金 100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (296, 0, N'谢金凤', 1, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3716114883', CAST(0xB7380B00 AS Date), N'13829262950', N'                                                                                                    ', N'定金单 100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (297, 0, N'陈彩霞', 1, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3716861043', CAST(0x03090B00 AS Date), N'13265252608', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (298, 0, N'陈廷全', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'0127663108', CAST(0xB7380B00 AS Date), N'18928237777', N'                                                                                                    ', N'有定金单 2014.6 27 交费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (299, 0, N'杨从阳', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3584295377', CAST(0xB7380B00 AS Date), N'13728333336', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (300, 0, N'Sandy Jin', 1, CAST(0x113B0B00 AS Date), CAST(0x573C0B00 AS Date), N'0122159828', CAST(0xB7380B00 AS Date), N'13712836555', N'                                                                                                    ', N'2014/07/15第一次来，2014.12.1-2015.6.1号停卡半年{已延期}')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (301, 0, N'高爱华', 1, CAST(0x113B0B00 AS Date), CAST(0x1C3C0B00 AS Date), N'3713533299', CAST(0xD7FB0A00 AS Date), N'13751360608', N'2014.11.12-2015.3.12停卡4个月已延期                                                                        ', N'2014.10.30张文祥已转卡至夫人高爱华女士，收转卡费300元整，2014.7.17第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (302, 0, N'蒋连金', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3713611347', CAST(0x16020B00 AS Date), N'13650467646', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (303, 0, N'詹宾辉', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'0127383124', CAST(0xA4180B00 AS Date), N'13642397503', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (304, 0, N'李军林', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3713930003', CAST(0xB7380B00 AS Date), N'13332619967', N'                                                                                                    ', N'定金100，赠送暑假跆拳道班，平时可带小孩过来，安全自己照顾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (305, 0, N'钟文婷', 1, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'3714843795', CAST(0xB7380B00 AS Date), N'18825807339', N'                                                                                                    ', N'另送一个月（已送），共25个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (306, 0, N'张宗迪', 1, CAST(0x113B0B00 AS Date), CAST(0x933C0B00 AS Date), N'3715085075', CAST(0xB7380B00 AS Date), N'13694900525', N'                                                                                                    ', N'四川省,2014.10.23号停卡至2015.4.1号，4.17号已取卡
2015.9.21 延期一个月（介绍新会员:刘燕鸿）
2015.11.11第二次停卡，经办人：魏军')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (307, 0, N'杨熊', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714082339', CAST(0xB7380B00 AS Date), N'13686039392', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (308, 0, N'何妙佳', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0126489412', CAST(0xB7380B00 AS Date), N'13580895075', N'                                                                                                    ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (309, 0, N'黎崇高', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0131356772', CAST(0xB3100B00 AS Date), N'13580821876', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (310, 0, N'黄小江', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3716074531', CAST(0x290D0B00 AS Date), N'18681013981', N'                                                                                                    ', N'定金单 100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (311, 0, N'陈沛聪', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3D0B00 AS Date), N'3713899939', CAST(0xB8380B00 AS Date), N'13662999022', N'                                                                                                    ', N'定金单100，和平老会员赠送一年，免费停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (312, 0, N'任勇', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714337011', CAST(0x1A390B00 AS Date), N'18676906551', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (313, 0, N'钟丽婷', 1, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3713758003', CAST(0xB8380B00 AS Date), N'13620080125', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (314, 0, N'钟丽丽原卡已丢失', 1, CAST(0x113B0B00 AS Date), CAST(0xCA3B0B00 AS Date), N'3715970739', CAST(0xB8380B00 AS Date), N'18676357827', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (315, 0, N'曾海', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'3716157475', CAST(0xB8380B00 AS Date), N'13712700470', N'                                                                                                    ', N'定金单 200')
GO
print 'Processed 300 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (316, 0, N'付海洋', 0, CAST(0x113B0B00 AS Date), CAST(0xEB3F0B00 AS Date), N'3715421267', CAST(0x00000000 AS Date), N'15899917096', N'2088两年卡                                                                                             ', N'2015.2.9-4.9停卡两个月
2015.7.20已取卡
办卡在2015.7.20号开始使用
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (317, 0, N'刘超', 1, CAST(0x113B0B00 AS Date), CAST(0xC23B0B00 AS Date), N'3715822259', CAST(0xB8380B00 AS Date), N'13826904865', N'                                                                                                    ', N'定金单 100
2015.9.13介绍新会员方必坤办卡，毛总特批赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (318, 0, N'姜海涛', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714061955', CAST(0xB8380B00 AS Date), N'15812839292', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (319, 0, N'徐娇娇', 1, CAST(0x113B0B00 AS Date), CAST(0xE73B0B00 AS Date), N'3713812099', CAST(0xB8380B00 AS Date), N'18825807300', N'                                                                                                    ', N'定金单100，送两张次卡无有效期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (320, 0, N'刘锦洪', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3713840675', CAST(0xB8380B00 AS Date), N'13580911114', N'                                                                                                    ', N'赠送四个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (321, 0, N'陈见峰', 0, CAST(0x113B0B00 AS Date), CAST(0x8D3B0B00 AS Date), N'3715464227', CAST(0x00000000 AS Date), N'13532508244', N'2088两年卡                                                                                             ', N'定金单100,1988 两年卡
2014.6.28办卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (322, 0, N'黄剑雄', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714163091', CAST(0xB8380B00 AS Date), N'13580799989', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (323, 0, N'谢志章', 0, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3716094563', CAST(0xB8380B00 AS Date), N'13509219499', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (324, 0, N'陈剑峰', 0, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3716261971', CAST(0xB9380B00 AS Date), N'13724438888', N' 2015.7.14第一次来                                                                                      ', N'定金100
2015.10.20免费转卡。原持卡人：陈耀民。经办人：谢信
已赠送健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (325, 0, N'贺晶', 1, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3715226131', CAST(0xB9380B00 AS Date), N'18028939596', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (326, 0, N'沈少维', 1, CAST(0x113B0B00 AS Date), CAST(0xC93B0B00 AS Date), N'3715444547', CAST(0x35F30A00 AS Date), N'18664032581', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (327, 0, N'梁达成', 0, CAST(0x113B0B00 AS Date), CAST(0xD93B0B00 AS Date), N'3713699603', CAST(0xB9380B00 AS Date), N'13763199432', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (328, 0, N'袁满江', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715629187', CAST(0xB9380B00 AS Date), N'13729992297', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (329, 0, N'李浩基', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0123228148', CAST(0xB9380B00 AS Date), N'13580845208', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (330, 0, N'张仕杰', 1, CAST(0x113B0B00 AS Date), CAST(0xAF3B0B00 AS Date), N'3713679411', CAST(0xD5380B00 AS Date), N'18025190421', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (331, 0, N'潘梅定', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0127460676', CAST(0xB9380B00 AS Date), N'13925768296', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (332, 0, N'邓燕', 1, CAST(0x113B0B00 AS Date), CAST(0xD83B0B00 AS Date), N'0131382100', CAST(0xB9380B00 AS Date), N'18664107187', N'定金单100，8.10开通日期                                                                                     ', N'2015.2.5至2015.3.5停一个月 已延期 3.13已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (333, 0, N'吴金权', 0, CAST(0x113B0B00 AS Date), CAST(0xF53B0B00 AS Date), N'0128111620', CAST(0xE2380B00 AS Date), N'18902489233', N'                                                                                                    ', N'会员转介绍，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (334, 0, N'何秀英', 1, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'3715581187', CAST(0xB9380B00 AS Date), N'15916718500', N'                                                                                                    ', N'多送两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (335, 0, N'刘生念', 0, CAST(0x113B0B00 AS Date), CAST(0xAD3B0B00 AS Date), N'3713637427', CAST(0xB9380B00 AS Date), N'18928277274', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (336, 0, N'熊纬安', 0, CAST(0x113B0B00 AS Date), CAST(0x813B0B00 AS Date), N'0127360036', CAST(0xBA380B00 AS Date), N'13592773277', N'                                                                                                    ', N'力美健会员转会补时间各一年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (337, 0, N'韩振东', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715217347', CAST(0xEB380B00 AS Date), N'13922516868', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (338, 0, N'蒙小环', 1, CAST(0x113B0B00 AS Date), CAST(0x203C0B00 AS Date), N'0117890884', CAST(0xBA380B00 AS Date), N'13728409755', N'                                                                                                    ', N'定金100，2015.1.1-4.1停卡3个月，4.14已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (339, 0, N'曹干友', 0, CAST(0x113B0B00 AS Date), CAST(0x203C0B00 AS Date), N'0127375892', CAST(0xBA380B00 AS Date), N'13925869478', N'                                                                                                    ', N'定金100，2015.1.1-4.1停卡三个月，4.14已取卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (340, 0, N'黄舒', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'0120722756', CAST(0xBA380B00 AS Date), N'13415908852', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (341, 0, N'何欣怡', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715089091', CAST(0x1F390B00 AS Date), N'15099716702', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (342, 0, N'周屹', 0, CAST(0x113B0B00 AS Date), CAST(0x943B0B00 AS Date), N'3714573107', CAST(0xE5020B00 AS Date), N'13415923004', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (343, 0, N'罗巧燕', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'37138210277', CAST(0x5D050B00 AS Date), N'15916954936', N'                                                                                                    ', N'2014.6.27 交费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (344, 0, N'陈智德', 0, CAST(0x113B0B00 AS Date), CAST(0xAB3B0B00 AS Date), N'3713521171', CAST(0xBA380B00 AS Date), N'13631773198', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (345, 0, N'黄湘梅', 1, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3714008675', CAST(0xC6380B00 AS Date), N'13922978333', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (346, 0, N'黄湘梅', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3713510883', CAST(0xC6380B00 AS Date), N'13922978333', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (347, 0, N'张旺', 0, CAST(0x113B0B00 AS Date), CAST(0xA83B0B00 AS Date), N'3714592691', CAST(0xBA380B00 AS Date), N'13926878110', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (348, 0, N'钟轶锋', 0, CAST(0x113B0B00 AS Date), CAST(0xAC3B0B00 AS Date), N'3714998851', CAST(0xBA380B00 AS Date), N'15818234074', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (349, 0, N'李文慧', 1, CAST(0x113B0B00 AS Date), CAST(0xD53B0B00 AS Date), N'3715036739', CAST(0xBA380B00 AS Date), N'13790580823', N'                                                                                                    ', N'定金单100，免费停卡两次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (350, 0, N'黎锦庆', 0, CAST(0x113B0B00 AS Date), CAST(0xAB3B0B00 AS Date), N'3714040835', CAST(0xBA380B00 AS Date), N'13827232630', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (351, 0, N'李红玲', 1, CAST(0x113B0B00 AS Date), CAST(0x763C0B00 AS Date), N'3714368675', CAST(0xBA380B00 AS Date), N'13694950669', N'                                                                                                    ', N'和平老会员有健身卡八个月，现赠送六个月(有效期已延），定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (352, 0, N'李君久', 0, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'0122555508', CAST(0x00000000 AS Date), N'13527965368', N'年卡1600元                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (353, 4, N'常浩', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0156611643', CAST(0xB2390B00 AS Date), N'15899926205', N'1100半年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (354, 0, N'李秋霞', 1, CAST(0x113B0B00 AS Date), CAST(0x933B0B00 AS Date), N'3715009475', CAST(0x5E080B00 AS Date), N'13660281625', N'                                                                                                    ', N'1988两年卡，定金单100,可以带小孩，自己负责安全')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (355, 0, N'罗宇波', 0, CAST(0x113B0B00 AS Date), CAST(0x993B0B00 AS Date), N'3716152803', CAST(0xF6000B00 AS Date), N'13903038991', N'                                                                                                    ', N'1988两年卡定金100，多送两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (356, 0, N'何建东', 0, CAST(0x113B0B00 AS Date), CAST(0x993B0B00 AS Date), N'3714783747', CAST(0x37090B00 AS Date), N'13712500747', N'                                                                                                    ', N'多送两个月,2088两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (357, 0, N'周贵元', 0, CAST(0x113B0B00 AS Date), CAST(0xCE3B0B00 AS Date), N'3713433155', CAST(0x00000000 AS Date), N'15818310111', N'2088元两年卡                                                                                            ', N'和平会员，赠送两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (358, 0, N'尹剑辉', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3713958547', CAST(0xB5380B00 AS Date), N'18666869290', N'                                                                                                    ', N'团购送一个月,2088两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (359, 0, N'贾青', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714642835', CAST(0xB5380B00 AS Date), N'13602338352', N'                                                                                                    ', N'团购送一个月,2088两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (360, 0, N'刘平', 1, CAST(0x113B0B00 AS Date), CAST(0xDA3B0B00 AS Date), N'0130994532', CAST(0x8B070B00 AS Date), N'18675158045', N'2088两年卡,可以带小朋友任何项目                                                                                  ', N'2014.7.12号开通卡,2015.1.10-2015.3.10停卡2个月{已延期}')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (361, 0, N'胡敏', 1, CAST(0x113B0B00 AS Date), CAST(0x903B0B00 AS Date), N'0130973940', CAST(0x13040B00 AS Date), N'13538577128', N'                                                                                                    ', N'定金单412
2015.10.8转卡。（原持卡人:谢昌金）已收取转卡费300元。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (362, 0, N'刘秀群', 1, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'0120703332', CAST(0xB5380B00 AS Date), N'18002724668', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (363, 0, N'许子琴', 1, CAST(0x113B0B00 AS Date), CAST(0xD03B0B00 AS Date), N'3714595603', CAST(0xBA380B00 AS Date), N'13712532235', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (364, 0, N'黄楚洁', 1, CAST(0x113B0B00 AS Date), CAST(0x5B3C0B00 AS Date), N'3714391987', CAST(0xBA380B00 AS Date), N'13580925122', N'                                                                                                    ', N'2015.7.23-2016.1.23停卡半年（已延期）经办人：谢信')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (365, 0, N'胡春兰', 1, CAST(0x113B0B00 AS Date), CAST(0xA23B0B00 AS Date), N'3715070243', CAST(0xBB380B00 AS Date), N'18025111119', N'                                                                                                    ', N'赠送四个月有效期.从《水云间》转')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (366, 0, N'邓北阳', 0, CAST(0x113B0B00 AS Date), CAST(0xA53B0B00 AS Date), N'3714619571', CAST(0xBB380B00 AS Date), N'13826972809', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (367, 0, N'杨飘', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714142115', CAST(0xC81A0B00 AS Date), N'13377777947', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (368, 0, N'廖军平', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714985779', CAST(0xBB380B00 AS Date), N'13924353888', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (369, 4, N'李轼', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0158054459', CAST(0x3F390B00 AS Date), N'13532938528', N'1000元半年卡                                                                                            ', N'送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (370, 4, N'何燕玲', 1, CAST(0x113B0B00 AS Date), CAST(0x173B0B00 AS Date), N'0193344890', CAST(0x4C390B00 AS Date), N'13827244906', N'半年卡1400元                                                                                            ', N'送1个包，另送半年。
2015.7.21-9.21停卡两个月（已延期）
2015.9.8赠送一个月【介绍新会员：王小花（两年卡）】')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (371, 4, N'胡月兰', 1, CAST(0x113B0B00 AS Date), CAST(0xFA3A0B00 AS Date), N'0200279418', CAST(0x4C390B00 AS Date), N'13929430138', N'半年卡1400元                                                                                            ', N'送包1个，另送半年。
2015.7.20-9.20停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (372, 4, N'谭庆喜', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0166040379', CAST(0xB2390B00 AS Date), N'18666576084', N'1100半年卡                                                                                             ', N'送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (373, 4, N'葛莺嫣', 1, CAST(0x113B0B00 AS Date), CAST(0x003B0B00 AS Date), N'0187490682', CAST(0xC6390B00 AS Date), N'15219983635', N'900半年卡，送健身包一个，2015.3.30开卡，2015.4.7日开通                                                               ', N'2015.7.8廖莹（2015.3.30开卡，2015.5.9开通）将剩余4个月时间转给葛莺嫣（已延期），已收取转卡费200元，经办人：谢信
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (374, 0, N'杨真华', 0, CAST(0x113B0B00 AS Date), CAST(0x993B0B00 AS Date), N'0127415380', CAST(0x00000000 AS Date), N'13559732899', N'                                                                                                    ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (375, 0, N'何新东', 0, CAST(0x113B0B00 AS Date), CAST(0x993B0B00 AS Date), N'3715528307', CAST(0x1B070B00 AS Date), N'13712357304', N'                                                                                                    ', N'多送两个月,1988两年卡定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (376, 0, N'张立飞', 0, CAST(0x113B0B00 AS Date), CAST(0x993B0B00 AS Date), N'3716545043', CAST(0xB7060B00 AS Date), N'13538581051', N'                                                                                                    ', N'1988两年卡定金100,多送两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (377, 0, N'黎伟', 0, CAST(0x113B0B00 AS Date), CAST(0xAF3B0B00 AS Date), N'3715208483', CAST(0xB5380B00 AS Date), N'13763161376', N'                                                                                                    ', N'定金100,1988两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (378, 0, N'刘娜', 1, CAST(0x113B0B00 AS Date), CAST(0x0A3C0B00 AS Date), N'3714547155', CAST(0xB5380B00 AS Date), N'13559711735', N'                                                                                                    ', N'2088两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (379, 0, N'伍纬丰', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3715586307', CAST(0xB5380B00 AS Date), N'18665115123', N'                                                                                                    ', N'定金200,1888两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (380, 0, N'张旭华', 0, CAST(0x113B0B00 AS Date), CAST(0x903B0B00 AS Date), N'3714439891', CAST(0xB5380B00 AS Date), N'18688633781', N'                                                                                                    ', N'团购送一个月,2088两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (381, 0, N'朱立仁', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3715300003', CAST(0xD10A0B00 AS Date), N'13712757987', N'                                                                                                    ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (382, 0, N'陈晓玲', 1, CAST(0x113B0B00 AS Date), CAST(0x113D0B00 AS Date), N'3714759507', CAST(0xB5380B00 AS Date), N'13556654663', N'2088两年卡，可以带小朋友入场，自己负责安全                                                                             ', N'原有效期是2016.7.20，因怀孕停卡1年，已收取检查报告证实怀孕2015.3.22-2016.3.22已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (383, 0, N'罗艳华', 1, CAST(0x113B0B00 AS Date), CAST(0xDA3B0B00 AS Date), N'3716078083', CAST(0x21040B00 AS Date), N'13580760346', N'定金单100 ，2014.7.12开通卡                                                                                ', N'2015.1.1-2015.3.1停卡2个月{已延期}，2015.3.10已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (384, 0, N'夏庆军', 0, CAST(0x113B0B00 AS Date), CAST(0xDA3B0B00 AS Date), N'3716678403', CAST(0x43080B00 AS Date), N'13500092580', N'2014.7.12开通卡,                                                                                       ', N'定金单100， 2015.1.1-2015.3.1停卡2个月{已延期}，2015.3.10已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (385, 0, N'杨璐静', 1, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3716741267', CAST(0xB5380B00 AS Date), N'13380110801', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (386, 0, N'莫全如', 0, CAST(0x113B0B00 AS Date), CAST(0xF83B0B00 AS Date), N'3715591747', CAST(0x6F110B00 AS Date), N'13480405142', N'2015.6.7取卡                                                                                          ', N'定金100，2014年12月13日开始停卡至2015年3月13日')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (387, 0, N'邱妩丽', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714961171', CAST(0xBB380B00 AS Date), N'13580728799', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (388, 0, N'朱伟清', 0, CAST(0x113B0B00 AS Date), CAST(0xAC3B0B00 AS Date), N'3715623651', CAST(0xBB380B00 AS Date), N'13713376863', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (389, 0, N'张群梅', 1, CAST(0x113B0B00 AS Date), CAST(0xAD3B0B00 AS Date), N'3714186931', CAST(0xBB380B00 AS Date), N'13433690169', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (390, 0, N'阮奕梅', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714360307', CAST(0xBB380B00 AS Date), N'13688955223', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (391, 0, N'黎婉婷', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715036547', CAST(0xBB380B00 AS Date), N'13790597737', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (392, 0, N'涂永清', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3713754163', CAST(0xBB380B00 AS Date), N'18680074913', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (393, 0, N'汪媛', 1, CAST(0x113B0B00 AS Date), CAST(0xBA3B0B00 AS Date), N'3716362819', CAST(0xBB380B00 AS Date), N'13527958877', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (394, 0, N'肖菊华', 1, CAST(0x113B0B00 AS Date), CAST(0xC23B0B00 AS Date), N'3714575235', CAST(0xBB380B00 AS Date), N'13763231328', N'                                                                                                    ', N'定金100，7.19开通此卡,2015.1.31停卡至2015.2.28停1个月 已延期,2015.3.7已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (395, 0, N'廖翠', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714381379', CAST(0xBB380B00 AS Date), N'13688994223', N'                                                                                                    ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (396, 0, N'骆日强', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714038387', CAST(0xBB380B00 AS Date), N'13925773361', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (397, 0, N'邵富强', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714386003', CAST(0xBB380B00 AS Date), N'13925875246', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (398, 0, N'胡红梅', 1, CAST(0x113B0B00 AS Date), CAST(0xFA3C0B00 AS Date), N'1351826695', CAST(0xBB380B00 AS Date), N'13712123937', N'                                                                                                    ', N'已领次卡一张2014.12.1领取
2015.12.8陶小牛转卡胡红梅延长11月零8天，
已收转卡费300元（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (399, 0, N'张长秀', 1, CAST(0x113B0B00 AS Date), CAST(0xBB3B0B00 AS Date), N'0127436116', CAST(0xBB380B00 AS Date), N'13600307906', N'                                                                                                    ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (400, 0, N'陈生', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0131028612', CAST(0xBB380B00 AS Date), N'13829188588', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (401, 0, N'香惠棠', 0, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3713459491', CAST(0xBC380B00 AS Date), N'13794951223', N'                                                                                                    ', N'赠送三个月有效期（从水云间转），定金单100
2015.11.4转卡，已收取转卡费200元；原持卡人：郭敏。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (402, 0, N'张秋萍', 1, CAST(0x113B0B00 AS Date), CAST(0xFF3B0B00 AS Date), N'0130991412', CAST(0xBD380B00 AS Date), N'18666439470', N'                                                                                                    ', N'定金单100，2015.3.31停卡三个月到6.31 已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (403, 0, N'吴小辉', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714080195', CAST(0xBD380B00 AS Date), N'13556622019', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (404, 0, N'颜娟娟', 1, CAST(0x113B0B00 AS Date), CAST(0xE13B0B00 AS Date), N'3713531843', CAST(0xBD380B00 AS Date), N'13922532308', N'                                                                                                    ', N'定金单100，2015.5.23-7.23停卡两个月（已延期）
2015.10.31已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (405, 0, N'黄菊妹', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714088899', CAST(0xBD380B00 AS Date), N'13592782578', N'                                                                                                    ', N'免费转一次，定金单100,李锦文转卡给黄菊妹。（已生效）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (406, 0, N'陆新华', 0, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'3585099994', CAST(0xBD380B00 AS Date), N'18688698601', N'                                                                                                    ', N'2015.10.26补卡，已收取工本费30元，原卡号200141')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (407, 0, N'杨菲菲', 1, CAST(0x113B0B00 AS Date), CAST(0xA33C0B00 AS Date), N'3585211020', CAST(0x00000000 AS Date), N'13925760220', N'两年卡2388                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (408, 0, N'陈慧敏', 1, CAST(0x113B0B00 AS Date), CAST(0xFC3B0B00 AS Date), N'0131442516', CAST(0xBE380B00 AS Date), N'18680630225', N'定金单100,2014/09/16第一次来                                                                               ', N'2015.2.1-2015.3.1停卡一个月｛已延期｝打电话停的卡，卡未收，来之后填一下停卡单')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (409, 0, N'王波', 0, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'0123277860', CAST(0x8B0A0B00 AS Date), N'13826902080', N'                                                                                                    ', N'定金单100，2014/07/09第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (410, 0, N'许利强', 0, CAST(0x113B0B00 AS Date), CAST(0x993B0B00 AS Date), N'0130695268', CAST(0xBE380B00 AS Date), N'13713017246', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (411, 0, N'苏芮', 1, CAST(0x113B0B00 AS Date), CAST(0x893C0B00 AS Date), N'3584815573', CAST(0xAF390B00 AS Date), N'15818450116', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (412, 0, N'尹谢英', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715774211', CAST(0xBE380B00 AS Date), N'13902602823', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (413, 0, N'李亚娇', 1, CAST(0x113B0B00 AS Date), CAST(0xF53B0B00 AS Date), N'4059121763', CAST(0xBE380B00 AS Date), N'13809264552', N'                                                                                                    ', N'定金单700，送一个月。
2015.7.23-9.23停卡两个月（已延期)')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (414, 0, N'姚巧芝', 1, CAST(0x113B0B00 AS Date), CAST(0xA83B0B00 AS Date), N'3715329427', CAST(0xBF380B00 AS Date), N'13713387066', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (415, 0, N'陈海', 0, CAST(0x113B0B00 AS Date), CAST(0xEA3B0B00 AS Date), N'3716558115', CAST(0xC0380B00 AS Date), N'13728195157', N'2014.7.14开通卡 2015.3.28已取卡                                                                           ', N'定金单100,2015.1.15-2015.4.15停卡3个月(已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (416, 0, N'陈少冰', 1, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'3714487091', CAST(0xC0380B00 AS Date), N'13713189290', N'                                                                                                    ', N'定金1388')
GO
print 'Processed 400 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (417, 0, N'周子良', 0, CAST(0x113B0B00 AS Date), CAST(0x9B3B0B00 AS Date), N'3715681251', CAST(0x8D0E0B00 AS Date), N'13790389389', N'                                                                                                    ', N'定金单100,2014/07/12第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (418, 0, N'高建平', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715582979', CAST(0xC1380B00 AS Date), N'13509008225', N'                                                                                                    ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (419, 0, N'唐文杰', 0, CAST(0x113B0B00 AS Date), CAST(0x373D0B00 AS Date), N'3585078172', CAST(0x00000000 AS Date), N'13686669127', N'2088两年卡                                                                                             ', N'2014.7.10交费，2015.8.28第一次来，激活开卡
2015.8.28刘仕英转卡给唐文杰 收取300元转卡费
2015.9.21补卡，已收取补卡费30元。原卡号200109')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (420, 0, N'王楠', 1, CAST(0x113B0B00 AS Date), CAST(0x5D3C0B00 AS Date), N'3713748995', CAST(0xC1380B00 AS Date), N'18826876373', N'免费停卡三次　学生两年卡                                                                                        ', N'收取转卡费100元 张嘉升转卡给王楠')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (421, 0, N'邱晓碧', 1, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'0127313396', CAST(0xC1380B00 AS Date), N'13798871117', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (422, 0, N'杨志峰', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0120701652', CAST(0xC1380B00 AS Date), N'13790306898', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (423, 0, N'夏庆', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3713696259', CAST(0xC1380B00 AS Date), N'13662777762', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (424, 0, N'宋靖', 1, CAST(0x113B0B00 AS Date), CAST(0x713C0B00 AS Date), N'3713965363', CAST(0xC1380B00 AS Date), N'13798810559', N'                                                                                                    ', N'2015.5.12-7.12停卡两个月，已延期。
2015.7.29已取卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (425, 0, N'陈海军', 0, CAST(0x113B0B00 AS Date), CAST(0x8C3B0B00 AS Date), N'3715203139', CAST(0x00000000 AS Date), N'13650126300', N'                                                                                                    ', N'2088两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (426, 0, N'王生', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3C0B00 AS Date), N'3714574739', CAST(0xBB380B00 AS Date), N'13106863666', N'                                                                                                    ', N'送次卡3张。
2015.7.15-10.15停卡三个月（已延期）
2015.12.23已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (427, 0, N'那淳', 1, CAST(0x113B0B00 AS Date), CAST(0xB73B0B00 AS Date), N'3713609987', CAST(0xBB380B00 AS Date), N'13433064828', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (428, 0, N'严庆华', 1, CAST(0x113B0B00 AS Date), CAST(0xF23B0B00 AS Date), N'3716503187', CAST(0xBB380B00 AS Date), N'13609676158', N'定金单100，团购送一个月                                                                                       ', N'2014.10.12-12.12停卡两个月，已延期,2015.4.18已取卡，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (429, 0, N'邓文', 0, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'3716193219', CAST(0xBB380B00 AS Date), N'13925545609', N'                                                                                                    ', N'力美健会员，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (430, 0, N'黄晓莲', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3716891699', CAST(0xBB380B00 AS Date), N'18938222369', N'                                                                                                    ', N'力美健会员，有会员卡，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (431, 0, N'曾庆艳', 0, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'3716035347', CAST(0xBB380B00 AS Date), N'18688683456', N'                                                                                                    ', N'定金单200，送包一个，送次卡两张,两张次卡胡总核准无有效期,（已领取次卡两张2015.4.8）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (432, 0, N'黄利军', 0, CAST(0x113B0B00 AS Date), CAST(0xD33B0B00 AS Date), N'0128108548', CAST(0xBC380B00 AS Date), N'13549373788', N'                                                                                                    ', N'介绍冼美玲会员办卡，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (433, 0, N'钟莹', 1, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'0123042020', CAST(0xBC380B00 AS Date), N'13600271786', N'定金单400                                                                                              ', N'2014.09.01第一次来,停一次卡，2014.11.9到2015.4.9，共五个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (434, 0, N'毕莹', 1, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3584986901', CAST(0xBC380B00 AS Date), N'13424830825', N'                                                                                                    ', N'2015.9.14.已补卡，已收取工本费30元。[原卡号：200151]')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (435, 0, N'景传红', 0, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'0123129332', CAST(0xBC380B00 AS Date), N'18666474677', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (436, 0, N'陈惠清', 1, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3584397132', CAST(0xBC380B00 AS Date), N'13712781531', N'2088两年卡                                                                                             ', N'赠送４个月
2015.9.28卡丢失，已补卡（老卡200148）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (437, 0, N'王森', 0, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'0120210180', CAST(0xBC380B00 AS Date), N'13825767835', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (438, 0, N'周洪生', 0, CAST(0x113B0B00 AS Date), CAST(0xF43B0B00 AS Date), N'3714488259', CAST(0xBD380B00 AS Date), N'13360686860', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (439, 0, N'骆志荣', 0, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3715152259', CAST(0xBD380B00 AS Date), N'13712203666', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (440, 0, N'谢宇锋', 0, CAST(0x113B0B00 AS Date), CAST(0xAE3B0B00 AS Date), N'3714025939', CAST(0xBD380B00 AS Date), N'13690991368', N'                                                                                                    ', N'定金单100
2015.8.12谢瑞泉转卡给谢宇锋，已收取转卡费300元 经办人：王晓华，罗益楚')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (441, 0, N'杨丽芳', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715027923', CAST(0xBD380B00 AS Date), N'18819769782', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (442, 0, N'徐花平', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3716052195', CAST(0xBE380B00 AS Date), N'13549221381', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (443, 0, N'石少庆', 0, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3715318627', CAST(0xBE380B00 AS Date), N'18664003366', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (444, 0, N'张梅弟', 1, CAST(0x113B0B00 AS Date), CAST(0x9A3C0B00 AS Date), N'3716154899', CAST(0xB60C0B00 AS Date), N'13922929383', N'2015.3.23第一次来                                                                                       ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (445, 0, N'刘小青', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0132174036', CAST(0xBF380B00 AS Date), N'13527972523', N'                                                                                                    ', N'定金单1700')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (446, 0, N'胡丹丹', 1, CAST(0x113B0B00 AS Date), CAST(0xCD3C0B00 AS Date), N'3716196499', CAST(0xBF380B00 AS Date), N'13424762566', N'                                                                                                    ', N'定金单100，2015.03.13补送一个健身包并激活卡
2015.7.8-9.8停卡两个月，已延期
2015.9.21本人已取卡。
2015.9.21已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (447, 0, N'刘文峰', 1, CAST(0x113B0B00 AS Date), CAST(0x893D0B00 AS Date), N'3715978995', CAST(0xBF380B00 AS Date), N'13412785206', N'                                                                                                    ', N'定金单100
2015.11.18第一次来，开通。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (448, 0, N'徐松青', 0, CAST(0x113B0B00 AS Date), CAST(0x153C0B00 AS Date), N'3714076147', CAST(0xDE380B00 AS Date), N'13889121525', N'                                                                                                    ', N'送3个月，背包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (449, 0, N'王亚虹', 1, CAST(0x113B0B00 AS Date), CAST(0xE73B0B00 AS Date), N'3714770563', CAST(0xDF380B00 AS Date), N'13712044866', N'                                                                                                    ', N'送一个月，原先有效期2016.9.10  过年15天已补')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (450, 0, N'李如捷', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714249203', CAST(0x29110B00 AS Date), N'18925770952', N'                                                                                                    ', N'2014.6.27 交费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (451, 0, N'李雪斌', 0, CAST(0x113B0B00 AS Date), CAST(0xBC3B0B00 AS Date), N'3714984035', CAST(0xE2380B00 AS Date), N'18602092299', N'                                                                                                    ', N'潘艳华把卡转给李雪斌')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (452, 0, N'李志强/李峻峰', 0, CAST(0x113B0B00 AS Date), CAST(0xC03B0B00 AS Date), N'3716879411', CAST(0xE3380B00 AS Date), N'13712479189', N'                                                                                                    ', N'送背包一个，父子共用一卡   ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (453, 0, N'董金辉', 0, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'0127413876', CAST(0xEA380B00 AS Date), N'13532637418', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (454, 0, N'谢欣林', 0, CAST(0x113B0B00 AS Date), CAST(0xD83B0B00 AS Date), N'3715206755', CAST(0xEC380B00 AS Date), N'18681061688', N'2014/09/11第一次来                                                                                      ', N'同意特价办理，送3个月共27个月，可免费停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (455, 0, N'关开平', 1, CAST(0x113B0B00 AS Date), CAST(0x823C0B00 AS Date), N'0123065124', CAST(0xEF380B00 AS Date), N'13537050175', N'                                                                                                    ', N'定金200，2015.3.23-10.23因怀孕停卡7个月，已延期,送背包一个，次卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (456, 0, N'梁子东', 1, CAST(0x113B0B00 AS Date), CAST(0x0E3C0B00 AS Date), N'3716582563', CAST(0xEF380B00 AS Date), N'13538358426', N'                                                                                                    ', N'送两个月，送包一个，转卡免一次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (457, 0, N'吴彦莹', 1, CAST(0x113B0B00 AS Date), CAST(0xFB3C0B00 AS Date), N'0121410180', CAST(0xF0380B00 AS Date), N'15015352795', N'                                                                                                    ', N'定金单200，送一个月，共25个月，可停卡,因怀孕2015.4.16-2016.2.28停卡，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (458, 0, N'易玉林', 1, CAST(0x113B0B00 AS Date), CAST(0x083C0B00 AS Date), N'0126319092', CAST(0xF0380B00 AS Date), N'15019020735', N'                                                                                                    ', N'定金单200，停卡2015.1.10-2015.3.10已延期,2015.3.8已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (459, 0, N'谢文雅', 1, CAST(0x113B0B00 AS Date), CAST(0xE93B0B00 AS Date), N'3716364899', CAST(0xFD380B00 AS Date), N'13790120112', N'                                                                                                    ', N'定金单100，2014/09/29第一次来,因红单丢失所以红单作废')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (460, 0, N'袁文娟', 1, CAST(0x113B0B00 AS Date), CAST(0xF73B0B00 AS Date), N'3715349683', CAST(0xFE380B00 AS Date), N'13602363113', N'                                                                                                    ', N'第一期创始会员办理，送包一个，2015.2.6-2015.3.6停卡一个月，（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (461, 0, N'文星', 0, CAST(0x113B0B00 AS Date), CAST(0xD83B0B00 AS Date), N'3715182355', CAST(0xFE380B00 AS Date), N'13662854949', N'                                                                                                    ', N'第一期会员办理,送三张次卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (462, 2, N'袁巧玲', 1, CAST(0x113B0B00 AS Date), CAST(0x333C0B00 AS Date), N'3716385379', CAST(0xFF380B00 AS Date), N'13929430258', N'按第一期创始会员办里2088元                                                                                     ', N'送一个月 开通日期2014.9.11, 2015.2.1开始停卡至2015.3.1
2015.6.16奖品月卡一张（已延期）
2015.6.25介绍朋友办卡赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (463, 0, N'姚孟英', 1, CAST(0x113B0B00 AS Date), CAST(0xDA3B0B00 AS Date), N'3715864835', CAST(0x00390B00 AS Date), N'15876425164', N'                                                                                                    ', N'2088元两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (464, 0, N'吴学帅', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715678195', CAST(0x04390B00 AS Date), N'13392384438', N'                                                                                                    ', N'送一个月共25个月就，送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (465, 0, N'周小卓', 1, CAST(0x113B0B00 AS Date), CAST(0xF43B0B00 AS Date), N'3715995107', CAST(0x0C390B00 AS Date), N'13711929187', N'                                                                                                    ', N'活动卡，送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (466, 0, N'钟全益', 0, CAST(0x113B0B00 AS Date), CAST(0xEE3B0B00 AS Date), N'3713738307', CAST(0x11390B00 AS Date), N'13922511121', N'                                                                                                    ', N'送壹佰元水卡一张，包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (467, 0, N'蔡婧', 1, CAST(0x113B0B00 AS Date), CAST(0x503C0B00 AS Date), N'0130765764', CAST(0x11390B00 AS Date), N'13686063665', N'2014.10.7第一次来,送包一个 可不限停卡                                                                            ', N'活动送一百元水卡 泰力格会员转送3个月 共27个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (468, 0, N'邝桂馨', 1, CAST(0x113B0B00 AS Date), CAST(0x513C0B00 AS Date), N'3713637891', CAST(0x11390B00 AS Date), N'13650381380', N'                                                                                                    ', N'此卡不转不停，东城上三杞新村,2014.12.1停卡 2014.12.1至2015.2.29（已延期）
2015.9.13关雪翠转卡给邝桂馨，已收取转卡费300元。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (469, 0, N'刘路洁', 1, CAST(0x113B0B00 AS Date), CAST(0xF13B0B00 AS Date), N'0130676052', CAST(0x11390B00 AS Date), N'15024143377', N'                                                                                                    ', N'送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (470, 0, N'禹慧', 1, CAST(0x113B0B00 AS Date), CAST(0xD23C0B00 AS Date), N'3716756579', CAST(0x12390B00 AS Date), N'13713162323', N'                                                                                                    ', N'活动卡，大礼包一个。不需再收取任何费用
2015.6.18 尹茜茜转卡给禹慧(经办人张梦倩）
2015.7.13-9.1停卡两个月（已延期）
2015.9.23已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (471, 0, N'段中香', 1, CAST(0x113B0B00 AS Date), CAST(0x093C0B00 AS Date), N'3713533795', CAST(0xC1380B00 AS Date), N'13480166610', N'                                                                                                    ', N'定金单100，会员介绍3个朋友，送三个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (472, 0, N'孙银', 0, CAST(0x113B0B00 AS Date), CAST(0xEC3B0B00 AS Date), N'3715893683', CAST(0xC1380B00 AS Date), N'13798933268', N'                                                                                                    ', N'2015.4.27梁世霞转卡给孙银，已交转卡费300元
2015.11.27.赠送一个月，已延期【介绍朋友（武洪权）办卡】')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (473, 0, N'祁婉莹', 1, CAST(0x113B0B00 AS Date), CAST(0xC23B0B00 AS Date), N'3714854659', CAST(0xC1380B00 AS Date), N'15920276571', N'                                                                                                    ', N'介绍祁嘉敏赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (474, 0, N'穆苏', 1, CAST(0x113B0B00 AS Date), CAST(0xE13B0B00 AS Date), N'3713815539', CAST(0xC1380B00 AS Date), N'13532807758', N'                                                                                                    ', N'2015.12.8停卡2个月至2016.2.8（已延期)')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (475, 0, N'吴映齐', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714739059', CAST(0xC1380B00 AS Date), N'13925776448', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (476, 0, N'杨文峰', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3713540355', CAST(0xC2380B00 AS Date), N'15817635138', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (477, 0, N'肖思源', 1, CAST(0x113B0B00 AS Date), CAST(0x933C0B00 AS Date), N'3713818579', CAST(0xC2380B00 AS Date), N'13790518725', N'                                                                                                    ', N'2015.3.16号开通')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (478, 0, N'李明和', 0, CAST(0x113B0B00 AS Date), CAST(0xCE3B0B00 AS Date), N'3713591555', CAST(0xC2380B00 AS Date), N'13827229309', N'                                                                                                    ', N'定金400')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (479, 0, N'黄岳钧', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714755827', CAST(0xC2380B00 AS Date), N'15820820625', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (480, 0, N'易晓文', 1, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3713557315', CAST(0xC3380B00 AS Date), N'18938222293', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (481, 0, N'王兴', 0, CAST(0x113B0B00 AS Date), CAST(0x9E3B0B00 AS Date), N'3714190723', CAST(0xC3380B00 AS Date), N'13763238880', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (482, 0, N'周勇', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714703091', CAST(0xC3380B00 AS Date), N'15814211054', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (483, 0, N'喻茂波', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3716564163', CAST(0xC3380B00 AS Date), N'15999798438', N'                                                                                                    ', N'定金单300')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (484, 0, N'李莉', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'3715189139', CAST(0xC3380B00 AS Date), N'13790686748', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (485, 0, N'祁俊威', 0, CAST(0x113B0B00 AS Date), CAST(0xAC3B0B00 AS Date), N'3715638835', CAST(0xC3380B00 AS Date), N'18028238881', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (486, 0, N'谢磊', 0, CAST(0x113B0B00 AS Date), CAST(0x213C0B00 AS Date), N'3720175747', CAST(0xC3380B00 AS Date), N'13560804205', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (487, 0, N'冼秋娟', 1, CAST(0x113B0B00 AS Date), CAST(0xE13B0B00 AS Date), N'3714371443', CAST(0xC3380B00 AS Date), N'15017024530', N'                                                                                                    ', N'已停卡一次（1个月），已把有效期顺延一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (488, 0, N'尹利云', 1, CAST(0x113B0B00 AS Date), CAST(0xB93B0B00 AS Date), N'3715251683', CAST(0xC3380B00 AS Date), N'18680630236', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (489, 0, N'杜文海', 0, CAST(0x113B0B00 AS Date), CAST(0x5E3C0B00 AS Date), N'3716493571', CAST(0xC3380B00 AS Date), N'13642949990', N'2014/09/24第一次来                                                                                      ', N'2015.1.30停卡至2015.2.28共一个月 已延期 3.15号已取卡。
2015.6.21-9.19停卡三个月（已延期）
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (490, 0, N'晏海侠', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715796307', CAST(0xC4380B00 AS Date), N'13428629990', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (491, 0, N'熊高', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714950099', CAST(0xFD090B00 AS Date), N'13423306325', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (492, 0, N'马中龙', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3716240835', CAST(0xC4380B00 AS Date), N'13539000658', N'                                                                                                    ', N'定金单500')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (493, 0, N'谭静', 1, CAST(0x113B0B00 AS Date), CAST(0xCF3C0B00 AS Date), N'0130904820', CAST(0xC4380B00 AS Date), N'13763207152', N'                                                                                                    ', N'定金单400')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (494, 0, N'叶嘉铖', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3584409099', CAST(0xC4380B00 AS Date), N'13763130088', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (495, 0, N'邱翠艳', 1, CAST(0x113B0B00 AS Date), CAST(0xB03C0B00 AS Date), N'0130834180', CAST(0xC4380B00 AS Date), N'13662733929', N'茶山健身卡，赠送两个月会籍，启蒙私教两节                                                                                ', N'停卡一次停半年 已延期 从2014.10.31到2015.05.01 5月5日客户已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (496, 0, N'李彦平', 0, CAST(0x113B0B00 AS Date), CAST(0xA93B0B00 AS Date), N'3715201475', CAST(0xC5380B00 AS Date), N'13829102210', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (497, 0, N'黄凯敏', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0126453764', CAST(0xC5380B00 AS Date), N'13808816059', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (498, 0, N'肖秀敏', 1, CAST(0x113B0B00 AS Date), CAST(0xD83B0B00 AS Date), N'3716877379', CAST(0xC5380B00 AS Date), N'13537018918', N'                                                                                                    ', N'定金单100，2014/09/11第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (499, 0, N'徐志康', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0127747028', CAST(0xC5380B00 AS Date), N'15920265471', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (500, 0, N'袁瑞珍', 1, CAST(0x113B0B00 AS Date), CAST(0xC23B0B00 AS Date), N'0123279396', CAST(0xC5380B00 AS Date), N'13431362989', N'                                                                                                    ', N'定金单100，介绍朋友办卡送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (501, 0, N'黄雪芹', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127690516', CAST(0xC5380B00 AS Date), N'13929211967', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (502, 0, N'张钦伟', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3716872483', CAST(0xC5380B00 AS Date), N'13556636819', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (503, 0, N'丁侠', 1, CAST(0x113B0B00 AS Date), CAST(0xA13B0B00 AS Date), N'3715522707', CAST(0xC6380B00 AS Date), N'13728187855', N'                                                                                                    ', N'定金单100，2014/09/27第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (504, 0, N'张润芳', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3716302867', CAST(0xC6380B00 AS Date), N'13713118383', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (505, 0, N'杨辉云', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3713992723', CAST(0xC6380B00 AS Date), N'13829296577', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (506, 0, N'李晓彬', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715920275', CAST(0xC6380B00 AS Date), N'13427839398', N'                                                                                                    ', N'定金单600')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (507, 0, N'廖进好', 1, CAST(0x113B0B00 AS Date), CAST(0xA53B0B00 AS Date), N'3713691059', CAST(0xC7380B00 AS Date), N'13929413811', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (508, 0, N'李安宁', 1, CAST(0x113B0B00 AS Date), CAST(0x563C0B00 AS Date), N'3715711363', CAST(0x7D030B00 AS Date), N'13532303648', N'                                                                                                    ', N'定金单200，五节启蒙课')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (509, 0, N'袁霈瀛', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715550467', CAST(0xC7380B00 AS Date), N'13750081094', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (510, 0, N'张沛兰', 1, CAST(0x113B0B00 AS Date), CAST(0xA73B0B00 AS Date), N'3715891715', CAST(0xC7380B00 AS Date), N'13825766382', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (511, 0, N'宁凯原卡已丢失', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714444995', CAST(0xC7380B00 AS Date), N'13556697520', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (512, 0, N'钟玉娟', 1, CAST(0x113B0B00 AS Date), CAST(0xDF3C0B00 AS Date), N'3715678547', CAST(0x00000000 AS Date), N'13903031189', N'定金单200，五节启蒙课，2015.6.1开通卡                                                                            ', N'2015.12.2-2016.2.2停卡两个月（已延期），卡已丢失，无卡停卡，下次锻炼需补卡，未答应免费停卡第二次。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (513, 0, N'张英', 1, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3715217203', CAST(0xC7380B00 AS Date), N'13825064588', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (514, 0, N'黄世勇', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3716218355', CAST(0xC8380B00 AS Date), N'13556791115', N'                                                                                                    ', N'赠送次卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (515, 0, N'黄小河', 0, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'3714418019', CAST(0xC9380B00 AS Date), N'13712637534', N'                                                                                                    ', N'赠送运动包，次卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (516, 0, N'陈沛豪', 0, CAST(0x113B0B00 AS Date), CAST(0xFC3C0B00 AS Date), N'3713932899', CAST(0xC9380B00 AS Date), N'13650333932', N'                                                                                                    ', N'定金单100，2014.6.29-2015.6.29停卡一年已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (517, 0, N'胡玉花', 1, CAST(0x113B0B00 AS Date), CAST(0x7A3C0B00 AS Date), N'3714422131', CAST(0xC9380B00 AS Date), N'13049759216', N'                                                                                                    ', N'和平健身剩７个月补回 已经改时间')
GO
print 'Processed 500 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (518, 0, N'梁鲜才', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3716455555', CAST(0xCA380B00 AS Date), N'13249942869', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (519, 0, N'王俊聪', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715379571', CAST(0xCA380B00 AS Date), N'18666874027', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (520, 0, N'卫婉华', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714110275', CAST(0xED050B00 AS Date), N'13825703386', N'                                                                                                    ', N'定金单100，黄志超转卡给韦婉华（已生效）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (521, 0, N'翟秀祺', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715217363', CAST(0xCB380B00 AS Date), N'18688660055', N'                                                                                                    ', N'2015.4.27罗素珍转卡给翟秀祺，已收转卡费300元 赠送一个到2015.08.19')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (522, 0, N'廖长寿', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0122533572', CAST(0xCB380B00 AS Date), N'15818283066', N'                                                                                                    ', N'送次卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (523, 0, N'吴玉燕', 1, CAST(0x113B0B00 AS Date), CAST(0x0C3C0B00 AS Date), N'3714021011', CAST(0x0E390B00 AS Date), N'13763150362', N' 2388元，两年卡                                                                                          ', N'另送一个月，共25个月，送包一个
2015.9.21黄雪英转卡给吴玉燕，已收取转卡费200元，经办人：李白')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (524, 0, N'朱运安', 0, CAST(0x113B0B00 AS Date), CAST(0xA93C0B00 AS Date), N'0127688740', CAST(0xCB380B00 AS Date), N'13556793505', N'                                                                                                    ', N'2015.4.7开通，送两张次卡，一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (525, 0, N'柯天池', 0, CAST(0x113B0B00 AS Date), CAST(0xA63B0B00 AS Date), N'3715969507', CAST(0xCB380B00 AS Date), N'18566106007', N'                                                                                                    ', N'一年卡转两年卡，补差价【2个人的差价】1288。。一年卡转两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (526, 0, N'麦健雄', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3715098115', CAST(0xCC380B00 AS Date), N'13612709999', N'                                                                                                    ', N'定金单100，2014.11.3何映媚转给麦健雄，转卡费300已收')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (527, 0, N'陈笑', 1, CAST(0x113B0B00 AS Date), CAST(0xA73B0B00 AS Date), N'3714571603', CAST(0xCD380B00 AS Date), N'13713231008', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (528, 0, N'涂晓琴', 1, CAST(0x113B0B00 AS Date), CAST(0xA83B0B00 AS Date), N'3713605475', CAST(0xCD380B00 AS Date), N'18617278603', N'  公司赠送                                                                                              ', N'原卡持有人：熊在传  2015.7.28给涂晓琴（熊在传的老婆）使用   经办人：胡总')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (529, 0, N'刘金燕', 1, CAST(0x113B0B00 AS Date), CAST(0xCD3B0B00 AS Date), N'3713602867', CAST(0xCD380B00 AS Date), N'13622699219', N'                                                                                                    ', N'送背包一个，一张次卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (530, 0, N'赵淑仁', 1, CAST(0x113B0B00 AS Date), CAST(0xA83B0B00 AS Date), N'3713990547', CAST(0xCE380B00 AS Date), N'13790263249', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (531, 0, N'袁佩欣', 1, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'3714997683', CAST(0xDA380B00 AS Date), N'15118299093', N'                                                                                                    ', N'送背包一个，次卡两张，2015.1.6开始停卡至2015.7.6共6个月 已延期，定金单1388
2015.8.12已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (532, 0, N'范莉', 1, CAST(0x113B0B00 AS Date), CAST(0xA93B0B00 AS Date), N'3713491635', CAST(0xCE380B00 AS Date), N'13509222616', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (533, 0, N'唐启威', 0, CAST(0x113B0B00 AS Date), CAST(0xA93B0B00 AS Date), N'0123107796', CAST(0xCE380B00 AS Date), N'13509222616', N'                                                                                                    ', N'赠送包一个，次卡一张【次卡有效期一个月】')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (534, 0, N'乐燕玲', 1, CAST(0x113B0B00 AS Date), CAST(0x793C0B00 AS Date), N'3714369283', CAST(0x43390B00 AS Date), N'13809642206', N'周婿会员介绍办理2年卡，另送水卡1张，送包                                                                               ', N'2015.1.14开始停卡至2015.4.14共3个月已延期,2015.5.12已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (535, 0, N'林瑞芬', 1, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'3715539027', CAST(0xCF380B00 AS Date), N'13925728743', N'                                                                                                    ', N'送背包一个，次卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (536, 0, N'赵喜钟', 0, CAST(0x113B0B00 AS Date), CAST(0xA93B0B00 AS Date), N'3713973427', CAST(0xCF380B00 AS Date), N'13302619025', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (537, 0, N'彭智衍', 0, CAST(0x113B0B00 AS Date), CAST(0xEA3B0B00 AS Date), N'3714973923', CAST(0xCF380B00 AS Date), N'13827293578', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (538, 0, N'汪春来', 0, CAST(0x113B0B00 AS Date), CAST(0xE73B0B00 AS Date), N'3713829651', CAST(0xCF380B00 AS Date), N'13600245888', N'                                                                                                    ', N'2014.7.25开通卡,2015.2.1-2015.4.1停卡2个月｛已延期｝ 2015.4.2已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (539, 0, N'甘从贵', 0, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'0122626340', CAST(0xD0380B00 AS Date), N'18820311195', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (540, 0, N'汪辉', 0, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'3714983731', CAST(0xD0380B00 AS Date), N'13686231186', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (541, 0, N'王海燕', 1, CAST(0x113B0B00 AS Date), CAST(0x5A3C0B00 AS Date), N'3715401059', CAST(0x73010B00 AS Date), N'13829287782', N'                                                                                                    ', N'需要拿健身房的卡方可延长半年期限，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (542, 0, N'潘向军', 0, CAST(0x113B0B00 AS Date), CAST(0xF43B0B00 AS Date), N'3716511619', CAST(0xD2380B00 AS Date), N'18929255642', N'                                                                                                    ', N'定金单1000')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (543, 0, N'汪坤', 0, CAST(0x113B0B00 AS Date), CAST(0xAB3B0B00 AS Date), N'3713569955', CAST(0xD2380B00 AS Date), N'13433032227', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (544, 0, N'朱慧君', 0, CAST(0x113B0B00 AS Date), CAST(0xAC3B0B00 AS Date), N'3715431251', CAST(0xD2380B00 AS Date), N'13694977451', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (545, 0, N'郑伟乐', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715788051', CAST(0xD3380B00 AS Date), N'18820307999', N'                                                                                                    ', N'送包一个，次卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (546, 0, N'汤夏云', 1, CAST(0x113B0B00 AS Date), CAST(0xCD3B0B00 AS Date), N'3715767491', CAST(0xD3380B00 AS Date), N'13537228996', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (547, 0, N'肖梁东', 0, CAST(0x113B0B00 AS Date), CAST(0xAE3B0B00 AS Date), N'3715879555', CAST(0x0C000B00 AS Date), N'13728395585', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (548, 0, N'林佳钦', 0, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'3716441555', CAST(0xD4380B00 AS Date), N'13729990737', N'                                                                                                    ', N'送包一个，次卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (549, 0, N'温桂莲', 1, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'3714746899', CAST(0xD5380B00 AS Date), N'13826905357', N'送包一个，次卡一张                                                                                           ', N'原先有效期2016.8.31  过年15天已补。2014.八月一号激活此卡。
2015.6.1-9.1停卡三个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (550, 0, N'赵佳奇', 0, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'3713650003', CAST(0xD6380B00 AS Date), N'13723555850', N'                                                                                                    ', N'定金单100,2014-08-02第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (551, 0, N'王永洋', 0, CAST(0x113B0B00 AS Date), CAST(0xB23B0B00 AS Date), N'3714092259', CAST(0xD7380B00 AS Date), N'15019197993', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (552, 0, N'黄国平', 0, CAST(0x113B0B00 AS Date), CAST(0x403D0B00 AS Date), N'3716380355', CAST(0xD7380B00 AS Date), N'18819112240', N'                                                                                                    ', N'赠送运动包，次卡一个
2015.9.5激活，开卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (553, 0, N'陈慧晶', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'3713634995', CAST(0xD8380B00 AS Date), N'13790660648', N'2015.6.27杜岩转卡给陈慧晶，已收取转卡费300元（刷卡）                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (554, 0, N'袁青霞', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'3713874147', CAST(0xDA380B00 AS Date), N'13642995454', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (555, 0, N'彭丽君', 1, CAST(0x113B0B00 AS Date), CAST(0x423C0B00 AS Date), N'3713941971', CAST(0x29390B00 AS Date), N'15118409788', N'送1个健身包，送100元水费                                                                                      ', N'定金100元，余额2288元
2015.6.23停卡至2015.8.23已延期
2015.9.6已取卡。
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (556, 0, N'黄玲', 1, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'3584209372', CAST(0xDB380B00 AS Date), N'13412300650', N'                                                                                                    ', N'定金客户【送背包一个，次卡两张】，2014.12.24开始停卡至2015.6.24停6个月,已延期
2015.8.5何俊转给黄玲（何俊的妻子）已收取转卡费300元
2015.8.5已取卡
2015.9.1补卡，已收工本费20元，经办人：谢信
原卡号：200323')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (557, 0, N'朱辉', 0, CAST(0x113B0B00 AS Date), CAST(0x3A3C0B00 AS Date), N'3713758819', CAST(0xDD380B00 AS Date), N'13717403076', N'                                                                                                    ', N'已停卡1次 已延期，2014.12.23开始停卡至2015.4.23 停4个月
2015.9.13号已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (558, 0, N'李安本', 1, CAST(0x113B0B00 AS Date), CAST(0xC43C0B00 AS Date), N'3584396838', CAST(0x7F390B00 AS Date), N'13540969386', N'                                                                                                    ', N'2015.2.1开通卡,送一个包 送一个月，
2015.8.29-11.29停卡三个月，已延期
2015.12.20已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (559, 0, N'李和文', 0, CAST(0x113B0B00 AS Date), CAST(0xB93B0B00 AS Date), N'3713907651', CAST(0xDE380B00 AS Date), N'13763992387', N'                                                                                                    ', N'赠送背包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (560, 0, N'夏朝辉', 1, CAST(0x113B0B00 AS Date), CAST(0x383C0B00 AS Date), N'3714057619', CAST(0xDE380B00 AS Date), N'13763265599', N'2014.11.15开通                                                                                        ', N'2015.2.1-2015.3.1停卡1个月{已延期}， 2015.4.19已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (561, 0, N'车娴丽', 1, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'3713650851', CAST(0x2B160B00 AS Date), N'13549427831', N'                                                                                                    ', N'定金单100,2014/06/29交费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (562, 0, N'杨薇', 1, CAST(0x113B0B00 AS Date), CAST(0xC03B0B00 AS Date), N'3713598611', CAST(0xE6380B00 AS Date), N'13650433557', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (563, 0, N'黄育龙', 0, CAST(0x113B0B00 AS Date), CAST(0xC13B0B00 AS Date), N'3714738947', CAST(0xE6380B00 AS Date), N'18928258800', N'                                                                                                    ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (564, 0, N'高丽丽', 1, CAST(0x113B0B00 AS Date), CAST(0xC33B0B00 AS Date), N'3714781603', CAST(0xE8380B00 AS Date), N'13580831305', N'                                                                                                    ', N'定金100，2014/07/01交费，8.20第一次来
2015.7.26袁映凤转卡给高丽丽 已收转卡费300元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (565, 0, N'卓利英', 1, CAST(0x113B0B00 AS Date), CAST(0xC33B0B00 AS Date), N'3714383635', CAST(0xE8380B00 AS Date), N'13688901811', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (566, 0, N'郭远智', 0, CAST(0x113B0B00 AS Date), CAST(0xC63B0B00 AS Date), N'3714152659', CAST(0xEA380B00 AS Date), N'13712669896', N'                                                                                                    ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (567, 0, N'姜福兰', 1, CAST(0x113B0B00 AS Date), CAST(0xF73B0B00 AS Date), N'3714433683', CAST(0xF1380B00 AS Date), N'13532788686', N'                                                                                                    ', N'送包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (568, 0, N'黄敏', 0, CAST(0x113B0B00 AS Date), CAST(0xCD3B0B00 AS Date), N'3715704499', CAST(0xF2380B00 AS Date), N'13713031778', N'                                                                                                    ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (569, 0, N'沈敏', 1, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'3715122707', CAST(0xF5380B00 AS Date), N'13544689231', N'                                                                                                    ', N'定金单100，张秀转给沈敏，已收300转卡费，2014.10.22开始')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (570, 0, N'张锦绣', 1, CAST(0x113B0B00 AS Date), CAST(0x0D3C0B00 AS Date), N'3715300275', CAST(0xF5380B00 AS Date), N'13902600435', N'                                                                                                    ', N'4.2已取卡，2015.2.1-2015.4.1停卡2个月｛已延期｝打电话停卡，卡未收。来了之后再让他补填停卡资料')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (571, 0, N'袁梁凤此卡已丢失', 1, CAST(0x113B0B00 AS Date), CAST(0xBF3B0B00 AS Date), N'3714985683', CAST(0xE4380B00 AS Date), N'13712037170', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (572, 0, N'李聪', 0, CAST(0x113B0B00 AS Date), CAST(0x3B3C0B00 AS Date), N'3715682611', CAST(0x05390B00 AS Date), N'13412416973', N'会员介绍朋友送一个月                                                                                          ', N'同意办理 送两个月  共26个月 可免费停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (573, 0, N'方宇声', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3C0B00 AS Date), N'3713356787', CAST(0x08390B00 AS Date), N'13580828175', N'                                                                                                    ', N'送一个包 送一个月 共25个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (574, 0, N'陈陆静', 1, CAST(0x113B0B00 AS Date), CAST(0x2A3C0B00 AS Date), N'3714499603', CAST(0x14390B00 AS Date), N'15015281006', N'                                                                                                    ', N'三个月卡提升两年卡，补1500送礼包，2015.2.4-3.4停卡一个月，已延期，2015.3.26已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (575, 0, N'何金燕', 1, CAST(0x113B0B00 AS Date), CAST(0x693C0B00 AS Date), N'3714486195', CAST(0x09390B00 AS Date), N'13560887710', N'开通日期2014.10.9                                                                                       ', N'2015.5.8-8.1停卡3个月，已延期，2015.1.29停卡至2015.2.28一个月 已延期 已取卡。
2015.7.22已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (576, 0, N'钟丽丽', 1, CAST(0x113B0B00 AS Date), CAST(0x263C0B00 AS Date), N'3714984995', CAST(0x0C390B00 AS Date), N'15019983237', N'非本人持卡消费没收，2015.2.11归还本人                                                                             ', N'第一期创始会员办理，送包一个。会员介绍送会员袁巧玲一个月2015.3.18-5.18停卡2个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (577, 0, N'李平平', 1, CAST(0x113B0B00 AS Date), CAST(0xFD3B0B00 AS Date), N'3716099491', CAST(0x14390B00 AS Date), N'13825722139', N'                                                                                                    ', N'至十一月3号，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (578, 0, N'申宗根', 0, CAST(0x113B0B00 AS Date), CAST(0xEF3B0B00 AS Date), N'3715924147', CAST(0x14390B00 AS Date), N'15992815567', N'                                                                                                    ', N'会员介绍朋友，另送一个月，共25个月，包一个，送水费壹佰元，会员礼品已送给开卡人。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (579, 0, N'曾永权', 0, CAST(0x113B0B00 AS Date), CAST(0xF43B0B00 AS Date), N'3716708675', CAST(0x18390B00 AS Date), N'13322610606', N'                                                                                                    ', N'特批，送一个月共25个月包一个，可免费停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (580, 0, N'陈玉婷', 1, CAST(0x113B0B00 AS Date), CAST(0x0C3C0B00 AS Date), N'3715721427', CAST(0x18390B00 AS Date), N'13729951426', N'                                                                                                    ', N'定金单100元，现金劵100元存水费2014.10.7,送现金劵壹佰元，有效期从十一月份开始计算')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (581, 0, N'郭灿忠', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3714579843', CAST(0x18390B00 AS Date), N'18819509503', N'                                                                                                    ', N'送包一个 活动卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (582, 0, N'熊吉桂', 0, CAST(0x113B0B00 AS Date), CAST(0x4B3C0B00 AS Date), N'3713495683', CAST(0x00000000 AS Date), N'13556651510', N'2100元两年卡                                                                                            ', N'同意以第一期创始会员办理，包一个
2015年8月30日-11.30停卡三个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (583, 0, N'陈露', 1, CAST(0x113B0B00 AS Date), CAST(0x6D3C0B00 AS Date), N'3714962435', CAST(0x1A390B00 AS Date), N'15816818800', N'2041.10.6号开通此卡，10.9号补卡一张                                                                            ', N'第一批会员，李萍转陈露， 已收取停卡费300块，2015.3.18-7.18停卡4个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (584, 0, N'陈庭菊', 1, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'3584645972', CAST(0xB4390B00 AS Date), N'13929278567', N'送一个月                                                                                                ', N'2015.8.6已补卡！
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (585, 0, N'任闻博', 1, CAST(0x113B0B00 AS Date), CAST(0xC73D0B00 AS Date), N'3714019923', CAST(0x1B390B00 AS Date), N'15816831354', N'                                                                                                    ', N'2015.2.7-2015.5.7停卡三个月已延期,2015.5.1已取卡
2016.1.5-2017.1.5停卡一年（已延期） ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (586, 0, N'郭思雨', 1, CAST(0x113B0B00 AS Date), CAST(0xF73B0B00 AS Date), N'3714735443', CAST(0x1C390B00 AS Date), N'13699838250', N'                                                                                                    ', N'此卡不停不转')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (587, 0, N'马紫茹', 1, CAST(0x113B0B00 AS Date), CAST(0xAE3C0B00 AS Date), N'3714121139', CAST(0x1F390B00 AS Date), N'13790316561', N'2014.11.10开通此卡                                                                                      ', N'送现金劵一百元，送两月，共26个月，包一个，可无限停卡
2015.8.26-2015.11.26  该会员停卡两个月  已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (588, 0, N'李志成', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3714731107', CAST(0x1F390B00 AS Date), N'15014887813', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (589, 0, N'张雪霞', 1, CAST(0x113B0B00 AS Date), CAST(0x923C0B00 AS Date), N'3715189491', CAST(0x20390B00 AS Date), N'13662832832', N'2014.11.13开通 此卡                                                                                     ', N'送两个月,共26个月,送100元现金劵1张
2015.8.8-9.8停卡一个月（已延期），未拿卡停卡。
2015.9.8赠送一个月【介绍新会员：张雪君（两年卡）】')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (590, 0, N'何瑜', 0, CAST(0x113B0B00 AS Date), CAST(0x593C0B00 AS Date), N'3717839459', CAST(0x23390B00 AS Date), N'13723522717', N'                                                                                                    ', N'赠送3个月。共27个月，送1个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (591, 0, N'黄惠莹', 1, CAST(0x113B0B00 AS Date), CAST(0xFE3B0B00 AS Date), N'3717969091', CAST(0x23390B00 AS Date), N'13609683030', N'送包，水费100元                                                                                           ', N'2014.11.1')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (592, 0, N'马灵艳', 1, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'3713380771', CAST(0x23390B00 AS Date), N'13268666898', N'                                                                                                    ', N'送一个包，再转卡一次，需收费300元/次,2015.5.13刘振华转卡给马灵艳')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (593, 0, N'周明远', 0, CAST(0x113B0B00 AS Date), CAST(0x1E3C0B00 AS Date), N'3714311699', CAST(0x23390B00 AS Date), N'13798749555', N'                                                                                                    ', N'送1个包，送一个月，共25个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (594, 0, N'徐爱国', 0, CAST(0x113B0B00 AS Date), CAST(0x5B3C0B00 AS Date), N'3713489523', CAST(0x24390B00 AS Date), N'13694923001', N'                                                                                                    ', N'停卡三个月2014.11.16至2015.2.16已延期，2015.2.26已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (595, 0, N'张靖康', 0, CAST(0x113B0B00 AS Date), CAST(0x8F3C0B00 AS Date), N'3585057641', CAST(0xA9390B00 AS Date), N'13592752957', N'赠送一个健身包                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (596, 0, N'陈安妮', 1, CAST(0x113B0B00 AS Date), CAST(0xFF3B0B00 AS Date), N'3714323891', CAST(0x24390B00 AS Date), N'13544675027', N'                                                                                                    ', N'两年卡2088元，送1个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (597, 0, N'钟文雄', 0, CAST(0x113B0B00 AS Date), CAST(0x023C0B00 AS Date), N'3713777987', CAST(0x26390B00 AS Date), N'13600291233', N'                                                                                                    ', N'送健身包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (598, 0, N'李春娣', 1, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'3714725043', CAST(0x27390B00 AS Date), N'13712000898', N'2014.11.16开通此卡                                                                                      ', N'送100现金劵存水费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (599, 0, N'陈秀如', 1, CAST(0x113B0B00 AS Date), CAST(0x983D0B00 AS Date), N'3714401955', CAST(0x27390B00 AS Date), N'13825772613', N'送100元现金劵存水费                                                                                         ', N'2014.11.1开通此卡,2015.2.1-2015.3.1停卡1个月｛已延期｝2015.3.2已取卡
2015.12.16-2016.12.16生病住院停卡一年，已延期（经办人：谢信）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (600, 0, N'张明忠', 0, CAST(0x113B0B00 AS Date), CAST(0x083C0B00 AS Date), N'3714483651', CAST(0x27390B00 AS Date), N'13711967767', N'送包一个                                                                                                ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (601, 0, N'胡新彪', 0, CAST(0x113B0B00 AS Date), CAST(0x053C0B00 AS Date), N'3714443731', CAST(0x27390B00 AS Date), N'13560417808', N'                                                                                                    ', N'送100元现金劵 送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (602, 0, N'王建彪', 0, CAST(0x113B0B00 AS Date), CAST(0x053C0B00 AS Date), N'3713658723', CAST(0x28390B00 AS Date), N'13600275058', N'                                                                                                    ', N'同意以第一批创始会员办理')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (603, 0, N'林洁玲', 1, CAST(0x113B0B00 AS Date), CAST(0x483C0B00 AS Date), N'1351377287', CAST(0x28390B00 AS Date), N'13509211429', N'                                                                                                    ', N'季卡提升两年卡补交余款1388 怀孕后可出示证明停卡一年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (604, 0, N'陈春花', 1, CAST(0x113B0B00 AS Date), CAST(0x483C0B00 AS Date), N'1351548887', CAST(0x6D390B00 AS Date), N'13686150202', N'                                                                                                    ', N'送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (605, 0, N'何肖莲', 1, CAST(0x113B0B00 AS Date), CAST(0x433C0B00 AS Date), N'3713478915', CAST(0x2A390B00 AS Date), N'13723510628', N'送1个健身包，送1个月                                                                                         ', N'2015.2.1-2015.2.28停卡一个（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (606, 0, N'李国志', 0, CAST(0x113B0B00 AS Date), CAST(0x063C0B00 AS Date), N'0126266484', CAST(0x2B390B00 AS Date), N'13713115508', N'                                                                                                    ', N'特批活动卡，另送水费100元，送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (607, 0, N'陈成', 0, CAST(0x113B0B00 AS Date), CAST(0x063C0B00 AS Date), N'0127327092', CAST(0x2B390B00 AS Date), N'13556718588', N'                                                                                                    ', N'特批活动卡，另送水费100元，送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (608, 0, N'李嘉耀', 0, CAST(0x113B0B00 AS Date), CAST(0x863C0B00 AS Date), N'0130876628', CAST(0x6E390B00 AS Date), N'13929236975', N'                                                                                                    ', N'送包一个，可以停卡，免费转卡一次，送100元水费
2015.9.8-11.8停卡两个月（已延期）要去外地上学')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (609, 0, N'刘小霞', 1, CAST(0x113B0B00 AS Date), CAST(0x5A3C0B00 AS Date), N'0128058676', CAST(0x30390B00 AS Date), N'13729998381', N'                                                                                                    ', N'送健身包。送水费一百元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (610, 0, N'刘丽', 1, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'0131380932', CAST(0x58390B00 AS Date), N'13925771326', N'                                                                                                    ', N'送包一个。从2015.1.1号开通，2015.2.1-2015.3.1停卡1个月｛已延期｝')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (611, 0, N'林笛', 1, CAST(0x113B0B00 AS Date), CAST(0xDB3C0B00 AS Date), N'0123076836', CAST(0x30390B00 AS Date), N'13600249743', N'2014.11.27开通                                                                                        ', N'2014.11.27-2014.5.27停卡6个月{已延期},可免费停卡，送水费100元，送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (612, 0, N'李爱连', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0122436708', CAST(0x30390B00 AS Date), N'18928281551', N'                                                                                                    ', N'活动卡送6个月 共计30个月 和平老会员')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (613, 0, N'罗魏燕', 1, CAST(0x113B0B00 AS Date), CAST(0xA43B0B00 AS Date), N'0128954132', CAST(0x30390B00 AS Date), N'13556660857', N'可寒暑假带小孩锻炼 另送现金劵一张                                                                                   ', N'一年卡1388提升两年卡补交700，2015.7.20开通此卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (614, 0, N'韩淑君', 1, CAST(0x113B0B00 AS Date), CAST(0xF53B0B00 AS Date), N'0127308404', CAST(0x35390B00 AS Date), N'13790478185', N'送包一个。2014.10.9号开通此卡                                                                                 ', N'月卡以提升2年卡，补交了2000元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (615, 0, N'邓辉红', 0, CAST(0x113B0B00 AS Date), CAST(0x113C0B00 AS Date), N'0116646884', CAST(0x36390B00 AS Date), N'18688636032', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (616, 0, N'许群英', 1, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'0126346196', CAST(0x3A390B00 AS Date), N'13662769360', N'                                                                                                    ', N'有效期从12月份1号开始，另送包一个，2015.2.3-2015.3.3停卡一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (617, 0, N'卢正铉', 0, CAST(0x113B0B00 AS Date), CAST(0x173C0B00 AS Date), N'0122149300', CAST(0x3A390B00 AS Date), N'13827285555', N'2014.11.11开通此卡                                                                                      ', N'送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (618, 0, N'李小英', 1, CAST(0x113B0B00 AS Date), CAST(0x163C0B00 AS Date), N'3716874675', CAST(0x3A390B00 AS Date), N'13827285555', N'                                                                                                    ', N'送包1个')
GO
print 'Processed 600 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (619, 0, N'王可欣', 1, CAST(0x113B0B00 AS Date), CAST(0xA63C0B00 AS Date), N'0122415460', CAST(0x70390B00 AS Date), N'18033028033', N'2015.7.20取卡                                                                                         ', N'2015.3.7到2015.6.7停三个月 已延期,送包1个，2015.2.7谢信说送水费100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (620, 0, N'方美威', 0, CAST(0x113B0B00 AS Date), CAST(0x723C0B00 AS Date), N'3716062451', CAST(0x3B390B00 AS Date), N'15820997836', N'2015.1.30停卡至2015.3.30两个月 已延期                                                                        ', N'2014.12.9-2015.1.9停卡1个月{已延期},,10人团购特批2100,2015.4.15方瑞敏转卡给方美威')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (621, 0, N'刘向安', 1, CAST(0x113B0B00 AS Date), CAST(0x193C0B00 AS Date), N'3715708595', CAST(0x3B390B00 AS Date), N'13725744289', N'                                                                                                    ', N'送包1个，李聪会员介绍送水卡1张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (622, 0, N'邓赞新', 1, CAST(0x113B0B00 AS Date), CAST(0x173C0B00 AS Date), N'3716169571', CAST(0x3B390B00 AS Date), N'13662701862', N'                                                                                                    ', N'老会员介绍，送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (623, 0, N'梁亚枚', 1, CAST(0x113B0B00 AS Date), CAST(0x553C0B00 AS Date), N'3716402531', CAST(0x3D390B00 AS Date), N'15820892898', N'                                                                                                    ', N'送包一个，水卡一张
2015.9.21-11.21停卡两个月，要回老家')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (624, 0, N'梁美霞', 1, CAST(0x113B0B00 AS Date), CAST(0xA33C0B00 AS Date), N'3716289683', CAST(0x3D390B00 AS Date), N'13620042397', N'定金100元 介绍朋友赠送一个月                                                                                    ', N'2015.3.7-2015.6.7停卡三个月已延期,送一个包 从12月1号开始')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (625, 0, N'冯梅', 1, CAST(0x113B0B00 AS Date), CAST(0x373C0B00 AS Date), N'3714023523', CAST(0x3D390B00 AS Date), N'13620021361', N'                                                                                                    ', N'有效期从12月份1号开始计算 送包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (626, 0, N'刘晓华', 1, CAST(0x113B0B00 AS Date), CAST(0x183C0B00 AS Date), N'3715060643', CAST(0x3D390B00 AS Date), N'13798768618', N'送包一个                                                                                                ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (627, 0, N'吴蓓', 1, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'3715552531', CAST(0x3D390B00 AS Date), N'13723550235', N'                                                                                                    ', N'从2015年01月02日停卡--03月15日止，另送水费一百元 送包 2015.5.14已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (628, 0, N'邝秋菊', 1, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'3714791411', CAST(0x3E390B00 AS Date), N'15017082827', N'有效期从2014.12.01开始算起                                                                                  ', N'新世纪星城37栋,2015.2.3-2015.3.3停卡一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (629, 0, N'陈学武', 0, CAST(0x113B0B00 AS Date), CAST(0xCE3C0B00 AS Date), N'3715895299', CAST(0x3E390B00 AS Date), N'13712365030', N'                                                                                                    ', N'力美健会员办理 另转6个月 共计30个月 送包 特价办理')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (630, 0, N'王慧', 1, CAST(0x113B0B00 AS Date), CAST(0x753C0B00 AS Date), N'3716734307', CAST(0x3E390B00 AS Date), N'13549375181', N'2014.11.14开通卡                                                                                       ', N'注:另送一个月共25个月,特价卡/送包，2014.12.16-2015.2.16停卡2个月{已延期}2015.4.7取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (631, 0, N'唐玉照', 0, CAST(0x113B0B00 AS Date), CAST(0x1F3C0B00 AS Date), N'3716343027', CAST(0x3F390B00 AS Date), N'13902613730', N'送一个包                                                                                                ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (632, 0, N'仲承赐', 0, CAST(0x113B0B00 AS Date), CAST(0x193C0B00 AS Date), N'3713741939', CAST(0x3F390B00 AS Date), N'13538662618', N'                                                                                                    ', N'注：送健身包一个，另送两节私教课')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (633, 0, N'刘洁', 1, CAST(0x113B0B00 AS Date), CAST(0x1F3C0B00 AS Date), N'3716414275', CAST(0x3F390B00 AS Date), N'13609681970', N'                                                                                                    ', N'注：此卡可免费停卡 活动卡 送包
2015.9.16李薇转卡给刘洁，已收取转卡费300元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (634, 0, N'王之友', 0, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'3715785459', CAST(0x40390B00 AS Date), N'13712397150', N'                                                                                                    ', N'送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (635, 0, N'潘一君', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3713698659', CAST(0x42390B00 AS Date), N'15999777822', N'                                                                                                    ', N'2014.7.19号开通此卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (636, 0, N'孟细涛', 0, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'3585065815', CAST(0x00000000 AS Date), N'13480085952', N'                                                                                                    ', N'送次卡一张 送运动包一个
2014.11.15办卡，2015.6.22已补卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (637, 0, N'梁广波', 0, CAST(0x113B0B00 AS Date), CAST(0x2A3C0B00 AS Date), N'3715593331', CAST(0x44390B00 AS Date), N'15015125395', N'                                                                                                    ', N'送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (638, 0, N'徐婉秀', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3715458467', CAST(0x45390B00 AS Date), N'13712579579', N'注：活动卡 送包水费壹佰元                                                                                       ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (639, 0, N'袁永兰', 1, CAST(0x113B0B00 AS Date), CAST(0xD63C0B00 AS Date), N'3714025859', CAST(0x46390B00 AS Date), N'13113271836', N'                                                                                                    ', N'送包一个，2015.1.4开始停卡至2015.4.4共3个月 已延期,2015.4.14已取卡
2016.1.1-2016.3.1停卡3个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (640, 0, N'袁龙凤', 1, CAST(0x113B0B00 AS Date), CAST(0x083E0B00 AS Date), N'3714070339', CAST(0x46390B00 AS Date), N'13549378047', N'                                                                                                    ', N'送包一个，2014.12.1-2015.3.31停卡4个月{已延期}
2015.6.5已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (641, 0, N'刘蝶群', 1, CAST(0x113B0B00 AS Date), CAST(0x243C0B00 AS Date), N'3716573939', CAST(0x48390B00 AS Date), N'13712781812', N'                                                                                                    ', N'注：第一期创始会员办理，送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (642, 0, N'王汉洪', 0, CAST(0x113B0B00 AS Date), CAST(0x233C0B00 AS Date), N'3714174403', CAST(0x48390B00 AS Date), N'13509222666', N'                                                                                                    ', N'送包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (643, 0, N'袁群娣', 1, CAST(0x113B0B00 AS Date), CAST(0x2C3C0B00 AS Date), N'3715729347', CAST(0x4B390B00 AS Date), N'13556669535', N'                                                                                                    ', N'注：送一个包，李亚娇会员转介经朋友过来办卡 送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (644, 0, N'莫胜强', 0, CAST(0x113B0B00 AS Date), CAST(0x293C0B00 AS Date), N'3715786195', CAST(0x4E390B00 AS Date), N'13902603438', N'                                                                                                    ', N'送包一个。可以停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (645, 0, N'滕美诗', 1, CAST(0x113B0B00 AS Date), CAST(0x463C0B00 AS Date), N'3716596611', CAST(0x4E390B00 AS Date), N'15377774445', N'2015.4.21已取卡,一个包 可以停卡                                                                               ', N'2015.3.19.4.19停卡1个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (646, 0, N'卢润祥', 0, CAST(0x113B0B00 AS Date), CAST(0x2D3C0B00 AS Date), N'0130840068', CAST(0x4F390B00 AS Date), N'13809627668', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (647, 0, N'黄妙铭', 1, CAST(0x113B0B00 AS Date), CAST(0x2E3C0B00 AS Date), N'3716023155', CAST(0x00000000 AS Date), N'13825767811', N'2088元两年卡                                                                                            ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (648, 0, N'曹新苹', 1, CAST(0x113B0B00 AS Date), CAST(0x653D0B00 AS Date), N'3585036413', CAST(0x00000000 AS Date), N'13790320101', N'2014.12.3交费2688元                                                                                    ', N'送包一个
2015.10.13激活开卡 ，原卡丢失已补卡，收取工本费30元。（原卡号：200220）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (649, 0, N'何少珊', 1, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'3716578419', CAST(0x58390B00 AS Date), N'13925771326', N'2015.1.31-2.28停卡一个月，已延期                                                                             ', N'送包一个，2015.1.1号开通卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (650, 0, N'陈文超', 0, CAST(0x113B0B00 AS Date), CAST(0xB13C0B00 AS Date), N'3716587555', CAST(0x5C390B00 AS Date), N'13509011932', N'                                                                                                    ', N'2015.4.6-7.6电话停卡3个月，已延期,送一个包 送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (651, 0, N'徐妙玲', 1, CAST(0x113B0B00 AS Date), CAST(0x5C3C0B00 AS Date), N'0126518372', CAST(0x62390B00 AS Date), N'13790136250', N'                                                                                                    ', N'送两个包，送一个月，可以停卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (652, 0, N'余洪進', 1, CAST(0x113B0B00 AS Date), CAST(0x403C0B00 AS Date), N'0127344916', CAST(0x63390B00 AS Date), N'13316632499', N'                                                                                                    ', N'包一个，100元现金劵存水费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (653, 0, N'段琼含', 1, CAST(0x113B0B00 AS Date), CAST(0xF33B0B00 AS Date), N'3715846003', CAST(0x730A0B00 AS Date), N'13777693631', N'2014.12.21补卡一次 第一张卡被销售弄丢                                                                            ', N'介绍朋友赠送一个月,2015.5.23薛燕转卡给段琼含（已收取300元转卡费），2014/09/07第一次来')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (654, 0, N'王秀梅', 1, CAST(0x113B0B00 AS Date), CAST(0xC43C0B00 AS Date), N'3585004318', CAST(0xAA390B00 AS Date), N'15697698086', N'                                                                                                    ', N'赠送一个健身包，赠送一个月时间，寒暑假可停卡1至2个月。
2015.7.13-9.12停卡两个月（已延期）
2015.9.7.已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (655, 0, N'陈金香', 1, CAST(0x113B0B00 AS Date), CAST(0x413C0B00 AS Date), N'3716875939', CAST(0x66390B00 AS Date), N'13790439070', N'                                                                                                    ', N'送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (656, 0, N'李丽芬', 1, CAST(0x113B0B00 AS Date), CAST(0x813C0B00 AS Date), N'4043226259', CAST(0x67390B00 AS Date), N'13859999211', N'                                                                                                    ', N'公司赠送两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (657, 0, N'罗剑豪', 0, CAST(0x113B0B00 AS Date), CAST(0x453C0B00 AS Date), N'3715850627', CAST(0x69390B00 AS Date), N'13609673032', N'                                                                                                    ', N'送次卡1张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (658, 0, N'黄晓琳', 1, CAST(0x113B0B00 AS Date), CAST(0x833C0B00 AS Date), N'0123167012', CAST(0x6B390B00 AS Date), N'13553854504', N'送包一个，次卡一张送一个月                                                                                       ', N'2015.1.29至2015.2.28停卡一个月，已延期,3.14已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (659, 0, N'张伟', 0, CAST(0x113B0B00 AS Date), CAST(0x703C0B00 AS Date), N'3716722211', CAST(0x70390B00 AS Date), N'18825766090', N'2014.11.09号开通此卡                                                                                     ', N'送包一个送3个月共27个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (660, 0, N'王冬莲', 1, CAST(0x113B0B00 AS Date), CAST(0x4C3C0B00 AS Date), N'0128053012', CAST(0x71390B00 AS Date), N'15019158568', N'送一个包 送两个月                                                                                           ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (661, 0, N'黄艮欢', 1, CAST(0x113B0B00 AS Date), CAST(0x6E3C0B00 AS Date), N'3585159542', CAST(0x74390B00 AS Date), N'13539022082', N'送一个月，送一个包                                                                                           ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (662, 0, N'蔡剑', 0, CAST(0x113B0B00 AS Date), CAST(0x843C0B00 AS Date), N'3584696570', CAST(0x87390B00 AS Date), N'13549259595', N'                                                                                                    ', N'3月1号计算时间。赠送一个健身包，（王永洋介绍也赠送一个包）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (663, 0, N'潘世洋', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'3584834821', CAST(0xB9380B00 AS Date), N'18688638062', N'                                                                                                    ', N'送两个月，定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (664, 0, N'袁创波', 0, CAST(0x113B0B00 AS Date), CAST(0x673C0B00 AS Date), N'3584376750', CAST(0x8A390B00 AS Date), N'13711963688', N'                                                                                                    ', N'送包两个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (665, 0, N'龚永辉', 0, CAST(0x113B0B00 AS Date), CAST(0x843C0B00 AS Date), N'3585042629', CAST(0x8C390B00 AS Date), N'13537172118', N'送一个月 送一个包                                                                                           ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (666, 0, N'唐林燕', 1, CAST(0x113B0B00 AS Date), CAST(0x153B0B00 AS Date), N'0127697684', CAST(0x8C390B00 AS Date), N'13266019600', N'送一个包 送三次停卡                                                                                          ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (667, 0, N'余日洪', 0, CAST(0x113B0B00 AS Date), CAST(0x843C0B00 AS Date), N'3585280892', CAST(0x8F390B00 AS Date), N'13416676611', N'                                                                                                    ', N'送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (668, 0, N'赖小梅', 1, CAST(0x113B0B00 AS Date), CAST(0x843C0B00 AS Date), N'3584690813', CAST(0xAE390B00 AS Date), N'18926826168', N'                                                                                                    ', N'2016.1.3补卡，已收取工本费30元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (669, 0, N'谢声余', 1, CAST(0x113B0B00 AS Date), CAST(0xA03B0B00 AS Date), N'3585269266', CAST(0xAE390B00 AS Date), N'13532613009', N'                                                                                                    ', N'刘福东的卡转给此人使用，已交300转卡费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (670, 0, N'郭林', 0, CAST(0x113B0B00 AS Date), CAST(0x1D3B0B00 AS Date), N'3585285491', CAST(0xAF390B00 AS Date), N'13827296085', N'                                                                                                    ', N'送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (671, 0, N'郭兴姣', 1, CAST(0x113B0B00 AS Date), CAST(0xF93D0B00 AS Date), N'3584923824', CAST(0xB0390B00 AS Date), N'13763283387', N'                                                                                                    ', N'赠送健身包一个，私教课二节，若怀孕可停卡一年半
2015.8.26-2016.8.26  该会员停卡一年，已延期 ，未带卡来前台停卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (672, 0, N'袁振华', 0, CAST(0x113B0B00 AS Date), CAST(0x033D0B00 AS Date), N'3585270673', CAST(0x00000000 AS Date), N'13802372266', N'                                                                                                    ', N'2088两年卡 赠送一个健身包
2015.7.6钟银有转卡给袁振华 已收取转卡费200元，经办人：罗益楚')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (673, 0, N'刘文胜已无效', 0, CAST(0x113B0B00 AS Date), CAST(0x8B3C0B00 AS Date), N'3716280579', CAST(0xB0390B00 AS Date), N'13929276599', N'                                                                                                    ', N'送一包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (674, 0, N'莫宝维', 1, CAST(0x113B0B00 AS Date), CAST(0x8D3C0B00 AS Date), N'3584832138', CAST(0xB1390B00 AS Date), N'13922969199', N'                                                                                                    ', N'送一个包，当天办理，同意（毛总签名）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (675, 0, N'蒋桂云', 1, CAST(0x113B0B00 AS Date), CAST(0x133C0B00 AS Date), N'3585039556', CAST(0xB3390B00 AS Date), N'13922935685', N'半年卡2015.2.1到3.1号停卡一个月，已在此卡延期。                                                                       ', N'半年卡提升两年卡，已补交1588元，原半年卡号730017，2014.10.8-5.13')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (676, 0, N'张顺益', 0, CAST(0x113B0B00 AS Date), CAST(0x953C0B00 AS Date), N'3585215643', CAST(0xB9390B00 AS Date), N'13650309160', N'                                                                                                    ', N'送健身包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (677, 0, N'张晓莉', 1, CAST(0x113B0B00 AS Date), CAST(0x953C0B00 AS Date), N'3584973751', CAST(0xB9390B00 AS Date), N'13686161617', N'                                                                                                    ', N'送健身包1个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (678, 0, N'李容', 1, CAST(0x113B0B00 AS Date), CAST(0xC03C0B00 AS Date), N'3584803994', CAST(0xBA390B00 AS Date), N'15992730456', N'                                                                                                    ', N'送一个包送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (679, 0, N'雷梓琪', 1, CAST(0x113B0B00 AS Date), CAST(0xC03C0B00 AS Date), N'3584913330', CAST(0xBA390B00 AS Date), N'15016822611', N'                                                                                                    ', N'送一个包送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (680, 0, N'于红映', 1, CAST(0x113B0B00 AS Date), CAST(0xC03C0B00 AS Date), N'3585190970', CAST(0xC6390B00 AS Date), N'13713316127', N'                                                                                                    ', N'力美健会员多送一个月，2015.3.30拿红单过来后制卡并开通有效期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (681, 0, N'李彬', 0, CAST(0x113B0B00 AS Date), CAST(0xA83C0B00 AS Date), N'3584527125', CAST(0xCD390B00 AS Date), N'15916912861', N'                                                                                                    ', N'送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (682, 0, N'王素敏', 1, CAST(0x113B0B00 AS Date), CAST(0xAC3C0B00 AS Date), N'3585084848', CAST(0xD1390B00 AS Date), N'13712749974', N'                                                                                                    ', N'2014.7.9付钱买，2015.4.10制卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (683, 0, N'袁凤群', 1, CAST(0x113B0B00 AS Date), CAST(0xEB3C0B00 AS Date), N'3584691542', CAST(0xD3390B00 AS Date), N'13751284116', N'                                                                                                    ', N'赠送一个健身包 （允许停卡一次）
2015.6.29-8.29停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (684, 0, N'罗豪杰', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3585042720', CAST(0xEB390B00 AS Date), N'18825830183', N'2015.5.6补卡                                                                                          ', N'和平老会员赠送4个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (685, 0, N'吴轩', 0, CAST(0x113B0B00 AS Date), CAST(0xA03B0B00 AS Date), N'3584300937', CAST(0xD3390B00 AS Date), N'13553800830', N'                                                                                                    ', N'挂失补卡（已收取补卡工本费30元），登记日期2014.7.17 原先卡号200279')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (686, 0, N'刘丰硕', 0, CAST(0x113B0B00 AS Date), CAST(0xCB3C0B00 AS Date), N'3584674268', CAST(0xD4390B00 AS Date), N'15800030388', N'                                                                                                    ', N'送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (687, 0, N'崔孟涛', 0, CAST(0x113B0B00 AS Date), CAST(0xD73C0B00 AS Date), N'3584281202', CAST(0xFC390B00 AS Date), N'18025316408', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (688, 0, N'袁梁凤', 1, CAST(0x113B0B00 AS Date), CAST(0xBF3B0B00 AS Date), N'3584220292', CAST(0xDF390B00 AS Date), N'13712037170', N'                                                                                                    ', N'2015.4.24补卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (689, 0, N'黎曼银', 1, CAST(0x113B0B00 AS Date), CAST(0xBE3C0B00 AS Date), N'3584438617', CAST(0xE3390B00 AS Date), N'13544822223', N'                                                                                                    ', N'送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (690, 0, N'易华娣', 1, CAST(0x113B0B00 AS Date), CAST(0x3B3D0B00 AS Date), N'3585256474', CAST(0xE5390B00 AS Date), N'13712776830', N'                                                                                                    ', N'老会员转介绍，特价处理，赠送一个健身包
2015.9.30-12.30停卡三个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (691, 0, N'辜美洲', 1, CAST(0x113B0B00 AS Date), CAST(0xC03C0B00 AS Date), N'3585109575', CAST(0xE5390B00 AS Date), N'18688967741', N'                                                                                                    ', N'送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (692, 0, N'汪荣耀', 0, CAST(0x113B0B00 AS Date), CAST(0xC73C0B00 AS Date), N'3584792203', CAST(0xE7390B00 AS Date), N'18666869229', N'                                                                                                    ', N'送健身包一个、洗车券一张、赠送私教两节课')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (693, 0, N'陈南', 0, CAST(0x113B0B00 AS Date), CAST(0xC43C0B00 AS Date), N'3585302537', CAST(0xE9390B00 AS Date), N'15817608889', N'                                                                                                    ', N'送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (694, 0, N'宁凯', 0, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'3584974960', CAST(0xEB390B00 AS Date), N'13556697520', N'                                                                                                    ', N'2015.5.6补卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (695, 0, N'胡润丽', 1, CAST(0x113B0B00 AS Date), CAST(0xD73C0B00 AS Date), N'3584487565', CAST(0xFC390B00 AS Date), N'15012986837', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (696, 0, N'余芹通', 1, CAST(0x113B0B00 AS Date), CAST(0xE73C0B00 AS Date), N'3585204755', CAST(0xED390B00 AS Date), N'13712999336', N'                                                                                                    ', N'老会员介绍朋友享受特价')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (697, 0, N'牟方新', 0, CAST(0x113B0B00 AS Date), CAST(0xFD3C0B00 AS Date), N'3584315124', CAST(0xF3390B00 AS Date), N'13809261825', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (698, 0, N'谢威儿', 1, CAST(0x113B0B00 AS Date), CAST(0xCF3C0B00 AS Date), N'3584499125', CAST(0xF4390B00 AS Date), N'13609669440', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (699, 0, N'罗民虹', 1, CAST(0x113B0B00 AS Date), CAST(0x0D3D0B00 AS Date), N'3584495808', CAST(0xF5390B00 AS Date), N'13414366766', N'                                                                                                    ', N'送一个健身包
2015.11.17.免费停卡一次（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (700, 0, N'钟丽丽', 1, CAST(0x113B0B00 AS Date), CAST(0xCA3B0B00 AS Date), N'3584533929', CAST(0xF7390B00 AS Date), N'18676357827', N'                                                                                                    ', N'定金单200，2015.5.18补卡收取工本费30元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (701, 0, N'甘小凤', 1, CAST(0x113B0B00 AS Date), CAST(0xB13C0B00 AS Date), N'3584219563', CAST(0xF7390B00 AS Date), N'13826919025', N'                                                                                                    ', N'原一年卡有效期是2016.4.15，赠送一个包，补交200元提升2年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (702, 0, N'王慧', 1, CAST(0x113B0B00 AS Date), CAST(0x753C0B00 AS Date), N'3585286390', CAST(0xFD390B00 AS Date), N'13549375181', N'2014.11.14开通卡 （2015.5.24补办卡），                                                                       ', N'2014.12.16-2015.2.16停卡2个月{已延期}2015.4.7取卡，注:另送一个月共25个月,特价卡/送包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (703, 1, N'杨兴辉', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'057', CAST(0x00000000 AS Date), N'13798884821', N'488元月卡                                                                                              ', N'赠送健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (704, 1, N'雷亚光', 0, CAST(0x113B0B00 AS Date), CAST(0xFA3A0B00 AS Date), N'0036020785', CAST(0xBE390B00 AS Date), N'13556605149', N'                                                                                                    ', N'（10月卡）2015.4.1-2016.2.1,赠送一张7次卡。赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (705, 3, N'杨强东（半年卡）', 0, CAST(0x113B0B00 AS Date), CAST(0x153B0B00 AS Date), N'3401658228', CAST(0xF4390B00 AS Date), N'13750035510', N'                                                                                                    ', N'900季卡,2015.7.15之前可提升为年卡，只需交1088元
2015.8.24续费800元，续半年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (706, 0, N'刘奇迹', 0, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'0130869620', CAST(0x00000000 AS Date), N'13794934602', N'年卡1800元                                                                                             ', N'赠送健身包一个 洗车卷两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (707, 0, N'谢坤平', 1, CAST(0x113B0B00 AS Date), CAST(0xDB3C0B00 AS Date), N'3584802256', CAST(0x00000000 AS Date), N'13826908995', N'                                                                                                    ', N'2015.3.27交688元两月卡
送一个包 在两个月内提升2年卡补交余额1700
5.27补交余款1700元，提升为两年卡。
2015.6.29-8.30停卡两个月（已延期）
2015.9.6本人已取卡（原单已丢失）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (708, 0, N'覃清', 1, CAST(0x113B0B00 AS Date), CAST(0x693B0B00 AS Date), N'0130761924', CAST(0x31390B00 AS Date), N'13724475193', N'送一个月，共13个月，包一个                                                                                      ', N'和李永胜办的情侣卡,2015.4.21过来补照片并开通有效期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (709, 0, N'李永胜', 0, CAST(0x113B0B00 AS Date), CAST(0x693B0B00 AS Date), N'0116727684', CAST(0x31390B00 AS Date), N'13413270707', N'送一个月包一个                                                                                             ', N'和覃清办的情侣卡定金200.2015.4.21过来补照片并开通有效期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (710, 0, N'章红星', 1, CAST(0x113B0B00 AS Date), CAST(0x623B0B00 AS Date), N'0127434708', CAST(0x00000000 AS Date), N'13929441922', N'2015.4.15第一次来                                                                                       ', N'2015.12.2介绍会员办卡送一个月时间（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (711, 0, N'宾丽华', 1, CAST(0x113B0B00 AS Date), CAST(0x383C0B00 AS Date), N'0116607828', CAST(0xDD380B00 AS Date), N'15384284619', N'1500元年卡                                                                                             ', N'2015.11.15续年卡、赠送健身包、水杯、毛巾、周卡2张、一个月时间、')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (712, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0177185336', CAST(0xDD380B00 AS Date), N'', N'                                                                                                    ', N'半年期限')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (713, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0179436600', CAST(0xDD380B00 AS Date), N'', N'                                                                                                    ', N'期限半年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (714, 0, N'叶立省', 0, CAST(0x113B0B00 AS Date), CAST(0xCD3B0B00 AS Date), N'0126890100', CAST(0xF3380B00 AS Date), N'13556750759', N'                                                                                                    ', N'2014.10.24-2015.10.24停卡一次 停一年  （已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (715, 0, N'周少红', 1, CAST(0x113B0B00 AS Date), CAST(0xCC3C0B00 AS Date), N'3585250225', CAST(0x00000000 AS Date), N'13609675312', N'                                                                                                    ', N'送一个包。送一个月，送一张洗车劵
2015.5.31补交888元，年卡提升两年卡
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (716, 0, N'杨珊珊', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'13次卡', CAST(0xA8390B00 AS Date), N'15820953564', N'次卡                                                                                                  ', N'剩下11次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (717, 0, N'张根生', 0, CAST(0x113B0B00 AS Date), CAST(0x7B3B0B00 AS Date), N'20次卡', CAST(0x00000000 AS Date), N'13798829030', N'600元次卡20次。送包一个                                                                                      ', N'剩余12次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (718, 0, N'候跃江', 0, CAST(0x113B0B00 AS Date), CAST(0x733B0B00 AS Date), N'0128421812', CAST(0x003A0B00 AS Date), N'15899652656', N'1500年卡                                                                                              ', N'赠送健身包一个
2015.8.10补卡收取30元，原卡号100212')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (719, 0, N'陈婉玲', 1, CAST(0x113B0B00 AS Date), CAST(0x6F3B0B00 AS Date), N'0127392356', CAST(0x013A0B00 AS Date), N'13790204985', N'1800年卡                                                                                              ', N'赠送一个健身包')
GO
print 'Processed 700 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (720, 0, N'金蛟', 0, CAST(0x113B0B00 AS Date), CAST(0x703B0B00 AS Date), N'0127431828', CAST(0x023A0B00 AS Date), N'15920229332', N'1500年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (721, 0, N'吴辉霞', 1, CAST(0x113B0B00 AS Date), CAST(0x703B0B00 AS Date), N'0130804084', CAST(0x023A0B00 AS Date), N'18682071678', N'1500年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (722, 0, N'罗小萍', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0130825556', CAST(0x01390B00 AS Date), N'13509824247', N'                                                                                                    ', N'特价办理不停不转，送3个月共15个月，包一个,（和游玉涓一起）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (723, 0, N'陈小红', 1, CAST(0x113B0B00 AS Date), CAST(0xB73C0B00 AS Date), N'0131032196', CAST(0x00000000 AS Date), N'13922994217', N'                                                                                                    ', N'陈小红和曾玉梅情侣卡共3000元
同意特价办理。送3个月，共15个月2016.13号--2016.3.12停卡两个月、')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (724, 0, N'曾玉梅', 1, CAST(0x113B0B00 AS Date), CAST(0x463C0B00 AS Date), N'0126246036', CAST(0x00000000 AS Date), N'13922994217', N'曾玉梅和陈小红情侣卡3000元，每人1500元                                                                             ', N'2014-9-7来交费，同意特价办理。送3个月。共15个月（已延期）2015.7.1第一次来开卡，已激活。
2015.10.16介绍李英办卡，赠送一个月（已延期）2015.12.31号停卡两个月到2016.2.28号如有不来将手动开卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (725, 0, N'胡丹', 1, CAST(0x113B0B00 AS Date), CAST(0xCD3B0B00 AS Date), N'0117956532', CAST(0x00000000 AS Date), N'13713481182', N'2888情侣年卡                                                                                            ', N'2014.10.24-2015.10.24 停一年 （已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (726, 0, N'袁锐棠', 0, CAST(0x113B0B00 AS Date), CAST(0x323C0B00 AS Date), N'0127357028', CAST(0x13390B00 AS Date), N'13751270260', N'特价办理 泰力格会员 送包两个,共12个月                                                                               ', N'
2015.11.9-2016.11.9老会员续年卡，赠送健身包，毛巾，水杯，月卡一张，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (727, 0, N'李火生', 0, CAST(0x113B0B00 AS Date), CAST(0x4A3C0B00 AS Date), N'0127342980', CAST(0x14390B00 AS Date), N'13825708560', N'2016.11.10续年卡，赠送一个月（已延期)，共计13个月                                                                     ', N'另送一个月，共13个月，每人大礼包一个
2015.6.16公司奖品送一个月（已延期）
2015.8.6补卡，已收取工本费30元，旧卡号：100664 
2015.11.15周年庆活动奖品：年卡一张、未领取')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (728, 0, N'吴艳梅', 1, CAST(0x113B0B00 AS Date), CAST(0x4A3C0B00 AS Date), N'0122450772', CAST(0x14390B00 AS Date), N'13825708560', N'2016.11.10续年卡，赠送一个月（已延期)，共计13个月                                                                     ', N'另送一个月，共13个月，每人大礼包一个
2015.6.16公司奖品送一个月（已延期）
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (729, 0, N'李开', 1, CAST(0x113B0B00 AS Date), CAST(0x033B0B00 AS Date), N'0127438660', CAST(0x15390B00 AS Date), N'15338040525', N'活动特价卡，送包两个                                                                                          ', N'停卡日期：2014-10-25至2015-03-01 已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (730, 0, N'熊子辉', 0, CAST(0x113B0B00 AS Date), CAST(0x033B0B00 AS Date), N'0131360980', CAST(0x15390B00 AS Date), N'13418333791', N'活动特价卡，送包两个。                                                                                         ', N'停卡日期：2014-10-25至2015-03-01 已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (731, 0, N'许少鸿', 0, CAST(0x113B0B00 AS Date), CAST(0xF23A0B00 AS Date), N'0132196884', CAST(0x28390B00 AS Date), N'18926860543', N'2015.3.9已取卡                                                                                         ', N'次卡转情侣卡年卡补交1888元 送包两个,许少鸿从2015.1.19至2015.3.19停卡已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (732, 0, N'冼子玲', 1, CAST(0x113B0B00 AS Date), CAST(0x173B0B00 AS Date), N'0119184596', CAST(0x93390B00 AS Date), N'13798893887', N'                                                                                                    ', N'2015.3.1开通,她和袁浩瑜提升情侣卡一年 共3100,送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (733, 0, N'袁浩瑜', 0, CAST(0x113B0B00 AS Date), CAST(0x733B0B00 AS Date), N'0130732772', CAST(0x93390B00 AS Date), N'13827250070', N'2015.4.15-7.15停卡三个月（已延期）                                                                            ', N'补照片2015.3.1开通,他老婆冼子玲一年卡2000提升情侣卡一年共3100,送包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (734, 0, N'黄立统 黄志仪 朴梅花', 1, CAST(0x113B0B00 AS Date), CAST(0x873B0B00 AS Date), N'0122507316', CAST(0x00000000 AS Date), N'277  15602695656', N'                                                                                                    ', N'2014.6.29办卡，2015.6.22开始激活使用')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (735, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x323D0B00 AS Date), N'0177149000', CAST(0xEA380B00 AS Date), N'', N'                                                                                                    ', N'有效期三年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (736, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x323D0B00 AS Date), N'0178179368', CAST(0xEA380B00 AS Date), N'', N'                                                                                                    ', N'有效期三年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (737, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x323D0B00 AS Date), N'0177457448', CAST(0xEA380B00 AS Date), N'', N'                                                                                                    ', N'有效期三年')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (738, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0159442168', CAST(0xEC380B00 AS Date), N'', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (739, 0, N'次卡', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0180136232', CAST(0xEC380B00 AS Date), N'', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (740, 0, N'李文慧（次卡）', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0174289416', CAST(0xED380B00 AS Date), N'', N'                                                                                                    ', N'8月25先领取一张，一共两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (741, 0, N'曾秀媚', 1, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'0038727265', CAST(0xB4390B00 AS Date), N'13609668112', N'次卡1300，共50次 有效期1年                                                                                   ', N'2015.7.3已取卡，未消费锻炼')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (742, 0, N'丁浩', 0, CAST(0x113B0B00 AS Date), CAST(0x8F3C0B00 AS Date), N'0040757345', CAST(0xB5390B00 AS Date), N'13925863189', N'3200商务卡，剩下108次                                                                                      ', N'商务次卡送10次，送一个包共110次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (743, 0, N'袁铸聪', 0, CAST(0x113B0B00 AS Date), CAST(0x4B3B0B00 AS Date), N'0036642369', CAST(0x00000000 AS Date), N'13620031988', N'次卡1700.定金1100 余款已交齐                                                                                 ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (744, 0, N'戴亮', 1, CAST(0x113B0B00 AS Date), CAST(0x803B0B00 AS Date), N'3584636178', CAST(0xEA390B00 AS Date), N'18819099710', N'500元15次，2015.1.28第一次来                                                                               ', N'2015.2.10第二次来，剩余9次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (745, 0, N'刘文胜', 0, CAST(0x113B0B00 AS Date), CAST(0x8B3C0B00 AS Date), N'0036453953', CAST(0xF8390B00 AS Date), N'13929276599', N'3588商务次卡，剩余95次                                                                                      ', N'2015.5.19两年卡转为商务次卡100次补交300块')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (746, 0, N'何文超', 0, CAST(0x113B0B00 AS Date), CAST(0x8E3B0B00 AS Date), N'3585274350', CAST(0xBF390B00 AS Date), N'13412922232', N'1500元，剩余36次                                                                                         ', N'总共50次商务次卡，程鹏说无有效期，用完为止')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (747, 0, N'谭莎', 1, CAST(0x113B0B00 AS Date), CAST(0x903B0B00 AS Date), N'0130680676', CAST(0x023A0B00 AS Date), N'15992943026', N'1500年卡                                                                                              ', N'赠送健身包一个，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (748, 0, N'韩敏', 1, CAST(0x113B0B00 AS Date), CAST(0xDB3C0B00 AS Date), N'3584202923', CAST(0x003A0B00 AS Date), N'13794867068', N'3000元100次卡                                                                                          ', N'赠送健身包一个,总共100次
开华峰13770498088（韩敏的老公，2015.8.30开了私教）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (749, 0, N'陈航', 0, CAST(0x113B0B00 AS Date), CAST(0xDF3C0B00 AS Date), N'3584245057', CAST(0x043A0B00 AS Date), N'18826964108', N'3500（100次卡）                                                                                         ', N'100次卡 赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (750, 0, N'赵勇', 0, CAST(0x113B0B00 AS Date), CAST(0x723B0B00 AS Date), N'0127323828', CAST(0x00000000 AS Date), N'13809269468', N'1600年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (751, 0, N'朱佩林', 0, CAST(0x113B0B00 AS Date), CAST(0xE73C0B00 AS Date), N'3584762665', CAST(0x00000000 AS Date), N'13802378852', N'商务100次卡赠送15次，总共115次                                                                                 ', N'不限人使用，拿此卡来消费减次数')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (752, 0, N'江卓彬', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3D0B00 AS Date), N'3715520243', CAST(0x67180B00 AS Date), N'13602330112', N'2788三年卡                                                                                             ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (753, 0, N'戴朝辉', 1, CAST(0x113B0B00 AS Date), CAST(0x0C3D0B00 AS Date), N'3716810851', CAST(0xB7380B00 AS Date), N'13686640090', N'2888三年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (754, 0, N'罗志勇', 0, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'3716395203', CAST(0xC9040B00 AS Date), N'13829116856', N'2788 三年卡                                                                                            ', N'有定金单100 2014.6.27 交费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (755, 0, N'黄燕', 1, CAST(0x113B0B00 AS Date), CAST(0x983D0B00 AS Date), N'3716346419', CAST(0xB8380B00 AS Date), N'13592766206', N'从３张体验卡.有效期至2014.8.31                                                                                ', N'2015.1.31-2.28停卡一个月 已延期,2015.3.2已取卡。
2015.7.14-9.15停卡两个月（已延期）
2015.10.18已取卡
2015.11.14旷娟转黄燕，第二次转卡：500元
不能再转卡、停卡（怀孕可停卡一次）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (756, 0, N'李玲', 1, CAST(0x113B0B00 AS Date), CAST(0x203D0B00 AS Date), N'3715012515', CAST(0xBA380B00 AS Date), N'18988785240', N'                                                                                                    ', N'定金单100,2788 三年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (757, 0, N'雷娟', 1, CAST(0x113B0B00 AS Date), CAST(0x213D0B00 AS Date), N'3715565331', CAST(0x00000000 AS Date), N'15899631038', N' 2688三年卡 2014.7.03办卡，2014.8.6第一次来                                                                   ', N'送贺湘燕21次体验卡，有效使用期2014.8.31,定金单200 ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (758, 0, N'陈丹丽', 1, CAST(0x113B0B00 AS Date), CAST(0x633D0B00 AS Date), N'3716322803', CAST(0xBA380B00 AS Date), N'13925735048', N'                                                                                                    ', N'2888三年卡
2015.11.21-2016.1.21停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (759, 0, N'黎卓明', 0, CAST(0x113B0B00 AS Date), CAST(0x4E3D0B00 AS Date), N'3715189699', CAST(0xBA380B00 AS Date), N'13728200738', N'                                                                                                    ', N'2888三年卡
2015.10.30-2015.12.31.停卡两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (760, 0, N'雷立英', 1, CAST(0x113B0B00 AS Date), CAST(0xC13D0B00 AS Date), N'3716124755', CAST(0xBB380B00 AS Date), N'13560880488', N'2888三年卡                                                                                             ', N'有和平健身中心健身卡，赠送两个月,2014年11月12开通此卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (761, 0, N'张锐', 1, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'0123031956', CAST(0xBD380B00 AS Date), N'15899935646', N'2788 三年卡                                                                                            ', N'定金单100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (762, 0, N'梁秀文', 1, CAST(0x113B0B00 AS Date), CAST(0x473D0B00 AS Date), N'3716787843', CAST(0x00000000 AS Date), N'15992772783', N'                                                                                                    ', N'2015.4.25-7.25停卡三个月，已延期
2015.7.3提前取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (763, 0, N'蔡球娣', 1, CAST(0x113B0B00 AS Date), CAST(0xCA3E0B00 AS Date), N'3715004051', CAST(0x00000000 AS Date), N'13268676198', N'3088三年卡                                                                                             ', N'2015.10.5刘平（2014.7.6办卡，一直未激活）转卡给蔡球娣')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (764, 0, N'刘丽欢', 1, CAST(0x113B0B00 AS Date), CAST(0xE03C0B00 AS Date), N'3585195045', CAST(0x00000000 AS Date), N'13580712331', N'2388两年卡，赠送健身包一个                                                                                     ', N'2015.11.12.赠送健身包一个，（续私教）加送一个月（未延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (765, 0, N'王玉荣', 1, CAST(0x113B0B00 AS Date), CAST(0x763B0B00 AS Date), N'0123070964', CAST(0x00000000 AS Date), N'13829299001', N'                                                                                                    ', N'四月活动奖品（易玉林转赠）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (766, 0, N'张玉清', 0, CAST(0x113B0B00 AS Date), CAST(0xFD3C0B00 AS Date), N'3715737715', CAST(0x86380B00 AS Date), N'13600288127', N'2688三年卡                                                                                             ', N'定金单200')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (767, 0, N'陈晓骞', 0, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'3715393427', CAST(0xB5380B00 AS Date), N'15899685057', N'                                                                                                    ', N'可以带小朋友入场，自己负责安全')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (768, 0, N'陈军华', 0, CAST(0x113B0B00 AS Date), CAST(0x753B0B00 AS Date), N'3584924634', CAST(0x00000000 AS Date), N'13556709123', N'1500元50次，2015.6.4第一次来                                                                               ', N'赠送健身包一个，不限本人使用，凭卡消费减次数
2015.9.26补卡，已收补卡费30元，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (769, 0, N'濑籽彬', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3D0B00 AS Date), N'3713357859', CAST(0xC4380B00 AS Date), N'13929218191', N'                                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (770, 0, N'马伟明', 0, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'3715372627', CAST(0xC8380B00 AS Date), N'18807691152', N'2888三年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (771, 0, N'林叶宾', 0, CAST(0x113B0B00 AS Date), CAST(0x793D0B00 AS Date), N'0131355252', CAST(0xE8380B00 AS Date), N'13713366336', N'3088元,下次来再补交林叶宾本人照片                                                                                 ', N'2015.3.24余海燕转卡给林叶宾（已收取300元转卡费)赠送两个月，2014.9.1-2017.11.1')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (772, 0, N'吴伟红', 1, CAST(0x113B0B00 AS Date), CAST(0xFB3E0B00 AS Date), N'0122183572', CAST(0xF5380B00 AS Date), N'13729991610', N'3088三年卡                                                                                             ', N'送一个月。包一个
2015.9.8-2016.10.15停卡13个月。怀孕')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (773, 0, N'刘杉杉此卡已转给吴广艳', 1, CAST(0x113B0B00 AS Date), CAST(0x683D0B00 AS Date), N'3716097283', CAST(0xF5380B00 AS Date), N'13794877779', N'3088三年卡                                                                                             ', N'送一个月，包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (774, 0, N'冯徬弟', 1, CAST(0x113B0B00 AS Date), CAST(0x453D0B00 AS Date), N'3715648515', CAST(0xFD380B00 AS Date), N'13602361660', N'3288三年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (775, 0, N'石芳', 1, CAST(0x113B0B00 AS Date), CAST(0x513D0B00 AS Date), N'3716449843', CAST(0x04390B00 AS Date), N'18007696092', N'2788三年卡                                                                                             ', N'定金100')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (776, 0, N'庹年帅', 0, CAST(0x113B0B00 AS Date), CAST(0x4B3D0B00 AS Date), N'3715157731', CAST(0x05390B00 AS Date), N'13509010815', N'2888 三年卡                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (777, 0, N'刘保胜', 0, CAST(0x113B0B00 AS Date), CAST(0x153D0B00 AS Date), N'3713914995', CAST(0x31390B00 AS Date), N'15820871697', N'此卡为补卡，第一张遗失，资料已转此卡号                                                                                 ', N'赠送运动包,2788 三年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (778, 0, N'林城权', 0, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'3715573539', CAST(0x39390B00 AS Date), N'15989616397', N'2014.7.19号开通此卡                                                                                      ', N'定金单100,2788三年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (779, 0, N'陈海萍', 1, CAST(0x113B0B00 AS Date), CAST(0xF33E0B00 AS Date), N'3716879619', CAST(0x3F390B00 AS Date), N'13827250657', N'3088三年卡，注：提升3年卡 补交700元                                                                              ', N'包一个，送100元现金券存水费,2015.4.28-2016.4.28因怀孕停卡一年，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (780, 0, N'邓伟谊', 1, CAST(0x113B0B00 AS Date), CAST(0x81400B00 AS Date), N'0127408900', CAST(0x5E390B00 AS Date), N'13662930608', N'五年卡5200，此卡为五年卡                                                                                      ', N'送一个包 可以停卡 可以转卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (781, 0, N'李靖', 0, CAST(0x113B0B00 AS Date), CAST(0x943C0B00 AS Date), N'3714541523', CAST(0x6D390B00 AS Date), N'13728114411', N'3000三年卡，2014.8.17开通卡                                                                                ', N'之前有送一个月.共37个月送给黎丹梅6个月,一年卡提升3年卡交余款1412元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (782, 0, N'唐蒙', 1, CAST(0x113B0B00 AS Date), CAST(0xF23D0B00 AS Date), N'3715425891', CAST(0xAB390B00 AS Date), N'15016764422', N'                                                                                                    ', N'三年卡3300，送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (783, 0, N'吴广艳', 1, CAST(0x113B0B00 AS Date), CAST(0xD63E0B00 AS Date), N'3716154755', CAST(0xC1390B00 AS Date), N'15999767535', N'已收取300块转卡费                                                                                          ', N'张梦倩协助处理，原卡已丢失，补卡未收取工本费程鹏已签字,2015.3.25刘杉杉转卡给吴广艳
 
2016.9号停卡一年（怀孕）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (784, 0, N'曾红永', 0, CAST(0x113B0B00 AS Date), CAST(0x2B3E0B00 AS Date), N'3714027907', CAST(0xE3390B00 AS Date), N'13609680739', N'                                                                                                    ', N'2014.7.2付款，2015.4.28制卡激活，2888三年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (785, 0, N'朱威', 0, CAST(0x113B0B00 AS Date), CAST(0x723B0B00 AS Date), N'0126398868', CAST(0x00000000 AS Date), N'13686683263', N'                                                                                                    ', N'赠送三张体验卷 赠送一个健身包
2015.10.6朱贤辉转卡给朱威，已收取转卡费220元。
2015.10.6补卡，已收取补卡费30元（原卡号100330）
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (786, 0, N'农艳', 1, CAST(0x113B0B00 AS Date), CAST(0xF03B0B00 AS Date), N'0126798292', CAST(0x00000000 AS Date), N'13713125313', N'送一张洗车券，一个健身包，两节私教课，三次停卡，每次最多停卡一个月（共3个月）                                                             ', N'1500一年卡，送一个月
2015.7.31补卡，已收补卡费30元
2015.11.15办私教赠送一个月时间，已延期、另外赠送双月卡一张（资料下次补齐）

2015.12.10-2016.2.10停卡2个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (787, 0, N'袁焕兆', 0, CAST(0x113B0B00 AS Date), CAST(0xA53B0B00 AS Date), N'0127634324', CAST(0x00000000 AS Date), N'13809620883', N'赠送健身包一个 钟凤章介绍                                                                                       ', N'2015.7.15-9.15停卡两个月（已延期）
2015.9.15已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (788, 0, N'潘国振', 0, CAST(0x113B0B00 AS Date), CAST(0x773B0B00 AS Date), N'0122822212', CAST(0x00000000 AS Date), N'13570979878', N'                                                                                                    ', N'公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (789, 0, N'林嘉庆', 0, CAST(0x113B0B00 AS Date), CAST(0x3F3B0B00 AS Date), N'0130900180', CAST(0x00000000 AS Date), N'13928393757', N'                                                                                                    ', N'赠送一个健身包
2015.6.6 688元双月卡加1200元提升为年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (790, 0, N'何昌富', 0, CAST(0x113B0B00 AS Date), CAST(0x783B0B00 AS Date), N'0127342596', CAST(0x00000000 AS Date), N'18676955658', N'                                                                                                    ', N'1500元年卡 送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (791, 0, N'张栋', 0, CAST(0x113B0B00 AS Date), CAST(0x973B0B00 AS Date), N'0121553636', CAST(0x00000000 AS Date), N'13603027416', N'1688元年卡，赠送健身包一个，送一个月（已延期）                                                                           ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (792, 0, N'陈真', 1, CAST(0x113B0B00 AS Date), CAST(0xE53C0B00 AS Date), N'3584913121', CAST(0x00000000 AS Date), N'13763145042', N'2014.6.29预售交费。2015.6.7第一次来                                                                          ', N'2张次卡，不要背包
2015.9.5已取会员卡，2张七次卡000723,000724（2张七次卡均第一次使用后，在15天内使用完）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (793, 0, N'汪秦廷', 1, CAST(0x113B0B00 AS Date), CAST(0x7B3B0B00 AS Date), N'0120714388', CAST(0x00000000 AS Date), N'13906717977', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (794, 0, N'梁冠瑜', 1, CAST(0x113B0B00 AS Date), CAST(0x7E3B0B00 AS Date), N'0130765812', CAST(0x00000000 AS Date), N'13728380648', N'1588年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (795, 0, N'谢钰璋', 1, CAST(0x113B0B00 AS Date), CAST(0xE93C0B00 AS Date), N'3584871596', CAST(0x00000000 AS Date), N'13650086286', N' 2014.7.6付款2088元                                                                                    ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (796, 0, N'李远李远轶', 0, CAST(0x113B0B00 AS Date), CAST(0x7D3B0B00 AS Date), N'0130099684', CAST(0x00000000 AS Date), N'13926891549', N'1500年卡                                                                                              ', N'赠送健身包一个，在一个月内补交1000元，提升两年卡。再送两节私教课程')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (797, 0, N'李燕雪', 1, CAST(0x113B0B00 AS Date), CAST(0x803B0B00 AS Date), N'0127412468', CAST(0x00000000 AS Date), N'15017159077', N'                                                                                                    ', N'送健身包一个 洗车卷一张 两节私教启蒙课')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (798, 0, N'施淑敏', 1, CAST(0x113B0B00 AS Date), CAST(0x813B0B00 AS Date), N'0130760980', CAST(0x00000000 AS Date), N'1599987248', N'                                                                                                    ', N'送健身包一个 洗车卷一张 赠送两节私教课')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (799, 0, N'何志碧', 1, CAST(0x113B0B00 AS Date), CAST(0x803B0B00 AS Date), N'0127310564', CAST(0x00000000 AS Date), N'13922920021', N'                                                                                                    ', N'赠送一个包 两张洗车卷 两节私教课')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (800, 0, N'熊星迪', 0, CAST(0x113B0B00 AS Date), CAST(0x803B0B00 AS Date), N'0120198692', CAST(0x00000000 AS Date), N'13622657336', N'                                                                                                    ', N'少儿跆拳道打八折，此折扣不得告诉他人
会籍顾问：陆英玲')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (801, 0, N'方立萍', 1, CAST(0x113B0B00 AS Date), CAST(0xBE3B0B00 AS Date), N'0131616612', CAST(0x00000000 AS Date), N'13712532928', N'2015.6.23第一次来。6.24第二次来                                                                              ', N'创始会员介绍，特价，赠送健身包一个
1588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (802, 0, N'詹秋玲', 1, CAST(0x113B0B00 AS Date), CAST(0xBF3B0B00 AS Date), N'0119550340', CAST(0x00000000 AS Date), N'13509800220', N'                                                                                                    ', N'创始会员介绍，特价，赠送健身包一个
1588年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (803, 0, N'谢佩仪', 1, CAST(0x113B0B00 AS Date), CAST(0xEC3B0B00 AS Date), N'0119165156', CAST(0x00000000 AS Date), N'13580781995', N'                                                                                                    ', N'赠送一张洗车劵，赠送一个健身包
1500元年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (804, 0, N'熊丽', 1, CAST(0x113B0B00 AS Date), CAST(0x813B0B00 AS Date), N'0127671540', CAST(0x00000000 AS Date), N'13302695270', N'                                                                                                    ', N'赠送一个健身包。老会员叶小芬转介绍
1500年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (805, 1, N'余敬和', 0, CAST(0x113B0B00 AS Date), CAST(0x913C0B00 AS Date), N'0127412596', CAST(0x00000000 AS Date), N'15818266868', N'                                                                                                    ', N'可免费请假两次（每次30天至60天）
赠送健身包一个
2015.6.16凯利斯会员转赠月卡，续一个月（已
延期）
2015.9.24-10.24停卡一个，已延期
2015.10.26已取卡
2015.12.22.谢静（年卡)将剩余时间转给余敬和。已收取300元转卡费
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (806, 0, N'陈丹红', 1, CAST(0x113B0B00 AS Date), CAST(0x833B0B00 AS Date), N'0128101380', CAST(0x00000000 AS Date), N'13144878161', N'                                                                                                    ', N'赠送健身包一个
2015.8.28陈丹仪转卡给陈丹红收取转卡费120元
2015.8.28已补卡 收取补卡费30元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (807, 0, N'李东华', 0, CAST(0x113B0B00 AS Date), CAST(0x843B0B00 AS Date), N'0127564852', CAST(0x00000000 AS Date), N'15999872873', N'1688元年卡                                                                                             ', N'可以停卡一次，后续停卡可因时间段收取50-100手续，送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (808, 0, N'王文韬', 1, CAST(0x113B0B00 AS Date), CAST(0x853B0B00 AS Date), N'0119466852', CAST(0x00000000 AS Date), N'13652605781', N'       1588年卡                                                                                       ', N'赠送健身包一个，洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (809, 0, N'李金奎', 0, CAST(0x113B0B00 AS Date), CAST(0x863B0B00 AS Date), N'0130769700', CAST(0x00000000 AS Date), N'13728392803', N'                                                                                                    ', N'赠送健身包一个 赠送私教课两节')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (810, 0, N'劳奕深', 0, CAST(0x113B0B00 AS Date), CAST(0x873B0B00 AS Date), N'0130697748', CAST(0x00000000 AS Date), N'15992731169', N'                                                                                                    ', N'赠送健身包一个 抽奖水费100元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (811, 0, N'陈锦辉', 0, CAST(0x113B0B00 AS Date), CAST(0x873B0B00 AS Date), N'0130775412', CAST(0x00000000 AS Date), N'13925537969', N'1700年卡                                                                                              ', N'赠送健身包一个，送两节私教课，送洗车券一张，送美容券馨奈儿。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (812, 0, N'黄振民', 0, CAST(0x113B0B00 AS Date), CAST(0x873B0B00 AS Date), N'0121264836', CAST(0x00000000 AS Date), N'15992894777', N'                                                                                                    ', N'销售合同单注明：抽中100水费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (813, 0, N'王帅', 0, CAST(0x113B0B00 AS Date), CAST(0xF43C0B00 AS Date), N'3585365095', CAST(0x00000000 AS Date), N'13827269892', N'                                                                                                    ', N'送一个健身包，需开发票')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (814, 0, N'林怡培', 0, CAST(0x113B0B00 AS Date), CAST(0x873B0B00 AS Date), N'0122542964', CAST(0x00000000 AS Date), N'18680099992', N'                                                                                                    ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (815, 0, N'黄圆圆', 1, CAST(0x113B0B00 AS Date), CAST(0x893B0B00 AS Date), N'0126512212', CAST(0x00000000 AS Date), N'18726144775', N'1800元年卡                                                                                             ', N'赠送一个健身包，一张洗车卷')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (816, 0, N'熊赟', 1, CAST(0x113B0B00 AS Date), CAST(0x8A3B0B00 AS Date), N'0120910116', CAST(0x00000000 AS Date), N'13712120999', N'1500元年卡                                                                                             ', N'送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (817, 0, N'刘时坤', 0, CAST(0x113B0B00 AS Date), CAST(0x883B0B00 AS Date), N'0116774164', CAST(0x00000000 AS Date), N'13929923347', N'1500元年卡                                                                                             ', N'赠送一个健身包。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (818, 0, N'何梓豪', 0, CAST(0x113B0B00 AS Date), CAST(0x893B0B00 AS Date), N'0123048132', CAST(0x00000000 AS Date), N'13829218282', N'1500元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (819, 0, N'张立红', 1, CAST(0x113B0B00 AS Date), CAST(0x8F3B0B00 AS Date), N'0126517348', CAST(0x00000000 AS Date), N'13712707655', N'2015.6.25第一次来                                                                                       ', N'赠送洗车劵一张，赠送健身包一个
1680年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (820, 0, N'钟紫薇', 1, CAST(0x113B0B00 AS Date), CAST(0xB03B0B00 AS Date), N'0117873492', CAST(0x00000000 AS Date), N'13790633127', N'1688年卡                                                                                              ', N'赠送美容院一张
赠送健身包一张
介绍朋友办卡，赠送一个月（已延期）')
GO
print 'Processed 800 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (821, 0, N'卢滨虹', 1, CAST(0x113B0B00 AS Date), CAST(0xFD3C0B00 AS Date), N'3584877365', CAST(0x00000000 AS Date), N'13538329987', N'                                                                                                    ', N'赠送健身包一个，抽中单车一台')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (822, 0, N'袁沛林', 0, CAST(0x113B0B00 AS Date), CAST(0xFA3C0B00 AS Date), N'0130808132', CAST(0x00000000 AS Date), N'13694999930', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (823, 0, N'周振文', 0, CAST(0x113B0B00 AS Date), CAST(0x8A3B0B00 AS Date), N'0127333332', CAST(0x00000000 AS Date), N'13528518208', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (824, 0, N'黄风光', 0, CAST(0x113B0B00 AS Date), CAST(0x8A3B0B00 AS Date), N'0120170756', CAST(0x00000000 AS Date), N'13652600809', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (825, 0, N'刘进刚', 0, CAST(0x113B0B00 AS Date), CAST(0xBE3B0B00 AS Date), N'0120696516', CAST(0x00000000 AS Date), N'15014787888', N'                                                                                                    ', N'老会员续卡赠送一个月
2015.6.27续年卡，1500元年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (826, 0, N'王思敏', 1, CAST(0x113B0B00 AS Date), CAST(0xCB3B0B00 AS Date), N'0130760388', CAST(0x00000000 AS Date), N'15617075306', N'                                                                                                    ', N'赠送健身包一个
2015.8.22-2015.10.22停卡两个月   已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (827, 0, N'陈启锡', 0, CAST(0x113B0B00 AS Date), CAST(0x8E3B0B00 AS Date), N'0126546644', CAST(0x00000000 AS Date), N'18926954888', N'                                                                                                    ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (828, 0, N'钟伟杰', 0, CAST(0x113B0B00 AS Date), CAST(0x8F3B0B00 AS Date), N'0130679524', CAST(0x00000000 AS Date), N'13713453696', N'有效期2015.6.28至2016.7.1                                                                               ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (829, 0, N'钟让球', 0, CAST(0x113B0B00 AS Date), CAST(0x8F3B0B00 AS Date), N'0127347620', CAST(0x00000000 AS Date), N'13809825222', N'2015.6.28至2016.7.1                                                                                  ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (830, 0, N'田淋淋', 0, CAST(0x113B0B00 AS Date), CAST(0xAB3B0B00 AS Date), N'0126320500', CAST(0x00000000 AS Date), N'13712240342', N'1500元年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (831, 0, N'丘惠隆', 1, CAST(0x113B0B00 AS Date), CAST(0xEB3B0B00 AS Date), N'0130812708', CAST(0x00000000 AS Date), N'15918381391', N'                                                                                                    ', N'赠送健身包一个，1688年卡。
2015.7.23-9.23停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (832, 0, N'丘惠辉', 1, CAST(0x113B0B00 AS Date), CAST(0xEB3B0B00 AS Date), N'0126877748', CAST(0x00000000 AS Date), N'13538566139', N'                                                                                                    ', N'赠送健身包一个。1688年卡。
2015.7.23-9.23停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (833, 0, N'薛珊', 1, CAST(0x113B0B00 AS Date), CAST(0xCA3B0B00 AS Date), N'0121273524', CAST(0x00000000 AS Date), N'18676977959', N'                                                                                                    ', N'老会员介绍朋友价，赠送健身包一个，送美容劵一张 1588年卡。
2015.7.10-9.10停卡两个月（已延期）
2015.9.7本人已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (834, 0, N'郑煜旻', 0, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'0130138564', CAST(0x00000000 AS Date), N'18928290008', N'                                                                                                    ', N'送健身包一个，送洗车券两张，老会员介绍价
1588年卡。
2015.7.10-9.1停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (835, 0, N'仲照新', 1, CAST(0x113B0B00 AS Date), CAST(0xAD3B0B00 AS Date), N'0126435876', CAST(0x00000000 AS Date), N'13649870998', N'1500元年卡                                                                                             ', N'老会员介绍，特此赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (836, 0, N'张丽莉', 1, CAST(0x113B0B00 AS Date), CAST(0xAD3B0B00 AS Date), N'0123226100', CAST(0x00000000 AS Date), N'13712992511', N'1500元年卡                                                                                             ', N'老会员介绍，特此赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (837, 0, N'胡浩桥', 1, CAST(0x113B0B00 AS Date), CAST(0x8F3B0B00 AS Date), N'0119244388', CAST(0x00000000 AS Date), N'13925797323', N'                                                                                                    ', N'赠送一个健身包，在两个月内补交1118提升年卡，也可以提升两年卡补交2300元。
2015.8.7双月卡补交1118元升级为年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (838, 0, N'朱湘燕', 1, CAST(0x113B0B00 AS Date), CAST(0xCE3B0B00 AS Date), N'0130775268', CAST(0x00000000 AS Date), N'13423184190', N'                                                                                                    ', N'次卡可停卡一次，此卡开卡日期为9.1号，如提前过来视作从6.30号开始计算，送健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (839, 0, N'余诗敏', 1, CAST(0x113B0B00 AS Date), CAST(0xA93B0B00 AS Date), N'0130113508', CAST(0x00000000 AS Date), N'13427895891', N'1500元年卡                                                                                             ', N'赠送一个健身包，送美容卷一张，送抽奖一次
2015.8.5-11.5停卡三个月（已延期）
经办人：童威
2015.8.31姜琴本人未来取卡，电话告知把卡转给余诗敏，收取转卡费300元，经办人：易晨。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (840, 0, N'潘王彬', 0, CAST(0x113B0B00 AS Date), CAST(0xDD3B0B00 AS Date), N'0121414740', CAST(0x00000000 AS Date), N'13509800220', N'                                                                                                    ', N'送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (841, 0, N'Dilomar', 0, CAST(0x113B0B00 AS Date), CAST(0x913B0B00 AS Date), N'0127336948', CAST(0x00000000 AS Date), N'18666400303', N'                                                                                                    ', N'送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (842, 0, N'李国萍', 1, CAST(0x113B0B00 AS Date), CAST(0x923B0B00 AS Date), N'0116721780', CAST(0x00000000 AS Date), N'13925773861', N'                                                                                                    ', N'赠送健身包一个，自行车一台  ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (843, 4, N'王斯婷', 1, CAST(0x113B0B00 AS Date), CAST(0x1C3B0B00 AS Date), N'0188880506', CAST(0x00000000 AS Date), N'15113508392', N'900元半年卡                                                                                             ', N'一个月内提升年卡补交700元。
2015.8.22-2015.10.22停卡两个月  已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (844, 0, N'杨勇', 0, CAST(0x113B0B00 AS Date), CAST(0xB63B0B00 AS Date), N'0122160308', CAST(0x00000000 AS Date), N'13711911970', N'1500年卡                                                                                              ', N'赠送健身包一个，老会员介绍，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (845, 0, N'谈英', 1, CAST(0x113B0B00 AS Date), CAST(0x973B0B00 AS Date), N'0122119636', CAST(0x00000000 AS Date), N'13527915166', N'2014.8.1年卡1288预售时间办理，未制卡，未送包，2015.7.8前来前台制卡，罗益楚接待                                                   ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (846, 0, N'卢建钧', 0, CAST(0x113B0B00 AS Date), CAST(0xB63B0B00 AS Date), N'0130899588', CAST(0x00000000 AS Date), N'13798907027', N'1500元年卡                                                                                             ', N'赠送健身包一个介绍朋友办卡（邝志明）赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (847, 0, N'袁巨全', 0, CAST(0x113B0B00 AS Date), CAST(0x983B0B00 AS Date), N'0130792644', CAST(0x00000000 AS Date), N'13889979394', N'1500年卡                                                                                              ', N'赠送健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (848, 0, N'阮伟权', 0, CAST(0x113B0B00 AS Date), CAST(0x9A3B0B00 AS Date), N'0123155764', CAST(0x00000000 AS Date), N'13580899858', N'1900元少儿跆拳道年卡                                                                                        ', N'赠送一个健身包。会员介绍特价')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (849, 0, N'李超群', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'0126535636', CAST(0x00000000 AS Date), N'13509237863', N'1680元，年卡                                                                                            ', N'赠送健身包一个，送三张体验卷，送洗车劵一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (850, 4, N'陈丽仪', 1, CAST(0x113B0B00 AS Date), CAST(0x033B0B00 AS Date), N'3386352996', CAST(0x00000000 AS Date), N'13537364276', N'半年卡1088                                                                                             ', N'可免费停卡一次（30天）
赠送健身包一个
2015年11月1号-2015年12月1号免费停卡一次
2016.1.3已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (851, 0, N'卢润娣', 1, CAST(0x113B0B00 AS Date), CAST(0x9B3B0B00 AS Date), N'0126457348', CAST(0x00000000 AS Date), N'13712609638', N'1500元年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (852, 0, N'袁树坚', 0, CAST(0x113B0B00 AS Date), CAST(0x9B3B0B00 AS Date), N'0126361524', CAST(0x00000000 AS Date), N'13712396398', N'1500元，年卡                                                                                            ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (853, 0, N'张江丽', 1, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'0127469588', CAST(0x00000000 AS Date), N'13922952901', N'1688年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (854, 0, N'曾莉', 1, CAST(0x113B0B00 AS Date), CAST(0x533B0B00 AS Date), N'0036091505', CAST(0x00000000 AS Date), N'18617210011', N'                                                                                                    ', N'2015.4.30 1688年卡，送健身包一个
2015.7.13由年卡转为次卡45次，之前都没有锻炼记录（上私教课，不管上午还是晚上过来锻炼，只刷一次卡）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (855, 0, N'方必坤', 0, CAST(0x113B0B00 AS Date), CAST(0x313D0B00 AS Date), N'3584983758', CAST(0x00000000 AS Date), N'13669844460', N'2300两年卡                                                                                             ', N'赠送七次卡一张，赠送一个月。赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (856, 0, N'孟溪', 1, CAST(0x113B0B00 AS Date), CAST(0x4D3C0B00 AS Date), N'3585069223', CAST(0x00000000 AS Date), N'13922997672', N'                                                                                                    ', N'续卡补交1088升级两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (857, 0, N'胡丽丽', 1, CAST(0x113B0B00 AS Date), CAST(0xBC3B0B00 AS Date), N'0126786852', CAST(0x00000000 AS Date), N'18688630886', N'1500年卡                                                                                              ', N'赠送一个健身包，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (858, 4, N'王宝谆', 0, CAST(0x113B0B00 AS Date), CAST(0xE83A0B00 AS Date), N'0158759739', CAST(0x00000000 AS Date), N'13801219698', N'                                                                                                    ', N'邓赞新两年卡赠送半年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (859, 0, N'赵向前', 0, CAST(0x113B0B00 AS Date), CAST(0x0B3D0B00 AS Date), N'0045135681', CAST(0x00000000 AS Date), N'13712799089', N'10次卡300元                                                                                            ', N'特价，再送一个健身包，一天不管来几次算一次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (860, 0, N'廖庆强', 0, CAST(0x113B0B00 AS Date), CAST(0x0D3D0B00 AS Date), N'3584781735', CAST(0x00000000 AS Date), N'13602350479', N'2588两年卡                                                                                             ', N'赠送健身包一个，洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (861, 0, N'张晓荣', 1, CAST(0x113B0B00 AS Date), CAST(0x0E3D0B00 AS Date), N'3585016261', CAST(0x00000000 AS Date), N'13826912010', N'2511元，两年卡                                                                                           ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (862, 0, N'周卫民', 0, CAST(0x113B0B00 AS Date), CAST(0xBF3B0B00 AS Date), N'0127702468', CAST(0x00000000 AS Date), N'13929248375', N'1688元，年卡                                                                                            ', N'赠送一个月，赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (863, 0, N'张瑞华', 1, CAST(0x113B0B00 AS Date), CAST(0x9F3B0B00 AS Date), N'0127347188', CAST(0x00000000 AS Date), N'13412252785', N'月卡提升年卡1500元                                                                                         ', N'提升年卡！')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (864, 0, N'骆云芳', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0126453796', CAST(0x00000000 AS Date), N'13713321601', N'1500元，年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (865, 0, N'谷卫琴', 1, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'3584183049', CAST(0x00000000 AS Date), N'13537321559', N'2588元，两年卡                                                                                           ', N'赠送健身包一个
赠送七次体验卡
2015.8.7办理补卡30元，原卡号200876
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (866, 0, N'刘利霞', 1, CAST(0x113B0B00 AS Date), CAST(0x103D0B00 AS Date), N'3584135333', CAST(0x00000000 AS Date), N'13416749541', N'                                                                                                    ', N'赠送7次卡一张
赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (867, 0, N'李家茹', 1, CAST(0x113B0B00 AS Date), CAST(0xA33B0B00 AS Date), N'0127720868', CAST(0x00000000 AS Date), N'18507699176', N'                                                                                                    ', N'年卡七折 周年庆典价
送健身包两个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (868, 0, N'杜群', 1, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'0116638548', CAST(0x00000000 AS Date), N'', N'1688元年卡                                                                                             ', N'送七次五时间限制劵，老会员介绍新会员价格')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (869, 0, N'郑振德', 0, CAST(0x113B0B00 AS Date), CAST(0xC63B0B00 AS Date), N'0123174468', CAST(0x00000000 AS Date), N'15625773522', N'2000元年卡                                                                                             ', N'赠送健身包一个，转卡收取50元转卡费。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (870, 0, N'莫志杰', 0, CAST(0x113B0B00 AS Date), CAST(0xC63B0B00 AS Date), N'0130811492', CAST(0x00000000 AS Date), N'13215110622', N'1600元年卡                                                                                             ', N'送洗车劵一张，老会员续卡，再送一个月，（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (871, 0, N'彭海涛', 0, CAST(0x113B0B00 AS Date), CAST(0x153D0B00 AS Date), N'3585042651', CAST(0x00000000 AS Date), N'13713469706', N'2388两年卡                                                                                             ', N'赠送健身包一个，赠送洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (872, 0, N'潘朝乾', 0, CAST(0x113B0B00 AS Date), CAST(0x973B0B00 AS Date), N'0128009844', CAST(0x00000000 AS Date), N'15818388845', N'1688年卡                                                                                              ', N'赠送健身包一个
2015.5.29 办卡（688双月卡）
2015.7.24 两个月内补交1000元 提升为年卡
2015.9.23-11.23停卡两个月（已延期）
2015.10.22已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (873, 0, N'陈震', 0, CAST(0x113B0B00 AS Date), CAST(0xC83B0B00 AS Date), N'0122659780', CAST(0x00000000 AS Date), N'18688610150', N' 1688年卡                                                                                             ', N'会员刘政转介绍，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (874, 0, N'黎锦芬', 1, CAST(0x113B0B00 AS Date), CAST(0x3B3D0B00 AS Date), N'3584295268', CAST(0x00000000 AS Date), N'13798843215', N'2200两年卡            （和黎志铭一起办卡）                                                                       ', N'送马可五折美发劵一张，送健身包一个，送洗车券一张，特价。如本人生小孩，可停卡一年。如遇特殊情况（难产，晚产，需出示相关证明）可再停卡3个月。 经办人：童威')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (875, 0, N'黎志铭', 0, CAST(0x113B0B00 AS Date), CAST(0x1D3D0B00 AS Date), N'3585269253', CAST(0x00000000 AS Date), N'13729936790', N'2200两年卡                                                                                             ', N'赠送健身包一个，送洗车券一张，特价（和黎锦芬一起办卡）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (876, 0, N'吴耿枢', 0, CAST(0x113B0B00 AS Date), CAST(0xA93B0B00 AS Date), N'3585194036', CAST(0x00000000 AS Date), N'15015215621', N'600元20次卡 另送十次卡 共计30次                                                                                ', N'2014.9.29交费，2015.7.26第一次来制卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (877, 0, N'徐友谊', 0, CAST(0x113B0B00 AS Date), CAST(0xC83B0B00 AS Date), N'0130682116', CAST(0x00000000 AS Date), N'15817775099', N'1800年卡                                                                                              ', N'赠送健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (878, 0, N'王建新', 0, CAST(0x113B0B00 AS Date), CAST(0xAA3B0B00 AS Date), N'0126558164', CAST(0x00000000 AS Date), N'13725729642', N'1800元年卡                                                                                             ', N'送七张健身体验券，送健身包一个，送洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (879, 0, N'陈广年', 0, CAST(0x113B0B00 AS Date), CAST(0xC83B0B00 AS Date), N'0128095236', CAST(0x00000000 AS Date), N'13415972294', N'1500年卡                                                                                              ', N'赠送健身包一个，送洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (880, 0, N'吴艳庭/周碧熙', 0, CAST(0x113B0B00 AS Date), CAST(0x843E0B00 AS Date), N'0050252865', CAST(0x00000000 AS Date), N'13602381551', N'3100元100次卡                                                                                          ', N'此卡转卡免费，停卡免费，可停卡两次，每次可停半年，赠送健身包一个，不限本人使用')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (881, 0, N'欧善铭', 0, CAST(0x113B0B00 AS Date), CAST(0xC93B0B00 AS Date), N'0121043828', CAST(0x00000000 AS Date), N'13662753951', N'1600年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (882, 4, N'陈绍鑫', 0, CAST(0x113B0B00 AS Date), CAST(0x3A3B0B00 AS Date), N'3386021828', CAST(0x00000000 AS Date), N'13620038161', N'2015.7.27 办卡400元月卡  ，2015.10.5交900元办半年卡                                                             ', N'2015.7.27赠送健身包一个.  2015.10.5续卡赠送一个健身包，一个水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (883, 0, N'徐铭鸿', 0, CAST(0x113B0B00 AS Date), CAST(0xCA3B0B00 AS Date), N'0127453684', CAST(0x00000000 AS Date), N'18688623346', N'1800年卡                                                                                              ', N'赠送健身包一个，赠送水费100元，会员徐友谊转介绍')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (884, 0, N'朱万光( 补照片)', 0, CAST(0x113B0B00 AS Date), CAST(0x863E0B00 AS Date), N'3584741132', CAST(0x00000000 AS Date), N'13712692938', N'3000元100次卡  补照片                                                                                     ', N'赠送健身包两个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (885, 0, N'梁富文', 0, CAST(0x113B0B00 AS Date), CAST(0x173D0B00 AS Date), N'3584679858', CAST(0x00000000 AS Date), N'13215226653', N'200元五次                                                                                              ', N'定金200元 算五次 半月内补交488元提升双月卡
8.7号内1488提升为年卡
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (886, 4, N'舒丹', 1, CAST(0x113B0B00 AS Date), CAST(0xF53A0B00 AS Date), N'3386803444', CAST(0x00000000 AS Date), N'15397638703', N'半年卡1110元                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (887, 0, N'陈新邦', 0, CAST(0x113B0B00 AS Date), CAST(0xAB3B0B00 AS Date), N'0121853972', CAST(0x00000000 AS Date), N'13790303090', N'1688年卡                                                                                              ', N'赠送健身包一个，送洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (888, 4, N'张伯龙', 0, CAST(0x113B0B00 AS Date), CAST(0xF53A0B00 AS Date), N'3387285172', CAST(0x00000000 AS Date), N'15975382839', N'1000半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (889, 4, N'陈永飞', 0, CAST(0x113B0B00 AS Date), CAST(0xF53A0B00 AS Date), N'3399547764', CAST(0x00000000 AS Date), N'13560318148', N'1000半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (890, 0, N'尹佩珊', 1, CAST(0x113B0B00 AS Date), CAST(0xCA3B0B00 AS Date), N'0122533220', CAST(0x00000000 AS Date), N'13829233363', N'1500年卡                                                                                              ', N'赠送健身包一个，赠送一个月（已延期）
梁玉娴介绍赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (891, 4, N'吴凯泽', 0, CAST(0x113B0B00 AS Date), CAST(0x513B0B00 AS Date), N'3386174724', CAST(0x00000000 AS Date), N'13926833600', N'888季卡 900元半年卡                                                                                       ', N'赠送健身包一个、原卡（800471）
2015.10.28续半年卡、赠送水杯、毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (892, 0, N'李勇', 0, CAST(0x113B0B00 AS Date), CAST(0xBA3B0B00 AS Date), N'0126587572', CAST(0x00000000 AS Date), N'13924360610', N'1600年卡                                                                                              ', N'赠送健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (893, 0, N'周淑君', 1, CAST(0x113B0B00 AS Date), CAST(0xCB3B0B00 AS Date), N'0126362804', CAST(0x00000000 AS Date), N'13925832593', N'年卡1600元                                                                                             ', N'钟紫薇介绍赠送一个月（已延期）
赠送一个月 赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (894, 4, N'颜丹丹', 1, CAST(0x113B0B00 AS Date), CAST(0xF53A0B00 AS Date), N'3401908532', CAST(0x00000000 AS Date), N'13652486545', N'1000元半年卡                                                                                            ', N'赠送健身包一个，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (895, 0, N'陈静璇', 1, CAST(0x113B0B00 AS Date), CAST(0xB83B0B00 AS Date), N'0130781364', CAST(0x00000000 AS Date), N'13620010388', N'  1600年卡                                                                                            ', N'赠送健身包一个   
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (896, 4, N'董栓', 0, CAST(0x113B0B00 AS Date), CAST(0xF93A0B00 AS Date), N'0194912378', CAST(0x00000000 AS Date), N'18025155333', N'1000元半年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (897, 4, N'杨丽', 1, CAST(0x113B0B00 AS Date), CAST(0x123B0B00 AS Date), N'3400420676', CAST(0x00000000 AS Date), N'18676613001', N'900半年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (898, 0, N'冯婉华', 1, CAST(0x113B0B00 AS Date), CAST(0xB23B0B00 AS Date), N'0130688980', CAST(0x00000000 AS Date), N'13926898397', N'1500元年卡                                                                                             ', N'赠送健身包一个，赠送洗车券两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (899, 0, N'袁应康', 0, CAST(0x113B0B00 AS Date), CAST(0xB43B0B00 AS Date), N'3584602478', CAST(0x00000000 AS Date), N'13926842713', N'1600元，40次卡，赠送10次，共计50次                                                                              ', N'赠送两个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (900, 4, N'龚石鹏', 0, CAST(0x113B0B00 AS Date), CAST(0xFE3A0B00 AS Date), N'3399850868', CAST(0x00000000 AS Date), N'15118356380', N'半年卡1388                                                                                             ', N'赠送健身包一个，在一个月内可补交500元提升为年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (901, 4, N'刘全', 0, CAST(0x113B0B00 AS Date), CAST(0xFE3A0B00 AS Date), N'3399266276', CAST(0x00000000 AS Date), N'13829265738', N'1388半年卡                                                                                             ', N'赠送健身包一个，在一个月内可补交500元提升为年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (902, 4, N'杨梅', 1, CAST(0x113B0B00 AS Date), CAST(0xFF3A0B00 AS Date), N'3387871204', CAST(0x00000000 AS Date), N'13669800450', N'900元半年卡                                                                                             ', N'送健身包一个，洗车券一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (903, 0, N'谭子林', 1, CAST(0x113B0B00 AS Date), CAST(0xB53B0B00 AS Date), N'0130700884', CAST(0x00000000 AS Date), N'18922969698', N'1500元，年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (904, 4, N'李小敏', 1, CAST(0x113B0B00 AS Date), CAST(0xFF3A0B00 AS Date), N'3387187444', CAST(0x00000000 AS Date), N'13751220608', N'900元半年卡                                                                                             ', N'赠送健身包一个2015.12.5康梦华转卡给李小敏
（未收转卡费）经办人谢信')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (905, 0, N'胡大峰', 0, CAST(0x113B0B00 AS Date), CAST(0xB53B0B00 AS Date), N'0131520980', CAST(0x00000000 AS Date), N'13925853372', N'1800年卡                                                                                              ', N'赠送健身包一个，送洗车券一张，送七张体验券')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (906, 0, N'何江亮', 0, CAST(0x113B0B00 AS Date), CAST(0xB53B0B00 AS Date), N'0119354404', CAST(0x00000000 AS Date), N'13450039369', N'1500年卡                                                                                              ', N'赠送健身包一个，赠送洗车券两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (907, 0, N'杨丽（下次来补照片）', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127475988', CAST(0x00000000 AS Date), N'13925530995', N'1500年卡                                                                                              ', N'赠送健身包一个，送洗车券一张，此卡第一次过来后开通（会员卡及相关赠送物品均未赠送）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (908, 4, N'郭俊泳', 0, CAST(0x113B0B00 AS Date), CAST(0xFF3A0B00 AS Date), N'3399876996', CAST(0x00000000 AS Date), N'13509028852', N'900半年卡                                                                                              ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (909, 4, N'林章虎', 0, CAST(0x113B0B00 AS Date), CAST(0x053B0B00 AS Date), N'3399856196', CAST(0x00000000 AS Date), N'13790212897', N'半年卡1088元                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (910, 4, N'苏建善', 0, CAST(0x113B0B00 AS Date), CAST(0x053B0B00 AS Date), N'3401550292', CAST(0x00000000 AS Date), N'13480416433', N'半年卡1088元                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (911, 0, N'罗宁娜', 1, CAST(0x113B0B00 AS Date), CAST(0xBA3B0B00 AS Date), N'0116730756', CAST(0x00000000 AS Date), N'13827236125', N'年卡1800元                                                                                             ', N'赠送七次体验卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (912, 0, N'曾峰', 0, CAST(0x113B0B00 AS Date), CAST(0x143C0B00 AS Date), N'0118974548', CAST(0x00000000 AS Date), N'13926600472', N'                                                                                                    ', N'可免费停卡两次 每次可停卡90天
赠送健身包一个
2015.10.5-2016.1.5停卡三个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (913, 0, N'袁浩强', 0, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0127317444', CAST(0x00000000 AS Date), N'13713336755', N'                                                                                                    ', N'老会员续卡赠送两个月 送健身包一个 送洗车卷一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (914, 0, N'周仕南', 0, CAST(0x113B0B00 AS Date), CAST(0xF53B0B00 AS Date), N'0127365236', CAST(0x00000000 AS Date), N'15986874609', N'年卡1400元                                                                                             ', N'赠送两个月已延期
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (915, 0, N'张少建', 0, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0127373572', CAST(0x00000000 AS Date), N'13560808691', N'                                                                                                    ', N'赠送两个月 已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (916, 0, N'袁东', 0, CAST(0x113B0B00 AS Date), CAST(0x293C0B00 AS Date), N'0130791844', CAST(0x00000000 AS Date), N'18122915333', N'年卡1400元                                                                                             ', N'赠送两个月 已延期
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (917, 0, N'黄坚育', 0, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0127780260', CAST(0x00000000 AS Date), N'13729921115', N'年卡1400元                                                                                             ', N'赠送两个月 已延期
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (918, 0, N'叶嘉锐', 0, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'0126507604', CAST(0x00000000 AS Date), N'15217507825', N'1500元年卡                                                                                             ', N'赠送三张洗车卷
2016.1.5 补卡，已收取工本费30元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (919, 0, N'刘勇', 0, CAST(0x113B0B00 AS Date), CAST(0xBD3B0B00 AS Date), N'0127689508', CAST(0x00000000 AS Date), N'18601907333', N'1688元年卡                                                                                             ', N'赠送健身包一个，洗车卷一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (920, 0, N'孟小琴', 1, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'0127364212', CAST(0x00000000 AS Date), N'13302603288', N'1800元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (921, 0, N'胡琼凤', 1, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'0127715540', CAST(0x00000000 AS Date), N'13302603288', N'1800元年卡  介绍朋友办卡，赠送一个月                                                                               ', N'赠送健身包一个   介绍朋友办卡，赠送一个月（已延期） ')
GO
print 'Processed 900 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (922, 0, N'韦秀兰', 1, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'0119355172', CAST(0x00000000 AS Date), N'17017128990', N'1800元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (923, 0, N'叶刚', 0, CAST(0x113B0B00 AS Date), CAST(0xDE3B0B00 AS Date), N'0127331652', CAST(0x00000000 AS Date), N'15118352010', N'1588年卡                                                                                              ', N'赠送健身包一个，赠送一张洗车卷，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (924, 4, N'黄嬿贤', 1, CAST(0x113B0B00 AS Date), CAST(0x0B3B0B00 AS Date), N'3399844212', CAST(0x00000000 AS Date), N'13686291483', N'900元半年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (925, 0, N'余勇', 0, CAST(0x113B0B00 AS Date), CAST(0xFF3B0B00 AS Date), N'0127672388', CAST(0x00000000 AS Date), N'18826950959', N'年卡1588元                                                                                             ', N'赠送健身包
介绍朋友办卡，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (926, 0, N'刘婉玲', 1, CAST(0x113B0B00 AS Date), CAST(0x153B0B00 AS Date), N'3584854862', CAST(0x00000000 AS Date), N'13929260769', N'次卡30次                                                                                               ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (927, 0, N'李庆蓉', 1, CAST(0x113B0B00 AS Date), CAST(0xC43B0B00 AS Date), N'0123067876', CAST(0x00000000 AS Date), N'13826915129', N'1700元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (928, 0, N'周福昂', 0, CAST(0x113B0B00 AS Date), CAST(0xD83B0B00 AS Date), N'0131357572', CAST(0x00000000 AS Date), N'13713316127', N'1500元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (929, 0, N'张菊宏', 1, CAST(0x113B0B00 AS Date), CAST(0xCF3B0B00 AS Date), N'0120184836', CAST(0x00000000 AS Date), N'13509806608', N'1888元年卡                                                                                             ', N'赠送健身包一个，一个样之内补交712元提升为两年卡
2015.8.23韩政儒转卡给他妈妈 张菊宏')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (930, 0, N'罗婷', 1, CAST(0x113B0B00 AS Date), CAST(0xE53B0B00 AS Date), N'0127472692', CAST(0x00000000 AS Date), N'15973386655', N'1588元年卡                                                                                             ', N'赠送健身包一个，此次转卡只收取100元转卡费')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (931, 0, N'张琳', 1, CAST(0x113B0B00 AS Date), CAST(0x223C0B00 AS Date), N'0126547668', CAST(0x00000000 AS Date), N'13827268399', N'1500年卡                                                                                              ', N'毛总朋友特价，赠送三个月，赠送健身包
1500元年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (932, 4, N'罗雯', 1, CAST(0x113B0B00 AS Date), CAST(0x123B0B00 AS Date), N'3399661748', CAST(0x00000000 AS Date), N'15872188674', N'1100元半年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (933, 0, N'唐泽平', 0, CAST(0x113B0B00 AS Date), CAST(0xCE3B0B00 AS Date), N'0120176644', CAST(0x00000000 AS Date), N'13670468882', N'1500元年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (934, 0, N'王淑娟', 1, CAST(0x113B0B00 AS Date), CAST(0xE73B0B00 AS Date), N'0130750724', CAST(0x00000000 AS Date), N'13360687777', N'1600元年卡                                                                                             ', N'赠送健身包一个，赠送一个月（已延期）
2015.11.15办私教赠送手套1双')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (935, 0, N'陈伦兵', 0, CAST(0x113B0B00 AS Date), CAST(0xB03D0B00 AS Date), N'3584342154', CAST(0x00000000 AS Date), N'13790647866', N'两年卡2388元                                                                                            ', N'赠送健身包一个，赠送一个月
2015.10.14-2016.1.13停卡三个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (936, 4, N'刘伟斌', 0, CAST(0x113B0B00 AS Date), CAST(0x203B0B00 AS Date), N'3401963508', CAST(0x00000000 AS Date), N'13556769168', N'980元半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (937, 0, N'李兰凤', 1, CAST(0x113B0B00 AS Date), CAST(0x543D0B00 AS Date), N'3585087073', CAST(0x00000000 AS Date), N'13424716568', N'                                                                                                    ', N'赠送健身包一个月   ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (938, 0, N'曾莉', 1, CAST(0x113B0B00 AS Date), CAST(0xD43B0B00 AS Date), N'0131515380', CAST(0x00000000 AS Date), N'18617210011', N'年卡1500元                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (939, 0, N'张子明', 0, CAST(0x113B0B00 AS Date), CAST(0xCF3B0B00 AS Date), N'0126449924', CAST(0x00000000 AS Date), N'18666863387', N'年卡1500元                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (940, 0, N'张金球', 0, CAST(0x113B0B00 AS Date), CAST(0xE93B0B00 AS Date), N'0119163876', CAST(0x00000000 AS Date), N'13729992119', N'年卡1800元                                                                                             ', N'赠送健身包一个
会员胡琼凤介绍，赠送一个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (941, 0, N'丁丹丹', 1, CAST(0x113B0B00 AS Date), CAST(0xCF3B0B00 AS Date), N'0132209124', CAST(0x00000000 AS Date), N'18938237899', N'年卡1500元                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (942, 0, N'王三一', 1, CAST(0x113B0B00 AS Date), CAST(0x5A3D0B00 AS Date), N'3585289949', CAST(0x00000000 AS Date), N'13790411015', N'2600元两年卡                                                                                            ', N'怀孕可免费请假15个月，可免费常规请假一次，一至三个月。
赠送健身包一个，赠送洗车卷一张。
介绍朋友办卡，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (943, 4, N'吴活强', 0, CAST(0x113B0B00 AS Date), CAST(0x163B0B00 AS Date), N'0167376187', CAST(0x00000000 AS Date), N'15913151157', N'1300半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (944, 0, N'唐文祥', 0, CAST(0x113B0B00 AS Date), CAST(0x373D0B00 AS Date), N'3584721670', CAST(0x00000000 AS Date), N'13431222135', N'2088两年卡                                                                                             ', N'2015.8.28王振秋（2014.交费未制卡，未开通）转卡给唐文祥，收取转卡费300元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (945, 0, N'王国容', 1, CAST(0x113B0B00 AS Date), CAST(0x783D0B00 AS Date), N'3585144213', CAST(0x00000000 AS Date), N'13537228990', N'2600元两年卡                                                                                            ', N'赠送健身包一个，赠送一个月，洗车卷一张
2015.12.27刘云刚转卡给他夫人王国容')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (946, 0, N'周学英', 0, CAST(0x113B0B00 AS Date), CAST(0x193C0B00 AS Date), N'0127644548', CAST(0x00000000 AS Date), N'13922937737', N'1500元年卡                                                                                             ', N'赠送健身包一个
周学英在2015.11.1手动开卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (947, 4, N'黄雪玲', 1, CAST(0x113B0B00 AS Date), CAST(0x173B0B00 AS Date), N'3386849236', CAST(0x00000000 AS Date), N'13824227529', N'980元半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (948, 0, N'张语燕', 1, CAST(0x113B0B00 AS Date), CAST(0x1A3C0B00 AS Date), N'0117960484', CAST(0x00000000 AS Date), N'15899615585', N'1500年卡                                                                                              ', N'2015.11.15.-2016.1.15免费停卡两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (949, 0, N'林芳', 1, CAST(0x113B0B00 AS Date), CAST(0xFD3B0B00 AS Date), N'0131018372', CAST(0x00000000 AS Date), N'158188337009', N'1800元年卡                                                                                             ', N'赠送一个月，赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (950, 0, N'李康俊', 0, CAST(0x113B0B00 AS Date), CAST(0x5A3D0B00 AS Date), N'3584731970', CAST(0x00000000 AS Date), N'18575317477', N'500月卡                                                                                               ', N'月卡，25天之内补交2000元提升为2年卡，赠送运动包一个。
2015.9.16补交2000元，月卡提升为两年卡
赠送一个月（已延期）赠送毛巾一条
2015.10.26补卡，已收取补卡费30元(原卡号;800455)
2015.11.30办私教砸金蛋赠送月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (951, 0, N'董晓莉', 1, CAST(0x113B0B00 AS Date), CAST(0xD13B0B00 AS Date), N'0130852772', CAST(0x00000000 AS Date), N'13728223060', N'1500元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (952, 0, N'吴细莲', 1, CAST(0x113B0B00 AS Date), CAST(0xD13B0B00 AS Date), N'0127601588', CAST(0x00000000 AS Date), N'15916705290', N'1500元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (953, 4, N'杨双闻', 1, CAST(0x113B0B00 AS Date), CAST(0x193B0B00 AS Date), N'3386115076', CAST(0x00000000 AS Date), N'15992945077', N'900元半年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (954, 4, N'刘喜荣', 0, CAST(0x113B0B00 AS Date), CAST(0x193B0B00 AS Date), N'3386361188', CAST(0x00000000 AS Date), N'13826549152', N'半年卡1080元                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (955, 0, N'方芳', 1, CAST(0x113B0B00 AS Date), CAST(0xDD3B0B00 AS Date), N'0127468596', CAST(0x00000000 AS Date), N'13500090777', N'1500元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (956, 0, N'顾亮', 0, CAST(0x113B0B00 AS Date), CAST(0x3D3D0B00 AS Date), N'3584645274', CAST(0x00000000 AS Date), N'18819768669', N'2500元两年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (957, 0, N'张红旗', 0, CAST(0x113B0B00 AS Date), CAST(0xF03B0B00 AS Date), N'0122266580', CAST(0x00000000 AS Date), N'13580976977', N'1688年卡                                                                                              ', N'赠送一个月（已延期），赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (958, 0, N'陈宇', 0, CAST(0x113B0B00 AS Date), CAST(0x403D0B00 AS Date), N'3584615753', CAST(0x00000000 AS Date), N'13412490556', N'2500两年卡                                                                                             ', N'赠送王三一会员一个月时间（已延期），老婆怀孕期时间可请假15个月，赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (959, 0, N'陈志彬', 0, CAST(0x113B0B00 AS Date), CAST(0xD33B0B00 AS Date), N'0120270404', CAST(0x00000000 AS Date), N'13829252023', N'1500年卡                                                                                              ', N'赠送健身包一个，活动卡，送七次卡两张00725，00726')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (960, 4, N'陈丽', 1, CAST(0x113B0B00 AS Date), CAST(0x1B3B0B00 AS Date), N'3401933364', CAST(0x00000000 AS Date), N'13266056959', N'1000元半年卡                                                                                            ', N'赠送健身包一个，洗车券一张，三张体验劵（活动内）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (961, 0, N'吴春桥', 1, CAST(0x113B0B00 AS Date), CAST(0xD43B0B00 AS Date), N'0120682164', CAST(0x00000000 AS Date), N'13432939229', N'一年卡1500元                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (962, 0, N'黄水养', 0, CAST(0x113B0B00 AS Date), CAST(0xD43B0B00 AS Date), N'0126823412', CAST(0x00000000 AS Date), N'13602330580', N'一年卡1500元                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (963, 0, N'张雪君', 1, CAST(0x113B0B00 AS Date), CAST(0x683D0B00 AS Date), N'3584679435', CAST(0x00000000 AS Date), N'18928267218', N'2300元两年卡                                                                                            ', N'赠送健身包一个、水杯一个、毛巾一条。（魏军）老会员转介绍；张雪霞。
送每年可免费停卡3次')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (964, 0, N'王小花', 1, CAST(0x113B0B00 AS Date), CAST(0xA53D0B00 AS Date), N'3585303451', CAST(0x00000000 AS Date), N'18680055556', N'2300元 两年卡                                                                                           ', N'赠送健身包一个、水杯一个、毛巾一条（魏军）老会员转介绍；何燕玲。
每年可免费停卡3次。
2015.12.8.免费停卡两个月。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (965, 0, N'曾娟', 1, CAST(0x113B0B00 AS Date), CAST(0xAF3E0B00 AS Date), N'3713513411', CAST(0x00000000 AS Date), N'13798896609', N'2888元三年卡                                                                                            ', N'2014.7.6交费。
2015.9.8激活开卡，已取卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (966, 0, N'李世旭', 0, CAST(0x113B0B00 AS Date), CAST(0x313D0B00 AS Date), N'3585316747', CAST(0x00000000 AS Date), N'13829110899', N'2600元两年卡                                                                                            ', N'2015.8.19月卡600元
赠送健身包一个，一个月之内补交2000元可提升两年卡
2015.9.9补交余款2000元提升为两年卡
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (967, 4, N'高素娟', 1, CAST(0x113B0B00 AS Date), CAST(0x1F3B0B00 AS Date), N'3388060852', CAST(0x00000000 AS Date), N'15217266596', N'半年卡900元                                                                                             ', N'赠送健身包一个，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (968, 4, N'周淑静', 1, CAST(0x113B0B00 AS Date), CAST(0x1F3B0B00 AS Date), N'3387478372', CAST(0x00000000 AS Date), N'15818285163', N'半年卡900元                                                                                             ', N'赠送健身包一个，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (969, 4, N'杨小欣', 1, CAST(0x113B0B00 AS Date), CAST(0x1F3B0B00 AS Date), N'3386700580', CAST(0x00000000 AS Date), N'13925767947', N'半年卡900元                                                                                             ', N'赠送健身包一个，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (970, 0, N'李伟婵', 1, CAST(0x113B0B00 AS Date), CAST(0xDF3B0B00 AS Date), N'0119355684', CAST(0x00000000 AS Date), N'13650024797', N'1500元年卡                                                                                             ', N'赠送健身包一个、水杯一个、毛巾一条。加送七天(已延期）。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (971, 4, N'黄美芳', 1, CAST(0x113B0B00 AS Date), CAST(0x213B0B00 AS Date), N'3385950436', CAST(0x00000000 AS Date), N'13532841483', N'1000元半年卡                                                                                            ', N'赠送健身包一个，私教课两节')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (972, 0, N'刘美君', 1, CAST(0x113B0B00 AS Date), CAST(0xDB3B0B00 AS Date), N'0120983508', CAST(0x00000000 AS Date), N'13527953570', N'1500元年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (973, 0, N'戴慧', 1, CAST(0x113B0B00 AS Date), CAST(0x823D0B00 AS Date), N'0127456228', CAST(0x00000000 AS Date), N'13377740488', N'年卡1688元                                                                                             ', N'林晓娜会员介绍，赠送一个健身包，水杯一个
赠送一个月（已延期）
2015.11.4-2016.11.4停卡一年。原因：怀孕')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (974, 0, N'戴娟', 1, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0121984180', CAST(0x00000000 AS Date), N'13500097818', N'1688年卡                                                                                              ', N'林晓娜会员介绍，赠送健身包一个，水杯一个
赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (975, 0, N'张凯', 0, CAST(0x113B0B00 AS Date), CAST(0xD83B0B00 AS Date), N'0122164916', CAST(0x00000000 AS Date), N'13728410969', N'年卡，公司赠送                                                                                             ', N'刘娜老公，公司赠送')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (976, 0, N'胡梦', 0, CAST(0x113B0B00 AS Date), CAST(0x203B0B00 AS Date), N'3584900800', CAST(0x00000000 AS Date), N'18820614043', N'20次卡760元                                                                                            ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (977, 4, N'朱杰宁', 0, CAST(0x113B0B00 AS Date), CAST(0x223B0B00 AS Date), N'3402153348', CAST(0x00000000 AS Date), N'13794821616', N'999元半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (978, 0, N'马天益', 0, CAST(0x113B0B00 AS Date), CAST(0x663D0B00 AS Date), N'3584767210', CAST(0x00000000 AS Date), N'15019975018', N'2688元两年卡                                                                                            ', N'赠送健身包一个，赠送一个月（已延期），送七次卡一张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (979, 4, N'唐祥', 0, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'3399726532', CAST(0x00000000 AS Date), N'18566139046', N'988元半年卡                                                                                             ', N'赠送一个月
2015.10.19已补卡，已收取工本费30元，原卡号730233')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (980, 0, N'阮敏仪', 1, CAST(0x113B0B00 AS Date), CAST(0xE93B0B00 AS Date), N'0131032452', CAST(0x00000000 AS Date), N'13412318787', N'1500元年卡                                                                                             ', N'赠送健身包一个，送半个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (981, 4, N'唐勇', 0, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'3398058900', CAST(0x00000000 AS Date), N'18718055477', N'988元半年卡                                                                                             ', N'赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (982, 4, N'陈佳萍', 1, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'3386053940', CAST(0x00000000 AS Date), N'13632539849', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾一条、水杯一个
介绍朋友办卡，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (983, 0, N'张碧丽', 1, CAST(0x113B0B00 AS Date), CAST(0x173C0B00 AS Date), N'0119272836', CAST(0x00000000 AS Date), N'18666407878', N'1500元年卡                                                                                             ', N'赠送一个健身包，一个水杯
2016.1.6-2016.3.6停卡两个月，已延期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (984, 0, N'黄美娃', 1, CAST(0x113B0B00 AS Date), CAST(0x173C0B00 AS Date), N'0128013668', CAST(0x00000000 AS Date), N'18676151615', N'1500元年卡                                                                                             ', N'赠送一个健身包，一个水杯
2016.1.6-2016.3.6停卡2个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (985, 4, N'覃丽', 1, CAST(0x113B0B00 AS Date), CAST(0x233B0B00 AS Date), N'3401332196', CAST(0x00000000 AS Date), N'13434529772', N'900元半年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (986, 0, N'胡言山', 0, CAST(0x113B0B00 AS Date), CAST(0x493D0B00 AS Date), N'3585099972', CAST(0x00000000 AS Date), N'15089877263', N'2588元两年卡                                                                                            ', N'赠送一个健身包，一条毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (987, 4, N'李春英', 1, CAST(0x113B0B00 AS Date), CAST(0x243B0B00 AS Date), N'3386882468', CAST(0x00000000 AS Date), N'13694983342', N'1600元半年卡                                                                                            ', N'20162月份补交1000元可提升两年卡，赠送水杯一个，健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (988, 4, N'詹文倩', 1, CAST(0x113B0B00 AS Date), CAST(0x243B0B00 AS Date), N'3385957140', CAST(0x00000000 AS Date), N'13713131306', N'                                                                                                    ', N'2016.2月份补交1000元可提升为两年卡，赠送水杯一个，健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (989, 0, N'肖聪', 1, CAST(0x113B0B00 AS Date), CAST(0xDC3B0B00 AS Date), N'0130877156', CAST(0x00000000 AS Date), N'15015149114', N'1588元年卡                                                                                             ', N'赠送健身包一个，手套一双。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (990, 0, N'吴丽英', 1, CAST(0x113B0B00 AS Date), CAST(0xE03B0B00 AS Date), N'0127429396', CAST(0x00000000 AS Date), N'15992905561', N'1600元年卡                                                                                             ', N'赠送健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (991, 4, N'陈丽佳', 1, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'3386942788', CAST(0x00000000 AS Date), N'15118375114', N'1000元半年卡                                                                                            ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (992, 0, N'马凡', 1, CAST(0x113B0B00 AS Date), CAST(0xE33B0B00 AS Date), N'0116721284', CAST(0x00000000 AS Date), N'18926836132', N'1500元年卡                                                                                             ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (993, 0, N'程惠芳', 1, CAST(0x113B0B00 AS Date), CAST(0x1C3C0B00 AS Date), N'0116619332', CAST(0x00000000 AS Date), N'13559739588', N'1500元年卡                                                                                             ', N'老会员续卡，介绍新会员马凡办卡，赠送一个月（已延期）
嘉荣商圈助力红包2106.9元，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (994, 0, N'陈明', 0, CAST(0x113B0B00 AS Date), CAST(0xDF3B0B00 AS Date), N'0132209620', CAST(0x00000000 AS Date), N'18664306566', N'1600元年卡                                                                                             ', N'赠送健身包一个.')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (995, 0, N'陈爱章', 1, CAST(0x113B0B00 AS Date), CAST(0xF93B0B00 AS Date), N'0127352692', CAST(0x00000000 AS Date), N'13669842696', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (996, 0, N'邱玉林', 0, CAST(0x113B0B00 AS Date), CAST(0xE03B0B00 AS Date), N'0127698468', CAST(0x00000000 AS Date), N'13412203848', N'1500年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (997, 0, N'明珂', 0, CAST(0x113B0B00 AS Date), CAST(0xE03B0B00 AS Date), N'0127339780', CAST(0x00000000 AS Date), N'13590306610', N'1500元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (998, 4, N'李琴（李丽莎）', 1, CAST(0x113B0B00 AS Date), CAST(0x293B0B00 AS Date), N'3399261924', CAST(0x00000000 AS Date), N'18666499657', N'半年卡1000元                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (999, 4, N'李嘉锋', 0, CAST(0x113B0B00 AS Date), CAST(0x2A3B0B00 AS Date), N'3402133140', CAST(0x00000000 AS Date), N'15013055540', N'1000元半年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1000, 0, N'郭小田', 0, CAST(0x113B0B00 AS Date), CAST(0xE23B0B00 AS Date), N'0130998836', CAST(0x00000000 AS Date), N'13925863335', N'1600元年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1001, 0, N'刘燕鸿', 1, CAST(0x113B0B00 AS Date), CAST(0x3E3C0B00 AS Date), N'0130846484', CAST(0x00000000 AS Date), N'13826915919', N'1500元年卡                                                                                             ', N'赠送健身包两个，毛巾两条，水杯两个，送一个月（已延期）。张宗迪会员介绍。
2015.10.12-12.12停卡两个月（已延期）
2015.12.17已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1002, 0, N'彭果果', 1, CAST(0x113B0B00 AS Date), CAST(0xC53B0B00 AS Date), N'3584986893', CAST(0x00000000 AS Date), N'13642380406', N'1400元11月卡                                                                                           ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1003, 0, N'张世岩', 0, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'0123140564', CAST(0x00000000 AS Date), N'15015290334', N'1588年卡                                                                                              ', N'赠送健身包一个，毛巾一条，水杯一个，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1004, 0, N'林若颖', 0, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'0119640596', CAST(0x00000000 AS Date), N'13532561069', N'1588年卡                                                                                              ', N'赠送健身包一个，毛巾一条，水杯一个，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1005, 0, N'胡美玲', 1, CAST(0x113B0B00 AS Date), CAST(0x503D0B00 AS Date), N'3584477201', CAST(0x00000000 AS Date), N'13798728000', N'2000元两年卡                                                                                            ', N'赠送健身包一个（毛总批准，送刘娜健身包一个)2015.第一次停卡两个月。2015.12.11')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1006, 0, N'李谱捷', 0, CAST(0x113B0B00 AS Date), CAST(0xE53B0B00 AS Date), N'0126501764', CAST(0x00000000 AS Date), N'13509235255', N'1600元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1007, 0, N'汪家祥', 0, CAST(0x113B0B00 AS Date), CAST(0x0D3C0B00 AS Date), N'0126490260', CAST(0x00000000 AS Date), N'13688934388', N'1588元年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1008, 0, N'汪克燕', 1, CAST(0x113B0B00 AS Date), CAST(0x043C0B00 AS Date), N'0131538660', CAST(0x00000000 AS Date), N'13316688112', N'1588元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条
2015.10.16赠送一个月，已延期。（介绍朋友办卡，岳占萍)
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1009, 4, N'陈建林', 0, CAST(0x113B0B00 AS Date), CAST(0x3A3B0B00 AS Date), N'3399860036', CAST(0x00000000 AS Date), N'15899689828', N'994元半年卡                                                                                             ', N'赠送健身包
2015.9.11交定金100元
2015.9.24交余款894元
赠送周卡两张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1010, 4, N' 胡锡川', 1, CAST(0x113B0B00 AS Date), CAST(0xF03B0B00 AS Date), N'3402009380', CAST(0x00000000 AS Date), N'13437352938', N'994元半年卡                                                                                             ', N'赠送健身包
2015.9.11交定金100元
2015.9.24交余款894元
2015.10.15 该会员免费暂停卡（冻结），具体开卡时间按该会员过来锻炼算起。【系统暂定半年】经办人：谢信')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1011, 0, N'梁诗婷', 1, CAST(0x113B0B00 AS Date), CAST(0xED3B0B00 AS Date), N'0127331508', CAST(0x00000000 AS Date), N'13415999483', N'1500元年卡                                                                                             ', N'赠送健身包，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1012, 0, N'黄妮', 1, CAST(0x113B0B00 AS Date), CAST(0xED3B0B00 AS Date), N'0130814132', CAST(0x00000000 AS Date), N'15916960636', N'1500元年卡                                                                                             ', N'赠送健身包，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1013, 0, N'陈佔平', 1, CAST(0x113B0B00 AS Date), CAST(0x063C0B00 AS Date), N'0126269556', CAST(0x00000000 AS Date), N'13713112282', N'1500元年卡                                                                                             ', N'赠送一个月有效期2015.10.26')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1014, 4, N'陈俊彬', 0, CAST(0x113B0B00 AS Date), CAST(0x303B0B00 AS Date), N'3385947940', CAST(0x00000000 AS Date), N'13652573248', N'1300元半年卡                                                                                            ', N'赠送健身包，杯子，毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1015, 0, N'曾梦华', 1, CAST(0x113B0B00 AS Date), CAST(0x563D0B00 AS Date), N'3584936557', CAST(0x00000000 AS Date), N'15017557385', N'2588元倆年卡                                                                                            ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1016, 0, N'张柏毅', 0, CAST(0x113B0B00 AS Date), CAST(0xED3B0B00 AS Date), N'0127435156', CAST(0x00000000 AS Date), N'18676970174', N'1688元年卡                                                                                             ', N'赠送毛巾一条，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1017, 0, N'杨康有', 0, CAST(0x113B0B00 AS Date), CAST(0x323B0B00 AS Date), N'3584872683', CAST(0x00000000 AS Date), N'13509203625', N'700元20次卡                                                                                            ', N'2015.11.15办私教赠送月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1018, 0, N'邹小红', 1, CAST(0x113B0B00 AS Date), CAST(0xEA3B0B00 AS Date), N'0120195044', CAST(0x00000000 AS Date), N'13602388812', N'1500年卡                                                                                              ', N'赠送水杯一个，健身包一个  2016.10.1到期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1019, 0, N'钱小敏', 1, CAST(0x113B0B00 AS Date), CAST(0x0A3C0B00 AS Date), N'0129013364', CAST(0x00000000 AS Date), N'15814366334', N'1588元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，加送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1020, 0, N'陈锐', 1, CAST(0x113B0B00 AS Date), CAST(0xF73A0B00 AS Date), N'3584069788', CAST(0x00000000 AS Date), N'13528568788', N'30次卡1140元                                                                                           ', N'赠送一个健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1021, 0, N'池一婵', 1, CAST(0x113B0B00 AS Date), CAST(0x5D3D0B00 AS Date), N'3584759424', CAST(0x00000000 AS Date), N'18620370223', N'2300元两年卡                                                                                            ', N'老会员续卡，赠送一个包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1022, 0, N'蓝秋霞', 1, CAST(0x113B0B00 AS Date), CAST(0xED3B0B00 AS Date), N'0130701028', CAST(0x00000000 AS Date), N'13412535394', N'1500元年卡                                                                                             ', N'赠送一个健身包')
GO
print 'Processed 1000 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1023, 0, N'刘攀', 0, CAST(0x113B0B00 AS Date), CAST(0xEE3B0B00 AS Date), N'0126841076', CAST(0x00000000 AS Date), N'15999838506', N'1588年卡                                                                                              ', N'赠送健身包一个 ')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1024, 0, N'王娅', 1, CAST(0x113B0B00 AS Date), CAST(0xEE3B0B00 AS Date), N'0130969524', CAST(0x00000000 AS Date), N'15818206318', N'1588年卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1025, 0, N'张志海', 0, CAST(0x113B0B00 AS Date), CAST(0x103C0B00 AS Date), N'0127366148', CAST(0x00000000 AS Date), N'13829141477', N'1700元                                                                                               ', N'赠送四件套（健身包、毛巾、水杯、一个月)
2015.10.23 赠送一个月（介绍朋友办卡）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1026, 0, N'王伟铭', 0, CAST(0x113B0B00 AS Date), CAST(0x673C0B00 AS Date), N'3585269933', CAST(0x00000000 AS Date), N'13509219088', N'2015.1.2办的卡，2015.10.4第一次过来锻炼                                                                        ', N'赠送健身包一个，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1027, 0, N'陈敏', 1, CAST(0x113B0B00 AS Date), CAST(0xF03B0B00 AS Date), N'0130917108', CAST(0x00000000 AS Date), N'13798782354', N'                                                                                                    ', N'公司赠送（胡总同意）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1028, 0, N'廖彩忠', 0, CAST(0x113B0B00 AS Date), CAST(0x5E3D0B00 AS Date), N'3584803877', CAST(0x00000000 AS Date), N'15017857502', N'2588元                                                                                               ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1029, 4, N'蔡欣意', 1, CAST(0x113B0B00 AS Date), CAST(0x3B3B0B00 AS Date), N'3386099460', CAST(0x00000000 AS Date), N'13669890194', N'900元半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1030, 0, N'郭伟', 0, CAST(0x113B0B00 AS Date), CAST(0xEC3B0B00 AS Date), N'0120432068', CAST(0x00000000 AS Date), N'13418244928', N'公司赠送（毛总同意）                                                                                          ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1031, 0, N'臧克亮', 0, CAST(0x113B0B00 AS Date), CAST(0xEC3B0B00 AS Date), N'0122632228', CAST(0x00000000 AS Date), N'13925773514', N'公司赠送（毛总同意）                                                                                          ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1032, 0, N'詹中琼', 1, CAST(0x113B0B00 AS Date), CAST(0x613D0B00 AS Date), N'3585149188', CAST(0x00000000 AS Date), N'15989651786', N'2588元两年卡                                                                                            ', N'赠送周卡一张，毛巾一条， 水杯一个，健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1033, 4, N'陈明贤', 1, CAST(0x113B0B00 AS Date), CAST(0x443B0B00 AS Date), N'3402184324', CAST(0x00000000 AS Date), N'18826836302', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个。
在12月7号前补交600元提升为年卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1034, 0, N'祁兆旭', 0, CAST(0x113B0B00 AS Date), CAST(0x313C0B00 AS Date), N'0127652996', CAST(0x00000000 AS Date), N'13926878896', N'1400元年卡                                                                                             ', N'赠送健身包一个，赠送两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1035, 4, N'纪毓文', 0, CAST(0x113B0B00 AS Date), CAST(0x3E3B0B00 AS Date), N'3387010596', CAST(0x00000000 AS Date), N'13728244985', N'900元半年卡                                                                                             ', N'赠送一个健身包，一个毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1036, 0, N'邬倩娉', 1, CAST(0x113B0B00 AS Date), CAST(0xF53B0B00 AS Date), N'0122629156', CAST(0x00000000 AS Date), N'13925857623', N'1500元年卡                                                                                             ', N'赠送一个运动包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1037, 0, N'李易聪', 0, CAST(0x113B0B00 AS Date), CAST(0x643D0B00 AS Date), N'3585084137', CAST(0x00000000 AS Date), N'13922904580', N'2688元俩年卡                                                                                            ', N'赠送健身包1、毛巾1、水杯1、1周卡（周卡未送）
给他太太送俩月卡（下次领取开卡）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1038, 0, N'王根才', 0, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0130759684', CAST(0x00000000 AS Date), N'13713170045', N'1500年卡                                                                                              ', N'赠送洗发券，周卡，健身包，毛巾，水杯各一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1039, 0, N'胡伟均', 0, CAST(0x113B0B00 AS Date), CAST(0xF63B0B00 AS Date), N'0127709332', CAST(0x00000000 AS Date), N'13751318847', N'1600元年卡                                                                                             ', N'赠送一个健身包，一个水杯，毛巾，一张周卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1040, 0, N'陈少兴', 1, CAST(0x113B0B00 AS Date), CAST(0xF83B0B00 AS Date), N'0123074276', CAST(0x00000000 AS Date), N'13662865732', N'1500元年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1041, 0, N'冼美玲', 1, CAST(0x113B0B00 AS Date), CAST(0xFB3B0B00 AS Date), N'0130834596', CAST(0x00000000 AS Date), N'13377787988', N'1588元年卡                                                                                             ', N'赠送一个健身包，一个水杯，毛巾，黄利军会员介绍（已送一个月）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1042, 0, N'唐崇丽', 1, CAST(0x113B0B00 AS Date), CAST(0x623C0B00 AS Date), N'0122166228', CAST(0x00000000 AS Date), N'18823576587', N'1500年卡                                                                                              ', N'会员介绍，赠送一个月（已延期）赠送健身包一个。赠送两条毛巾
10.22若未来，手动开卡
2015.12.26-2016.2.26.免费停卡两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1043, 0, N'何栋', 0, CAST(0x113B0B00 AS Date), CAST(0x653D0B00 AS Date), N'3584285333', CAST(0x00000000 AS Date), N'13926823195', N'2600元两年卡                                                                                            ', N'赠送健身包一个，水杯一个，毛巾一条，洗发劵两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1044, 0, N'马立治', 0, CAST(0x113B0B00 AS Date), CAST(0xD23E0B00 AS Date), N'3715788115', CAST(0x00000000 AS Date), N'18681117736', N'2014.12.30交费3088元三年卡                                                                                ', N'赠送一个包，赠送一百元水费，2015.10.12制卡激活')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1045, 1, N'张雯政', 1, CAST(0x113B0B00 AS Date), CAST(0x413B0B00 AS Date), N'3386750676', CAST(0x00000000 AS Date), N'15015272499', N'480元月卡                                                                                              ', N'赠送健身包一个
2015.11.10月卡提升为半年卡，补交余款600元')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1046, 3, N'Nataly  salas', 1, CAST(0x113B0B00 AS Date), CAST(0xE73A0B00 AS Date), N'3394442820', CAST(0x00000000 AS Date), N'13269740876', N'800元季卡                                                                                              ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1047, 0, N'李斌', 0, CAST(0x113B0B00 AS Date), CAST(0x1C3C0B00 AS Date), N'0126496660', CAST(0x00000000 AS Date), N'15970530301', N'1700元年卡                                                                                             ', N'送健身包、毛巾、水杯、周卡、一个月时间')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1048, 0, N'张虎', 0, CAST(0x113B0B00 AS Date), CAST(0xFA3B0B00 AS Date), N'0127298564', CAST(0x00000000 AS Date), N'13509800099', N'1700元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1049, 0, N'李英', 1, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'0122700740', CAST(0x00000000 AS Date), N'13798926824', N'1500元年卡，到期时间是2016-10-17                                                                             ', N'赠送一个毛巾，水杯，在12月16号前补交1000元提升为两年卡，（曾玉梅会员介绍已送一个月）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1050, 0, N'岳占萍', 1, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'0127474564', CAST(0x00000000 AS Date), N'13649885501', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，一个月（已延期）
汪克燕转介绍')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1051, 0, N'肖仕华', 0, CAST(0x113B0B00 AS Date), CAST(0x203C0B00 AS Date), N'0117919828', CAST(0x00000000 AS Date), N'13790684751', N'1600元年卡                                                                                             ', N'赠送一个月时间，毛巾、水杯
停卡两个月2015.12.3至2016.2.3
2015.12.8.已取卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1052, 0, N'姚轶健', 0, CAST(0x113B0B00 AS Date), CAST(0xFD3B0B00 AS Date), N'0129997156', CAST(0x00000000 AS Date), N'13556631496', N'3288元跆拳道年卡                                                                                          ', N'赠送跆拳道服一套')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1053, 0, N'张国标', 0, CAST(0x113B0B00 AS Date), CAST(0xEC3A0B00 AS Date), N'3585223659', CAST(0x00000000 AS Date), N'13592797993', N'20次卡600元                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1054, 4, N'郭琳滟', 1, CAST(0x113B0B00 AS Date), CAST(0x493B0B00 AS Date), N'3402520724', CAST(0x00000000 AS Date), N'13543729563', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾两条。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1055, 4, N'胡润红', 1, CAST(0x113B0B00 AS Date), CAST(0x493B0B00 AS Date), N'3387191940', CAST(0x00000000 AS Date), N'18688689820', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾两条。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1056, 4, N'许新芬', 1, CAST(0x113B0B00 AS Date), CAST(0x483B0B00 AS Date), N'3387110132', CAST(0x00000000 AS Date), N'', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾两条。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1057, 0, N'陈晓旋', 1, CAST(0x113B0B00 AS Date), CAST(0x103C0B00 AS Date), N'0130710804', CAST(0x00000000 AS Date), N'13632848989', N'1500元年卡                                                                                             ', N'会员介绍赠送半个月，已延期，送健身包、毛巾、水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1058, 0, N'陈剑峰', 0, CAST(0x113B0B00 AS Date), CAST(0x6D3D0B00 AS Date), N'0041315633', CAST(0x00000000 AS Date), N'13724438888', N'1500元50次卡                                                                                           ', N'赠送健身包一个，毛巾一条，水杯一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1059, 0, N'梁爽', 1, CAST(0x113B0B00 AS Date), CAST(0x3F3C0B00 AS Date), N'0122376708', CAST(0x00000000 AS Date), N'18677614910', N'1500元年卡                                                                                             ', N'赠送健身包，水杯，毛巾，周卡一张
2015.12.5.免费停卡两个月')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1060, 0, N'黄海连', 1, CAST(0x113B0B00 AS Date), CAST(0x3F3C0B00 AS Date), N'0129173604', CAST(0x00000000 AS Date), N'13926162084', N'1500元年卡                                                                                             ', N'赠送一个健身包，水杯，毛巾，周卡一张
2015.12.5免费停卡两个月。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1061, 0, N'门科春', 1, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'0127696404', CAST(0x00000000 AS Date), N'13546905390', N'1588元年卡                                                                                             ', N'赠送健身包、水杯、毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1062, 0, N'吴利', 1, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'0120920036', CAST(0x00000000 AS Date), N'15820808223', N'1588元年卡                                                                                             ', N'赠送健身包、水杯、毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1063, 0, N'罗红婷', 1, CAST(0x113B0B00 AS Date), CAST(0x203C0B00 AS Date), N'0126270084', CAST(0x00000000 AS Date), N'13532864984', N'1680元年卡                                                                                             ', N'赠送健身包、水杯、毛巾、一个月时间')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1064, 0, N'小诺', 1, CAST(0x113B0B00 AS Date), CAST(0x213C0B00 AS Date), N'0131530452', CAST(0x00000000 AS Date), N'13711990541', N'1800元年卡                                                                                             ', N'赠送一个水杯、毛巾、周卡、一个月时间')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1065, 0, N'黄桃萍', 0, CAST(0x113B0B00 AS Date), CAST(0x013C0B00 AS Date), N'3585409433', CAST(0x00000000 AS Date), N'13719097916', N'900元30次卡                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1066, 0, N'崔树辉', 0, CAST(0x113B0B00 AS Date), CAST(0x203C0B00 AS Date), N'0126318356', CAST(0x00000000 AS Date), N'13925828168', N'1600元年卡                                                                                             ', N'赠送一个健身包，毛巾，水杯，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1067, 0, N'张恒', 0, CAST(0x113B0B00 AS Date), CAST(0x973D0B00 AS Date), N'3584187806', CAST(0x00000000 AS Date), N'13580778880', N'两年卡2588元                                                                                            ', N'赠送毛巾一个，水杯一个，健身包一个，周卡一张
介绍朋友办卡赠送40天（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1068, 4, N'刘锦明', 0, CAST(0x113B0B00 AS Date), CAST(0x4C3B0B00 AS Date), N'3386049668', CAST(0x00000000 AS Date), N'13433507526', N'1388元半年卡                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1069, 3, N'廖芳', 1, CAST(0x113B0B00 AS Date), CAST(0xF23A0B00 AS Date), N'0049046609', CAST(0x00000000 AS Date), N'15820815770', N'880元季卡                                                                                              ', N'赠送健身包一个，周卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1070, 0, N'任诗琪', 1, CAST(0x113B0B00 AS Date), CAST(0x233C0B00 AS Date), N'0120875812', CAST(0x00000000 AS Date), N'13712214304', N'1500元年卡                                                                                             ', N'会员介绍，赠送健身包一个，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1071, 0, N'汪涛', 0, CAST(0x113B0B00 AS Date), CAST(0x0A3C0B00 AS Date), N'0119126564', CAST(0x00000000 AS Date), N'15112799986', N'1500元年卡                                                                                             ', N'赠送健身包一个，周卡一张，水杯一个，毛巾一条')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1072, 0, N'葛贵祥', 0, CAST(0x113B0B00 AS Date), CAST(0x0A3C0B00 AS Date), N'0130141108', CAST(0x00000000 AS Date), N'13713339099', N'1500元年卡                                                                                             ', N'赠送健身包一个，周卡一张，水杯一个，毛巾一条。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1073, 0, N'黄有光', 0, CAST(0x113B0B00 AS Date), CAST(0x713D0B00 AS Date), N'3585199277', CAST(0x00000000 AS Date), N'18124042767', N'10.7交200元，10.25交1100元，先做半年卡                                                                         ', N'2015.10.7交定金200元，10.25交1100元先做半年卡，11月份再补交1300元提升为两年卡
2015.12.11补交1300元提升为两年卡（原卡号：730276）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1074, 0, N'张有寿', 0, CAST(0x113B0B00 AS Date), CAST(0x063C0B00 AS Date), N'0120687892', CAST(0x00000000 AS Date), N'13925868092', N'1600元年卡                                                                                             ', N'赠送一个健身包，毛巾一条，在12月25前提升为两年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1075, 0, N'熊剑', 0, CAST(0x113B0B00 AS Date), CAST(0x053C0B00 AS Date), N'0130671956', CAST(0x00000000 AS Date), N'15322404086', N'1800年卡                                                                                              ', N'赠送健身包，周卡，水杯，毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1076, 0, N'叶柱波', 0, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'0127300388', CAST(0x00000000 AS Date), N'13829176543', N'1588元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，加送一个月（已延期）介绍弟弟来办卡赠送一个月（已延期）215.11.30')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1077, 3, N'袁玉婷', 1, CAST(0x113B0B00 AS Date), CAST(0xF83A0B00 AS Date), N'3584775132', CAST(0x00000000 AS Date), N'13450013896', N'880元季卡                                                                                              ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1078, 0, N'王艳', 1, CAST(0x113B0B00 AS Date), CAST(0xB23D0B00 AS Date), N'3585038922', CAST(0x00000000 AS Date), N'13527869075', N'2300元两年卡                                                                                            ', N'续卡，赠送两个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1079, 0, N'刘少军', 0, CAST(0x113B0B00 AS Date), CAST(0x473C0B00 AS Date), N'0126310164', CAST(0x00000000 AS Date), N'13763279399', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个.毛巾一条
2016.1.7-2016.3.7停卡2个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1080, 0, N'张兴旺', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3C0B00 AS Date), N'0127425332', CAST(0x00000000 AS Date), N'13790207079', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1081, 0, N'凌胜芬', 1, CAST(0x113B0B00 AS Date), CAST(0x2A3C0B00 AS Date), N'0119191572', CAST(0x00000000 AS Date), N'13480045626', N'年卡1600                                                                                              ', N'赠送一个健身包，水杯，毛巾，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1082, 0, N'徐虹', 1, CAST(0x113B0B00 AS Date), CAST(0xF93A0B00 AS Date), N'3584641937', CAST(0x00000000 AS Date), N'13600298160', N'380元10次卡                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1083, 0, N'吴晓东', 0, CAST(0x113B0B00 AS Date), CAST(0x0C3C0B00 AS Date), N'0127329220', CAST(0x00000000 AS Date), N'13794944988', N'1500元年卡                                                                                             ', N'送健身包送毛巾水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1084, 0, N'温玉玲', 1, CAST(0x113B0B00 AS Date), CAST(0x793D0B00 AS Date), N'3585076241', CAST(0x00000000 AS Date), N'13650029032', N'2400元两年卡                                                                                            ', N'2015.11.12已经赠送健身包男女各一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1085, 0, N'王吉林', 0, CAST(0x113B0B00 AS Date), CAST(0xA13D0B00 AS Date), N'3584962738', CAST(0x00000000 AS Date), N'13556718059', N'                                                                                                    ', N'赠送健身包、水杯、毛巾、赠送40天')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1086, 0, N'季晓珊', 1, CAST(0x113B0B00 AS Date), CAST(0x2A3C0B00 AS Date), N'0127361636', CAST(0x00000000 AS Date), N'13412230761', N'1500元年卡                                                                                             ', N'赠送健身包、水杯、毛巾、周卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1087, 0, N'刘琪东', 0, CAST(0x113B0B00 AS Date), CAST(0x0A3C0B00 AS Date), N'0118952548', CAST(0x00000000 AS Date), N'13546991355', N'1688元年卡                                                                                             ', N'赠送健身包、毛巾、水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1088, 0, N'柳蓉', 1, CAST(0x113B0B00 AS Date), CAST(0x7D3D0B00 AS Date), N'3387365700', CAST(0x00000000 AS Date), N'18169342094', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾2条')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1089, 0, N'刘必发', 0, CAST(0x113B0B00 AS Date), CAST(0x773D0B00 AS Date), N'3584849130', CAST(0x00000000 AS Date), N'18680408039', N'2500元两年卡                                                                                            ', N'赠送健身包一个，水杯一个，毛巾一条')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1090, 4, N'窦振中', 0, CAST(0x113B0B00 AS Date), CAST(0x543B0B00 AS Date), N'3402191972', CAST(0x00000000 AS Date), N'18666895856', N'1200元半年卡                                                                                            ', N'12月份补交400元可提升为年卡，赠送两张周卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1091, 4, N'邓梦龙', 0, CAST(0x113B0B00 AS Date), CAST(0x623B0B00 AS Date), N'3401657204', CAST(0x00000000 AS Date), N'13606888097', N'900半年卡                                                                                              ', N'送健身包一个，毛巾一条，水杯一个，送周卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1092, 0, N'王龙金', 0, CAST(0x113B0B00 AS Date), CAST(0x2B3C0B00 AS Date), N'0120425940', CAST(0x00000000 AS Date), N'13686008847', N'1500元年卡                                                                                             ', N'送一个月，送健身包、毛巾、水杯、周卡
2015.11.14办私教，送月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1093, 0, N'梁建业', 0, CAST(0x113B0B00 AS Date), CAST(0x2B3C0B00 AS Date), N'0120227844', CAST(0x00000000 AS Date), N'13790129098', N'1500元年卡                                                                                             ', N'送月卡（800010）两张周卡水杯毛巾包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1094, 0, N'李伟', 1, CAST(0x113B0B00 AS Date), CAST(0x4B3C0B00 AS Date), N'0126551732', CAST(0x00000000 AS Date), N'13580949578', N'1500元年卡                                                                                             ', N'赠送两个月（已延期）健身包，毛巾，水杯周卡两张,店庆活动价')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1095, 2, N'黎惠娟', 1, CAST(0x113B0B00 AS Date), CAST(0xFC3A0B00 AS Date), N'0126630619', CAST(0x00000000 AS Date), N'13711273022', N'650元双月卡                                                                                             ', N'赠送健身包一个，毛巾一条。
2015.12.14办私教赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1096, 0, N'王庆森', 0, CAST(0x113B0B00 AS Date), CAST(0x2D3C0B00 AS Date), N'0119237732', CAST(0x00000000 AS Date), N'13794979598', N'1500元年卡                                                                                             ', N'送健身包毛巾周卡两张赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1097, 0, N'李倩欣', 1, CAST(0x113B0B00 AS Date), CAST(0x293C0B00 AS Date), N'0126493076', CAST(0x00000000 AS Date), N'13929432026', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条，周卡两张。加送一个月(已延期）
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1098, 3, N'廖云川', 0, CAST(0x113B0B00 AS Date), CAST(0x393B0B00 AS Date), N'0047138817', CAST(0x00000000 AS Date), N'13500258827', N'900元季卡                                                                                              ', N'送健身包一个，送一个月（已延期)')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1099, 0, N'张艳丽', 1, CAST(0x113B0B00 AS Date), CAST(0x7C3D0B00 AS Date), N'3584336464', CAST(0x00000000 AS Date), N'15876963332', N'2088元两年卡                                                                                            ', N'2014年预售的。原持单人：冯佩仪。
无免费请假，除怀孕和住院外。
冯佩仪转给张艳丽')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1100, 0, N'王照述', 1, CAST(0x113B0B00 AS Date), CAST(0x383C0B00 AS Date), N'0126347556', CAST(0x00000000 AS Date), N'13926871378', N'1500元年卡                                                                                             ', N'赠送健身包一个，2条毛巾，水杯一个，赠送一个月（已延期），送月卡一张，周卡两张。
公司周年庆活动续卡，以2016年第一次刷卡激活
陈佳萍介绍会员办卡，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1101, 0, N'袁健湖', 0, CAST(0x113B0B00 AS Date), CAST(0x103C0B00 AS Date), N'0127302948', CAST(0x00000000 AS Date), N'1591773302', N'年卡1500元                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条，两张周卡，月卡一张，加送一个月（已延期）周年庆活动价。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1102, 0, N'简玉婷', 1, CAST(0x113B0B00 AS Date), CAST(0x113C0B00 AS Date), N'0130931652', CAST(0x00000000 AS Date), N'13790327430', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条，周卡两张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1103, 0, N'巩丽平', 1, CAST(0x113B0B00 AS Date), CAST(0x123C0B00 AS Date), N'0120905700', CAST(0x00000000 AS Date), N'15017138986', N'1500元年卡                                                                                             ', N'赠送健身包1个、水杯2个、毛巾2条、周卡3张、月卡1张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1104, 4, N'党亚林', 1, CAST(0x113B0B00 AS Date), CAST(0x5B3B0B00 AS Date), N'3385868340', CAST(0x00000000 AS Date), N'15639079945', N'1100元半年卡                                                                                            ', N'赠送健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1105, 0, N'袁小梅', 1, CAST(0x113B0B00 AS Date), CAST(0x143C0B00 AS Date), N'0131025700', CAST(0x00000000 AS Date), N'18620099926', N'1500元年卡                                                                                             ', N'赠送健身包水杯毛巾。送月卡一张。周卡两张
活动价。可免费停卡一次（90天）
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1106, 4, N'罗玺', 0, CAST(0x113B0B00 AS Date), CAST(0x5E3B0B00 AS Date), N'3399830308', CAST(0x00000000 AS Date), N'18617217063', N'900元半年卡                                                                                             ', N'赠送健身包，毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1107, 0, N'林晓玲', 1, CAST(0x113B0B00 AS Date), CAST(0xFA3E0B00 AS Date), N'3714007907', CAST(0x00000000 AS Date), N'15999775018', N'2988元三年卡                                                                                            ', N'赠送两个健身包、两个水杯，两个毛巾
两张月卡
明年老公来办卡可以享受2988元——3年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1108, 0, N'陈雪峰', 0, CAST(0x113B0B00 AS Date), CAST(0x293C0B00 AS Date), N'0127689172', CAST(0x00000000 AS Date), N'13113222555', N'1600元年卡                                                                                             ', N'赠送月卡一张，健身包水杯毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1109, 0, N'王卫星', 0, CAST(0x113B0B00 AS Date), CAST(0x843D0B00 AS Date), N'3584836419', CAST(0x00000000 AS Date), N'13728116881', N'2300元两年卡                                                                                            ', N'赠送健身包，毛巾水杯周卡四张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1110, 0, N'简日球', 0, CAST(0x113B0B00 AS Date), CAST(0x423C0B00 AS Date), N'0126491220', CAST(0x00000000 AS Date), N'13694933030', N'1500元年卡                                                                                             ', N'赠送健身包毛巾水杯，送一个月两张周卡
加送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1111, 0, N'林晓珊', 1, CAST(0x113B0B00 AS Date), CAST(0x1A3C0B00 AS Date), N'0127437380', CAST(0x00000000 AS Date), N'13926869003', N'1500元年卡                                                                                             ', N'赠送健身包、毛巾、水杯、月卡、周卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1112, 0, N'杜俐', 1, CAST(0x113B0B00 AS Date), CAST(0x213C0B00 AS Date), N'0119024820', CAST(0x00000000 AS Date), N'18124969950', N'1500元年卡                                                                                             ', N'赠送健身包两个，水杯一个，毛巾两条，周卡8张。2016.1.20.前交费1500元可提升为三年卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1113, 0, N'梁俭荣', 0, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'0130909940', CAST(0x00000000 AS Date), N'13827299398', N'1500元年卡                                                                                             ', N'赠送健身包、毛巾、水杯、月卡1张、周卡2张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1114, 0, N'肖红', 1, CAST(0x113B0B00 AS Date), CAST(0xFD3E0B00 AS Date), N'3714081059', CAST(0x00000000 AS Date), N'13316691186', N'2988元年                                                                                              ', N'赠送健身包、毛巾、水杯、1张月卡、2张周卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1115, 0, N'夏曼飞', 1, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'0122420116', CAST(0x00000000 AS Date), N'13528606382', N'1500元年卡                                                                                             ', N'赠送健身包、毛巾、水杯、月卡1张、周卡2张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1116, 0, N'刘淦尧', 0, CAST(0x113B0B00 AS Date), CAST(0x3E3C0B00 AS Date), N'0119230324', CAST(0x00000000 AS Date), N'13509223282', N'1500元年卡                                                                                             ', N'送毛巾、水杯、包、送周卡4张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1117, 0, N'袁炜荣', 0, CAST(0x113B0B00 AS Date), CAST(0x3E3C0B00 AS Date), N'0119087588', CAST(0x00000000 AS Date), N'13926800616', N'1500元年卡                                                                                             ', N'送毛巾、水杯、包、送周卡4张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1118, 4, N'王敏', 0, CAST(0x113B0B00 AS Date), CAST(0x633B0B00 AS Date), N'3399851028', CAST(0x00000000 AS Date), N'13267278080', N'1000元半年卡                                                                                            ', N'健身包、水杯、毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1119, 0, N'武胜壮', 0, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'0131549780', CAST(0x00000000 AS Date), N'13825769998', N'特惠价1388元                                                                                            ', N'赠送1个月、特惠价1388元（经办人：毛总）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1120, 0, N'江娆', 1, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'0121377204', CAST(0x00000000 AS Date), N'13712222270', N'1500元年卡                                                                                             ', N'赠送大礼包一个（店庆活动），月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1121, 0, N'陈正洪', 0, CAST(0x113B0B00 AS Date), CAST(0x1B3C0B00 AS Date), N'0120930612', CAST(0x00000000 AS Date), N'13794901986', N'1500元年卡                                                                                             ', N'赠送健身大礼包（周年庆活动）月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1122, 0, N'王芳', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127575108', CAST(0x00000000 AS Date), N'13922991809', N'1500元年卡                                                                                             ', N'赠送包、毛巾、水杯、3张月卡
第一次过来使用激活开卡。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1123, 0, N'林华宜', 1, CAST(0x113B0B00 AS Date), CAST(0xF93E0B00 AS Date), N'3718191379', CAST(0x00000000 AS Date), N'15920202532', N'2988元三年卡                                                                                            ', N'赠送健身包一个，水杯一个，毛巾一条。周卡3张，月卡一张')
GO
print 'Processed 1100 total records'
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1124, 0, N'张昔梅', 1, CAST(0x113B0B00 AS Date), CAST(0x8A3D0B00 AS Date), N'3585302592', CAST(0x00000000 AS Date), N'13539096590', N'2400元两年卡                                                                                            ', N'老会员续卡，赠送健身包，毛巾，水杯，两张周卡，月卡一张，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1125, 0, N'朱湘景', 0, CAST(0x113B0B00 AS Date), CAST(0x843C0B00 AS Date), N'0130802372', CAST(0x00000000 AS Date), N'18665196791', N'1500元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，月卡一张，周卡两张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1126, 4, N'周希妍', 1, CAST(0x113B0B00 AS Date), CAST(0x763B0B00 AS Date), N'3385985428', CAST(0x00000000 AS Date), N'18680618875', N'900元半年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1127, 4, N'陈锐', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3402589540', CAST(0x00000000 AS Date), N'13528562788', N'1000元半年卡（2015.11.18.办私教)                                                                            ', N'第一次过来锻炼开卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1128, 4, N'王成', 0, CAST(0x113B0B00 AS Date), CAST(0x763B0B00 AS Date), N'3387159780', CAST(0x00000000 AS Date), N'18680618870', N'900元半年卡                                                                                             ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1129, 0, N'杨子函', 1, CAST(0x113B0B00 AS Date), CAST(0x203C0B00 AS Date), N'0123125460', CAST(0x00000000 AS Date), N'13450485506', N'1500元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，4次卡，周卡两张，可免费停卡一次。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1130, 0, N'宋羽轩', 1, CAST(0x113B0B00 AS Date), CAST(0xFA3E0B00 AS Date), N'3715238371', CAST(0x00000000 AS Date), N'13925785339', N'2988元三年卡                                                                                            ', N'赠送毛巾一条，水杯一个，健身包一个，月卡一张，周卡五张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1131, 0, N'陈周鑫', 0, CAST(0x113B0B00 AS Date), CAST(0x243C0B00 AS Date), N'0130696372', CAST(0x00000000 AS Date), N'13600268635', N'1500元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，月卡一张，周卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1132, 0, N'郑伟健', 0, CAST(0x113B0B00 AS Date), CAST(0xFE3E0B00 AS Date), N'0120427716', CAST(0x00000000 AS Date), N'13549227722', N'2988元三年卡                                                                                            ', N'水杯一个，月卡一张。
袁小姐 13682888728 明年办卡可享受2988元次价格（周年庆特价卡）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1133, 0, N'罗欣', 1, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'0127367796', CAST(0x00000000 AS Date), N'15015367726', N'1500元年卡                                                                                             ', N'赠送健身包毛巾水杯，月卡两张，周卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1134, 0, N'毕小伟', 0, CAST(0x113B0B00 AS Date), CAST(0x243C0B00 AS Date), N'0127334628', CAST(0x00000000 AS Date), N'13929221070', N'                                                                                                    ', N'周年庆2015.11.15.奖品')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1135, 0, N'吴丽平', 1, CAST(0x113B0B00 AS Date), CAST(0x253C0B00 AS Date), N'0127384292', CAST(0x00000000 AS Date), N'15999811870', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条，月卡一张，周卡4张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1136, 0, N'周冰洁', 1, CAST(0x113B0B00 AS Date), CAST(0x253C0B00 AS Date), N'0122552852', CAST(0x00000000 AS Date), N'18688686598', N'1500元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，月卡一张，周卡2张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1137, 4, N'章超然', 0, CAST(0x113B0B00 AS Date), CAST(0x733B0B00 AS Date), N'3399337364', CAST(0x00000000 AS Date), N'13809622268', N'1000元半年卡                                                                                            ', N'办私教赠送的')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1138, 0, N'武洪权', 0, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'0128117748', CAST(0x00000000 AS Date), N'13431387088', N'1500元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，加送2个月；周年庆特惠卡。孙银会员介绍')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1139, 0, N'叶柱坚', 0, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'0122219604', CAST(0x00000000 AS Date), N'18680624462', N'1500元年卡                                                                                             ', N'赠送大礼包，赠送一个月，周卡三张，月卡一张，周年庆优惠活动，（老会员续卡）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1140, 0, N'何新兰', 1, CAST(0x113B0B00 AS Date), CAST(0x453C0B00 AS Date), N'0126471252', CAST(0x00000000 AS Date), N'13275721235', N'1500年卡                                                                                              ', N'会员介绍、赠送健身包、水杯、毛巾、月卡一张、一个月时间')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1141, 0, N'赖木华', 0, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'0130992948', CAST(0x00000000 AS Date), N'13925775220', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾，水杯，送两个月（已延期）
周年庆特惠卡
老会员续卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1142, 0, N'吴春莹', 1, CAST(0x113B0B00 AS Date), CAST(0x683C0B00 AS Date), N'0131965972', CAST(0x00000000 AS Date), N'18676987689', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾，水杯，送两个月（已延期）
周年庆特惠卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1143, 0, N'卢早', 1, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'0127444820', CAST(0x00000000 AS Date), N'13717172357', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾水杯。两张月卡，赠送一个月的时间（已延期）周年庆优惠活动')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1144, 0, N'胡林', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127446724', CAST(0x00000000 AS Date), N'13790327990', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾，水杯月卡一张，周卡一张
2016.5.1手动激活')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1145, 4, N'赵旭兰', 1, CAST(0x113B0B00 AS Date), CAST(0x723B0B00 AS Date), N'3386053444', CAST(0x00000000 AS Date), N'15220310966', N'1000元半年卡                                                                                            ', N'赠送健身包一个，毛巾一条，水杯一个，周卡两张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1146, 0, N'安文婷', 1, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'0127351028', CAST(0x00000000 AS Date), N'13923859081', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条，加送一个月（已延期）月卡一张，周卡4张。周年庆特价')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1147, 4, N'袁相瑜', 0, CAST(0x113B0B00 AS Date), CAST(0x743B0B00 AS Date), N'3394549268', CAST(0x00000000 AS Date), N'13543736699', N'900元半年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，周卡2张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1148, 0, N'刘圆', 1, CAST(0x113B0B00 AS Date), CAST(0x2A3C0B00 AS Date), N'0130696036', CAST(0x00000000 AS Date), N'17774415645', N'1500元年卡                                                                                             ', N'赠送健身包、水杯、毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1149, 0, N'陈嘉仪', 1, CAST(0x113B0B00 AS Date), CAST(0x493C0B00 AS Date), N'0127436292', CAST(0x00000000 AS Date), N'15920667516', N'1500元年卡                                                                                             ', N'赠送健身包、水杯、毛巾、一个月时间（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1150, 4, N'黄凯华', 0, CAST(0x113B0B00 AS Date), CAST(0x733B0B00 AS Date), N'3394455620', CAST(0x00000000 AS Date), N'13430082583', N'480元月卡                                                                                              ', N'一个月内提升半年卡续交520元、赠送健身包、水杯、毛巾
2015年12.29号交余款520元提升为 半年卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1151, 0, N'赵雪凤', 1, CAST(0x113B0B00 AS Date), CAST(0x4B3C0B00 AS Date), N'0127390548', CAST(0x00000000 AS Date), N'188258976', N'1500元年卡                                                                                             ', N'赠送健身包，水杯毛巾，赠送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1152, 0, N'黄瑞松', 0, CAST(0x113B0B00 AS Date), CAST(0x2C3C0B00 AS Date), N'0116707188', CAST(0x00000000 AS Date), N'13713325333', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾2条，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1153, 0, N'袁艳芬', 1, CAST(0x113B0B00 AS Date), CAST(0x2D3C0B00 AS Date), N'0127720612', CAST(0x00000000 AS Date), N'15999779784', N'1580元年卡                                                                                             ', N'健身包一个，周卡两张，水杯一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1154, 0, N'郑焕中', 0, CAST(0x113B0B00 AS Date), CAST(0x2D3C0B00 AS Date), N'0131433556', CAST(0x00000000 AS Date), N'13717192663', N'1500元年卡                                                                                             ', N'赠送健身包一个，毛巾一条，水杯一个，周卡两张。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1155, 0, N'萧桂华', 1, CAST(0x113B0B00 AS Date), CAST(0x343C0B00 AS Date), N'0127459908', CAST(0x00000000 AS Date), N'13926803655', N'1500元年卡                                                                                             ', N'赠送健身包一个，水杯一个，毛巾一条，周卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1156, 0, N'邓泓昌', 0, CAST(0x113B0B00 AS Date), CAST(0x663C0B00 AS Date), N'0127302772', CAST(0x00000000 AS Date), N'1380982685', N'1500元年卡                                                                                             ', N'赠送健身包，水杯一个，毛巾一条，周卡两张，可提前激活')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1157, 0, N'庞尚红', 0, CAST(0x113B0B00 AS Date), CAST(0xA13D0B00 AS Date), N'3584437370', CAST(0x00000000 AS Date), N'13240575999', N'2300元两年卡                                                                                            ', N'赠送健身包一个，水杯一个，毛巾一条，月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1158, 0, N'刘涛', 0, CAST(0x113B0B00 AS Date), CAST(0x353C0B00 AS Date), N'0127717332', CAST(0x00000000 AS Date), N'13580778801', N'1500元年卡                                                                                             ', N'赠送健身包2个、毛巾1条、周卡2张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1159, 4, N'袁小敏', 1, CAST(0x113B0B00 AS Date), CAST(0x693B0B00 AS Date), N'3402007268', CAST(0x00000000 AS Date), N'13509229926', N'刘淦荛周年庆抽奖(奖品)                                                                                        ', N'刘淦荛周年庆抽奖(奖品)')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1160, 0, N'罗玉婷', 1, CAST(0x113B0B00 AS Date), CAST(0x353C0B00 AS Date), N'0123225844', CAST(0x00000000 AS Date), N'13790112336', N'1500元年卡                                                                                             ', N'赠送健身包，水杯，毛巾，')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1161, 0, N'娄生', 0, CAST(0x113B0B00 AS Date), CAST(0xA33D0B00 AS Date), N'3584884604', CAST(0x00000000 AS Date), N'13532877030', N'2588两年卡                                                                                             ', N'赠送健身包，毛巾，水杯，月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1162, 4, N'余任锋', 0, CAST(0x113B0B00 AS Date), CAST(0x803B0B00 AS Date), N'3402096724', CAST(0x00000000 AS Date), N'13713313098', N'1000元半年卡                                                                                            ', N'已赠送健身包，毛巾，水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1163, 4, N'袁妙珍', 1, CAST(0x113B0B00 AS Date), CAST(0x803B0B00 AS Date), N'3387029348', CAST(0x00000000 AS Date), N'13790309086', N'1000元半年卡                                                                                            ', N'已赠送健身包，毛巾，水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1164, 2, N'陈永', 1, CAST(0x113B0B00 AS Date), CAST(0x153B0B00 AS Date), N'0183209128', CAST(0x00000000 AS Date), N'13868307135', N'776元双月卡                                                                                             ', N'经办人（毛总）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1165, 0, N'梁玉娴', 1, CAST(0x113B0B00 AS Date), CAST(0x833C0B00 AS Date), N'0130894500', CAST(0x00000000 AS Date), N'13518633000', N'                                                                                                    ', N'赠送健身包.毛巾水杯
赠送两个月（已延期）
（本公司若发生结业等不能正常提供健身服务的情况，将按该客户剩余会籍天数退还会籍费（不对外说）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1166, 0, N'卢醒林', 0, CAST(0x113B0B00 AS Date), CAST(0xA53D0B00 AS Date), N'3585206051', CAST(0x00000000 AS Date), N'13724480000', N'2288元两年卡                                                                                            ', N'赠送健身包，毛巾水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1167, 0, N'章小勇', 0, CAST(0x113B0B00 AS Date), CAST(0xA53D0B00 AS Date), N'3585138381', CAST(0x00000000 AS Date), N'13712976028', N'2400元两年卡                                                                                            ', N'赠送健身包毛巾水杯周卡两张2015.12.21补卡一张。原卡号200787')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1168, 0, N'王飞', 1, CAST(0x113B0B00 AS Date), CAST(0xA73D0B00 AS Date), N'3584093957', CAST(0x00000000 AS Date), N'13790342516', N'2500元两年卡                                                                                            ', N'赠送健身包、毛巾、水杯、周卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1169, 0, N'王丹', 1, CAST(0x113B0B00 AS Date), CAST(0xA63D0B00 AS Date), N'3584548757', CAST(0x00000000 AS Date), N'13790342516', N'2500元两年卡                                                                                            ', N'赠送健身包、水杯、毛巾、周卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1170, 0, N'吴梅珍', 1, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'0131366164', CAST(0x00000000 AS Date), N'13509844191', N'1388元年卡                                                                                             ', N'赠送健身包，毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1171, 0, N'陈显秀', 1, CAST(0x113B0B00 AS Date), CAST(0x393C0B00 AS Date), N'0121569044', CAST(0x00000000 AS Date), N'13926863455', N'1388元年卡                                                                                             ', N'赠送健身包，毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1172, 0, N'胥咏梅', 1, CAST(0x113B0B00 AS Date), CAST(0x3C3C0B00 AS Date), N'0127702180', CAST(0x00000000 AS Date), N'13712541858', N'1600元年卡                                                                                             ', N'赠送健身包。毛巾水杯。周卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1173, 0, N'何奕佳', 0, CAST(0x113B0B00 AS Date), CAST(0x3C3C0B00 AS Date), N'0130695908', CAST(0x00000000 AS Date), N'13902611146', N'1388元年卡                                                                                             ', N'一年卡到期后续两年卡，补差价700元。不要健身包，两张次卡
2014年预售。2015.12.20.取卡并开卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1174, 0, N'刘晶', 1, CAST(0x113B0B00 AS Date), CAST(0x483C0B00 AS Date), N'0131540180', CAST(0x00000000 AS Date), N'18988700145', N'1600元年卡                                                                                             ', N'2015.10.3交定金300元
2015.12.21交余款1300元
赠送健身包、毛巾、水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1175, 0, N'袁健强', 0, CAST(0x113B0B00 AS Date), CAST(0x363B0B00 AS Date), N'3584579234', CAST(0x00000000 AS Date), N'13713380803', N'400元10次卡                                                                                            ', N'老会员续卡')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1176, 0, N'李灵灵', 1, CAST(0x113B0B00 AS Date), CAST(0x3F3C0B00 AS Date), N'3584890458', CAST(0x00000000 AS Date), N'18810680769', N'1000元30次卡                                                                                           ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1177, 3, N'刘梓杰', 0, CAST(0x113B0B00 AS Date), CAST(0x2D3B0B00 AS Date), N'0038862897', CAST(0x00000000 AS Date), N'13650333021', N'800元季卡                                                                                              ', N'赠送健身包。毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1178, 0, N'刘青', 1, CAST(0x113B0B00 AS Date), CAST(0x423C0B00 AS Date), N'0128008820', CAST(0x00000000 AS Date), N'13688952938', N'公司赠送（经办人：毛总）                                                                                        ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1179, 2, N'黄冲', 1, CAST(0x113B0B00 AS Date), CAST(0x263B0B00 AS Date), N'0126292939', CAST(0x00000000 AS Date), N'15113625606', N'680元双月卡                                                                                             ', N'赠送健身包，加送15天（过春节）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1180, 0, N'陈晓晴', 1, CAST(0x113B0B00 AS Date), CAST(0xB23D0B00 AS Date), N'3585228198', CAST(0x00000000 AS Date), N'15999705727', N'2588元两年卡                                                                                            ', N'赠送健身包、水杯、毛巾、周卡2张、月卡1张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1181, 0, N'胡淑英', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0127334372', CAST(0x00000000 AS Date), N'13712171821', N'1500元年卡                                                                                             ', N'赠送健身包、水杯、毛巾、月卡1张、周卡2张2016.3.1开卡至2017.4.1到期')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1182, 4, N'孔倩欣', 1, CAST(0x113B0B00 AS Date), CAST(0x923B0B00 AS Date), N'3387246884', CAST(0x00000000 AS Date), N'13794892854', N'1000元半年卡                                                                                            ', N'赠送健身包。毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1183, 0, N'邝志明', 0, CAST(0x113B0B00 AS Date), CAST(0x463C0B00 AS Date), N'0126879028', CAST(0x00000000 AS Date), N'13929233212', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾，水杯，周卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1184, 0, N'袁成就', 0, CAST(0x113B0B00 AS Date), CAST(0xBA3D0B00 AS Date), N'3585043616', CAST(0x00000000 AS Date), N'13902616244', N'2588元年卡                                                                                             ', N'赠送健身包毛巾水杯。月卡两张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1185, 0, N'袁辉祥', 0, CAST(0x113B0B00 AS Date), CAST(0xB53D0B00 AS Date), N'3584645452', CAST(0x00000000 AS Date), N'13922500268', N'2588元年卡                                                                                             ', N'赠送健身包、毛巾、水杯、周卡2张、月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1186, 0, N'蒋晶', 1, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'0126461460', CAST(0x00000000 AS Date), N'18825848187', N'1400元年卡2016年3月1号开卡                                                                                  ', N'赠送健身包、水杯、毛巾、周卡一张
2015.12.26交定金100元，2015.12.30交余款1200元，
')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1187, 3, N'汪文婉', 1, CAST(0x113B0B00 AS Date), CAST(0x353B0B00 AS Date), N'0033776689', CAST(0x00000000 AS Date), N'13612665524', N'800元季卡                                                                                              ', N'赠送健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1188, 0, N'谢伟伦', 0, CAST(0x113B0B00 AS Date), CAST(0x543B0B00 AS Date), N'3584918330', CAST(0x00000000 AS Date), N'13570969993', N'10次卡400元                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1189, 0, N'熊金玲', 0, CAST(0x113B0B00 AS Date), CAST(0x4D3C0B00 AS Date), N'0130678772', CAST(0x00000000 AS Date), N'18676576990', N'1500年卡                                                                                              ', N'赠送健身包，毛巾，水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1190, 0, N'罗丽辉', 1, CAST(0x113B0B00 AS Date), CAST(0x523C0B00 AS Date), N'0127541668', CAST(0x00000000 AS Date), N'13538307882', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾，水杯，月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1191, 0, N'姜莹', 1, CAST(0x113B0B00 AS Date), CAST(0x523C0B00 AS Date), N'0127453412', CAST(0x00000000 AS Date), N'13929462321', N'1500元年卡                                                                                             ', N'赠送健身包，毛巾，水杯，月卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1192, 0, N'李锦鑫', 0, CAST(0x113B0B00 AS Date), CAST(0x343B0B00 AS Date), N'0035344481', CAST(0x00000000 AS Date), N'15622189410', N'450元10次卡                                                                                            ', N'')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1193, 4, N'朱天宇', 0, CAST(0x113B0B00 AS Date), CAST(0x763B0B00 AS Date), N'3387051476', CAST(0x00000000 AS Date), N'1866642482', N'900元半年卡                                                                                             ', N'赠送毛巾。水杯。周卡一张')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1194, 0, N'杨佳', 1, CAST(0x113B0B00 AS Date), CAST(0x713C0B00 AS Date), N'0119517844', CAST(0x00000000 AS Date), N'18929101922', N'1600元一年卡，送一个月                                                                                       ', N'赠送健身包，水杯，毛巾，月卡一张，多送一个月（已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1195, 0, N'张芮泽（2016.2.15手动开卡）', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3585263629', CAST(0x00000000 AS Date), N'15868073210', N'600元20次卡                                                                                            ', N'2016.2.15-2016.5.15有效期
赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1196, 4, N'穆春娇', 1, CAST(0x113B0B00 AS Date), CAST(0x9A3B0B00 AS Date), N'3386827460', CAST(0x00000000 AS Date), N'13825763235', N'1000元半年卡                                                                                            ', N'赠送健身包，毛巾')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1197, 4, N'莫永键（2016.1.12手动开卡）', 0, CAST(0x113B0B00 AS Date), CAST(0x00000000 AS Date), N'3401829396', CAST(0x00000000 AS Date), N'13580989882', N'900元半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1198, 4, N'张小霞（2016.1.12手动开卡）', 1, CAST(0x113B0B00 AS Date), CAST(0x9D3B0B00 AS Date), N'3401993620', CAST(0x00000000 AS Date), N'13925544434', N'900元半年卡                                                                                             ', N'赠送健身包一个')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1199, 1, N'刘欣语', 1, CAST(0x113B0B00 AS Date), CAST(0x003B0B00 AS Date), N'0044024113', CAST(0x00000000 AS Date), N'18898709610', N'488元月卡                                                                                              ', N'赠送健身包一个。')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1200, 0, N'周昌', 0, CAST(0x113B0B00 AS Date), CAST(0x6E3C0B00 AS Date), N'0119477444', CAST(0x00000000 AS Date), N'13580791001', N'1500元一年卡                                                                                            ', N'赠送健身包，水杯，月卡一张，已送一个月(已延期）')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1201, 2, N'袁汉辉', 1, CAST(0x113B0B00 AS Date), CAST(0x213B0B00 AS Date), N'0120944827', CAST(0x00000000 AS Date), N'13232224427', N'600元双月卡                                                                                             ', N'赠送健身包')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1202, 2, N'黎焱', 1, CAST(0x113B0B00 AS Date), CAST(0x2A3B0B00 AS Date), N'0034353041', CAST(0x00000000 AS Date), N'18883395685', N'600元双月卡                                                                                             ', N'赠送健身包，毛巾水杯')
INSERT [dbo].[TF_Member] ([ID], [卡种], [姓名], [性别], [开卡日], [到期日], [卡号], [生日], [电话], [住址], [备注]) VALUES (1203, 4, N'黎柱康', 0, CAST(0x113B0B00 AS Date), CAST(0x9C3B0B00 AS Date), N'3385982596', CAST(0x00000000 AS Date), N'13790411777', N'900元半年卡                                                                                             ', N'赠送一个月（已延期)')
SET IDENTITY_INSERT [dbo].[TF_Member] OFF
/****** Object:  Table [dbo].[TF_Inventory]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Inventory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[IsProduct] [bit] NOT NULL,
	[IsIncome] [bit] NOT NULL,
	[数量] [decimal](18, 2) NOT NULL,
	[备注] [varchar](500) NULL,
	[更新时间] [datetime] NOT NULL,
 CONSTRAINT [PK_TF_Inventory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Inventory] ON
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (1, 1, 1, 0, CAST(2.00 AS Decimal(18, 2)), NULL, CAST(0x0000A592012033E3 AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (2, 1, 0, 0, CAST(3.00 AS Decimal(18, 2)), NULL, CAST(0x0000A5920120BD2C AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (3, 3, 1, 0, CAST(4.00 AS Decimal(18, 2)), NULL, CAST(0x0000A593011A46EF AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (4, 4, 1, 0, CAST(128.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59C016853FB AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (5, 5, 1, 0, CAST(8.00 AS Decimal(18, 2)), NULL, CAST(0x0000A5980148E134 AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (6, 6, 1, 0, CAST(280.00 AS Decimal(18, 2)), NULL, CAST(0x0000A595011DE9F3 AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (7, 8, 1, 1, CAST(250.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FED83A AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (8, 3, 0, 1, CAST(8.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FB96CF AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (9, 4, 0, 1, CAST(19.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FBC4E5 AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (10, 5, 0, 0, CAST(51.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FF36AA AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (11, 6, 0, 1, CAST(4.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FBDADB AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (12, 7, 0, 0, CAST(7.00 AS Decimal(18, 2)), NULL, CAST(0x0000A5980148FCAD AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (13, 8, 0, 1, CAST(2.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FBF1C0 AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (14, 9, 0, 1, CAST(1.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FBFCAF AS DateTime))
INSERT [dbo].[TF_Inventory] ([ID], [PID], [IsProduct], [IsIncome], [数量], [备注], [更新时间]) VALUES (15, 10, 0, 1, CAST(2.00 AS Decimal(18, 2)), NULL, CAST(0x0000A59800FC1AC3 AS DateTime))
SET IDENTITY_INSERT [dbo].[TF_Inventory] OFF
/****** Object:  Table [dbo].[TF_Income]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Income](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[IsProduct] [bit] NOT NULL,
	[IsIncome] [bit] NOT NULL,
	[数量] [decimal](18, 2) NOT NULL,
	[实价] [money] NOT NULL,
	[备注] [varchar](500) NULL,
	[经手人] [varchar](50) NOT NULL,
	[时间] [datetime] NOT NULL,
 CONSTRAINT [PK_TF_Income] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Income] ON
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (1, 0, 1, 1, CAST(0.00 AS Decimal(18, 2)), 0.0000, N'', N'甘慧铭', CAST(0x0000A58601510C84 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (2, 0, 1, 1, CAST(6.00 AS Decimal(18, 2)), 78.0000, N'6件', N'甘慧铭', CAST(0x0000A586015168EA AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (3, 0, 1, 1, CAST(0.00 AS Decimal(18, 2)), 0.0000, N'', N'甘慧铭', CAST(0x0000A5860151E98F AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (4, 0, 1, 1, CAST(0.00 AS Decimal(18, 2)), 0.0000, N'', N'甘慧铭', CAST(0x0000A58B01116966 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (5, 0, 1, 1, CAST(0.00 AS Decimal(18, 2)), 0.0000, N'', N'甘慧铭', CAST(0x0000A58C01002521 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (6, 0, 1, 1, CAST(10.00 AS Decimal(18, 2)), 20.0000, N'', N'甘慧铭', CAST(0x0000A58C0106F204 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (7, 0, 1, 1, CAST(10.00 AS Decimal(18, 2)), 9.5000, N'', N'kell', CAST(0x0000A58C014136D5 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (8, 0, 1, 0, CAST(10.00 AS Decimal(18, 2)), 10.0000, N'', N'kell', CAST(0x0000A591014487F6 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (9, 0, 0, 0, CAST(104.00 AS Decimal(18, 2)), 44.0000, N'', N'kell', CAST(0x0000A5910145ECC0 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (10, 0, 1, 1, CAST(4104.00 AS Decimal(18, 2)), 104.0000, N'', N'kell', CAST(0x0000A59101465C9B AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (11, 0, 1, 1, CAST(10.00 AS Decimal(18, 2)), 0.5000, N'', N'kell', CAST(0x0000A5910146C7D6 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (12, 0, 1, 1, CAST(0.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A592011A0504 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (13, 0, 1, 1, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A592011A1080 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (14, 0, 1, 1, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A592011A74B2 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (15, 1, 1, 1, CAST(3.00 AS Decimal(18, 2)), 3564.0000, N'', N'kell', CAST(0x0000A592011C5704 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (16, 1, 0, 1, CAST(4.00 AS Decimal(18, 2)), 1221.0000, N'', N'kell', CAST(0x0000A592011C70F7 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (17, 1, 1, 0, CAST(1.00 AS Decimal(18, 2)), 232.0000, N'', N'甘慧铭', CAST(0x0000A592012033E0 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (18, 1, 0, 0, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A5920120BD2A AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (19, 3, 1, 1, CAST(24.00 AS Decimal(18, 2)), 144.0000, N'', N'甘慧铭', CAST(0x0000A593011307B9 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (20, 3, 1, 0, CAST(20.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A593011A46EE AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (21, 4, 1, 1, CAST(10.00 AS Decimal(18, 2)), 6.0000, N'', N'甘慧铭', CAST(0x0000A59301520041 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (22, 5, 1, 0, CAST(20.00 AS Decimal(18, 2)), 6.0000, N'', N'戴君', CAST(0x0000A593015D1437 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (23, 5, 1, 0, CAST(0.00 AS Decimal(18, 2)), 0.0000, N'', N'戴君', CAST(0x0000A594016DA808 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (24, 6, 1, 1, CAST(300.00 AS Decimal(18, 2)), 0.0000, N'', N'甘慧铭', CAST(0x0000A595011648D5 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (25, 5, 1, 0, CAST(20.00 AS Decimal(18, 2)), 8.0000, N'', N'戴君', CAST(0x0000A59501172AA6 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (26, 6, 1, 0, CAST(10.00 AS Decimal(18, 2)), 5.0000, N'', N'甘慧铭', CAST(0x0000A595011D7A3D AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (27, 6, 1, 0, CAST(10.00 AS Decimal(18, 2)), 5.0000, N'', N'戴君', CAST(0x0000A595011DE9F2 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (28, 4, 1, 0, CAST(10.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59600BD78C0 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (29, 8, 1, 1, CAST(150.00 AS Decimal(18, 2)), 3000.0000, N'', N'kell', CAST(0x0000A59600C2CC8A AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (30, 5, 1, 0, CAST(2.00 AS Decimal(18, 2)), 5.0000, N'', N'kell', CAST(0x0000A596011DD510 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (31, 4, 1, 0, CAST(2.00 AS Decimal(18, 2)), 5.0000, N'', N'kell', CAST(0x0000A596011E4472 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (32, 4, 1, 1, CAST(2.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A596011F3F9F AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (33, 5, 1, 1, CAST(2.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A596011F465B AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (34, 5, 1, 0, CAST(2.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59800FB5E6D AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (35, 3, 0, 1, CAST(8.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FB96CE AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (36, 4, 0, 1, CAST(19.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FBC4E4 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (37, 5, 0, 1, CAST(53.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FBD0E2 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (38, 6, 0, 1, CAST(4.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FBDADB AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (39, 7, 0, 1, CAST(8.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FBE698 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (40, 8, 0, 1, CAST(2.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FBF1C0 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (41, 9, 0, 1, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FBFCAE AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (42, 10, 0, 1, CAST(2.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FC1AC2 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (43, 4, 1, 0, CAST(10.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59800FCF932 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (44, 5, 0, 0, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FD0AE8 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (45, 4, 1, 1, CAST(24.00 AS Decimal(18, 2)), 3.3000, N'', N'kell', CAST(0x0000A59800FEA275 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (46, 5, 1, 1, CAST(12.00 AS Decimal(18, 2)), 3.0000, N'', N'kell', CAST(0x0000A59800FEB8A2 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (47, 8, 1, 1, CAST(100.00 AS Decimal(18, 2)), 20.0000, N'', N'kell', CAST(0x0000A59800FED83A AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (48, 5, 1, 0, CAST(1.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59800FF2644 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (49, 5, 0, 0, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A59800FF36AA AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (50, 5, 1, 0, CAST(1.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A5980148E134 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (51, 7, 0, 0, CAST(1.00 AS Decimal(18, 2)), 0.0000, N'', N'kell', CAST(0x0000A5980148FCAC AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (52, 4, 1, 0, CAST(10.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C01615EC6 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (53, 4, 1, 0, CAST(10.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C01624825 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (54, 4, 1, 0, CAST(2.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C0162DD3D AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (55, 4, 1, 0, CAST(5.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C01635C81 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (56, 4, 1, 0, CAST(5.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C0163605D AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (57, 4, 1, 0, CAST(1.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C0163DB85 AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (58, 4, 1, 0, CAST(2.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C016442CB AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (59, 4, 1, 1, CAST(150.00 AS Decimal(18, 2)), 3.3000, N'', N'kell', CAST(0x0000A59C0167746D AS DateTime))
INSERT [dbo].[TF_Income] ([ID], [PID], [IsProduct], [IsIncome], [数量], [实价], [备注], [经手人], [时间]) VALUES (60, 4, 1, 0, CAST(1.00 AS Decimal(18, 2)), 6.0000, N'', N'kell', CAST(0x0000A59C016853FB AS DateTime))
SET IDENTITY_INSERT [dbo].[TF_Income] OFF
/****** Object:  Table [dbo].[TF_FormType]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FormType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
	[Remark] [varchar](500) NULL,
	[Flag] [int] NOT NULL,
 CONSTRAINT [PK_TF_FormType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FormType] ON
INSERT [dbo].[TF_FormType] ([ID], [TypeName], [Remark], [Flag]) VALUES (1, N'员工事假请假单', N'', 0)
INSERT [dbo].[TF_FormType] ([ID], [TypeName], [Remark], [Flag]) VALUES (2, N'前台管理文档', N'', 0)
INSERT [dbo].[TF_FormType] ([ID], [TypeName], [Remark], [Flag]) VALUES (3, N'罚款单', N'', 0)
INSERT [dbo].[TF_FormType] ([ID], [TypeName], [Remark], [Flag]) VALUES (5, N'教练管理文档', N'', 0)
INSERT [dbo].[TF_FormType] ([ID], [TypeName], [Remark], [Flag]) VALUES (7, N'测试类型', N'', 0)
INSERT [dbo].[TF_FormType] ([ID], [TypeName], [Remark], [Flag]) VALUES (8, N'kell测试类型', N'', 0)
SET IDENTITY_INSERT [dbo].[TF_FormType] OFF
/****** Object:  Table [dbo].[TF_FormObject]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FormObject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [varchar](50) NOT NULL,
	[FormType] [int] NOT NULL,
	[FormItems] [varchar](2000) NOT NULL,
	[Owner] [int] NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Form] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FormObject] ON
INSERT [dbo].[TF_FormObject] ([ID], [FormName], [FormType], [FormItems], [Owner], [Remark]) VALUES (1, N'事假请假申请单', 1, N'512,513,514,515,516,517,518,519,520', 1, N'')
INSERT [dbo].[TF_FormObject] ([ID], [FormName], [FormType], [FormItems], [Owner], [Remark]) VALUES (4, N'前台管理文档', 2, N'66,67,68', 1, N'')
INSERT [dbo].[TF_FormObject] ([ID], [FormName], [FormType], [FormItems], [Owner], [Remark]) VALUES (5, N'罚款单', 3, N'546,547,548,549,550,551,552', 1, N'')
SET IDENTITY_INSERT [dbo].[TF_FormObject] OFF
/****** Object:  Table [dbo].[TF_FormItem]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FormItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[ItemValue] [varchar](500) NOT NULL,
	[ItemType] [varchar](50) NOT NULL,
	[Flag] [int] NOT NULL,
 CONSTRAINT [PK_TF_FormItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FormItem] ON
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (1, N'Field1', N'test', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (2, N'Field2', N'12.03', N'System.Decimal', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (3, N'Field3', N'2015-12-30 16:42:52', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (4, N'Field4', N'3123', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (5, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (6, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (7, N'职位', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (8, N'请假事由', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (9, N'开始日期', N'2016-01-12 14:12:53', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (10, N'结束日期', N'2016-01-12 14:13:00', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (11, N'部门经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (12, N'人事资源部意见', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (13, N'总经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (14, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (15, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (16, N'职位', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (17, N'请假事由', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (18, N'开始时间', N'2016-01-12 14:21:56', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (19, N'结束时间', N'2016-01-12 14:22:09', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (20, N'部门经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (21, N'人事资源部意见', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (22, N'总经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (23, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (24, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (25, N'职位', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (26, N'请假事由', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (27, N'开始日期', N'2016-01-12 14:27:13', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (28, N'结束日期', N'2016-01-12 14:27:19', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (29, N'部门经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (30, N'人事资源部意见', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (31, N'总经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (32, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (33, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (34, N'职位', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (35, N'请假事由', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (36, N'开始日期', N'2016-01-12 14:29:45', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (37, N'结束日期', N'2016-01-12 14:29:51', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (38, N'部门经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (39, N'人事资源部意见', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (40, N'总经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (50, N'美团网', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (51, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (52, N'前台排班表', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (53, N'Field1', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (54, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (55, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (56, N'前台排班表', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (57, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (58, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (59, N'前台排班表', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (60, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (61, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (62, N'前台排班表', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (63, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (64, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (65, N'前台排班表', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (66, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (67, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (68, N'前台排班表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (69, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (70, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (71, N'职位', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (72, N'请假事由', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (73, N'开始日期', N'2016-01-12 14:36:58', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (74, N'结束日期', N'2016-01-12 14:37:04', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (75, N'部门经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (76, N'人事资源部意见', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (77, N'总经理审批', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (78, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (79, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (80, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (81, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (82, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (83, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (84, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (85, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (86, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (87, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (88, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (89, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (90, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (91, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (92, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (93, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (94, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (95, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (96, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (97, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (98, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (99, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (100, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (101, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (102, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (103, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (104, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (105, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (106, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (107, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (108, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (109, N'开始日期：', N'', N'System.String', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (110, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (111, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (112, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (113, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (114, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (115, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (116, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (117, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (118, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (119, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (120, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (121, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (122, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (123, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (124, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (125, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (126, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (127, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (128, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (129, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (130, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (131, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (132, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (133, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (134, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (135, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (136, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (137, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (138, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (139, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (140, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (141, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (142, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (143, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (144, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (145, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (146, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (147, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (148, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (149, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (150, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (151, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (152, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (153, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (154, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (155, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (156, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (157, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (158, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (159, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (160, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (161, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (162, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (163, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (164, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (165, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (166, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (167, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (168, N'姓名：：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (169, N'部门：：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (170, N'职位：：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (171, N'请假事由：：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (172, N'开始日期：：', N'2016-01-24', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (173, N'结束日期：：', N'2016-01-26', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (174, N'部门经理审批：：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (175, N'人事资源部意见：：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (176, N'总经理审批：：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (177, N'姓名：：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (178, N'部门：：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (179, N'职位：：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (180, N'请假事由：：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (181, N'开始日期：：', N'2016-01-24', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (182, N'结束日期：：', N'2016-01-26', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (183, N'部门经理审批：：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (184, N'人事资源部意见：：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (185, N'总经理审批：：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (186, N'姓名：：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (187, N'部门：：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (188, N'职位：：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (189, N'请假事由：：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (190, N'开始日期：：', N'2016-01-24', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (191, N'结束日期：：', N'2016-01-26', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (192, N'部门经理审批：：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (193, N'人事资源部意见：：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (194, N'总经理审批：：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (195, N'姓名：：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (196, N'部门：：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (197, N'职位：：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (198, N'请假事由：：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (199, N'开始日期：：', N'2016-01-24', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (200, N'结束日期：：', N'2016-01-26', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (201, N'部门经理审批：：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (202, N'人事资源部意见：：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (203, N'总经理审批：：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (204, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (205, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (206, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (207, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (208, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (209, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (210, N'部门经理审批：', N'', N'System.String', 6)
GO
print 'Processed 200 total records'
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (211, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (212, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (213, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (214, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (215, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (216, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (217, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (218, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (219, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (220, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (221, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (222, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (223, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (224, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (225, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (226, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (227, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (228, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (229, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (230, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (231, N'姓名：', N'kell', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (232, N'部门：', N'管理中心', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (233, N'职位：', N'系统管理员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (234, N'请假事由：', N'回家', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (235, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (236, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (237, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (238, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (239, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (240, N'姓名：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (241, N'部门：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (242, N'职位：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (243, N'请假事由：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (244, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (245, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (246, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (247, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (248, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (249, N'姓名：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (250, N'部门：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (251, N'职位：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (252, N'请假事由：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (253, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (254, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (255, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (256, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (257, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (258, N'姓名：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (259, N'部门：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (260, N'职位：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (261, N'请假事由：', N'q', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (262, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (263, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (264, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (265, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (266, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (267, N'姓名：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (268, N'部门：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (269, N'职位：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (270, N'请假事由：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (271, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (272, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (273, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (274, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (275, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (276, N'姓名：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (277, N'部门：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (278, N'职位：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (279, N'请假事由：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (280, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (281, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (282, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (283, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (284, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (285, N'姓名：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (286, N'部门：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (287, N'职位：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (288, N'请假事由：', N'w', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (289, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (290, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (291, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (292, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (293, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (294, N'姓名：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (295, N'部门：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (296, N'职位：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (297, N'请假事由：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (298, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (299, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (300, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (301, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (302, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (303, N'姓名：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (304, N'部门：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (305, N'职位：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (306, N'请假事由：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (307, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (308, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (309, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (310, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (311, N'总经理审批：', N'', N'System.String', 8)
GO
print 'Processed 300 total records'
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (312, N'姓名：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (313, N'部门：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (314, N'职位：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (315, N'请假事由：', N'e', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (316, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (317, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (318, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (319, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (320, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (321, N'姓名：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (322, N'部门：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (323, N'职位：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (324, N'请假事由：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (325, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (326, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (327, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (328, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (329, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (330, N'姓名：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (331, N'部门：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (332, N'职位：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (333, N'请假事由：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (334, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (335, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (336, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (337, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (338, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (339, N'姓名：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (340, N'部门：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (341, N'职位：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (342, N'请假事由：', N't', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (343, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (344, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (345, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (346, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (347, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (348, N'姓名：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (349, N'部门：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (350, N'职位：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (351, N'请假事由：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (352, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (353, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (354, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (355, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (356, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (357, N'姓名：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (358, N'部门：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (359, N'职位：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (360, N'请假事由：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (361, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (362, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (363, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (364, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (365, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (366, N'姓名：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (367, N'部门：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (368, N'职位：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (369, N'请假事由：', N'r', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (370, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (371, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (372, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (373, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (374, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (375, N'姓名：', N'y', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (376, N'部门：', N'y', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (377, N'职位：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (378, N'请假事由：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (379, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (380, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (381, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (382, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (383, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (384, N'姓名：', N'y', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (385, N'部门：', N'y', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (386, N'职位：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (387, N'请假事由：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (388, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (389, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (390, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (391, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (392, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (393, N'姓名：', N'y', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (394, N'部门：', N'y', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (395, N'职位：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (396, N'请假事由：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (397, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (398, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (399, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (400, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (401, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (402, N'姓名：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (403, N'部门：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (404, N'职位：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (405, N'请假事由：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (406, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (407, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (408, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (409, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (410, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (411, N'姓名：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (412, N'部门：', N'u', N'System.String', 0)
GO
print 'Processed 400 total records'
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (413, N'职位：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (414, N'请假事由：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (415, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (416, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (417, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (418, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (419, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (420, N'姓名：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (421, N'部门：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (422, N'职位：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (423, N'请假事由：', N'u', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (424, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (425, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (426, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (427, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (428, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (429, N'姓名：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (430, N'部门：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (431, N'职位：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (432, N'请假事由：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (433, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (434, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (435, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (436, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (437, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (438, N'姓名：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (439, N'部门：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (440, N'职位：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (441, N'请假事由：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (442, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (443, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (444, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (445, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (446, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (447, N'姓名：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (448, N'部门：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (449, N'职位：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (450, N'请假事由：', N'i', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (451, N'开始日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (452, N'结束日期：', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (453, N'部门经理审批：', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (454, N'人事资源部意见：', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (455, N'总经理审批：', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (465, N'姓名', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (466, N'部门', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (467, N'职位', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (468, N'请假事由', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (469, N'开始日期', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (470, N'结束日期', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (471, N'部门经理审批', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (472, N'人事资源部意见', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (473, N'总经理审批', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (474, N'姓名', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (475, N'部门', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (476, N'职位', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (477, N'请假事由', N'ss', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (478, N'开始日期', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (479, N'结束日期', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (480, N'部门经理审批', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (481, N'人事资源部意见', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (482, N'总经理审批', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (492, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (493, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (494, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (495, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (496, N'部门主管', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (497, N'总经理', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (498, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (499, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (500, N'时间', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (501, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (502, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (503, N'部门主管', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (504, N'总经办', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (505, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (506, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (507, N'时间', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (508, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (509, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (510, N'部门主管', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (511, N'总经办', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (512, N'姓名', N'李小龙', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (513, N'部门', N'中国拳协', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (514, N'职位', N'香港钻石会员', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (515, N'请假事由', N'去打架', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (516, N'开始时间', N'2016-01-27 14:12:34', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (517, N'结束时间', N'2016-01-29 14:12:34', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (518, N'部门经理审批', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (519, N'人力资源部意见', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (520, N'总经理审批', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (521, N'姓名', N'申公豹', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (522, N'部门', N'元始天尊座下', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (523, N'职位', N'左护法', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (524, N'请假事由', N'去害人', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (525, N'开始时间', N'2016-01-27 14:51:52', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (526, N'结束时间', N'2016-01-29 14:51:52', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (527, N'部门经理审批', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (528, N'人力资源部意见', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (529, N'总经理审批', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (530, N'姓名', N'申公豹', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (531, N'部门', N'元始天尊座下', N'System.String', 0)
GO
print 'Processed 500 total records'
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (532, N'职位', N'左护法', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (533, N'请假事由', N'去害人', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (534, N'开始时间', N'2016-01-27 14:51:52', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (535, N'结束时间', N'2016-01-29 14:51:52', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (536, N'部门经理审批', N'', N'System.String', 6)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (537, N'人力资源部意见', N'', N'System.String', 7)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (538, N'总经理审批', N'', N'System.String', 8)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (539, N'时间', N'2016-01-27 15:20:35', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (540, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (541, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (542, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (543, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (544, N'部门主管', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (545, N'总经理', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (546, N'时间', N'2016-01-27 15:25:26', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (547, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (548, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (549, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (550, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (551, N'部门主管', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (552, N'总经理', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (553, N'时间', N'2016-01-27 15:27:45', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (554, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (555, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (556, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (557, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (558, N'部门主管', N'', N'System.String', 1)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (559, N'总经理', N'', N'System.String', 2)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (560, N'时间', N'2016-01-27 15:27:45', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (561, N'部门', N'尚匠咖啡', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (562, N'姓名', N'时间空间', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (563, N'罚款原因', N'是否', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (564, N'当事人', N'达到', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (565, N'部门主管', N'撒网', N'System.String', 1)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (566, N'总经理', N'是无法让', N'System.String', 2)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (567, N'时间', N'2016-01-27 15:27:45', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (568, N'部门', N'尚匠咖啡', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (569, N'姓名', N'时间空间', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (570, N'罚款原因', N'是否', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (571, N'当事人', N'达到', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (572, N'部门主管', N'撒网', N'System.String', 1)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (573, N'总经理', N'是无法让', N'System.String', 2)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (574, N'时间', N'2016-01-27 18:36:23', N'System.DateTime', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (575, N'部门', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (576, N'姓名', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (577, N'罚款原因', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (578, N'当事人', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (579, N'部门主管', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (580, N'总经理', N'', N'System.String', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (584, N'操课老师通讯录', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (585, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (586, N'前台排班表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (587, N'教练图片', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (588, N'教练排班', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (589, N'教练图片', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (590, N'教练排班', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (594, N'操课老师通讯录', N'C:\Users\正誉电脑\Documents\123.xls', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (595, N'来访客户体验登记表', N'C:\Users\正誉电脑\Documents\11月份奖罚制度.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (596, N'前台排班表', N'C:\Users\正誉电脑\Documents\罚款单.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (600, N'操课老师通讯录', N'0|C:\Users\正誉电脑\Documents\aaa.xls', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (601, N'来访客户体验登记表', N'0|C:\Users\正誉电脑\Documents\bbb.xls', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (602, N'前台排班表', N'0|C:\Users\正誉电脑\Documents\会员须经前台处理事项.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (603, N'操课老师通讯录', N'4|1\奖励单.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (604, N'来访客户体验登记表', N'5|1\4楼平面图.xps', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (605, N'前台排班表', N'6|1\Logo表格.xls', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (606, N'操课老师通讯录', N'4|1\奖励单.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (607, N'来访客户体验登记表', N'5|1\4楼平面图.xps', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (608, N'前台排班表', N'6|1\Logo表格.xls', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (609, N'操课老师通讯录', N'7|1\测试.ppt', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (610, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (611, N'前台排班表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (612, N'操课老师通讯录', N'7|1\测试.ppt', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (613, N'来访客户体验登记表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (614, N'前台排班表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (615, N'操课老师通讯录', N'8|1\工作交接20150203.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (616, N'来访客户体验登记表', N'15|1\20140620150058.bmp', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (617, N'前台排班表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (621, N'操课老师通讯录', N'11|4\奖励单.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (622, N'来访客户体验登记表', N'14|4\灭火和应急疏散预案.docx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (623, N'前台排班表', N'', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (624, N'操课老师通讯录', N'13|4\消防安全巡查表.xlsx', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (625, N'来访客户体验登记表', N'16|4\20150825100313.bmp', N'System.Object', 0)
INSERT [dbo].[TF_FormItem] ([ID], [ItemName], [ItemValue], [ItemType], [Flag]) VALUES (626, N'前台排班表', N'', N'System.Object', 0)
SET IDENTITY_INSERT [dbo].[TF_FormItem] OFF
/****** Object:  Table [dbo].[TF_FollowupType]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FollowupType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[方式] [varchar](50) NOT NULL,
	[备注] [varchar](500) NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_TF_FollowupType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FollowupType] ON
INSERT [dbo].[TF_FollowupType] ([ID], [方式], [备注], [Flag]) VALUES (1, N'电话回访', N'', 0)
INSERT [dbo].[TF_FollowupType] ([ID], [方式], [备注], [Flag]) VALUES (2, N'微信回访', N'', 0)
INSERT [dbo].[TF_FollowupType] ([ID], [方式], [备注], [Flag]) VALUES (3, N'当面回访', N'', 0)
SET IDENTITY_INSERT [dbo].[TF_FollowupType] OFF
/****** Object:  Table [dbo].[TF_FollowupResult]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FollowupResult](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[结果] [varchar](50) NOT NULL,
	[备注] [varchar](500) NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_TF_FollowupResult] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FollowupResult] ON
INSERT [dbo].[TF_FollowupResult] ([ID], [结果], [备注], [Flag]) VALUES (1, N'客人已接受', N'', 0)
INSERT [dbo].[TF_FollowupResult] ([ID], [结果], [备注], [Flag]) VALUES (2, N'客人不接受', N'', 0)
INSERT [dbo].[TF_FollowupResult] ([ID], [结果], [备注], [Flag]) VALUES (3, N'等待客人回复', N'', 0)
SET IDENTITY_INSERT [dbo].[TF_FollowupResult] OFF
/****** Object:  Table [dbo].[TF_Followup]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Followup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[跟进方式] [int] NOT NULL,
	[跟进人] [int] NOT NULL,
	[跟进时间] [datetime] NOT NULL,
	[跟进结果] [int] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Followup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Followup] ON
INSERT [dbo].[TF_Followup] ([ID], [MemberID], [跟进方式], [跟进人], [跟进时间], [跟进结果], [备注]) VALUES (1, 14, 1, 3, CAST(0x0000A59600000000 AS DateTime), 1, N'ds czf')
INSERT [dbo].[TF_Followup] ([ID], [MemberID], [跟进方式], [跟进人], [跟进时间], [跟进结果], [备注]) VALUES (2, 15, 1, 3, CAST(0x0000A59700000000 AS DateTime), 3, N'')
INSERT [dbo].[TF_Followup] ([ID], [MemberID], [跟进方式], [跟进人], [跟进时间], [跟进结果], [备注]) VALUES (3, 316, 1, 3, CAST(0x0000A59C00000000 AS DateTime), 2, N'')
SET IDENTITY_INSERT [dbo].[TF_Followup] OFF
/****** Object:  Table [dbo].[TF_FinanceDetail]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FinanceDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[项目] [varchar](50) NOT NULL,
	[金额] [money] NOT NULL,
	[是否进账] [bit] NOT NULL,
	[备注] [varchar](500) NULL,
	[责任人] [int] NULL,
	[提交时间] [datetime] NOT NULL,
	[Flag] [int] NOT NULL,
 CONSTRAINT [PK_TF_FinanceDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FinanceDetail] ON
INSERT [dbo].[TF_FinanceDetail] ([ID], [项目], [金额], [是否进账], [备注], [责任人], [提交时间], [Flag]) VALUES (1, N'买菜', 100.0000, 0, N'', 4, CAST(0x0000A58C010F142E AS DateTime), 1)
INSERT [dbo].[TF_FinanceDetail] ([ID], [项目], [金额], [是否进账], [备注], [责任人], [提交时间], [Flag]) VALUES (3, N'13272', 1043377.0000, 0, N'', 4, CAST(0x0000A59800FA1926 AS DateTime), 0)
INSERT [dbo].[TF_FinanceDetail] ([ID], [项目], [金额], [是否进账], [备注], [责任人], [提交时间], [Flag]) VALUES (4, N'12651', 3465464.0000, 0, N'', 4, CAST(0x0000A59800FFF492 AS DateTime), 0)
INSERT [dbo].[TF_FinanceDetail] ([ID], [项目], [金额], [是否进账], [备注], [责任人], [提交时间], [Flag]) VALUES (5, N'啦啦', 121323.0000, 0, N'', 4, CAST(0x0000A59C01689430 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TF_FinanceDetail] OFF
/****** Object:  Table [dbo].[TF_Finance]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Finance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[日期] [date] NOT NULL,
	[项目] [varchar](50) NOT NULL,
	[是否进账] [bit] NOT NULL,
	[金额] [money] NOT NULL,
	[余款] [money] NOT NULL,
	[经手人] [varchar](50) NOT NULL,
	[接收人] [varchar](50) NOT NULL,
	[Detail] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Finance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Finance] ON
INSERT [dbo].[TF_Finance] ([ID], [日期], [项目], [是否进账], [金额], [余款], [经手人], [接收人], [Detail]) VALUES (1, CAST(0xF03A0B00 AS Date), N'4245', 0, 10000.0000, 13334.0000, N'1232', N'1042', N'1')
INSERT [dbo].[TF_Finance] ([ID], [日期], [项目], [是否进账], [金额], [余款], [经手人], [接收人], [Detail]) VALUES (2, CAST(0xEB3A0B00 AS Date), N'123377', 1, 4643418.0000, 1467143.0000, N'022', N'022', N'3')
INSERT [dbo].[TF_Finance] ([ID], [日期], [项目], [是否进账], [金额], [余款], [经手人], [接收人], [Detail]) VALUES (3, CAST(0xF73A0B00 AS Date), N'报销', 1, 12345646.0000, 132146546.0000, N'啦啦', N'啦啦', N'')
INSERT [dbo].[TF_Finance] ([ID], [日期], [项目], [是否进账], [金额], [余款], [经手人], [接收人], [Detail]) VALUES (4, CAST(0xF73A0B00 AS Date), N'卡拉', 0, 12345646.0000, 132146546.0000, N'啦啦', N'啦啦', N'4')
INSERT [dbo].[TF_Finance] ([ID], [日期], [项目], [是否进账], [金额], [余款], [经手人], [接收人], [Detail]) VALUES (5, CAST(0xEB3A0B00 AS Date), N'123377', 1, 4643418.0000, 1467143.0000, N'022', N'022', N'1')
SET IDENTITY_INSERT [dbo].[TF_Finance] OFF
/****** Object:  Table [dbo].[TF_FieldMap]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_FieldMap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Map] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_TF_FieldMap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_FieldMap] ON
INSERT [dbo].[TF_FieldMap] ([ID], [Name], [Map]) VALUES (1, N'资料导入', 0x0001000000FFFFFFFF01000000000000000401000000E20153797374656D2E436F6C6C656374696F6E732E47656E657269632E44696374696F6E61727960325B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D2C5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D040000000756657273696F6E08436F6D7061726572084861736853697A650D4B657956616C756550616972730003000308920153797374656D2E436F6C6C656374696F6E732E47656E657269632E47656E65726963457175616C697479436F6D706172657260315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D08E60153797374656D2E436F6C6C656374696F6E732E47656E657269632E4B657956616C75655061697260325B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D2C5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D5B5D0900000009020000001100000009030000000402000000920153797374656D2E436F6C6C656374696F6E732E47656E657269632E47656E65726963457175616C697479436F6D706172657260315B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D00000000070300000000010000000900000003E40153797374656D2E436F6C6C656374696F6E732E47656E657269632E4B657956616C75655061697260325B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D2C5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D04FCFFFFFFE40153797374656D2E436F6C6C656374696F6E732E47656E657269632E4B657956616C75655061697260325B5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D2C5B53797374656D2E537472696E672C206D73636F726C69622C2056657273696F6E3D342E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D623737613563353631393334653038395D5D02000000036B65790576616C75650101060500000006E5A793E5908D06060000000CE4BC9AE59198E5A793E5908D01F9FFFFFFFCFFFFFF060800000006E680A7E588AB060900000006E680A7E588AB01F6FFFFFFFCFFFFFF060B00000006E58DA1E7A78D060C0000000CE4BC9AE59198E7B1BBE59E8B01F3FFFFFFFCFFFFFF060E00000006E58DA1E58FB7060F0000000CE4BC9AE59198E58DA1E58FB701F0FFFFFFFCFFFFFF061100000006E794B5E8AF9D06120000000CE7A7BBE58AA8E794B5E8AF9D01EDFFFFFFFCFFFFFF061400000006E4BD8FE59D8006150000000CE88194E7B3BBE59CB0E59D8001EAFFFFFFFCFFFFFF061700000009E588B0E69C9FE697A506180000000CE588B0E69C9FE697A5E69C9F01E7FFFFFFFCFFFFFF061A00000006E7949FE697A5061B0000000CE4BC9AE59198E7949FE697A501E4FFFFFFFCFFFFFF061D00000006E5A487E6B3A8061E0000000CE5A487E6B3A8E8AFB4E6988E0B)
SET IDENTITY_INSERT [dbo].[TF_FieldMap] OFF
/****** Object:  Table [dbo].[TF_DocObject]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_DocObject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FormID] [int] NOT NULL,
	[DocItems] [varchar](2000) NOT NULL,
	[Owner] [int] NULL,
	[Remark] [varchar](500) NULL,
	[Flag] [int] NOT NULL,
 CONSTRAINT [PK_TF_DocObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_DocObject] ON
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (20, N'李小龙请假单', 1, N'512,513,514,515,516,517,518,519,520', 1, N'哈哈', 10)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (21, N'申公豹请假单', 1, N'521,522,523,524,525,526,527,528,529', 1, N'', 5)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (22, N'罚款单', 5, N'560,561,562,563,564,565,566', 1, N'', 7)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (26, N'前台管理文档-kell', 4, N'603,604,605', 1, N'', 9)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (27, N'前台管理文档-kell2', 4, N'609,610,611', 1, N'', 4)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (28, N'前台管理文档-kell3', 4, N'615,616,617', 1, N'', 1)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (30, N'前台管理文档-甘慧铭', 4, N'621,622,623', 4, N'', 1)
INSERT [dbo].[TF_DocObject] ([ID], [Name], [FormID], [DocItems], [Owner], [Remark], [Flag]) VALUES (31, N'前台管理文档2-甘慧铭', 4, N'624,625,626', 4, N'', 2)
SET IDENTITY_INSERT [dbo].[TF_DocObject] OFF
/****** Object:  Table [dbo].[TF_Depart]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Depart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Parent] [int] NOT NULL,
	[Manager] [varchar](50) NULL,
	[Roles] [varchar](500) NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Depart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Depart] ON
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (2, N'销售部', 0, N'谢信', N'', N'')
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (3, N'客服部', 0, N'戴君', N'', N'')
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (4, N'行政部', 0, N'甘慧铭', N'', N'')
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (6, N'后勤部', 4, N'何大叔', N'', N'12345')
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (12, N'管理中心', 0, N'kell', N'', N'')
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (13, N'财务部', 0, N'江姐', N'', N'')
INSERT [dbo].[TF_Depart] ([ID], [Name], [Parent], [Manager], [Roles], [Remark]) VALUES (14, N'教练部', 0, N'朱冬华', N'', N'')
SET IDENTITY_INSERT [dbo].[TF_Depart] OFF
/****** Object:  Table [dbo].[TF_Dairy]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Dairy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pos机会籍] [money] NOT NULL,
	[Pos机私教] [money] NOT NULL,
	[现金会籍] [money] NOT NULL,
	[现金私教] [money] NOT NULL,
	[微信会籍] [money] NOT NULL,
	[微信私教] [money] NOT NULL,
	[现金存水] [money] NOT NULL,
	[微信存水] [money] NOT NULL,
	[水吧余] [money] NOT NULL,
	[总金额] [money] NOT NULL,
	[备注] [varchar](500) NULL,
	[经手人] [int] NOT NULL,
	[日期] [date] NOT NULL,
 CONSTRAINT [PK_TF_Dairy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Dairy] ON
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (1, 6234.0000, 34234.0000, 2344.0000, 23455.0000, 0.0000, 0.0000, 234.0000, 0.0000, 23.0000, 66267.0000, N'测试', 10, CAST(0xE73A0B00 AS Date))
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (2, 4656.0000, 53455.0000, 3455.0000, 34540.0000, 0.0000, 0.0000, 34.0000, 0.0000, 66.0000, 96106.0000, N'测试', 10, CAST(0xE63A0B00 AS Date))
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (3, 0.0000, 1500.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 134.0000, 1500.0000, N'', 4, CAST(0xE73A0B00 AS Date))
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (4, 421042.0000, 42370387.0000, 43378.0000, 525765.0000, 0.0000, 0.0000, 1024.0000, 0.0000, 377.0000, 43360572.0000, N'', 10, CAST(0xF13A0B00 AS Date))
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (5, 13437.0000, 2373133.0000, 134328.0000, 1537342.0000, 0.0000, 0.0000, 132.0000, 0.0000, 1374.0000, 4058240.0000, N'', 10, CAST(0xF33A0B00 AS Date))
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (6, 13.0000, 1231.0000, 1727.0000, 123723.0000, 0.0000, 0.0000, 1.1000, 0.0000, 10.0000, 126694.0000, N'GV吗的粉红色私有化就截图', 10, CAST(0xF33A0B00 AS Date))
INSERT [dbo].[TF_Dairy] ([ID], [Pos机会籍], [Pos机私教], [现金会籍], [现金私教], [微信会籍], [微信私教], [现金存水], [微信存水], [水吧余], [总金额], [备注], [经手人], [日期]) VALUES (7, 13434.0000, 13413434.0000, 46751276.0000, 103467.0000, 0.0000, 0.0000, 1243.0000, 0.0000, 1343.0000, 60281611.0000, N'肉沫', 10, CAST(0xF73A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[TF_Dairy] OFF
/****** Object:  Table [dbo].[TF_Config]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Config](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ConfigName] [varchar](50) NOT NULL,
	[ConfigValue] [varchar](2000) NULL,
	[ConfigType] [int] NOT NULL,
	[Remark] [varchar](500) NULL,
	[Extension] [int] NOT NULL,
	[Flag] [int] NOT NULL,
 CONSTRAINT [PK_TF_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Config] ON
INSERT [dbo].[TF_Config] ([ID], [ConfigName], [ConfigValue], [ConfigType], [Remark], [Extension], [Flag]) VALUES (1, N'在职', N'', 1, N'', 0, 1)
INSERT [dbo].[TF_Config] ([ID], [ConfigName], [ConfigValue], [ConfigType], [Remark], [Extension], [Flag]) VALUES (2, N'离职', N'', 1, N'', 1, 1)
INSERT [dbo].[TF_Config] ([ID], [ConfigName], [ConfigValue], [ConfigType], [Remark], [Extension], [Flag]) VALUES (3, N'停薪留职', N'', 1, N'', 2, 1)
SET IDENTITY_INSERT [dbo].[TF_Config] OFF
/****** Object:  Table [dbo].[TF_CardType]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_CardType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[卡种] [varchar](50) NOT NULL,
	[是否电子芯片] [bit] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_CardType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_CardType] ON
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (1, N'月卡', 0, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (2, N'双月卡', 1, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (3, N'季卡', 1, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (4, N'半年卡', 1, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (5, N'年卡', 1, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (6, N'两年卡', 1, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (7, N'三年卡', 1, N'')
INSERT [dbo].[TF_CardType] ([ID], [卡种], [是否电子芯片], [备注]) VALUES (8, N'商务卡', 1, N'')
SET IDENTITY_INSERT [dbo].[TF_CardType] OFF
/****** Object:  Table [dbo].[TF_Attachment]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Attachment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttachmentFilename] [varchar](255) NOT NULL,
	[Size] [bigint] NOT NULL,
	[Uploader] [int] NOT NULL,
	[UploadTime] [datetime] NOT NULL,
	[Flag] [int] NOT NULL,
 CONSTRAINT [PK_TF_Attachment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Attachment] ON
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (1, N'1\aaa.xls', 11776, 1, CAST(0x0000A59B01019442 AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (2, N'1\bbb.xls', 7168, 1, CAST(0x0000A59B0101A1C5 AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (3, N'1\会员须经前台处理事项.docx', 12142, 1, CAST(0x0000A59B0101A9B7 AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (4, N'1\奖励单.docx', 11581, 1, CAST(0x0000A59B01079A39 AS DateTime), 3)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (5, N'1\4楼平面图.xps', 969897, 1, CAST(0x0000A59B0107A46F AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (6, N'1\Logo表格.xls', 1796608, 1, CAST(0x0000A59B0107AD7D AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (7, N'1\测试.ppt', 10752, 1, CAST(0x0000A59B010EDDAE AS DateTime), 2)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (8, N'1\工作交接20150203.docx', 51413, 1, CAST(0x0000A59B011187E0 AS DateTime), 1)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (9, N'1\鼎峰时尚健身中心活动物料报价清单.xls', 26112, 1, CAST(0x0000A59C01609A2F AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (11, N'4\奖励单.docx', 11581, 4, CAST(0x0000A59E01855596 AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (12, N'1\东莞市音乐家协会会员申请表.doc', 76288, 1, CAST(0x0000A5AB013A4E5E AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (13, N'4\消防安全巡查表.xlsx', 11859, 4, CAST(0x0000A5AB013E4282 AS DateTime), 1)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (14, N'4\灭火和应急疏散预案.docx', 15522, 4, CAST(0x0000A5AB014F06A3 AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (15, N'1\20140620150058.bmp', 304182, 1, CAST(0x0000A5AC010C3F33 AS DateTime), 0)
INSERT [dbo].[TF_Attachment] ([ID], [AttachmentFilename], [Size], [Uploader], [UploadTime], [Flag]) VALUES (16, N'4\20150825100313.bmp', 304182, 4, CAST(0x0000A5AC01114CDF AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TF_Attachment] OFF
/****** Object:  Table [dbo].[TF_Alert]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Alert](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[提醒项目] [varchar](50) NOT NULL,
	[提醒时间] [datetime] NOT NULL,
	[提醒方式] [int] NOT NULL,
	[提醒对象] [varchar](50) NOT NULL,
	[Flag] [int] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Alert] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Alert] ON
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (1, N'测试', CAST(0x0000A58101499700 AS DateTime), 0, N'1,2', 1, NULL)
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (2, N'请假审批流程-160124211016', CAST(0x0000A597015CE4CC AS DateTime), 3, N'', 0, N'6')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (3, N'请假审批流程-160124211016', CAST(0x0000A597015CE4CC AS DateTime), 4, N'2', 0, N'')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (4, N'请假审批流程-160125161434', CAST(0x0000A598010BAC38 AS DateTime), 3, N'', 0, N'7')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (5, N'请假审批流程-160125161434', CAST(0x0000A598010BAC38 AS DateTime), 4, N'2', 0, N'')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (6, N'请假审批流程-160125190126', CAST(0x0000A59801398234 AS DateTime), 3, N'', 0, N'8')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (7, N'请假审批流程-160125190126', CAST(0x0000A59801398234 AS DateTime), 4, N'2', 0, N'')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (8, N'请假审批流程-160125220049', CAST(0x0000A598016AC5EC AS DateTime), 3, N'', 0, N'9')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (9, N'请假审批流程-160125220049', CAST(0x0000A598016AC5EC AS DateTime), 4, N'2', 0, N'')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (10, N'请假审批流程-160127141404', CAST(0x0000A59A00EA94BC AS DateTime), 3, N'', 0, N'10')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (11, N'请假审批流程-160127141404', CAST(0x0000A59A00EA94BC AS DateTime), 4, N'2', 0, N'')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (12, N'申公豹请假单(请假审批流程)', CAST(0x0000A59A00F54D44 AS DateTime), 3, N'System.Collections.Generic.List`1[System.String]', 0, N'11')
INSERT [dbo].[TF_Alert] ([ID], [提醒项目], [提醒时间], [提醒方式], [提醒对象], [Flag], [备注]) VALUES (13, N'申公豹请假单(请假审批流程)', CAST(0x0000A59A00F54D44 AS DateTime), 4, N'System.Collections.Generic.List`1[System.String]', 0, N'')
SET IDENTITY_INSERT [dbo].[TF_Alert] OFF
/****** Object:  Table [dbo].[TF_Action]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Action](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FormName] [varchar](50) NULL,
	[ControlName] [varchar](50) NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Action] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Action] ON
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (1, N'编辑会员', N'MainForm', N'编辑会员ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (4, N'查询会员', N'MainForm', N'查询会员ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (5, N'导入会员', N'MainForm', N'导入会员ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (6, N'导出会员', N'MemberForm', N'打印Button', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (7, N'短信平台', N'MainForm', N'短信平台ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (8, N'编辑员工', N'MainForm', N'编辑员工ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (9, N'查询员工', N'MainForm', N'查询员工ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (10, N'会籍卡种', N'MainForm', N'会籍卡种ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (11, N'流水账', N'MainForm', N'流水账ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (12, N'流水明细', N'MainForm', N'流水明细ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (13, N'出库登记', N'MainForm', N'出库登记ToolStripMenuItem', N'123')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (14, N'回访登记', N'MainForm', N'回访登记ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (15, N'续卡登记', N'MainForm', N'续卡登记ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (16, N'入库', N'MainForm', N'入库ToolStripMenuItem', N'宝矿力')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (17, N'出库', N'MainForm', N'出库ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (18, N'库存查询', N'MainForm', N'库存查询ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (19, N'报销明细', N'MainForm', N'报销明细ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (20, N'产品维护', N'MainForm', N'产品维护ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (21, N'资产维护', N'MainForm', N'资产维护ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (22, N'提醒', N'MainForm', N'提醒ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (23, N'产品类型', N'MainForm', N'产品类型ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (24, N'私教登记', N'MainForm', N'私教登记ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (25, N'工作计划', N'MainForm', N'工作计划ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (26, N'工作日报', N'MainForm', N'工作日报ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (27, N'表单管理', N'MainForm', N'表单管理ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (28, N'表单类型管理', N'MainForm', N'表单类型管理ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (29, N'回访类型管理', N'MainForm', N'回访类型管理ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (30, N'回访结果管理', N'MainForm', N'回访结果管理ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (31, N'导出员工', N'StaffForm', N'打印Button', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (32, N'导出流水账', N'FinanceForm', N'打印Button', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (33, N'导出资产', N'PropertyForm', N'打印Button', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (34, N'私教查询', N'MainForm', N'私教查询ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (35, N'删除流水', N'FinanceForm', N'删除Button', N'财务信息禁止删除')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (36, N'员工状态', N'MainForm', N'员工状态ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (37, N'财务文档列表', N'MainForm', N'文档列表ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (38, N'前台文档列表', N'MainForm', N'文档列表ToolStripMenuItem1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (39, N'行政文档列表', N'MainForm', N'文档列表ToolStripMenuItem2', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (40, N'全部文档列表', N'MainForm', N'文档总览ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (41, N'财务新建文档', N'MainForm', N'新建文档ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (42, N'前台新建文档', N'MainForm', N'新建文档ToolStripMenuItem1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (43, N'行政新建文档', N'MainForm', N'新建文档ToolStripMenuItem2', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (45, N'每日业绩', N'MainForm', N'每日业绩ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (46, N'提醒编辑查询都可以', N'AlertForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (47, N'产品类型编辑查询都可以', N'ProductTypeForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (48, N'卡种编辑查询都可以', N'CardTypeForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (49, N'每日业绩编辑查询都可以', N'DairyForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (50, N'流水明细编辑查询都可以', N'FinanceDetailForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (51, N'流水账编辑查询都可以', N'FinanceForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (52, N'跟进编辑查询都可以', N'FollowupForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (53, N'跟进结果编辑查询都可以', N'FollowupResultForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (54, N'回访方式编辑查询都可以', N'FollowupTypeForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (55, N'表单模板编辑查询都可以', N'FormObjectForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (56, N'表单类型编辑查询都可以', N'FormTypeForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (57, N'产品和资产都允许入库', N'IncomeForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (58, N'产品和资产的库存都可以查看', N'InventoryForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (59, N'会员编辑和查询都可以', N'MemberForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (60, N'产品和资产都允许出库', N'OutcomeForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (61, N'私教编辑和查询都可以', N'PersonalTrainForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (62, N'产品编辑和查询都可以', N'ProductForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (63, N'资产编辑和查询都可以', N'PropertyForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (64, N'续卡编辑和查询都可以', N'RenewForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (65, N'员工状态编辑和查询都可以', N'StaffConditionForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (66, N'员工编辑和查询都可以', N'StaffForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (67, N'工作日报编辑和查询都可以', N'WorklogForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (68, N'工作计划编辑和查询都可以', N'WorkplanForm', N'tabControl1', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (70, N'充值', N'MainForm', N'充值ToolStripMenuItem', N'')
INSERT [dbo].[TF_Action] ([ID], [Name], [FormName], [ControlName], [Remark]) VALUES (71, N'会员账户', N'MainForm', N'会员账户ToolStripMenuItem', N'')
SET IDENTITY_INSERT [dbo].[TF_Action] OFF
/****** Object:  Table [dbo].[TaskStageTemplate]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskStageTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Executors] [varchar](500) NOT NULL,
	[Approvers] [varchar](500) NOT NULL,
 CONSTRAINT [PK_TaskStageTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TaskStageTemplate] ON
INSERT [dbo].[TaskStageTemplate] ([ID], [Name], [Executors], [Approvers]) VALUES (1, N'部门经理审批', N'System.Collections.Generic.List`1[System.String]', N'System.Collections.Generic.List`1[System.String]')
INSERT [dbo].[TaskStageTemplate] ([ID], [Name], [Executors], [Approvers]) VALUES (2, N'人力资源部意见', N'System.Collections.Generic.List`1[System.String]', N'System.Collections.Generic.List`1[System.String]')
INSERT [dbo].[TaskStageTemplate] ([ID], [Name], [Executors], [Approvers]) VALUES (3, N'总经理审批', N'System.Collections.Generic.List`1[System.String]', N'System.Collections.Generic.List`1[System.String]')
SET IDENTITY_INSERT [dbo].[TaskStageTemplate] OFF
/****** Object:  Table [dbo].[TaskStage]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskStage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TaskStatus] [int] NOT NULL,
	[TemplateID] [int] NOT NULL,
	[ActualExec] [varchar](50) NULL,
	[ExecTime] [datetime] NULL,
	[ActualAppr] [varchar](50) NULL,
	[ApprTime] [datetime] NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TaskStage] ON
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (2, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (3, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (4, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (5, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (6, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (7, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (8, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (9, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (10, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (11, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (12, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (13, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (14, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (15, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (16, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (17, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (18, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (19, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (20, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (21, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (22, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (23, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (24, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (25, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (26, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (27, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (28, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (29, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (30, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (31, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (32, N'部门经理审批', 0, 1, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (33, N'人力资源部意见', 0, 2, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[TaskStage] ([ID], [Name], [TaskStatus], [TemplateID], [ActualExec], [ExecTime], [ActualAppr], [ApprTime], [Remark]) VALUES (34, N'总经理审批', 0, 3, NULL, NULL, NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[TaskStage] OFF
/****** Object:  Table [dbo].[TaskInfo]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[FlowID] [int] NOT NULL,
	[Sponsor] [varchar](50) NULL,
	[Remark] [varchar](500) NULL,
 CONSTRAINT [PK_TaskInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TaskInfo] ON
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (1, 11, 0, N'kell', N'创建时间：2016-01-24 20:49:57')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (2, 11, 0, N'kell', N'创建时间：2016-01-24 20:50:39')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (3, 12, 3, N'kell', N'创建时间：2016-01-24 20:52:19')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (4, 13, 4, N'kell', N'创建时间：2016-01-24 20:58:03')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (5, 14, 5, N'kell', N'创建时间：2016-01-24 21:05:02')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (6, 15, 6, N'kell', N'创建时间：2016-01-24 21:10:16')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (7, 16, 7, N'kell', N'创建时间：2016-01-25 16:14:34')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (8, 17, 8, N'kell', N'创建时间：2016-01-25 19:01:26')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (9, 19, 9, N'kell', N'创建时间：2016-01-25 22:00:49')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (10, 20, 10, N'kell', N'创建时间：2016-01-27 14:14:04')
INSERT [dbo].[TaskInfo] ([ID], [EntityId], [FlowID], [Sponsor], [Remark]) VALUES (11, 21, 11, N'kell', N'创建时间：2016-01-27 14:53:07')
SET IDENTITY_INSERT [dbo].[TaskInfo] OFF
/****** Object:  Table [dbo].[FlowTemplate]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlowTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Stages] [varchar](500) NOT NULL,
 CONSTRAINT [PK_FlowTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FlowTemplate] ON
INSERT [dbo].[FlowTemplate] ([ID], [Name], [Stages]) VALUES (2, N'请假审批流程', N'1,2,3')
SET IDENTITY_INSERT [dbo].[FlowTemplate] OFF
/****** Object:  Table [dbo].[Flow]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CurrentIndex] [int] NOT NULL,
	[TemplateID] [int] NOT NULL,
	[Stages] [varchar](500) NOT NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_Flow] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Flow] ON
INSERT [dbo].[Flow] ([ID], [Name], [CurrentIndex], [TemplateID], [Stages], [Remark]) VALUES (6, N'请假审批流程-160124211016', 0, 2, N'17,18,19', N'')
INSERT [dbo].[Flow] ([ID], [Name], [CurrentIndex], [TemplateID], [Stages], [Remark]) VALUES (7, N'请假审批流程-160125161434', 0, 2, N'20,21,22', N'')
INSERT [dbo].[Flow] ([ID], [Name], [CurrentIndex], [TemplateID], [Stages], [Remark]) VALUES (8, N'请假审批流程-160125190126', 0, 2, N'23,24,25', N'')
INSERT [dbo].[Flow] ([ID], [Name], [CurrentIndex], [TemplateID], [Stages], [Remark]) VALUES (9, N'请假审批流程-160125220049', 0, 2, N'26,27,28', N'')
INSERT [dbo].[Flow] ([ID], [Name], [CurrentIndex], [TemplateID], [Stages], [Remark]) VALUES (10, N'请假审批流程-160127141404', 0, 2, N'29,30,31', N'')
INSERT [dbo].[Flow] ([ID], [Name], [CurrentIndex], [TemplateID], [Stages], [Remark]) VALUES (11, N'申公豹请假单(请假审批流程)', 0, 2, N'32,33,34', N'')
SET IDENTITY_INSERT [dbo].[Flow] OFF
/****** Object:  Table [dbo].[TF_Workplan]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Workplan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[销售] [int] NOT NULL,
	[日期] [date] NOT NULL,
	[带人数] [int] NOT NULL,
	[号码数] [int] NOT NULL,
	[成单数] [int] NOT NULL,
	[回访数] [int] NOT NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Workplan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Workplan] ON
INSERT [dbo].[TF_Workplan] ([ID], [销售], [日期], [带人数], [号码数], [成单数], [回访数], [备注]) VALUES (1, 3, CAST(0xF03A0B00 AS Date), 10, 10, 5, 2, N'')
INSERT [dbo].[TF_Workplan] ([ID], [销售], [日期], [带人数], [号码数], [成单数], [回访数], [备注]) VALUES (2, 3, CAST(0xF33A0B00 AS Date), 10, 10, 3, 2, N'举 结核杆菌好')
INSERT [dbo].[TF_Workplan] ([ID], [销售], [日期], [带人数], [号码数], [成单数], [回访数], [备注]) VALUES (3, 3, CAST(0xE03A0B00 AS Date), 5, 5, 1, 0, N'')
SET IDENTITY_INSERT [dbo].[TF_Workplan] OFF
/****** Object:  Table [dbo].[TF_Worklog]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TF_Worklog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[销售] [int] NOT NULL,
	[日期] [date] NOT NULL,
	[客户] [varchar](50) NOT NULL,
	[电话] [varchar](50) NOT NULL,
	[是否自访] [bit] NOT NULL,
	[是否老会员] [bit] NOT NULL,
	[是否电话拜访] [bit] NOT NULL,
	[性别] [bit] NOT NULL,
	[意向] [varchar](50) NULL,
	[住址] [varchar](50) NULL,
	[备注] [varchar](500) NULL,
 CONSTRAINT [PK_TF_Worklog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TF_Worklog] ON
INSERT [dbo].[TF_Worklog] ([ID], [销售], [日期], [客户], [电话], [是否自访], [是否老会员], [是否电话拜访], [性别], [意向], [住址], [备注]) VALUES (1, 6, CAST(0xEE3A0B00 AS Date), N'yy', N'123456', 1, 0, 0, 1, N'减肥', N'', N'')
INSERT [dbo].[TF_Worklog] ([ID], [销售], [日期], [客户], [电话], [是否自访], [是否老会员], [是否电话拜访], [性别], [意向], [住址], [备注]) VALUES (2, 3, CAST(0xF23A0B00 AS Date), N'65465', N'1231546546', 0, 0, 1, 1, N'6苦役和', N'lohan发', N'黑寡妇欧漂流记oh ')
SET IDENTITY_INSERT [dbo].[TF_Worklog] OFF
/****** Object:  View [dbo].[TF_View_Workplan]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Workplan]
AS
SELECT     dbo.TF_Staff.姓名 AS 销售, dbo.TF_Workplan.日期, dbo.TF_Workplan.带人数, dbo.TF_Workplan.号码数, dbo.TF_Workplan.成单数, dbo.TF_Workplan.回访数, 
                      dbo.TF_Workplan.备注
FROM         dbo.TF_Workplan INNER JOIN
                      dbo.TF_Staff ON dbo.TF_Workplan.销售 = dbo.TF_Staff.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Workplan"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 201
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 8
               Left = 373
               Bottom = 127
               Right = 534
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Workplan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Workplan'
GO
/****** Object:  View [dbo].[TF_View_Worklog]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Worklog]
AS
SELECT     dbo.TF_Staff.姓名 AS 销售, dbo.TF_Worklog.日期, dbo.TF_Worklog.客户, dbo.TF_Worklog.电话, (CASE WHEN dbo.TF_Worklog.是否自访 = 1 THEN '是' ELSE '否' END) 
                      AS 自访, (CASE WHEN dbo.TF_Worklog.是否老会员 = 1 THEN '是' ELSE '否' END) AS 老会员, 
                      (CASE WHEN dbo.TF_Worklog.是否电话拜访 = 1 THEN '是' ELSE '否' END) AS 电话拜访, (CASE WHEN dbo.TF_Worklog.性别 = 1 THEN '女' ELSE '男' END) AS 性别, 
                      dbo.TF_Worklog.意向, dbo.TF_Worklog.住址, dbo.TF_Worklog.备注
FROM         dbo.TF_Worklog INNER JOIN
                      dbo.TF_Staff ON dbo.TF_Worklog.销售 = dbo.TF_Staff.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[9] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Worklog"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 256
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 6
               Left = 400
               Bottom = 125
               Right = 561
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Worklog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Worklog'
GO
/****** Object:  View [dbo].[TF_View_Staff]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Staff]
AS
SELECT     dbo.TF_Staff.姓名, (CASE WHEN dbo.TF_Staff.性别 = 1 THEN '女' ELSE '男' END) AS 性别, dbo.TF_Depart.Name AS 部门, dbo.TF_StaffCondition.状态, 
                      dbo.TF_Staff.生日, dbo.TF_Staff.电话, dbo.TF_Staff.宿舍, dbo.TF_Staff.钥匙数, dbo.TF_Staff.工衣数, dbo.TF_Staff.工牌数, 
                      (CASE WHEN dbo.TF_Staff.是否全部回收 = 1 THEN '是' ELSE '否' END) AS 全部回收, dbo.TF_Staff.备注
FROM         dbo.TF_Staff LEFT OUTER JOIN
                      dbo.TF_StaffCondition ON dbo.TF_Staff.Condition = dbo.TF_StaffCondition.ID LEFT OUTER JOIN
                      dbo.TF_Depart ON dbo.TF_Staff.Depart = dbo.TF_Depart.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[5] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 276
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Depart"
            Begin Extent = 
               Top = 6
               Left = 417
               Bottom = 125
               Right = 559
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TF_StaffCondition"
            Begin Extent = 
               Top = 130
               Left = 416
               Bottom = 249
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Staff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Staff'
GO
/****** Object:  View [dbo].[TF_View_Renew]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Renew]
AS
SELECT     dbo.TF_Member.姓名 AS 会员, dbo.TF_CardType.卡种, dbo.TF_Renew.卡号, dbo.TF_Renew.续卡时间, dbo.TF_Staff.姓名 AS 经手人, dbo.TF_Renew.备注, 
                      (CASE WHEN dbo.TF_Member.性别 = 1 THEN '女' ELSE '男' END) AS 性别, dbo.TF_Member.电话
FROM         dbo.TF_Renew LEFT OUTER JOIN
                      dbo.TF_CardType ON dbo.TF_Renew.卡种 = dbo.TF_CardType.ID INNER JOIN
                      dbo.TF_Member ON dbo.TF_Renew.MemberID = dbo.TF_Member.ID INNER JOIN
                      dbo.TF_Staff ON dbo.TF_Renew.经手人 = dbo.TF_Staff.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[30] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Renew"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 214
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_CardType"
            Begin Extent = 
               Top = 68
               Left = 331
               Bottom = 187
               Right = 492
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Member"
            Begin Extent = 
               Top = 0
               Left = 596
               Bottom = 161
               Right = 738
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 150
               Left = 460
               Bottom = 269
               Right = 621
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Renew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Renew'
GO
/****** Object:  View [dbo].[TF_View_PropertyInventory]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_PropertyInventory]
AS
SELECT     dbo.TF_Property.名称, dbo.TF_Property.单位, dbo.TF_Inventory.数量, (CASE WHEN dbo.TF_Inventory.IsIncome = 1 THEN '入库' ELSE '出库' END) AS 动作, 
                      dbo.TF_Inventory.更新时间, dbo.TF_Inventory.备注
FROM         dbo.TF_Inventory INNER JOIN
                      dbo.TF_Property ON dbo.TF_Inventory.PID = dbo.TF_Property.ID AND dbo.TF_Inventory.IsProduct = 0
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Inventory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 193
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Property"
            Begin Extent = 
               Top = 5
               Left = 550
               Bottom = 176
               Right = 692
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_PropertyInventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_PropertyInventory'
GO
/****** Object:  View [dbo].[TF_View_PropertyIncome]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_PropertyIncome]
AS
SELECT     dbo.TF_Property.名称, dbo.TF_Property.单位, dbo.TF_Income.数量, dbo.TF_Income.实价, (CASE WHEN dbo.TF_Income.IsIncome = 1 THEN '进货' ELSE '出货' END) 
                      AS 动作, dbo.TF_Income.时间, dbo.TF_Income.经手人, dbo.TF_Income.备注
FROM         dbo.TF_Income INNER JOIN
                      dbo.TF_Property ON dbo.TF_Income.PID = dbo.TF_Property.ID AND dbo.TF_Income.IsProduct = 0
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Income"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 213
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Property"
            Begin Extent = 
               Top = 8
               Left = 427
               Bottom = 217
               Right = 569
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_PropertyIncome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_PropertyIncome'
GO
/****** Object:  View [dbo].[TF_View_ProductInventory]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_ProductInventory]
AS
SELECT     dbo.TF_Product.品名, dbo.TF_Product.进价, dbo.TF_Product.售价, dbo.TF_Product.单位, dbo.TF_Inventory.数量, 
                      (CASE WHEN dbo.TF_Inventory.IsIncome = 1 THEN '入库' ELSE '出库' END) AS 动作, dbo.TF_Inventory.更新时间, dbo.TF_Inventory.备注, 
                      dbo.TF_ProductType.类型 AS 种类
FROM         dbo.TF_Inventory INNER JOIN
                      dbo.TF_Product ON dbo.TF_Inventory.PID = dbo.TF_Product.ID AND dbo.TF_Inventory.IsProduct = 1 INNER JOIN
                      dbo.TF_ProductType ON dbo.TF_Product.种类 = dbo.TF_ProductType.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[15] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Inventory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 181
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Product"
            Begin Extent = 
               Top = 6
               Left = 441
               Bottom = 226
               Right = 583
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_ProductType"
            Begin Extent = 
               Top = 6
               Left = 640
               Bottom = 125
               Right = 782
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_ProductInventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_ProductInventory'
GO
/****** Object:  View [dbo].[TF_View_ProductIncome]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_ProductIncome]
AS
SELECT     dbo.TF_Product.品名, dbo.TF_Product.单位, dbo.TF_Income.数量, dbo.TF_Income.实价, dbo.TF_Income.时间, 
                      (CASE WHEN dbo.TF_Income.IsIncome = 1 THEN '进货' ELSE '出货' END) AS 动作, dbo.TF_Income.经手人, dbo.TF_Income.备注
FROM         dbo.TF_Income INNER JOIN
                      dbo.TF_Product ON dbo.TF_Income.PID = dbo.TF_Product.ID AND dbo.TF_Income.IsProduct = 1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Income"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Product"
            Begin Extent = 
               Top = 5
               Left = 471
               Bottom = 215
               Right = 613
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_ProductIncome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_ProductIncome'
GO
/****** Object:  View [dbo].[TF_View_Product]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Product]
AS
SELECT     dbo.TF_Product.品名, dbo.TF_ProductType.类型 AS 种类, dbo.TF_Product.单位, dbo.TF_Product.进价, dbo.TF_Product.售价, dbo.TF_Product.厂家, 
                      dbo.TF_Product.姓名, dbo.TF_Product.电话, dbo.TF_Product.地址, dbo.TF_Product.备注
FROM         dbo.TF_Product INNER JOIN
                      dbo.TF_ProductType ON dbo.TF_Product.种类 = dbo.TF_ProductType.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 204
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "TF_ProductType"
            Begin Extent = 
               Top = 6
               Left = 286
               Bottom = 125
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Product'
GO
/****** Object:  View [dbo].[TF_View_PersonalTrain]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_PersonalTrain]
AS
SELECT     dbo.TF_PersonalTrain.私教项目, dbo.TF_Member.姓名 AS 会员, dbo.TF_Staff.姓名 AS 教练, dbo.TF_PersonalTrain.开始日期, dbo.TF_PersonalTrain.结束日期, 
                      dbo.TF_PersonalTrain.次数, dbo.TF_PersonalTrain.备注, (CASE WHEN dbo.TF_Member.性别 = 1 THEN '女' ELSE '男' END) AS 性别
FROM         dbo.TF_PersonalTrain INNER JOIN
                      dbo.TF_Member ON dbo.TF_PersonalTrain.MemberID = dbo.TF_Member.ID INNER JOIN
                      dbo.TF_Staff ON dbo.TF_PersonalTrain.教练 = dbo.TF_Staff.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_PersonalTrain"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 198
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Member"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 186
               Right = 360
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 29
               Left = 521
               Bottom = 148
               Right = 682
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_PersonalTrain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_PersonalTrain'
GO
/****** Object:  View [dbo].[TF_View_MoneyRecord]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_MoneyRecord]
AS
SELECT     dbo.TF_MemberMoney.会员姓名, dbo.TF_MemberMoney.会员电话, dbo.TF_MoneyRecord.发生金额, 
                      (CASE WHEN dbo.TF_MoneyRecord.是否充值 = 1 THEN '充值' ELSE '消费' END) AS 动作, dbo.TF_MoneyRecord.操作人, dbo.TF_MoneyRecord.发生时间
FROM         dbo.TF_MoneyRecord INNER JOIN
                      dbo.TF_MemberMoney ON dbo.TF_MoneyRecord.MID = dbo.TF_MemberMoney.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_MoneyRecord"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 186
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_MemberMoney"
            Begin Extent = 
               Top = 7
               Left = 488
               Bottom = 159
               Right = 630
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_MoneyRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_MoneyRecord'
GO
/****** Object:  View [dbo].[TF_View_Member]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Member]
AS
SELECT     dbo.TF_Member.ID, dbo.TF_Member.姓名, dbo.TF_CardType.卡种, dbo.TF_Member.卡号, dbo.TF_Member.开卡日, dbo.TF_Member.到期日, 
                      (CASE WHEN dbo.TF_Member.性别 = 1 THEN '女' ELSE '男' END) AS 性别, dbo.TF_Member.生日, dbo.TF_Member.电话, dbo.TF_Member.住址, 
                      dbo.TF_Member.备注
FROM         dbo.TF_Member LEFT OUTER JOIN
                      dbo.TF_CardType ON dbo.TF_Member.卡种 = dbo.TF_CardType.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Member"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 203
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TF_CardType"
            Begin Extent = 
               Top = 6
               Left = 403
               Bottom = 125
               Right = 564
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Member'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Member'
GO
/****** Object:  View [dbo].[TF_View_Followup]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Followup]
AS
SELECT     dbo.TF_Member.姓名 AS 会员, dbo.TF_FollowupType.方式 AS 回访方式, dbo.TF_Staff.姓名 AS 跟进人, dbo.TF_FollowupResult.结果 AS 跟进结果, 
                      dbo.TF_Followup.跟进时间, dbo.TF_Followup.备注, (CASE WHEN dbo.TF_Member.性别 = 1 THEN '女' ELSE '男' END) AS 性别
FROM         dbo.TF_Followup INNER JOIN
                      dbo.TF_Member ON dbo.TF_Followup.MemberID = dbo.TF_Member.ID INNER JOIN
                      dbo.TF_FollowupType ON dbo.TF_Followup.跟进方式 = dbo.TF_FollowupType.ID INNER JOIN
                      dbo.TF_Staff ON dbo.TF_Followup.跟进人 = dbo.TF_Staff.ID INNER JOIN
                      dbo.TF_FollowupResult ON dbo.TF_Followup.跟进结果 = dbo.TF_FollowupResult.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[29] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Followup"
            Begin Extent = 
               Top = 6
               Left = 4
               Bottom = 172
               Right = 152
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Member"
            Begin Extent = 
               Top = 6
               Left = 777
               Bottom = 203
               Right = 919
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TF_FollowupType"
            Begin Extent = 
               Top = 98
               Left = 371
               Bottom = 217
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 44
               Left = 597
               Bottom = 310
               Right = 758
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TF_FollowupResult"
            Begin Extent = 
               Top = 160
               Left = 188
               Bottom = 281
               Right = 372
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Followup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Followup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Followup'
GO
/****** Object:  View [dbo].[TF_View_FinanceDetail]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_FinanceDetail]
AS
SELECT     dbo.TF_FinanceDetail.ID, dbo.TF_FinanceDetail.项目, dbo.TF_FinanceDetail.金额, (CASE WHEN dbo.TF_FinanceDetail.是否进账 = 1 THEN '是' ELSE '否' END) 
                      AS 进账, dbo.TF_Staff.姓名 AS 责任人, dbo.TF_FinanceDetail.提交时间, dbo.TF_FinanceDetail.备注, 
                      (CASE WHEN dbo.TF_FinanceDetail.Flag = 1 THEN '是' ELSE '否' END) AS 已报销
FROM         dbo.TF_FinanceDetail INNER JOIN
                      dbo.TF_Staff ON dbo.TF_FinanceDetail.责任人 = dbo.TF_Staff.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[23] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_FinanceDetail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 212
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 9
               Left = 425
               Bottom = 263
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_FinanceDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_FinanceDetail'
GO
/****** Object:  View [dbo].[TF_View_Finance]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Finance]
AS
SELECT     ID, 日期, 项目, 金额, (CASE WHEN 是否进账 = 1 THEN '是' ELSE '否' END) AS 进账, 余款, 经手人, 接收人
FROM         dbo.TF_Finance
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[30] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Finance"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 215
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Finance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Finance'
GO
/****** Object:  View [dbo].[TF_View_Dairy]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Dairy]
AS
SELECT     dbo.TF_Dairy.Pos机会籍, dbo.TF_Dairy.Pos机私教, dbo.TF_Dairy.现金会籍, dbo.TF_Dairy.现金私教, dbo.TF_Dairy.微信会籍, dbo.TF_Dairy.微信私教, 
                      dbo.TF_Dairy.现金存水, dbo.TF_Dairy.微信存水, dbo.TF_Dairy.水吧余, dbo.TF_Dairy.总金额, dbo.TF_Dairy.备注, dbo.TF_Staff.姓名 AS 经手人, 
                      dbo.TF_Dairy.日期
FROM         dbo.TF_Dairy INNER JOIN
                      dbo.TF_Staff ON dbo.TF_Dairy.经手人 = dbo.TF_Staff.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[27] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Dairy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 179
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "TF_Staff"
            Begin Extent = 
               Top = 18
               Left = 441
               Bottom = 179
               Right = 602
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Dairy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Dairy'
GO
/****** Object:  View [dbo].[TF_View_Alert]    Script Date: 06/11/2016 15:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TF_View_Alert]
AS
SELECT     提醒项目, 提醒时间, 提醒对象, 
                      (CASE WHEN dbo.TF_Alert.提醒方式 = 0 THEN '系统提示' WHEN dbo.TF_Alert.提醒方式 = 1 THEN '员工短信' WHEN dbo.TF_Alert.提醒方式 = 2 THEN '会员短信' END) 
                      AS 提醒方式, 备注
FROM         dbo.TF_Alert
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TF_Alert"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 170
               Right = 185
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Alert'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TF_View_Alert'
GO
/****** Object:  Default [DF_TF_User_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_User] ADD  CONSTRAINT [DF_TF_User_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_SystemLog_ErrTime]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_SystemLog] ADD  CONSTRAINT [DF_TF_SystemLog_ErrTime]  DEFAULT (getdate()) FOR [LogTime]
GO
/****** Object:  Default [DF_TF_StaffStatus_是否在职]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_StaffCondition] ADD  CONSTRAINT [DF_TF_StaffStatus_是否在职]  DEFAULT ((1)) FOR [是否在职]
GO
/****** Object:  Default [DF_TF_Staff_Depart]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_TF_Staff_Depart]  DEFAULT ((0)) FOR [Depart]
GO
/****** Object:  Default [DF_TF_Staff_状态]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_TF_Staff_状态]  DEFAULT ((0)) FOR [Condition]
GO
/****** Object:  Default [DF_TF_Staff_性别]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_TF_Staff_性别]  DEFAULT ((0)) FOR [性别]
GO
/****** Object:  Default [DF_Table_1_是否持钥匙]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_Table_1_是否持钥匙]  DEFAULT ((0)) FOR [钥匙数]
GO
/****** Object:  Default [DF_TF_Staff_工衣数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_TF_Staff_工衣数]  DEFAULT ((0)) FOR [工衣数]
GO
/****** Object:  Default [DF_TF_Staff_工牌数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_TF_Staff_工牌数]  DEFAULT ((0)) FOR [工牌数]
GO
/****** Object:  Default [DF_Table_1_是否回收]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Staff] ADD  CONSTRAINT [DF_Table_1_是否回收]  DEFAULT ((0)) FOR [是否全部回收]
GO
/****** Object:  Default [DF_TF_Role_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Role] ADD  CONSTRAINT [DF_TF_Role_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Renew_MemberID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Renew] ADD  CONSTRAINT [DF_TF_Renew_MemberID]  DEFAULT ((0)) FOR [MemberID]
GO
/****** Object:  Default [DF_TF_Renew_CardType]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Renew] ADD  CONSTRAINT [DF_TF_Renew_CardType]  DEFAULT ((0)) FOR [卡种]
GO
/****** Object:  Default [DF_TF_Property_价格]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Property] ADD  CONSTRAINT [DF_TF_Property_价格]  DEFAULT ((0)) FOR [价格]
GO
/****** Object:  Default [DF_TF_AlertType_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_ProductType] ADD  CONSTRAINT [DF_TF_AlertType_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Product_种类]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Product] ADD  CONSTRAINT [DF_TF_Product_种类]  DEFAULT ((0)) FOR [种类]
GO
/****** Object:  Default [DF_Table_1_进货价]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Product] ADD  CONSTRAINT [DF_Table_1_进货价]  DEFAULT ((0)) FOR [进价]
GO
/****** Object:  Default [DF_Table_1_出售价]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Product] ADD  CONSTRAINT [DF_Table_1_出售价]  DEFAULT ((0)) FOR [售价]
GO
/****** Object:  Default [DF_TF_PersonalTrain_MemberID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_PersonalTrain] ADD  CONSTRAINT [DF_TF_PersonalTrain_MemberID]  DEFAULT ((0)) FOR [MemberID]
GO
/****** Object:  Default [DF_TF_PersonalTrain_次数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_PersonalTrain] ADD  CONSTRAINT [DF_TF_PersonalTrain_次数]  DEFAULT ((0)) FOR [次数]
GO
/****** Object:  Default [DF_TF_PersonalTrain_SaleTime]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_PersonalTrain] ADD  CONSTRAINT [DF_TF_PersonalTrain_SaleTime]  DEFAULT (getdate()) FOR [SaleTime]
GO
/****** Object:  Default [DF_TF_Permission_IsExcept]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Permission] ADD  CONSTRAINT [DF_TF_Permission_IsExcept]  DEFAULT ((0)) FOR [IsExcept]
GO
/****** Object:  Default [DF_TF_Permission_权限]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Permission] ADD  CONSTRAINT [DF_TF_Permission_权限]  DEFAULT ((0)) FOR [TheModule]
GO
/****** Object:  Default [DF_TF_Permission_TheAction]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Permission] ADD  CONSTRAINT [DF_TF_Permission_TheAction]  DEFAULT ((0)) FOR [TheAction]
GO
/****** Object:  Default [DF_TF_MoneyRecord_MID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_MoneyRecord] ADD  CONSTRAINT [DF_TF_MoneyRecord_MID]  DEFAULT ((0)) FOR [MID]
GO
/****** Object:  Default [DF_TF_MoneyRecord_发生金额]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_MoneyRecord] ADD  CONSTRAINT [DF_TF_MoneyRecord_发生金额]  DEFAULT ((0)) FOR [发生金额]
GO
/****** Object:  Default [DF_TF_MoneyRecord_是否充值]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_MoneyRecord] ADD  CONSTRAINT [DF_TF_MoneyRecord_是否充值]  DEFAULT ((0)) FOR [是否充值]
GO
/****** Object:  Default [DF_TF_MoneyRecord_发生时间]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_MoneyRecord] ADD  CONSTRAINT [DF_TF_MoneyRecord_发生时间]  DEFAULT (getdate()) FOR [发生时间]
GO
/****** Object:  Default [DF_TF_MemberMoney_账户余额]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_MemberMoney] ADD  CONSTRAINT [DF_TF_MemberMoney_账户余额]  DEFAULT ((0)) FOR [账户余额]
GO
/****** Object:  Default [DF_TF_Member_CardType]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Member] ADD  CONSTRAINT [DF_TF_Member_CardType]  DEFAULT ((0)) FOR [卡种]
GO
/****** Object:  Default [DF_TF_Member_性别]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Member] ADD  CONSTRAINT [DF_TF_Member_性别]  DEFAULT ((0)) FOR [性别]
GO
/****** Object:  Default [DF_TF_Member_开卡日]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Member] ADD  CONSTRAINT [DF_TF_Member_开卡日]  DEFAULT (getdate()) FOR [开卡日]
GO
/****** Object:  Default [DF_TF_Inventory_PID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Inventory] ADD  CONSTRAINT [DF_TF_Inventory_PID]  DEFAULT ((0)) FOR [PID]
GO
/****** Object:  Default [DF_TF_Inventory_IsProduct]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Inventory] ADD  CONSTRAINT [DF_TF_Inventory_IsProduct]  DEFAULT ((0)) FOR [IsProduct]
GO
/****** Object:  Default [DF_TF_Inventory_IsIncome]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Inventory] ADD  CONSTRAINT [DF_TF_Inventory_IsIncome]  DEFAULT ((0)) FOR [IsIncome]
GO
/****** Object:  Default [DF_TF_Inventory_数量]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Inventory] ADD  CONSTRAINT [DF_TF_Inventory_数量]  DEFAULT ((0)) FOR [数量]
GO
/****** Object:  Default [DF_TF_Inventory_时间]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Inventory] ADD  CONSTRAINT [DF_TF_Inventory_时间]  DEFAULT (getdate()) FOR [更新时间]
GO
/****** Object:  Default [DF_TF_Income_PID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Income] ADD  CONSTRAINT [DF_TF_Income_PID]  DEFAULT ((0)) FOR [PID]
GO
/****** Object:  Default [DF_TF_Income_IsProduct]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Income] ADD  CONSTRAINT [DF_TF_Income_IsProduct]  DEFAULT ((0)) FOR [IsProduct]
GO
/****** Object:  Default [DF_TF_Income_是否进货]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Income] ADD  CONSTRAINT [DF_TF_Income_是否进货]  DEFAULT ((0)) FOR [IsIncome]
GO
/****** Object:  Default [DF_TF_Income_数量]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Income] ADD  CONSTRAINT [DF_TF_Income_数量]  DEFAULT ((0)) FOR [数量]
GO
/****** Object:  Default [DF_TF_Income_实价]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Income] ADD  CONSTRAINT [DF_TF_Income_实价]  DEFAULT ((0)) FOR [实价]
GO
/****** Object:  Default [DF_Table_1_时间]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Income] ADD  CONSTRAINT [DF_Table_1_时间]  DEFAULT (getdate()) FOR [时间]
GO
/****** Object:  Default [DF_TF_FormType_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FormType] ADD  CONSTRAINT [DF_TF_FormType_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Form_FormType]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FormObject] ADD  CONSTRAINT [DF_TF_Form_FormType]  DEFAULT ((0)) FOR [FormType]
GO
/****** Object:  Default [DF_TF_FormItem_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FormItem] ADD  CONSTRAINT [DF_TF_FormItem_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_FollowupType_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FollowupType] ADD  CONSTRAINT [DF_TF_FollowupType_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_FollowupResult_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FollowupResult] ADD  CONSTRAINT [DF_TF_FollowupResult_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Followup_MemberID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Followup] ADD  CONSTRAINT [DF_TF_Followup_MemberID]  DEFAULT ((0)) FOR [MemberID]
GO
/****** Object:  Default [DF_TF_Followup_跟进方式]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Followup] ADD  CONSTRAINT [DF_TF_Followup_跟进方式]  DEFAULT ((0)) FOR [跟进方式]
GO
/****** Object:  Default [DF_TF_Followup_跟进人]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Followup] ADD  CONSTRAINT [DF_TF_Followup_跟进人]  DEFAULT ((0)) FOR [跟进人]
GO
/****** Object:  Default [DF_TF_Followup_跟进时间]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Followup] ADD  CONSTRAINT [DF_TF_Followup_跟进时间]  DEFAULT (getdate()) FOR [跟进时间]
GO
/****** Object:  Default [DF_TF_Followup_跟进结果]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Followup] ADD  CONSTRAINT [DF_TF_Followup_跟进结果]  DEFAULT ((0)) FOR [跟进结果]
GO
/****** Object:  Default [DF_TF_FinanceDetail_金额]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FinanceDetail] ADD  CONSTRAINT [DF_TF_FinanceDetail_金额]  DEFAULT ((0)) FOR [金额]
GO
/****** Object:  Default [DF_TF_FinanceDetail_是否进账]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FinanceDetail] ADD  CONSTRAINT [DF_TF_FinanceDetail_是否进账]  DEFAULT ((0)) FOR [是否进账]
GO
/****** Object:  Default [DF_TF_FinanceDetail_责任人]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FinanceDetail] ADD  CONSTRAINT [DF_TF_FinanceDetail_责任人]  DEFAULT ((0)) FOR [责任人]
GO
/****** Object:  Default [DF_TF_FinanceDetail_时间]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FinanceDetail] ADD  CONSTRAINT [DF_TF_FinanceDetail_时间]  DEFAULT (getdate()) FOR [提交时间]
GO
/****** Object:  Default [DF_TF_FinanceDetail_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_FinanceDetail] ADD  CONSTRAINT [DF_TF_FinanceDetail_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Finance_日期]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Finance] ADD  CONSTRAINT [DF_TF_Finance_日期]  DEFAULT (getdate()) FOR [日期]
GO
/****** Object:  Default [DF_TF_Finance_是否进账]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Finance] ADD  CONSTRAINT [DF_TF_Finance_是否进账]  DEFAULT ((0)) FOR [是否进账]
GO
/****** Object:  Default [DF_TF_Finance_金额]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Finance] ADD  CONSTRAINT [DF_TF_Finance_金额]  DEFAULT ((0)) FOR [金额]
GO
/****** Object:  Default [DF_TF_Finance_余款]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Finance] ADD  CONSTRAINT [DF_TF_Finance_余款]  DEFAULT ((0)) FOR [余款]
GO
/****** Object:  Default [DF_TF_DocObject_FormID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_DocObject] ADD  CONSTRAINT [DF_TF_DocObject_FormID]  DEFAULT ((0)) FOR [FormID]
GO
/****** Object:  Default [DF_TF_DocObject_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_DocObject] ADD  CONSTRAINT [DF_TF_DocObject_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Depart_ParentID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Depart] ADD  CONSTRAINT [DF_TF_Depart_ParentID]  DEFAULT ((0)) FOR [Parent]
GO
/****** Object:  Default [DF_TF_Depart_Manager]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Depart] ADD  CONSTRAINT [DF_TF_Depart_Manager]  DEFAULT ((0)) FOR [Manager]
GO
/****** Object:  Default [DF_Table_1_PosMember]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_PosMember]  DEFAULT ((0)) FOR [Pos机会籍]
GO
/****** Object:  Default [DF_Table_1_PosPersonal]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_PosPersonal]  DEFAULT ((0)) FOR [Pos机私教]
GO
/****** Object:  Default [DF_Table_1_CashMember]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_CashMember]  DEFAULT ((0)) FOR [现金会籍]
GO
/****** Object:  Default [DF_Table_1_CashPersonal]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_CashPersonal]  DEFAULT ((0)) FOR [现金私教]
GO
/****** Object:  Default [DF_TF_Dairy_微信会籍]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_TF_Dairy_微信会籍]  DEFAULT ((0)) FOR [微信会籍]
GO
/****** Object:  Default [DF_TF_Dairy_微信私教]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_TF_Dairy_微信私教]  DEFAULT ((0)) FOR [微信私教]
GO
/****** Object:  Default [DF_Table_1_SaveWater]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_SaveWater]  DEFAULT ((0)) FOR [现金存水]
GO
/****** Object:  Default [DF_TF_Dairy_微信存水]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_TF_Dairy_微信存水]  DEFAULT ((0)) FOR [微信存水]
GO
/****** Object:  Default [DF_Table_1_WaterBar]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_WaterBar]  DEFAULT ((0)) FOR [水吧余]
GO
/****** Object:  Default [DF_Table_1_AllMoney]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_Table_1_AllMoney]  DEFAULT ((0)) FOR [总金额]
GO
/****** Object:  Default [DF_TF_Dairy_经手人]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_TF_Dairy_经手人]  DEFAULT ((0)) FOR [经手人]
GO
/****** Object:  Default [DF_TF_Dairy_日期]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Dairy] ADD  CONSTRAINT [DF_TF_Dairy_日期]  DEFAULT (getdate()) FOR [日期]
GO
/****** Object:  Default [DF_TF_Config_ConfigType]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Config] ADD  CONSTRAINT [DF_TF_Config_ConfigType]  DEFAULT ((0)) FOR [ConfigType]
GO
/****** Object:  Default [DF_TF_Config_Extension]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Config] ADD  CONSTRAINT [DF_TF_Config_Extension]  DEFAULT ((0)) FOR [Extension]
GO
/****** Object:  Default [DF_TF_Config_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Config] ADD  CONSTRAINT [DF_TF_Config_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_CardType_是否电子芯片]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_CardType] ADD  CONSTRAINT [DF_TF_CardType_是否电子芯片]  DEFAULT ((1)) FOR [是否电子芯片]
GO
/****** Object:  Default [DF_TF_Attachment_Size]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Attachment] ADD  CONSTRAINT [DF_TF_Attachment_Size]  DEFAULT ((0)) FOR [Size]
GO
/****** Object:  Default [DF_TF_Attachment_Uploader]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Attachment] ADD  CONSTRAINT [DF_TF_Attachment_Uploader]  DEFAULT ((0)) FOR [Uploader]
GO
/****** Object:  Default [DF_TF_Attachment_UploadTime]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Attachment] ADD  CONSTRAINT [DF_TF_Attachment_UploadTime]  DEFAULT (getdate()) FOR [UploadTime]
GO
/****** Object:  Default [DF_TF_Attachment_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Attachment] ADD  CONSTRAINT [DF_TF_Attachment_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TF_Alert_提醒方式]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Alert] ADD  CONSTRAINT [DF_TF_Alert_提醒方式]  DEFAULT ((0)) FOR [提醒方式]
GO
/****** Object:  Default [DF_TF_Alert_Flag]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Alert] ADD  CONSTRAINT [DF_TF_Alert_Flag]  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_TaskStage_Status]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TaskStage] ADD  CONSTRAINT [DF_TaskStage_Status]  DEFAULT ((0)) FOR [TaskStatus]
GO
/****** Object:  Default [DF_TaskStage_TemplateID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TaskStage] ADD  CONSTRAINT [DF_TaskStage_TemplateID]  DEFAULT ((0)) FOR [TemplateID]
GO
/****** Object:  Default [DF_TaskInfo_EntityId]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TaskInfo] ADD  CONSTRAINT [DF_TaskInfo_EntityId]  DEFAULT ((0)) FOR [EntityId]
GO
/****** Object:  Default [DF_TaskInfo_FlowID]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TaskInfo] ADD  CONSTRAINT [DF_TaskInfo_FlowID]  DEFAULT ((0)) FOR [FlowID]
GO
/****** Object:  Default [DF_Flow_CurrentIndex]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[Flow] ADD  CONSTRAINT [DF_Flow_CurrentIndex]  DEFAULT ((-1)) FOR [CurrentIndex]
GO
/****** Object:  Default [DF_TF_Workplan_销售]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Workplan] ADD  CONSTRAINT [DF_TF_Workplan_销售]  DEFAULT ((0)) FOR [销售]
GO
/****** Object:  Default [DF_TF_Workplan_带人数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Workplan] ADD  CONSTRAINT [DF_TF_Workplan_带人数]  DEFAULT ((0)) FOR [带人数]
GO
/****** Object:  Default [DF_TF_Workplan_号码数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Workplan] ADD  CONSTRAINT [DF_TF_Workplan_号码数]  DEFAULT ((0)) FOR [号码数]
GO
/****** Object:  Default [DF_TF_Workplan_成单数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Workplan] ADD  CONSTRAINT [DF_TF_Workplan_成单数]  DEFAULT ((0)) FOR [成单数]
GO
/****** Object:  Default [DF_TF_Workplan_回访数]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Workplan] ADD  CONSTRAINT [DF_TF_Workplan_回访数]  DEFAULT ((0)) FOR [回访数]
GO
/****** Object:  Default [DF_TF_Worklog_销售]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Worklog] ADD  CONSTRAINT [DF_TF_Worklog_销售]  DEFAULT ((0)) FOR [销售]
GO
/****** Object:  Default [DF_TF_Worklog_是否自访]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Worklog] ADD  CONSTRAINT [DF_TF_Worklog_是否自访]  DEFAULT ((0)) FOR [是否自访]
GO
/****** Object:  Default [DF_TF_Worklog_是否老会员]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Worklog] ADD  CONSTRAINT [DF_TF_Worklog_是否老会员]  DEFAULT ((0)) FOR [是否老会员]
GO
/****** Object:  Default [DF_TF_Worklog_是否电话拜访]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Worklog] ADD  CONSTRAINT [DF_TF_Worklog_是否电话拜访]  DEFAULT ((0)) FOR [是否电话拜访]
GO
/****** Object:  Default [DF_TF_Worklog_性别]    Script Date: 06/11/2016 15:29:18 ******/
ALTER TABLE [dbo].[TF_Worklog] ADD  CONSTRAINT [DF_TF_Worklog_性别]  DEFAULT ((0)) FOR [性别]
GO
