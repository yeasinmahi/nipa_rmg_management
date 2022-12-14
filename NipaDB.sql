USE [NipaRMGManagementDB]
GO
/****** Object:  Table [dbo].[tbl_Department]    Script Date: 06/03/2016 8:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Department](
	[DepId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [varchar](50) NULL,
	[DepartmentName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Designation]    Script Date: 06/03/2016 8:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Designation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [varchar](50) NOT NULL,
	[GrossSalary] [int] NOT NULL,
	[BasicSalary] [int] NULL,
	[HouseRentSupport] [int] NULL,
	[MedicalSupport] [int] NULL,
	[ConvanceSupport] [int] NULL,
	[FoodSupport] [int] NULL,
 CONSTRAINT [PK_tbl_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmployeeEntry]    Script Date: 06/03/2016 8:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmployeeEntry](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[DesignationId] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[FirstNameBangla] [nchar](50) NULL,
	[LastNameBangla] [nchar](50) NULL,
	[ShortName] [varchar](50) NULL,
	[AdditionalId] [varchar](50) NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[PlaceOfBirth] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[BloodGroup] [varchar](3) NULL,
	[Nationality] [varchar](20) NULL,
	[NationalIdCardNo] [varchar](20) NULL,
	[Religion] [varchar](10) NULL,
	[Hobbies] [varchar](max) NULL,
	[MaritialStatus] [varchar](20) NULL,
	[MarriageDate] [date] NULL,
	[PresentAddress] [varchar](max) NULL,
	[ParmanentAddress] [varchar](max) NULL,
	[OfficialPhone] [varchar](15) NULL,
	[PersonalPhone] [varchar](15) NULL,
	[OfficialEmail] [varchar](320) NULL,
	[PersonalEmail] [varchar](320) NULL,
	[AttendenceCardId] [varchar](30) NULL,
	[FingerPrintId] [varchar](50) NULL,
	[EmployeePicture] [image] NULL,
	[DigitalSignature] [image] NULL,
 CONSTRAINT [PK_tbl_EmployeeEntry] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_Designation] ADD  CONSTRAINT [DF_tbl_Designation_MedicalSupport]  DEFAULT ((250)) FOR [MedicalSupport]
GO
ALTER TABLE [dbo].[tbl_Designation] ADD  CONSTRAINT [DF_tbl_Designation_ConvanceSupport]  DEFAULT ((200)) FOR [ConvanceSupport]
GO
ALTER TABLE [dbo].[tbl_Designation] ADD  CONSTRAINT [DF_tbl_Designation_FoodSupport]  DEFAULT ((650)) FOR [FoodSupport]
GO
