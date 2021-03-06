USE [master]
GO
/****** Object:  Database [Inmobiliaria]    Script Date: 14/08/2017 13:40:14 ******/
CREATE DATABASE [Inmobiliaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inmobiliaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Inmobiliaria.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inmobiliaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Inmobiliaria_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inmobiliaria] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inmobiliaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inmobiliaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inmobiliaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inmobiliaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inmobiliaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inmobiliaria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inmobiliaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inmobiliaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inmobiliaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inmobiliaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inmobiliaria] SET RECOVERY FULL 
GO
ALTER DATABASE [Inmobiliaria] SET  MULTI_USER 
GO
ALTER DATABASE [Inmobiliaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inmobiliaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inmobiliaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inmobiliaria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Inmobiliaria]
GO
/****** Object:  Table [dbo].[CASA]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CASA](
	[codCasa] [varchar](20) NOT NULL,
	[AreaC] [char](20) NOT NULL,
	[NrPisos] [int] NOT NULL,
	[NrHabitacionesC] [int] NOT NULL,
	[NrBañosC] [int] NOT NULL,
	[TelefC] [varchar](20) NOT NULL,
	[GarajeC] [varchar](20) NOT NULL,
	[codPropiedad] [varchar](20) NOT NULL,
	[fotoCasa] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[codCasa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRADOR]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRADOR](
	[codCompr] [varchar](20) NOT NULL,
	[ciCompr] [char](20) NULL,
	[nombreCompr] [varchar](20) NOT NULL,
	[apellidoCompr] [varchar](20) NOT NULL,
	[tlfCompr] [char](20) NULL,
	[DireccionCompr] [varchar](20) NULL,
	[CiudadCompr] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[codCompr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPRAVENTA]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPRAVENTA](
	[codCV] [varchar](20) NOT NULL,
	[codPropiedad] [varchar](20) NULL,
	[precioMinVenta] [money] NULL,
	[ValorVenta] [money] NULL,
	[comision] [int] NULL,
	[ComisionVenta] [money] NULL,
	[FechaVenta] [date] NULL,
	[codCompr] [varchar](20) NULL,
	[usrid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEPARTAMENTO]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTAMENTO](
	[codDepart] [varchar](20) NOT NULL,
	[AreaD] [char](20) NOT NULL,
	[NrHabitacionesD] [int] NOT NULL,
	[NrBanosD] [int] NOT NULL,
	[TelefD] [varchar](20) NOT NULL,
	[GarajeD] [varchar](20) NOT NULL,
	[codPropiedad] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codDepart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DUEÑO]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DUEÑO](
	[codDue] [varchar](20) NOT NULL,
	[CIdue] [char](20) NULL,
	[nombreDue] [varchar](20) NOT NULL,
	[apellidoDue] [varchar](20) NOT NULL,
	[tlfDue] [char](20) NULL,
	[DireccionDue] [varchar](20) NULL,
	[CiudadDue] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[codDue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INTERESADOPROPIEDAD]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTERESADOPROPIEDAD](
	[codPropiedad] [varchar](20) NULL,
	[CodInteres] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INTERESADOS]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTERESADOS](
	[codInteres] [varchar](20) NOT NULL,
	[nombreInteres] [varchar](20) NOT NULL,
	[apellidoInteres] [varchar](20) NOT NULL,
	[tlfInteres] [char](20) NULL,
	[DireccionI] [varchar](20) NOT NULL,
	[SectorI] [varchar](20) NOT NULL,
	[CiudadI] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codInteres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERFILES]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERFILES](
	[PRFCODIGOI] [int] NOT NULL,
	[PRFDESCRIPC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PERFILES] PRIMARY KEY CLUSTERED 
(
	[PRFCODIGOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Propiedades]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Propiedades](
	[codPropiedad] [varchar](20) NOT NULL,
	[FechaContrato] [date] NULL,
	[Estado] [varchar](20) NOT NULL,
	[codDue] [varchar](20) NULL,
	[TipoP] [varchar](20) NULL,
	[DireccionT] [varchar](20) NOT NULL,
	[SectorT] [varchar](20) NOT NULL,
	[CiudadT] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TERRENOS]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TERRENOS](
	[codT] [varchar](20) NOT NULL,
	[AreaT] [char](20) NOT NULL,
	[FrenteT] [char](20) NOT NULL,
	[FondoT] [char](20) NOT NULL,
	[codPropiedad] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[codT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[usrid] [int] NOT NULL,
	[usrcedula] [varchar](10) NOT NULL,
	[usrapellidop] [varchar](50) NOT NULL,
	[usrapellidom] [varchar](50) NOT NULL,
	[usrnombrec] [varchar](50) NOT NULL,
	[usrmail] [varchar](50) NOT NULL,
	[usridusuario] [varchar](10) NOT NULL,
	[usrclave] [varchar](50) NOT NULL,
	[prfcodigoi] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[_clientes]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[_clientes]
as 
select nombreDue, apellidoDue, codPropiedad, direccionT from DUEÑO d inner join PROPIEDADES p 
on d.codDue=p.codDue 
where Estado = 'En Venta' 
GO
/****** Object:  View [dbo].[Vw_PropVendi]    Script Date: 14/08/2017 13:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Vw_PropVendi]
as 
select cv.codPropiedad, sectorT from Propiedades p inner join COMPRAVENTA cv
on p.codPropiedad = cv.codPropiedad
group by SectorT, cv.codPropiedad
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Casa_CodPropiedad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Casa_CodPropiedad] ON [dbo].[CASA]
(
	[codPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Comprador_Ciudad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Comprador_Ciudad] ON [dbo].[COMPRADOR]
(
	[CiudadCompr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Comprador_Direccion]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Comprador_Direccion] ON [dbo].[COMPRADOR]
(
	[DireccionCompr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Comprador_nombreYapellido]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Comprador_nombreYapellido] ON [dbo].[COMPRADOR]
(
	[nombreCompr] ASC,
	[apellidoCompr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Departamento_CodPropiedad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Departamento_CodPropiedad] ON [dbo].[DEPARTAMENTO]
(
	[codPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Dueno_Ciudad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Dueno_Ciudad] ON [dbo].[DUEÑO]
(
	[CiudadDue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Dueno_Direccion]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Dueno_Direccion] ON [dbo].[DUEÑO]
(
	[DireccionDue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Dueno_nombreYapellido]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Dueno_nombreYapellido] ON [dbo].[DUEÑO]
(
	[nombreDue] ASC,
	[apellidoDue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_IP_CodInteresados]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_IP_CodInteresados] ON [dbo].[INTERESADOPROPIEDAD]
(
	[CodInteres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_IP_CodPropiedad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_IP_CodPropiedad] ON [dbo].[INTERESADOPROPIEDAD]
(
	[codPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Interesados_Ciudad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Interesados_Ciudad] ON [dbo].[INTERESADOS]
(
	[CiudadI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Interesados_Direccion]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Interesados_Direccion] ON [dbo].[INTERESADOS]
(
	[DireccionI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Interesados_nombreyapellido]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Interesados_nombreyapellido] ON [dbo].[INTERESADOS]
(
	[apellidoInteres] ASC,
	[nombreInteres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Interesados_Sector]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Interesados_Sector] ON [dbo].[INTERESADOS]
(
	[SectorI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Propiedades_Ciudad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Propiedades_Ciudad] ON [dbo].[Propiedades]
(
	[CiudadT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Propiedades_CodDue]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Propiedades_CodDue] ON [dbo].[Propiedades]
(
	[codDue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Propiedades_Direccion]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Propiedades_Direccion] ON [dbo].[Propiedades]
(
	[DireccionT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Propiedades_Estado]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Propiedades_Estado] ON [dbo].[Propiedades]
(
	[Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Propiedades_Sector]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Propiedades_Sector] ON [dbo].[Propiedades]
(
	[SectorT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Propiedades_TipoP]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Propiedades_TipoP] ON [dbo].[Propiedades]
(
	[TipoP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ind_Terrenos_CodPropiedad]    Script Date: 14/08/2017 13:40:14 ******/
CREATE NONCLUSTERED INDEX [ind_Terrenos_CodPropiedad] ON [dbo].[TERRENOS]
(
	[codPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRAVENTA] ADD  DEFAULT (getdate()) FOR [FechaVenta]
GO
ALTER TABLE [dbo].[CASA]  WITH CHECK ADD FOREIGN KEY([codPropiedad])
REFERENCES [dbo].[Propiedades] ([codPropiedad])
GO
ALTER TABLE [dbo].[COMPRAVENTA]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAVENTA_COMPRADOR] FOREIGN KEY([codCompr])
REFERENCES [dbo].[COMPRADOR] ([codCompr])
GO
ALTER TABLE [dbo].[COMPRAVENTA] CHECK CONSTRAINT [FK_COMPRAVENTA_COMPRADOR]
GO
ALTER TABLE [dbo].[COMPRAVENTA]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAVENTA_Propiedades] FOREIGN KEY([codPropiedad])
REFERENCES [dbo].[Propiedades] ([codPropiedad])
GO
ALTER TABLE [dbo].[COMPRAVENTA] CHECK CONSTRAINT [FK_COMPRAVENTA_Propiedades]
GO
ALTER TABLE [dbo].[COMPRAVENTA]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAVENTA_Usuario] FOREIGN KEY([usrid])
REFERENCES [dbo].[Usuario] ([usrid])
GO
ALTER TABLE [dbo].[COMPRAVENTA] CHECK CONSTRAINT [FK_COMPRAVENTA_Usuario]
GO
ALTER TABLE [dbo].[DEPARTAMENTO]  WITH CHECK ADD FOREIGN KEY([codPropiedad])
REFERENCES [dbo].[Propiedades] ([codPropiedad])
GO
ALTER TABLE [dbo].[INTERESADOPROPIEDAD]  WITH CHECK ADD FOREIGN KEY([CodInteres])
REFERENCES [dbo].[INTERESADOS] ([codInteres])
GO
ALTER TABLE [dbo].[INTERESADOPROPIEDAD]  WITH CHECK ADD FOREIGN KEY([codPropiedad])
REFERENCES [dbo].[Propiedades] ([codPropiedad])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([codDue])
REFERENCES [dbo].[DUEÑO] ([codDue])
GO
ALTER TABLE [dbo].[TERRENOS]  WITH CHECK ADD FOREIGN KEY([codPropiedad])
REFERENCES [dbo].[Propiedades] ([codPropiedad])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_PERFILES] FOREIGN KEY([prfcodigoi])
REFERENCES [dbo].[PERFILES] ([PRFCODIGOI])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_PERFILES]
GO
ALTER TABLE [dbo].[COMPRADOR]  WITH CHECK ADD CHECK  (([cicompr] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[COMPRADOR]  WITH CHECK ADD CHECK  (([tlfCompr] like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[DEPARTAMENTO]  WITH CHECK ADD CHECK  (([GarajeD]='n' OR [GarajeD]='s'))
GO
ALTER TABLE [dbo].[DEPARTAMENTO]  WITH CHECK ADD CHECK  (([TelefD]='n' OR [TelefD]='s'))
GO
ALTER TABLE [dbo].[INTERESADOS]  WITH CHECK ADD CHECK  (([tlfInteres] like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD CHECK  (([Estado]='En venta' OR [Estado]='Vendido'))
GO
USE [master]
GO
ALTER DATABASE [Inmobiliaria] SET  READ_WRITE 
GO
