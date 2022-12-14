USE [master]
GO
/****** Object:  Database [PRJ301_Assignment]    Script Date: 08/11/2022 11:10:54 CH ******/
CREATE DATABASE [PRJ301_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ301_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [nvarchar](150) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attandance]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attandance](
	[sesid] [int] NOT NULL,
	[stdid] [int] NOT NULL,
	[present] [bit] NOT NULL,
	[description] [nvarchar](150) NOT NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lcode] [varchar](150) NOT NULL,
	[lname] [nvarchar](150) NOT NULL,
	[lgender] [bit] NOT NULL,
	[ldob] [date] NOT NULL,
	[ladd] [nvarchar](150) NOT NULL,
	[lphone] [varchar](150) NOT NULL,
	[username] [varchar](150) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attanded] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [int] NOT NULL,
	[stdcode] [varchar](150) NOT NULL,
	[stdname] [nvarchar](150) NOT NULL,
	[stdgender] [bit] NOT NULL,
	[stddob] [date] NOT NULL,
	[stdadd] [nvarchar](150) NOT NULL,
	[stdphone] [varchar](150) NOT NULL,
	[username] [varchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 08/11/2022 11:10:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'chilp', N'123', N'Lê Phương Chi')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'nganntt', N'123', N'Nguyễn Thị Thanh Ngân')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt5', N'123', N'Ngô Tùng Sơn')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'trungdt', N'123', N'Đinh Thành Trung')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'truongvx', N'123', N'Vũ Xuân Trường')
GO
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 1, 0, N'abc', CAST(N'2022-10-24T16:15:25.807' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 2, 1, N' ', CAST(N'2022-10-24T16:15:25.810' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 3, 1, N' ', CAST(N'2022-10-24T16:15:25.810' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 4, 0, N'Test', CAST(N'2022-10-24T16:15:25.810' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 1, 1, N'abc', CAST(N'2022-10-27T23:53:29.320' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 2, 1, N'', CAST(N'2022-10-27T23:53:29.320' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 3, 1, N'', CAST(N'2022-10-27T23:53:29.320' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 4, 1, N'', CAST(N'2022-10-27T23:53:29.320' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 1, 1, N'', CAST(N'2022-10-24T21:44:50.750' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 2, 1, N'', CAST(N'2022-10-24T21:44:50.750' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 3, 1, N'X', CAST(N'2022-10-24T21:44:50.750' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 4, 1, N'X', CAST(N'2022-10-24T21:44:50.750' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 1, 1, N'A', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 2, 1, N'A', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 3, 1, N'A', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 4, 0, N'', CAST(N'2022-10-16T15:41:44.153' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 1, 0, N'hj', CAST(N'2022-11-08T13:44:49.590' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 5, 0, N'iug', CAST(N'2022-11-08T13:44:49.590' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 6, 0, N'', CAST(N'2022-11-08T13:44:49.593' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 1, 0, N'', CAST(N'2022-10-24T21:56:12.857' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 5, 0, N'', CAST(N'2022-10-24T21:56:12.857' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 6, 1, N'', CAST(N'2022-10-24T21:56:12.860' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 1, 0, N'', CAST(N'2022-11-08T22:33:23.783' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 5, 0, N'', CAST(N'2022-11-08T22:33:23.783' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 6, 0, N'', CAST(N'2022-11-08T22:33:23.787' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 1, 0, N'fsdb', CAST(N'2022-11-08T22:27:25.580' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 5, 0, N'', CAST(N'2022-11-08T22:27:25.593' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 6, 0, N'fsrvb', CAST(N'2022-11-08T22:27:25.593' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 1, 1, N'', CAST(N'2022-11-08T22:28:07.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 5, 0, N'', CAST(N'2022-11-08T22:28:07.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 6, 0, N'', CAST(N'2022-11-08T22:28:07.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 7, 1, N'', CAST(N'2022-10-26T10:30:17.610' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 7, 0, N'', CAST(N'2022-10-26T10:38:03.303' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 1, 1, N'', CAST(N'2022-11-08T23:09:16.973' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 1, 1, N'', CAST(N'2022-11-08T22:33:58.823' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 2, 0, N'', CAST(N'2022-11-08T22:33:58.827' AS DateTime))
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'SE1645', 1, 2, N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'SE1645', 3, 3, N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'SE1640', 1, 2, N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'SE1640', 2, 2, N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (5, N'SE1645', 2, 1, N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (6, N'SE1635', 2, 4, N'Fall', 2022)
GO
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [lgender], [ldob], [ladd], [lphone], [username]) VALUES (1, N'sonnt5', N'Ngô Tùng Sơn', 1, CAST(N'1988-06-08' AS Date), N'Hải Dương', N'116532646', N'sonnt5')
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [lgender], [ldob], [ladd], [lphone], [username]) VALUES (2, N'chilp', N'Lê Phương Chi', 0, CAST(N'1987-11-13' AS Date), N'Hà Nội', N'316846846', N'chilp')
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [lgender], [ldob], [ladd], [lphone], [username]) VALUES (3, N'nganntt', N'Nguyễn Thị Thanh Ngân', 0, CAST(N'1987-08-08' AS Date), N'Hải Phòng', N'651321652', N'nganntt')
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [lgender], [ldob], [ladd], [lphone], [username]) VALUES (4, N'trungdt', N'Đinh Thành Trung', 1, CAST(N'1985-03-04' AS Date), N'Bắc Ninh', N'986134865', N'trungdt')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'DE203')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE301')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'DE215')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'DE311')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (1, 1, 1, CAST(N'2022-10-10' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (2, 1, 1, CAST(N'2022-10-12' AS Date), 1, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (3, 1, 1, CAST(N'2022-10-14' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (4, 1, 1, CAST(N'2022-10-17' AS Date), 1, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (5, 1, 1, CAST(N'2022-10-19' AS Date), 1, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (6, 2, 1, CAST(N'2022-10-10' AS Date), 2, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (7, 2, 1, CAST(N'2022-10-12' AS Date), 2, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (8, 2, 1, CAST(N'2022-10-14' AS Date), 2, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (9, 2, 1, CAST(N'2022-10-17' AS Date), 2, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (10, 2, 1, CAST(N'2022-10-19' AS Date), 2, 5, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (11, 3, 2, CAST(N'2022-10-10' AS Date), 1, 1, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (12, 3, 2, CAST(N'2022-10-12' AS Date), 1, 2, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (13, 3, 2, CAST(N'2022-10-14' AS Date), 1, 3, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (14, 3, 2, CAST(N'2022-10-17' AS Date), 1, 4, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (15, 3, 2, CAST(N'2022-10-19' AS Date), 1, 5, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (16, 4, 1, CAST(N'2022-10-10' AS Date), 3, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (17, 4, 1, CAST(N'2022-10-12' AS Date), 3, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (18, 4, 1, CAST(N'2022-10-14' AS Date), 3, 3, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (19, 4, 1, CAST(N'2022-10-17' AS Date), 3, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (20, 4, 1, CAST(N'2022-10-19' AS Date), 3, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (21, 5, 1, CAST(N'2022-10-10' AS Date), 6, 1, 1, 1)
GO
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (1, N'HE150878', N'Nguyễn Đình Trường', 1, CAST(N'2001-10-16' AS Date), N'Hà Nội', N'123456789', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (2, N'HE161491', N'Vũ Đức Phong', 1, CAST(N'2001-09-09' AS Date), N'Hà Nội', N'436846472', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (3, N'HE161578', N'Phạm Đức Anh', 1, CAST(N'2001-06-10' AS Date), N'Thanh Hóa', N'166037023', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (4, N'HE160919', N'Nguyễn Trường Huy', 1, CAST(N'2002-01-08' AS Date), N'Hòa Bình', N'592291360', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (5, N'HE161055', N'Phan Nhật Linh', 0, CAST(N'2002-12-03' AS Date), N'Hưng Yên', N'321684865', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (6, N'HE161586', N'Vũ Xuân Trường', 1, CAST(N'2002-10-31' AS Date), N'Hải Dương', N'688686129', N'truongvx')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (7, N'HE161766', N'Nguyễn Tố Anh', 0, CAST(N'2002-10-13' AS Date), N'Ninh Bình', N'843206651', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (8, N'HE161893', N'Chử Hữu Thành', 1, CAST(N'2002-05-12' AS Date), N'Bắc Kạn', N'962065184', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (9, N'HE163672', N'Nguyễn Thị Hải Nhi', 0, CAST(N'2002-07-02' AS Date), N'Nghệ An', N'412164165', NULL)
INSERT [dbo].[Student] ([stdid], [stdcode], [stdname], [stdgender], [stddob], [stdadd], [stdphone], [username]) VALUES (10, N'HE163810', N'Lê Trần Tiến Đông', 1, CAST(N'2002-11-15' AS Date), N'Sơn La', N'651254541', NULL)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 3)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'MAS291')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (3, N'JPD123')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7:30 -9:00')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'9:10 - 10:40')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'10:50 - 12:20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'12:50 - 14:20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (5, N'14:30 - 16:00')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (6, N'16:10 - 17:40')
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Session]
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Account]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Account]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_Assignment] SET  READ_WRITE 
GO
