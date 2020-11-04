USE [master]
GO
/****** Object:  Database [Rocky]    Script Date: 4.11.2020. 19:44:02 ******/
CREATE DATABASE [Rocky]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rocky', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Rocky.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rocky_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Rocky_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Rocky] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rocky].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rocky] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rocky] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rocky] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rocky] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rocky] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rocky] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rocky] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rocky] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rocky] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rocky] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rocky] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rocky] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rocky] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rocky] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rocky] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Rocky] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rocky] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rocky] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rocky] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rocky] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rocky] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Rocky] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rocky] SET RECOVERY FULL 
GO
ALTER DATABASE [Rocky] SET  MULTI_USER 
GO
ALTER DATABASE [Rocky] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rocky] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rocky] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rocky] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rocky] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Rocky] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Rocky', N'ON'
GO
ALTER DATABASE [Rocky] SET QUERY_STORE = OFF
GO
USE [Rocky]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4.11.2020. 19:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationType]    Script Date: 4.11.2020. 19:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4.11.2020. 19:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Rocky] SET  READ_WRITE 
GO
