create database tuyendungtructuyen

use tuyendungtructuyen

create table Accounts
(
	userID int identity (1,1) not null primary key,
	email varchar (50) not null,
	pass varchar(20) ,
	FirstName nvarchar (30),
	LastName nvarchar(30),
	DOB smalldatetime ,
	Gender bit default 0,
	MaritalStatus tinyint default 0,
	RaceID tinyint default 1,
	Addreess nvarchar (50),
	Resident nvarchar(50),
	ProvinceID tinyint default 1,
	City nvarchar (30),
	Telephone varchar(20),
	Mobile varchar(20),
	PhotoPath bit default 0,
	Newsletter bit default 1,
	JobAlert bit default 1,
	CompanyInfo bit default 1,
	Activate bit default 1,
	LastLogin smalldatetime default getdate(),
	ResumeActivate int default 1,
	CoverLetterDefault int default 0,
	RegisterDate smalldatetime default getdate(),
	DefaultLanguage bit default 0,
)


create table Educations
(
	EducationID int identity(1,1) not null primary key,
	UserID int ,
	School nvarchar(50) ,
	Country varchar(15),
	Faculty nvarchar(50),
	CertificateID tinyint default 1,
	Major nvarchar(50),
	Mode nvarchar (20),
	FromMonthYear char (7),
	ToMonthYear char (7),
	Descriptions nvarchar(100) null,
)


create table Experiences
(
	ExperiencesID int Identity (1,1) not null primary key,
	UserID int not null,
	Company nvarchar(50),
	Addreess nvarchar (50),
	ProvinceID tinyint default 0,
	Nationality varchar(15),
	JobCategoryID tinyint default 0,
	JobPosition nvarchar(50),
	FromMonthYear char(7),
	ToMonthYear char(7),
	Salary nvarchar(50),
	JobSummary nvarchar (100),
	Descriptions nvarchar(200),
)

create table Skills
(
	SkillID int identity(1,1) not null primary key,
	UserID int ,
	Speed varchar(50),
	Software nvarchar(100),
	VNISpeaking tinyint default 2,
	VNIReading tinyint default 2,
	VNIListening tinyint default 2,
	ENSpeaking tinyint default 2,
	ENReading tinyint default 2,
	ENListening tinyint default 2,
	Descriptions nvarchar(100),
)

create table Others
(
	UserID int not null primary key,
	Strength nvarchar (200),
	Weekness nvarchar(200),
	Hobbies nvarchar(200),
	Family nvarchar (200),
	Reference nvarchar(200),
)

create table Resumes
(
	ResumeID int identity (1,1) not null primary key,
	UserID int not null,
	ResumeTitle nvarchar(50) not null,
	ContactEmail varchar(50) not null,
	Objective nvarchar (500),
	ExperienceYear tinyint,
	CurrentCompany nvarchar(50),
	RequiredFields bit default 0,
	Activate bit default 0,
	EnableView bit default 0,
	Confidental bit default 0,
	Viewable tinyint default 0,
	LastUpdateDate smalldatetime default getdate(),
	CreateDate smalldatetime default getdate(),
	ViewedHit tinyint default 0,
	AppliedJob tinyint default 0,
	ContacttedByCompany tinyint default 0,
	TemplateResume tinyint default 0,
)

create table ResumeDetails
(
	ResumeID int not null primary key,
	JobPosition nvarchar (50),
	JobCategoryID tinyint default 1,
	JobIndustryID tinyint default 1,
	ProvinceID tinyint default 1,
	City nvarchar (30),
	SalaryFrom int default 100,
	SalaryTo int default 300,
	Currency char (3) default 'USD',
	SalaryNegotive bit default 0,
	Relocate bit default 0,
	WorkType tinyint Default 0,
	ExperienceLevel tinyint default 1,
	Availalbe tinyint default 1,
	Descriptions ntext,
)


create table CoverLetters
(
	LetterID int identity (1,1) not null primary key,
	UserID int ,
	Subjects nvarchar (50),
	Body nvarchar(500),
	CreateDate smalldatetime default getdate(),
	UpdateDate smalldatetime default getdate(),
)

create table SavedSearchs
(
	SearchID int identity (1,1) not null,
	UserID int,
	KeyWord nvarchar (50),
	WorkLocation nvarchar (50),
	JobCategoryID tinyint ,
	JobIndustryID tinyint,
	ProvinceID tinyint,
	SaveDate smalldatetime,
)


create table SavedJobs
(
	UserID int not null,
	JobID int not null,
	JobTitle nvarchar (50),
	PostedDate smalldatetime,
	CloseDate smalldatetime,
	SaveDate smalldatetime,
)

create table AppliedJobs
(
	ResumeID int not null,
	JobID int not null,
	JobTitle nvarchar (50),
	CoverLetterID int ,
	PostedDate smalldatetime,
	CloseDate smalldatetime,
	ApplyDate smalldatetime,
	Statuss tinyint,
)

create table ContactByRecruiter
(
	JobID int not null,
	ResumeId int not null,
	JobTitle nvarchar(50),
	ContactName nvarchar (50),
	ContactSubject nvarchar (50),
	ContactBody ntext,
	ContactDate smalldatetime,
	ContactStatus smalldatetime,
	PostedDate smalldatetime,
	CloseDate smalldatetime,
)


create table BlockSearch
(
	BlockSearchID int identity (1,1) not null,
	UserID int,
	Recruiter int,
	BlockDate smalldatetime,
)


create table JobAlerts
(
	AlertID int identity (1,1) not null,
	UserID int,
	KeyWord nvarchar (50),
	CityName nvarchar(50),
	JobCategoryID tinyint ,
	JobIndustruID tinyint,
	Email varchar (50),
	Schedule char (1),
	CreateDate smalldatetime,
	Activate bit,
)


create table Certificatess
(
	CertinficateID tinyint not null primary key,
	CertificateName nvarchar(50),
)


create table JobCategories
(
	JobCategoryID tinyint not null primary key,
	JobCategoryName nvarchar (50),
)

create table JobIndustries
(
	JobIndustryID tinyint not null primary key,
	JobIndustryName nvarchar (50),
)

create table WorkingTypes
(
	WorkingTypeID tinyint not null primary key,
	WorkingTypeName nvarchar (50),
)

create table ExperienceLevel
(
	ExperienceLevelID tinyint not null primary key,
	ExperienceLevelName nvarchar(50),
)

create table Races
(
	RaceID tinyint not null primary key,
	RaceName nvarchar (20),
)

create table Provinces
(
	ProvinceID tinyint not null primary key,
	ProvincdName nvarchar (30),
	Country varchar (20),
	Area bit default 1,
)

//bảng cho nhà tuyển dụng

create table RCAccounts
(
	RecruiterID int identity (1,1) not null primary key,
	Email  varchar (50) not null,
	Pass varchar (20),
	CompanyName nvarchar (50),
	EnglishName varchar(50), 
	AccountType bit default 0,
	OpenDate smalldatetime,
	ContactName nvarchar (50),
	Addreess nvarchar (50),
	ProvinceID tinyint default 1,
	City nvarchar (30),
	Phone varchar (20),
	Fax varchar (10),
	Logo bit default 0,
	JobPostingBalance smallint not null default 10,
	ResumeViewinBalance smallint not null default 10,
	Activate bit not null default 0,
	Promotion bit not null default 1,
	ResumeAlert bit default 0,
	Newsleter bit not null default 1,
	Agency bit not null default 0,
	AvailableForPosting int not null default 10,
	AvailableForViewing int not null default 10,
	RegisterDate smalldatetime default getdate(),
	LastLogin smalldatetime default getdate(),
	DefaultLanguage bit default 0,
)


create table RCJobPostings
(
	JobID int identity (1,1) not null primary key,
	RecruiterID int not null,
	JobTitle nvarchar (100) not null,
	JobIndustryID tinyint not null,
	JobCategoryID tinyint not null,
	CertificateID tinyint not null,
	RangeOfAge nvarchar (50),
	RecruitmentType nvarchar (50),
	AdvName varchar (1000) ,
	ContactEmail varchar (50) not null,
	ContactPerson nvarchar (50) not null,
	ContactTel nvarchar (10) not null,
	EnableApplyOnline bit not null,
	ProvinceID tinyint ,
	WorkLocation varchar (20),
	Viewable bit not null,
	ClosedDate smalldatetime not null,
	JobSummary ntext not null,
	JobSkills ntext,
	JobNo varchar (10),
	RequiredNuber tinyint not null,
	WorkingTypeID tinyint not null,
	ExperienceLevelID tinyint not null,
	YearExperience tinyint not null,
	SalaryFrom int ,
	SalaryTo int,
	Currency char (10) ,
	ShownSalary bit not null,
	SalaryNegotive bit not null,
	CompanyLogo bit not null,
	OnlyApplyURL varchar (100),
	ViewedNo tinyint ,
	TemplateID tinyint not null,
	JobFree bit not null,
	PostedDate smalldatetime not null,
	UpdateDate smalldatetime not null,
	Activate bit not null,
)

