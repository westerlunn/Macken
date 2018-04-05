USE [master]
GO

/****** Object:  Database [Macken]    Script Date: 2018-04-05 13:57:31 ******/
CREATE DATABASE [Macken]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Macken', FILENAME = N'C:\Users\Administrator\Macken.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Macken_log', FILENAME = N'C:\Users\Administrator\Macken_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Macken] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Macken].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Macken] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Macken] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Macken] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Macken] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Macken] SET ARITHABORT OFF 
GO

ALTER DATABASE [Macken] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Macken] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Macken] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Macken] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Macken] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Macken] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Macken] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Macken] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Macken] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Macken] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Macken] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Macken] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Macken] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Macken] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Macken] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Macken] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Macken] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Macken] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Macken] SET  MULTI_USER 
GO

ALTER DATABASE [Macken] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Macken] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Macken] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Macken] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Macken] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Macken] SET QUERY_STORE = OFF
GO

USE [Macken]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Macken] SET  READ_WRITE 
GO
