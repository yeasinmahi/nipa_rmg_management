USE [master]
GO
/****** Object:  Database [NipaRMGManagementDB]    Script Date: 26-May-16 8:14:14 PM ******/
CREATE DATABASE [NipaRMGManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NipaRMGManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\NipaRMGManagementDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NipaRMGManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\NipaRMGManagementDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NipaRMGManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NipaRMGManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NipaRMGManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NipaRMGManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NipaRMGManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NipaRMGManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NipaRMGManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NipaRMGManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NipaRMGManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NipaRMGManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [NipaRMGManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NipaRMGManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NipaRMGManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NipaRMGManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NipaRMGManagementDB]
GO
/****** Object:  Table [dbo].[tbl_EmployeeEntry]    Script Date: 26-May-16 8:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmployeeEntry](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [varchar](50) NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstNameBangla] [nchar](50) NULL,
	[LastNameBangla] [nchar](50) NULL,
	[ShortName] [varchar](50) NULL,
	[AdditionalId] [varchar](50) NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[PlaceOfBirth] [varchar](100) NULL,
	[Gender] [varchar](10) NOT NULL,
	[BloodGroup] [varchar](3) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
	[NationalId] [varchar](20) NULL,
	[Religion] [varchar](10) NOT NULL,
	[Hobbies] [varchar](max) NULL,
	[MaritalStatus] [varchar](20) NULL,
	[MarriageDate] [date] NULL,
	[PresentAddress] [varchar](max) NULL,
	[ParmanentAddress] [varchar](max) NULL,
	[OfficialPhone] [varchar](15) NULL,
	[PersonalPhone] [varchar](15) NULL,
	[OfficialEmail] [varchar](320) NULL,
	[PersonalEmail] [varchar](320) NULL,
	[AttendanceCardId] [varchar](30) NULL,
	[FingerPrintId] [varchar](50) NULL,
	[EmplyeePicture] [image] NULL,
	[DigitalPicture] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [NipaRMGManagementDB] SET  READ_WRITE 
GO
