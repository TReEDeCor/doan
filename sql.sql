USE [master]
GO

/****** Object:  Database [NoiThat]    Script Date: 7/25/2021 1:43:11 AM ******/
CREATE DATABASE [NoiThat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NoiThat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NoiThat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NoiThat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NoiThat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NoiThat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [NoiThat] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [NoiThat] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [NoiThat] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [NoiThat] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [NoiThat] SET ARITHABORT OFF 
GO

ALTER DATABASE [NoiThat] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [NoiThat] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [NoiThat] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [NoiThat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [NoiThat] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [NoiThat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [NoiThat] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [NoiThat] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [NoiThat] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [NoiThat] SET  ENABLE_BROKER 
GO

ALTER DATABASE [NoiThat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [NoiThat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [NoiThat] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [NoiThat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [NoiThat] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [NoiThat] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [NoiThat] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [NoiThat] SET RECOVERY FULL 
GO

ALTER DATABASE [NoiThat] SET  MULTI_USER 
GO

ALTER DATABASE [NoiThat] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [NoiThat] SET DB_CHAINING OFF 
GO

ALTER DATABASE [NoiThat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [NoiThat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [NoiThat] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [NoiThat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [NoiThat] SET QUERY_STORE = OFF
GO

ALTER DATABASE [NoiThat] SET  READ_WRITE 
GO

