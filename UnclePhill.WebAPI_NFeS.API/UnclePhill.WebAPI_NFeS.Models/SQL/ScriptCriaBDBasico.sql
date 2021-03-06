USE [BD_NFeS]
GO
ALTER TABLE [dbo].[TaxpayerActivities] DROP CONSTRAINT [FK_TaxpayerActivities_Company]
GO
ALTER TABLE [dbo].[Takers] DROP CONSTRAINT [FK_Takers_Companys]
GO
ALTER TABLE [dbo].[ShippingCompany] DROP CONSTRAINT [FK_ShippingCompany_Companys]
GO
ALTER TABLE [dbo].[Session] DROP CONSTRAINT [FK_Session_Users]
GO
ALTER TABLE [dbo].[Services] DROP CONSTRAINT [FK_Services_Companys]
GO
ALTER TABLE [dbo].[Responses] DROP CONSTRAINT [FK_Responses_Users]
GO
ALTER TABLE [dbo].[Responses] DROP CONSTRAINT [FK_Responses_Questions]
GO
ALTER TABLE [dbo].[Responses] DROP CONSTRAINT [FK_Responses_Options]
GO
ALTER TABLE [dbo].[Options] DROP CONSTRAINT [FK_Options_Questions]
GO
ALTER TABLE [dbo].[NFeSItens] DROP CONSTRAINT [FK_NFeSItens_NFeS]
GO
ALTER TABLE [dbo].[NFeSInvoices] DROP CONSTRAINT [FK_NFeSInvoices_NFeS]
GO
ALTER TABLE [dbo].[NFeS] DROP CONSTRAINT [FK_NFeS_Takers]
GO
ALTER TABLE [dbo].[NFeS] DROP CONSTRAINT [FK_NFeS_ShippingCompany]
GO
ALTER TABLE [dbo].[NFeS] DROP CONSTRAINT [FK_NFeS_Companys]
GO
ALTER TABLE [dbo].[NFeS] DROP CONSTRAINT [FK_NFeS_CFPS]
GO
ALTER TABLE [dbo].[Companys] DROP CONSTRAINT [FK_Companys_Users]
GO
ALTER TABLE [dbo].[Certificates] DROP CONSTRAINT [FK_Certificates_Company]
GO
ALTER TABLE [dbo].[Takers] DROP CONSTRAINT [DF_Takers_Telephone]
GO
ALTER TABLE [dbo].[CFPS] DROP CONSTRAINT [DF_CFPS_TaxWithheld]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[TaxpayerActivities]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[TaxpayerActivities]
GO
/****** Object:  Table [dbo].[Takers]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Takers]
GO
/****** Object:  Table [dbo].[ShippingCompany]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[ShippingCompany]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Session]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Services]
GO
/****** Object:  Table [dbo].[Responses]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Responses]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Questions]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Options]
GO
/****** Object:  Table [dbo].[NFeSItens]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[NFeSItens]
GO
/****** Object:  Table [dbo].[NFeSInvoices]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[NFeSInvoices]
GO
/****** Object:  Table [dbo].[NFeS]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[NFeS]
GO
/****** Object:  Table [dbo].[Exceptions]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Exceptions]
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Companys]
GO
/****** Object:  Table [dbo].[CFPS]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[CFPS]
GO
/****** Object:  Table [dbo].[Certificates]    Script Date: 03/11/2018 09:18:33 ******/
DROP TABLE [dbo].[Certificates]
GO
USE [master]
GO
/****** Object:  Database [BD_NFeS]    Script Date: 03/11/2018 09:18:33 ******/
DROP DATABASE [BD_NFeS]
GO
/****** Object:  Database [BD_NFeS]    Script Date: 03/11/2018 09:18:33 ******/
CREATE DATABASE [BD_NFeS]
GO
ALTER DATABASE [BD_NFeS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_NFeS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_NFeS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_NFeS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_NFeS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_NFeS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_NFeS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_NFeS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_NFeS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_NFeS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_NFeS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_NFeS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_NFeS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_NFeS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_NFeS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_NFeS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_NFeS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_NFeS] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [BD_NFeS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_NFeS] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BD_NFeS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_NFeS] SET  MULTI_USER 
GO
ALTER DATABASE [BD_NFeS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_NFeS] SET ENCRYPTION ON
GO
ALTER DATABASE [BD_NFeS] SET QUERY_STORE = ON
GO
ALTER DATABASE [BD_NFeS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [BD_NFeS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ADAPTIVE_JOINS = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ON_ROWSTORE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET DEFERRED_COMPILATION_TV = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_ONLINE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_RESUMABLE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET GLOBAL_TEMPORARY_TABLE_AUTO_DROP = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET INTERLEAVED_EXECUTION_TVF = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ISOLATE_SECURITY_POLICY_CARDINALITY = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LIGHTWEIGHT_QUERY_PROFILING = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ROW_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [BD_NFeS]
GO
/****** Object:  Table [dbo].[Certificates]    Script Date: 03/11/2018 09:18:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificates](
	[CertificateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[Certificate] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Certificates] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CFPS]    Script Date: 03/11/2018 09:18:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFPS](
	[CFPSId] [bigint] IDENTITY(1,1) NOT NULL,
	[CFPS] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[TaxWithheld] [char](1) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_CFPS] PRIMARY KEY CLUSTERED 
(
	[CFPSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companys](
	[CompanyId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CNPJ] [nvarchar](14) NOT NULL,
	[IM] [nvarchar](20) NULL,
	[IE] [nvarchar](20) NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[NameFantasy] [nvarchar](1000) NOT NULL,
	[CEP] [nvarchar](8) NOT NULL,
	[Street] [nvarchar](1000) NOT NULL,
	[Neighborhood] [nvarchar](1000) NOT NULL,
	[City] [nvarchar](1000) NOT NULL,
	[State] [nvarchar](2) NOT NULL,
	[Telephone] [nvarchar](11) NULL,
	[Email] [nvarchar](500) NULL,
	[Logo] [image] NULL,
	[IRRF] [decimal](18, 6) NOT NULL,
	[PIS] [decimal](18, 6) NOT NULL,
	[COFINS] [decimal](18, 6) NOT NULL,
	[CSLL] [decimal](18, 6) NOT NULL,
	[INSS] [decimal](18, 6) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exceptions]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exceptions](
	[ExceptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[HelpLink] [nvarchar](max) NULL,
	[HResult] [nvarchar](max) NULL,
	[InnerException] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Exceptions] PRIMARY KEY CLUSTERED 
(
	[ExceptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NFeS]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NFeS](
	[NFeSId] [bigint] IDENTITY(1,1) NOT NULL,
	[TakerId] [bigint] NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[CFPSId] [bigint] NOT NULL,
	[ShippingCompanyId] [bigint] NULL,
	[Cae] [nvarchar](max) NULL,
	[DataEmissao] [nvarchar](max) NULL,
	[NaturezaOperacao] [nvarchar](max) NULL,
	[NumeroNota] [nvarchar](max) NULL,
	[NumeroRps] [nvarchar](max) NULL,
	[SituacaoNf] [nvarchar](max) NULL,
	[ChaveValidacao] [nvarchar](max) NULL,
	[ClienteNomeRazaoSocial] [nvarchar](max) NULL,
	[ClienteNomeFantasia] [nvarchar](max) NULL,
	[ClienteCNPJCPF] [nvarchar](max) NULL,
	[ClienteEndereco] [nvarchar](max) NULL,
	[ClienteBairro] [nvarchar](max) NULL,
	[ClienteNumeroLogradouro] [nvarchar](max) NULL,
	[ClienteCidade] [nvarchar](max) NULL,
	[ClienteUF] [nvarchar](max) NULL,
	[ClientePais] [nvarchar](max) NULL,
	[ClienteFone] [nvarchar](max) NULL,
	[ClienteFax] [nvarchar](max) NULL,
	[ClienteInscricaoMunicipal] [nvarchar](max) NULL,
	[ClienteCEP] [nvarchar](max) NULL,
	[ClienteEmail] [nvarchar](max) NULL,
	[ClienteInscricaoEstadual] [nvarchar](max) NULL,
	[BaseCalculo] [nvarchar](max) NULL,
	[ISSQNCliente] [nvarchar](max) NULL,
	[ISSQNSemRetencao] [nvarchar](max) NULL,
	[ISSQNTotal] [nvarchar](max) NULL,
	[Irrf] [nvarchar](max) NULL,
	[Cofins] [nvarchar](max) NULL,
	[Inss] [nvarchar](max) NULL,
	[Csll] [nvarchar](max) NULL,
	[Pis] [nvarchar](max) NULL,
	[ValorTotalNota] [nvarchar](max) NULL,
	[FreteCNPJ] [nvarchar](max) NULL,
	[FreteRazaoSocial] [nvarchar](max) NULL,
	[FreteEndereco] [nvarchar](max) NULL,
	[FreteEmitente] [nvarchar](max) NULL,
	[FreteDestinatario] [nvarchar](max) NULL,
	[FreteQuantidade] [nvarchar](max) NULL,
	[FreteEspecie] [nvarchar](max) NULL,
	[FretePesoLiquido] [nvarchar](max) NULL,
	[FretePesoBruto] [nvarchar](max) NULL,
	[Serie] [nvarchar](max) NULL,
	[SerieSimplificada] [nvarchar](max) NULL,
	[CodigoSerie] [nvarchar](max) NULL,
	[Observacao] [nvarchar](max) NULL,
	[ServicoCidade] [nvarchar](max) NULL,
	[ServicoEstado] [nvarchar](max) NULL,
	[TimbreContribuinteLogo] [nvarchar](max) NULL,
	[TimbreContribuinteLinha1] [nvarchar](max) NULL,
	[TimbreContribuinteLinha2] [nvarchar](max) NULL,
	[TimbreContribuinteLinha3] [nvarchar](max) NULL,
	[TimbreContribuinteLinha4] [nvarchar](max) NULL,
	[TimbrePrefeituraLogo] [nvarchar](max) NULL,
	[TimbrePrefeituraLinha1] [nvarchar](max) NULL,
	[TimbrePrefeituraLinha2] [nvarchar](max) NULL,
	[TimbrePrefeituraLinha3] [nvarchar](max) NULL,
	[URLAutenticidade] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
	[NotaFiscalPDF] [nvarchar](max) NULL,
	[NotaFiscalXML] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_NFeS] PRIMARY KEY CLUSTERED 
(
	[NFeSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NFeSInvoices]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NFeSInvoices](
	[NFeSInvoicesId] [bigint] IDENTITY(1,1) NOT NULL,
	[NFeSId] [bigint] NOT NULL,
	[Numero] [nvarchar](max) NULL,
	[Vencimento] [nvarchar](max) NULL,
	[Valor] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_NFeSInvoices] PRIMARY KEY CLUSTERED 
(
	[NFeSInvoicesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NFeSItens]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NFeSItens](
	[NFeSItens] [bigint] IDENTITY(1,1) NOT NULL,
	[NFeSId] [bigint] NOT NULL,
	[Quantidade] [nvarchar](max) NULL,
	[CodigoAtividade] [nvarchar](max) NULL,
	[Servico] [nvarchar](max) NULL,
	[ValorUnitario] [nvarchar](max) NULL,
	[ValorTotal] [nvarchar](max) NULL,
	[ImpostoRetido] [nvarchar](max) NULL,
	[Aliquota] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_NFeSItens] PRIMARY KEY CLUSTERED 
(
	[NFeSItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[OptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionId] [bigint] NOT NULL,
	[Order] [bigint] NOT NULL,
	[Option] [nvarchar](max) NOT NULL,
	[Correct] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Order] [bigint] NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responses]    Script Date: 03/11/2018 09:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses](
	[ResponseId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[QuestionId] [bigint] NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[Correct] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[Dateupdate] [datetime] NULL,
 CONSTRAINT [PK_Responses] PRIMARY KEY CLUSTERED 
(
	[ResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 03/11/2018 09:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServicesId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[Unity] [nvarchar](10) NOT NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IRRF] [decimal](18, 6) NOT NULL,
	[PIS] [decimal](18, 6) NOT NULL,
	[CSLL] [decimal](18, 6) NOT NULL,
	[INSS] [decimal](18, 6) NOT NULL,
	[COFINS] [decimal](18, 6) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServicesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 03/11/2018 09:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[SessionHash] [nvarchar](max) NOT NULL,
	[DateStart] [datetime] NOT NULL,
	[DateEnd] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingCompany]    Script Date: 03/11/2018 09:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingCompany](
	[ShippingCompanyId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[CPF_CNPJ] [nvarchar](14) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[NameFantasy] [nvarchar](1000) NOT NULL,
	[CEP] [nvarchar](8) NOT NULL,
	[Street] [nvarchar](1000) NOT NULL,
	[Neighborhood] [nvarchar](100) NOT NULL,
	[City] [nvarchar](1000) NOT NULL,
	[State] [nvarchar](2) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_ShippingCompany] PRIMARY KEY CLUSTERED 
(
	[ShippingCompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takers]    Script Date: 03/11/2018 09:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takers](
	[TakerId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[IM] [nvarchar](10) NOT NULL,
	[CPF_CNPJ] [nvarchar](14) NOT NULL,
	[RG_IE] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[NameFantasy] [nvarchar](1000) NOT NULL,
	[TypePerson] [char](1) NOT NULL,
	[CEP] [nvarchar](8) NOT NULL,
	[Street] [nvarchar](1000) NOT NULL,
	[Neighborhood] [nvarchar](1000) NOT NULL,
	[Number] [nvarchar](10) NULL,
	[City] [nvarchar](1000) NOT NULL,
	[State] [nvarchar](2) NOT NULL,
	[Telephone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Taker] PRIMARY KEY CLUSTERED 
(
	[TakerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxpayerActivities]    Script Date: 03/11/2018 09:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxpayerActivities](
	[TaxpayerActivitiesId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[CNAE] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[Aliquot] [decimal](18, 6) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_TaxpayerActivities] PRIMARY KEY CLUSTERED 
(
	[TaxpayerActivitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03/11/2018 09:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](500) NOT NULL,
	[CPF] [nvarchar](14) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateInsert] [datetime] NOT NULL,
	[DateUpdate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CFPS] ON 
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (1, N'511', N'ISSQN devido no municipio, sem retenção, recolhido pelo prestador', N'N', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (2, N'512', N'ISSQN devido na Serra, com retenção, recolhido pelo tomador', N'S', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (3, N'615', N'ISSQN devido em outro Município, sem retenção, recolhido pelo prestador', N'N', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (4, N'616', N'ISSQN devido em outro Município, com retenção, recolhido pelo tomador', N'S', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (5, N'911', N'ISSQN devido na Serra, sem retenção, recolhido pelo prestador - órgão público', N'N', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (6, N'912', N'ISSQN devido na Serra, com retenção, recolhido pelo tomador - órgão público', N'S', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (7, N'200', N'IMUNIDADE. Código é exclusivo para o contribuinte que requereu formalmente, e teve reconhecida a imunidade, não incidindo ISSQN', N'N', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (8, N'300', N'ISENÇÃO. Código é exclusivo para o contribuinte que requereu formalmente e teve isenção/desconto reconhecidos do ISSQN, exemplo, Minha Casa Minha Vida', N'N', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
INSERT [dbo].[CFPS] ([CFPSId], [CFPS], [Description], [TaxWithheld], [Active], [DateInsert], [DateUpdate]) VALUES (9, N'400', N'NÃO INCIDÊNCIA de ISSQN. Código exclusivo para os casos em que não há incidência de ISSQN, exemplo, locação de bens móveis', N'N', 1, CAST(N'2018-08-27T16:44:56.607' AS DateTime), CAST(N'2018-08-27T16:44:56.607' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CFPS] OFF
GO
SET IDENTITY_INSERT [dbo].[Options] ON 
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (1, 1, 1, N'Serra', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (2, 1, 2, N'Vitória', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (3, 1, 3, N'Vila Velha', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (4, 1, 4, N'Cariacia', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (5, 1, 5, N'Viana', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (6, 1, 6, N'Fundão', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (7, 1, 7, N'Guarapari', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (8, 1, 8, N'Outros', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (9, 2, 1, N'De 0 a 2 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (10, 2, 2, N'De 3 a 5 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (11, 2, 3, N'De 6 a 8 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (12, 2, 4, N'De 9 a 10 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (13, 2, 5, N'Mais de 10 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (14, 3, 1, N'Tecnologia', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (15, 3, 2, N'Finanças', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (16, 3, 3, N'Vendas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (17, 3, 4, N'Gestão', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (18, 3, 5, N'Logística', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (19, 3, 6, N'Transporte', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (20, 3, 7, N'Direito', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (21, 3, 8, N'Medicina', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (22, 3, 9, N'Outros', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (23, 4, 1, N'Indústria', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (24, 4, 2, N'Distribuição', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (25, 4, 3, N'Comércio', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (26, 4, 4, N'Serviços', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (27, 4, 5, N'Todas as opções anteriores', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (28, 5, 1, N'De 0 a 2 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (29, 5, 2, N'De 3 a 5 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (30, 5, 3, N'De 6 a 8 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (31, 5, 4, N'De 9 a 10 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (32, 5, 5, N'Mais de 10 anos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (33, 6, 1, N'Computador de mesa', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (34, 6, 2, N'Notebook', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (35, 6, 3, N'Tablet', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (36, 6, 4, N'Celular', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (37, 6, 5, N'Nenhuma das opções anteriores', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (38, 7, 1, N'Computador de mesa', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (39, 7, 2, N'Notebook', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (40, 7, 3, N'Tablet', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (41, 7, 4, N'Celular', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (42, 7, 5, N'Nenhuma das opções anteriores', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (43, 8, 1, N'Sim. Ajuda muito na ultilização', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (44, 8, 2, N'Não. É irrelevante', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (45, 9, 1, N'Interfaces mais amigáveis e bom funcionamento', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (46, 9, 2, N'Cumpre o que promete e nada mais', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (47, 10, 1, N'Ótimo. Simples e fácil de usar não apresenta problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (48, 10, 2, N'Bom. Atende bem as necessidades', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (49, 10, 3, N'Razoável. Atende as necessidades, mas poderia ser melhor', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (50, 10, 4, N'Ruim.  É de difícil utilização e apresenta alguns problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (51, 10, 5, N'Péssimo.  Muito difícil de utilizar a interface quase não ajuda e apresenta problemas diversos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (52, 11, 1, N'Ótimo. São simples e fáceis de usar não apresenta problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (53, 11, 2, N'Bom. Atendem bem às necessidades', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (54, 11, 3, N'Razoável. Atende as necessidades, mas poderia ser melhor', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (55, 11, 4, N'Ruim.  É de difícil utilização e apresenta alguns problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (56, 11, 5, N'Péssimo.  Muito difícil de utilizar a interface quase não ajuda e apresenta problemas diversos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (57, 12, 1, N'Ótima. Muito fácil navegar e entender as funções', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (58, 12, 2, N'Bom. Consigo fazer as funções sem problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (59, 12, 3, N'Razoável. Consigo fazer as funções básicas, mas poderia ser melhor', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (60, 12, 4, N'Ruim. Fiquei perdido tentando entender as funções', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (61, 12, 5, N'Péssimo. Não consegui utilizar a aplicação', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (62, 13, 1, N'Ótima. Muito fácil navegar e entender as funções', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (63, 13, 2, N'Bom. Consigo fazer as funções sem problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (64, 13, 3, N'Razoável. Consigo fazer as funções básicas, mas poderia ser melhor', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (65, 13, 4, N'Ruim. Fiquei perdido tentando entender as funções', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (66, 13, 5, N'Péssimo. Não consegui utilizar a aplicação', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (67, 14, 1, N'Ótima. Consigo fazer tudo que é necessário para emitir uma nota fiscal sem problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (68, 14, 2, N'Razoável. Consigo emitir nota fiscal, mas faltam funções ou apresentam erros', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (69, 14, 3, N'Péssimo. Não consigo emitir nota fiscal por conta de erros e informações mal organizadas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (70, 15, 1, N'Ótima. Consigo fazer tudo para emitir uma nota fiscal sem problemas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (71, 15, 2, N'Razoável. Consigo emitir nota fiscal, mas faltam funções ou apresentam erros', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (72, 15, 3, N'Péssimo. Não consigo emitir nota fiscal por conta de erros e informações mal organizadas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (73, 16, 1, N'Grande. O aplicativo é muito intuitivo e fácil de usar', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (74, 16, 2, N'Talvez. Não vejo muita mudança', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (75, 16, 3, N'Nenhuma. O aplicativo não atendeu as minhas expectativas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (76, 16, 4, N'Usaria ambos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (77, 17, 1, N'O nosso aplicativo', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (78, 17, 2, N'Os portais das prefeituras municipais', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (79, 17, 3, N'Ambos se equiparam', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (80, 17, 4, N'Um é complementar ao outro', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (81, 19, 1, N'Interface gráfica desorganizada ou fora de padrão', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (82, 19, 2, N'Falta de funções e/ou recursos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (83, 19, 3, N'Erros diversos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (84, 19, 4, N'Dificuldade de navegação e acesso às funções', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (85, 19, 5, N'Não tive dificuldades', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (86, 18, 1, N'Interface gráfica organizada e padronizada', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (87, 18, 2, N'Funções e/ou recursos bem definidos', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (88, 18, 3, N'Poucos ou nenhum erro', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (89, 18, 4, N'Fácil assimilação de navegação e acesso às funções', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (90, 18, 5, N'Não achei nada fácil', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (91, 20, 1, N'Com certeza. O aplicativo é muito útil', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (92, 20, 2, N'Sim', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (93, 20, 3, N'Talvez. Depende da necessidade', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (94, 20, 4, N'Não', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
INSERT [dbo].[Options] ([OptionId], [QuestionId], [Order], [Option], [Correct], [Active], [DateInsert], [DateUpdate]) VALUES (95, 20, 5, N'Jamais. O aplicativo não é relevante para outras empresas', 1, 1, CAST(N'2018-11-03T10:10:27.110' AS DateTime), CAST(N'2018-11-03T10:10:27.110' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Options] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (1, 1, N'Em qual desses municípios a sua empresa está estabelecida?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (2, 2, N'Quanto tempo de mercado tem a sua empresa?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (3, 3, N'Qual área de atuação de sua empresa?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (4, 4, N'Qual o principal ramo do mercado sua empresa atende?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (5, 5, N'A quanto tempo você (usuário) trabalha com emissão de notas fiscais de serviço?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (6, 6, N'Qual dispositivo abaixo você mais usa no seu dia-a-dia?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (7, 7, N'Qual dispositivo você gostaria de usar mais no seu dia-a-dia?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (8, 8, N'Você acredita que uma interface organizada faz diferença na facilidade de uso de um aplicativo?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (9, 9, N'Você prefere aplicativos que tenham uma interface mais amigável e bem organizada e que funcione bem ou que apenas um aplicativo que cumpra o que prometeu sem erros?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (10, 10, N'Tendo como base a experiência de uso que você teve, como você avalia o NFSe Fácil?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (11, 11, N'Tendo como base que você já fez uso de um ou mais portais para emissão de notas fiscais de serviço de prefeituras como por exemplo de Serra - ES, como você avalia a experiência de uso desses sistemas em geral?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (12, 12, N'De modo geral como você avalia a interface do NFSe Fácil?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (13, 13, N'Como você avalia a interface dos portais de emissão de notas fiscais que você já utilizou?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (14, 14, N'Como você avalia as funções do NFSe Fácil?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (15, 15, N'Como você avalia as funções dos portais de emissão de nota fiscal que você já utilizou?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (16, 16, N'Tendo em vista a utilização do NFSe Fácil e a experiência que você já teve com portais de emissão de nota fiscal de serviço de prefeituras, qual a seria probabilidade de você passar a usar somente o nosso aplicativo?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (17, 17, N'Comparando os dois sistemas, na sua opinião qual atende melhor ao objetivo de emitir notas fiscais de serviço?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (18, 18, N'O que você achou mais fácil no NFSe Fácil?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (19, 19, N'Qual foi a sua maior dificuldade com o NFSe Fácil?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
INSERT [dbo].[Questions] ([QuestionId], [Order], [Question], [Active], [DateInsert], [DateUpdate]) VALUES (20, 20, N'Você indicaria NFSe Fácil como alternativa aos portais de emissão de NFSe para outras empresas?', 1, CAST(N'2018-11-03T10:10:26.500' AS DateTime), CAST(N'2018-11-03T10:10:26.500' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
ALTER TABLE [dbo].[CFPS] ADD  CONSTRAINT [DF_CFPS_TaxWithheld]  DEFAULT ('N') FOR [TaxWithheld]
GO
ALTER TABLE [dbo].[Takers] ADD  CONSTRAINT [DF_Takers_Telephone]  DEFAULT ('') FOR [Telephone]
GO
ALTER TABLE [dbo].[Certificates]  WITH CHECK ADD  CONSTRAINT [FK_Certificates_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[Certificates] CHECK CONSTRAINT [FK_Certificates_Company]
GO
ALTER TABLE [dbo].[Companys]  WITH CHECK ADD  CONSTRAINT [FK_Companys_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Companys] CHECK CONSTRAINT [FK_Companys_Users]
GO
ALTER TABLE [dbo].[NFeS]  WITH CHECK ADD  CONSTRAINT [FK_NFeS_CFPS] FOREIGN KEY([CFPSId])
REFERENCES [dbo].[CFPS] ([CFPSId])
GO
ALTER TABLE [dbo].[NFeS] CHECK CONSTRAINT [FK_NFeS_CFPS]
GO
ALTER TABLE [dbo].[NFeS]  WITH CHECK ADD  CONSTRAINT [FK_NFeS_Companys] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[NFeS] CHECK CONSTRAINT [FK_NFeS_Companys]
GO
ALTER TABLE [dbo].[NFeS]  WITH CHECK ADD  CONSTRAINT [FK_NFeS_ShippingCompany] FOREIGN KEY([ShippingCompanyId])
REFERENCES [dbo].[ShippingCompany] ([ShippingCompanyId])
GO
ALTER TABLE [dbo].[NFeS] CHECK CONSTRAINT [FK_NFeS_ShippingCompany]
GO
ALTER TABLE [dbo].[NFeS]  WITH CHECK ADD  CONSTRAINT [FK_NFeS_Takers] FOREIGN KEY([TakerId])
REFERENCES [dbo].[Takers] ([TakerId])
GO
ALTER TABLE [dbo].[NFeS] CHECK CONSTRAINT [FK_NFeS_Takers]
GO
ALTER TABLE [dbo].[NFeSInvoices]  WITH CHECK ADD  CONSTRAINT [FK_NFeSInvoices_NFeS] FOREIGN KEY([NFeSId])
REFERENCES [dbo].[NFeS] ([NFeSId])
GO
ALTER TABLE [dbo].[NFeSInvoices] CHECK CONSTRAINT [FK_NFeSInvoices_NFeS]
GO
ALTER TABLE [dbo].[NFeSItens]  WITH CHECK ADD  CONSTRAINT [FK_NFeSItens_NFeS] FOREIGN KEY([NFeSId])
REFERENCES [dbo].[NFeS] ([NFeSId])
GO
ALTER TABLE [dbo].[NFeSItens] CHECK CONSTRAINT [FK_NFeSItens_NFeS]
GO
ALTER TABLE [dbo].[Options]  WITH CHECK ADD  CONSTRAINT [FK_Options_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[Options] CHECK CONSTRAINT [FK_Options_Questions]
GO
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_Options] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_Options]
GO
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_Questions]
GO
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_Users] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_Users]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Companys] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Companys]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Users]
GO
ALTER TABLE [dbo].[ShippingCompany]  WITH CHECK ADD  CONSTRAINT [FK_ShippingCompany_Companys] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[ShippingCompany] CHECK CONSTRAINT [FK_ShippingCompany_Companys]
GO
ALTER TABLE [dbo].[Takers]  WITH CHECK ADD  CONSTRAINT [FK_Takers_Companys] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[Takers] CHECK CONSTRAINT [FK_Takers_Companys]
GO
ALTER TABLE [dbo].[TaxpayerActivities]  WITH CHECK ADD  CONSTRAINT [FK_TaxpayerActivities_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([CompanyId])
GO
ALTER TABLE [dbo].[TaxpayerActivities] CHECK CONSTRAINT [FK_TaxpayerActivities_Company]
GO
USE [master]
GO
ALTER DATABASE [BD_NFeS] SET  READ_WRITE 
GO
