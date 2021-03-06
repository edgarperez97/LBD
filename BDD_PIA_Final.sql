/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2012 (11.0.5058)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [BDD_PIA]    Script Date: 03/11/2018 08:28:37 ******/
CREATE DATABASE [BDD_PIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDD_PIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BDD_PIA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDD_PIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BDD_PIA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDD_PIA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDD_PIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDD_PIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDD_PIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDD_PIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDD_PIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDD_PIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDD_PIA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDD_PIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDD_PIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDD_PIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDD_PIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDD_PIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDD_PIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDD_PIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDD_PIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDD_PIA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDD_PIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDD_PIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDD_PIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDD_PIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDD_PIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDD_PIA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDD_PIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDD_PIA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDD_PIA] SET  MULTI_USER 
GO
ALTER DATABASE [BDD_PIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDD_PIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDD_PIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDD_PIA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
/****** Object:  Login [WIN-KMFFOM5GQ1G\MasterYoda]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [WIN-KMFFOM5GQ1G\MasterYoda] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'hHUYiLqAF/zXmxxuEaDcVEVaLHaHQLK1TqDqcxqGZ1g=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 03/11/2018 08:28:38 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'CV6qZr8Ve+urm3VBcGGA3QWfBzhy/bRj8Q0pL63NpIc=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[BDD_PIA] TO [WIN-KMFFOM5GQ1G\MasterYoda]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [WIN-KMFFOM5GQ1G\MasterYoda]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
USE [BDD_PIA]
GO
/****** Object:  Table [dbo].[Accion Terapeutica]    Script Date: 03/11/2018 08:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accion Terapeutica](
	[id_accionTerapeutica] [int] NOT NULL,
	[descripcion] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Accion Terapeutica] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/11/2018 08:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_cliente] [uniqueidentifier] NOT NULL,
	[nombre_cliente] [varchar](30) NOT NULL,
	[apellidoPaterno_cliente] [varchar](30) NOT NULL,
	[apellidoMaterno_cliente] [varchar](30) NOT NULL,
	[edad_cliente] [int] NOT NULL,
	[direccion_cliente] [varchar](50) NOT NULL,
	[nom_municipio_cliente] [varchar](50) NOT NULL,
	[nom_estado_cliente] [varchar](50) NOT NULL,
	[codigo_postal_cliente] [nchar](10) NOT NULL,
	[telefono_cliente] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Cliente] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Codigo Postal]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codigo Postal](
	[codigo_postal] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Codigo Postal] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Composicion]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Composicion](
	[sustanciaActiva] [varchar](50) NOT NULL,
	[mg] [nchar](10) NOT NULL,
	[sustancia2] [varchar](50) NULL,
	[mg2] [nchar](10) NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Composicion] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [uniqueidentifier] NOT NULL,
	[nombre_empleado] [varchar](30) NOT NULL,
	[apellidoPaterno_empleado] [varchar](30) NOT NULL,
	[apellidoMaterno_empleado] [varchar](30) NOT NULL,
	[edad_empleado] [int] NOT NULL,
	[direccion_empleado] [varchar](50) NOT NULL,
	[nom_municipio_empleado] [varchar](50) NOT NULL,
	[nom_estado_empleado] [varchar](50) NOT NULL,
	[codigo_postal_empleado] [nchar](10) NOT NULL,
	[telefono_empleado] [nchar](15) NOT NULL,
	[id_tipo_empleado] [int] NOT NULL,
	[id_sucursal_empleado] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Empleado] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[nombre_estado] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Estado] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[nombre_laboratorio] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Laboratorio] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[id_medicamento] [uniqueidentifier] NOT NULL,
	[nombre_medicamento] [varchar](50) NOT NULL,
	[precio_publico] [float] NOT NULL,
	[precio_compra] [float] NOT NULL,
	[fecha_cad] [date] NOT NULL,
	[id_presentacionMedica] [int] NOT NULL,
	[sustanciaActiva] [varchar](50) NOT NULL,
	[nombre_laboratorio] [varchar](50) NOT NULL,
	[id_accionTerapeutica] [int] NOT NULL,
	[id_proveedor] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Medicamento] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[nom_municipio] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Municipio] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Orden de Venta]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden de Venta](
	[id_ordenVenta] [uniqueidentifier] NOT NULL,
	[fecha_ordenVenta] [date] NOT NULL,
	[id_sucursal_ordenVenta] [uniqueidentifier] NOT NULL,
	[id_empleado_ordenVenta] [uniqueidentifier] NULL,
	[id_cliente_ordenVenta] [uniqueidentifier] NOT NULL,
	[id_medicamento_ordenVenta] [uniqueidentifier] NOT NULL,
	[id_producto_ordenVenta] [uniqueidentifier] NOT NULL,
	[id_tipo_pago_ordenVenta] [int] NOT NULL,
	[id_pago_tarjetaCredito_ordenVenta] [uniqueidentifier] NOT NULL,
	[id_pago_tarjetaDebito_ordenVenta] [uniqueidentifier] NOT NULL,
	[monto] [float] NOT NULL,
	[total con iva] [float] NOT NULL,
 CONSTRAINT [PK_Orden de Venta] PRIMARY KEY CLUSTERED 
(
	[id_ordenVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Orden de Venta] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Pago Tarjeta de Credito]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago Tarjeta de Credito](
	[id_pago_tarjetaCredito] [uniqueidentifier] NOT NULL,
	[id_cliente2] [uniqueidentifier] NOT NULL,
	[numero_tarjeta] [nchar](16) NOT NULL,
	[montoCredito] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Pago Tarjeta de Credito] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Pago Tarjeta de Debito]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago Tarjeta de Debito](
	[id_pago_tarjetaDredito_ordenVenta] [uniqueidentifier] NOT NULL,
	[id_cliente3] [uniqueidentifier] NOT NULL,
	[numero_tarjetaD] [nchar](16) NOT NULL,
	[montoDebito] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Pago Tarjeta de Debito] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[nom_pais] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Pais] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PresentacionMedica]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresentacionMedica](
	[id_presentacionMedica] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PresentacionMedica] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[id_producto] [uniqueidentifier] NOT NULL,
	[nombre_producto] [varchar](50) NOT NULL,
	[precio_publico] [float] NOT NULL,
	[precio_compra] [float] NOT NULL,
	[fecha_cad] [date] NOT NULL,
	[id_tipo_producto1] [int] NOT NULL,
	[id_proveedor_prod] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Producto] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_proveedor] [uniqueidentifier] NOT NULL,
	[nombre_proveedor] [varchar](30) NOT NULL,
	[apellidoPaterno_proveedor] [varchar](30) NOT NULL,
	[apellidoMaterno_proveedor] [varchar](30) NOT NULL,
	[edad_proveedor] [int] NOT NULL,
	[direccion_proveedor] [varchar](50) NOT NULL,
	[nom_municipio_proveedor] [varchar](50) NOT NULL,
	[nom_estado_proveedor] [varchar](50) NOT NULL,
	[codigo_postal_proveedor] [nchar](10) NOT NULL,
	[telefono_proveedor] [nchar](15) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Proveedor] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Stock Medicamento]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock Medicamento](
	[id_stockMed] [uniqueidentifier] NOT NULL,
	[id_sucursal_stockMed] [uniqueidentifier] NOT NULL,
	[id_medicamento_stokMed] [uniqueidentifier] NOT NULL,
	[uniddesExistencia] [int] NOT NULL,
	[fechaUltimaCompra] [date] NOT NULL,
	[unidadesVendidas] [int] NOT NULL,
	[fechaUltimaVenta] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Stock Medicamento] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Stock Producto]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock Producto](
	[id_stockProd] [uniqueidentifier] NOT NULL,
	[id_sucursal_stockProd] [uniqueidentifier] NOT NULL,
	[id_producto_stockProd] [uniqueidentifier] NOT NULL,
	[unidadesExistencia] [int] NOT NULL,
	[fechaUltimaCompra] [date] NOT NULL,
	[unidadesVendidas] [int] NOT NULL,
	[fechaUltimaVentas] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Stock Producto] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[id_sucursal] [uniqueidentifier] NOT NULL,
	[nombre_sucursal] [varchar](50) NOT NULL,
	[direccion_sucursal] [varchar](50) NOT NULL,
	[nom_municipio] [varchar](50) NOT NULL,
	[nom_estado] [varchar](50) NOT NULL,
	[codigo_postal] [nchar](10) NOT NULL,
	[telefono_sucursal] [nchar](15) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Sucursal] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tipo de Empleado]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo de Empleado](
	[id_tipo_empleado] [int] NOT NULL,
	[cargo] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Tipo de Empleado] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tipo de Pago]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo de Pago](
	[id_tipo_pago] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Tipo de Pago] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tipo de Producto]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo de Producto](
	[id_tipo_producto] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Tipo de Producto] TO  SCHEMA OWNER 
GO
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (1, N'antibiotico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (2, N'antiviral')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (3, N'antigripal')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (4, N'antihistaminico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (5, N'antipiretico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (6, N'antidiareico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (7, N'antiinflamatorio')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (8, N'antialergico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (9, N'antiacido')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (10, N'antitucivo')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (11, N'analgesico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (12, N'laxante')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (13, N'analgesico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (14, N'anastesico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (15, N'anticonvulsivo')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (16, N'inmunodepresor')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (1, N'antibiotico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (2, N'antiviral')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (3, N'antigripal')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (4, N'antihistaminico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (5, N'antipiretico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (6, N'antidiareico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (7, N'antiinflamatorio')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (8, N'antialergico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (9, N'antiacido')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (10, N'antitucivo')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (11, N'analgesico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (12, N'laxante')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (13, N'analgesico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (14, N'anastesico')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (15, N'anticonvulsivo')
INSERT [dbo].[Accion Terapeutica] ([id_accionTerapeutica], [descripcion]) VALUES (16, N'inmunodepresor')
INSERT [dbo].[Composicion] ([sustanciaActiva], [mg], [sustancia2], [mg2]) VALUES (N'diacereina', N'123       ', NULL, NULL)
INSERT [dbo].[Composicion] ([sustanciaActiva], [mg], [sustancia2], [mg2]) VALUES (N'meloxicam', N'15        ', NULL, NULL)
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Farmindustria')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Laboratorios ac Farma S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Laboratorios Unidos S.A. (LUSA)')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Laboratorios Markos S.A.C.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Productos Roche Q.F. S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Laboratorios Induquimica S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Grunenthal Peruana S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Boehringer Ingelheim')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Abbott Laboratorios S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Laboratorio Farmaceutico S.J. Roxfarma S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Abeefe Bristol Myers Squibb')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'Laboratorios Elifarma S.A.')
INSERT [dbo].[Laboratorio] ([nombre_laboratorio]) VALUES (N'B. Braun Medical Peru S.A.')
INSERT [dbo].[Medicamento] ([id_medicamento], [nombre_medicamento], [precio_publico], [precio_compra], [fecha_cad], [id_presentacionMedica], [sustanciaActiva], [nombre_laboratorio], [id_accionTerapeutica], [id_proveedor]) VALUES (N'a370c59f-7045-4e1e-848b-8e70aad3239d', N'Diclofenaco', 12, 17, CAST(N'2018-01-18' AS Date), 1, N'Diclofenac', N'genomalab', 2, N'26ae5e18-7dec-4e50-a080-834566c1dcd3')
INSERT [dbo].[Medicamento] ([id_medicamento], [nombre_medicamento], [precio_publico], [precio_compra], [fecha_cad], [id_presentacionMedica], [sustanciaActiva], [nombre_laboratorio], [id_accionTerapeutica], [id_proveedor]) VALUES (N'52b6c3b2-f661-4de7-99a9-63a20e5c7844', N'Ciprofloxacino', 45, 30, CAST(N'2019-07-18' AS Date), 2, N'penicilina', N'Farmindustria', 3, N'7deb6798-d84b-4b2b-85a0-f96ecfc70a94')
INSERT [dbo].[Medicamento] ([id_medicamento], [nombre_medicamento], [precio_publico], [precio_compra], [fecha_cad], [id_presentacionMedica], [sustanciaActiva], [nombre_laboratorio], [id_accionTerapeutica], [id_proveedor]) VALUES (N'be5bd82e-102c-45bd-b861-295d281b5db4', N'Complejo B', 64, 45, CAST(N'2019-10-24' AS Date), 2, N'Vitamina B', N'Farma S.A.', 4, N'87908939-ef1a-4290-b447-555c127eacaf')
INSERT [dbo].[PresentacionMedica] ([id_presentacionMedica], [descripcion]) VALUES (6, N'spray')
INSERT [dbo].[PresentacionMedica] ([id_presentacionMedica], [descripcion]) VALUES (1, N'tabletas')
INSERT [dbo].[PresentacionMedica] ([id_presentacionMedica], [descripcion]) VALUES (2, N'suspensión')
INSERT [dbo].[PresentacionMedica] ([id_presentacionMedica], [descripcion]) VALUES (3, N'solución inyectable')
INSERT [dbo].[PresentacionMedica] ([id_presentacionMedica], [descripcion]) VALUES (4, N'capsulas')
INSERT [dbo].[PresentacionMedica] ([id_presentacionMedica], [descripcion]) VALUES (5, N'supositorio')
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre_proveedor], [apellidoPaterno_proveedor], [apellidoMaterno_proveedor], [edad_proveedor], [direccion_proveedor], [nom_municipio_proveedor], [nom_estado_proveedor], [codigo_postal_proveedor], [telefono_proveedor]) VALUES (N'7dc63a04-5c42-436c-bf72-3ac5148630a3', N'Abraham', N'Soto', N'Aguilar', 33, N'almazan no.256', N'Monterrey', N'Nuevo León', N'64260     ', N'8121036934     ')
INSERT [dbo].[Proveedor] ([id_proveedor], [nombre_proveedor], [apellidoPaterno_proveedor], [apellidoMaterno_proveedor], [edad_proveedor], [direccion_proveedor], [nom_municipio_proveedor], [nom_estado_proveedor], [codigo_postal_proveedor], [telefono_proveedor]) VALUES (N'9e999ccd-a9b7-4ff3-9d63-bd4a267f8d2f', N'Bruno', N'Diaz', N'Estrada', 45, N'Paseo del bosque no.48', N'San Jery', N'Guerrero', N'23456     ', N'4566372682     ')
/****** Object:  StoredProcedure [dbo].[ActualizacionDeMedicamento]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizacionDeMedicamento]   
	@nombre_medicamento varchar(50),
	@precio_publico float,
	@precio_compra float,
	@fecha_cad date,
	@id_presentacionMedica int,
	@sustanciaActiva varchar(50),
	@nombre_laboratorio varchar(50),
	@id_accionTerapeutica int,
	@id_proveedor varchar(50)

as
update Medicamento set @precio_publico = precio_publico,
							@precio_compra = precio_compra,
							 @fecha_cad = fecha_cad, 
							 @id_presentacionMedica = id_presentacionMedica,
							 @sustanciaActiva = sustanciaActiva,
							 @nombre_laboratorio = nombre_laboratorio,
							 @id_accionTerapeutica = id_accionTerapeutica,
							 @id_proveedor = id_proveedor
where @nombre_medicamento = nombre_medicamento
GO
ALTER AUTHORIZATION ON [dbo].[ActualizacionDeMedicamento] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[EliminarMedicamentoID]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EliminarMedicamentoID]

	@id_medicamento varchar(50)
as
delete  from Medicamento 
 where @id_medicamento = id_medicamento

GO
ALTER AUTHORIZATION ON [dbo].[EliminarMedicamentoID] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[RegistroDeAccionTerapeutica]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistroDeAccionTerapeutica] 
    @id_accionTerapeutica int,
	@descripcion varchar(30)
as 
begin
insert into [Accion Terapeutica] (id_accionTerapeutica,descripcion)
VALUES (@id_accionTerapeutica,@descripcion)
end
GO
ALTER AUTHORIZATION ON [dbo].[RegistroDeAccionTerapeutica] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[RegistroDeComposicion]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistroDeComposicion]   
    @sustanciaActiva varchar(30),
	@mg nchar(10)
as 
begin
insert into Composicion (sustanciaActiva,mg)
VALUES (@sustanciaActiva,@mg)
end
GO
ALTER AUTHORIZATION ON [dbo].[RegistroDeComposicion] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[RegistroDelaboratorio]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistroDelaboratorio]   
    @nombre_laboratorio varchar(50)
as 
begin
insert into Laboratorio (nombre_laboratorio)
VALUES (@nombre_laboratorio)
end
GO
ALTER AUTHORIZATION ON [dbo].[RegistroDelaboratorio] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[RegistroDeMedicamento]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistroDeMedicamento]   
	@nombre_medicamento varchar(50),
	@precio_publico float,
	@precio_compra float,
	@fecha_cad date,
	@id_presentacionMedica int,
	@sustanciaActiva varchar(50),
	@nombre_laboratorio varchar(50),
	@id_accionTerapeutica int,
	@id_proveedor varchar(50)

as 
begin
insert into Medicamento (id_medicamento,nombre_medicamento,precio_publico,precio_compra,
						fecha_cad,id_presentacionMedica,sustanciaActiva,nombre_laboratorio,
						id_accionTerapeutica,id_proveedor)
VALUES (NEWID(),@nombre_medicamento,@precio_publico,@precio_compra,
				@fecha_cad,@id_presentacionMedica,@sustanciaActiva,
				@nombre_laboratorio,@id_accionTerapeutica,@id_proveedor)
end
GO
ALTER AUTHORIZATION ON [dbo].[RegistroDeMedicamento] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[RegistroDePresentacionMedica]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistroDePresentacionMedica]  
    @id_presentacionMedica int,
	@descripcion varchar(50)
as 
begin
insert into PresentacionMedica(id_presentacionMedica,descripcion)
VALUES (@id_presentacionMedica,@descripcion)
end
GO
ALTER AUTHORIZATION ON [dbo].[RegistroDePresentacionMedica] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[RegistroDeProveedor]    Script Date: 03/11/2018 08:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistroDeProveedor]   
	@nombre_proveedor varchar(30),
	@apellidoPaterno_proveedor varchar(30),
	@apellidoMaterno_proveedor varchar(30),
	@edad_proveedor int,
	@direccion_proveedor varchar(50),
	@nom_municipio varchar(50), 
	@nom_estado varchar(50),
	@codigo_postal nchar(10), 
	@telefono_proveedor nchar(15)
as 
begin
insert into Proveedor(id_proveedor,nombre_proveedor,apellidoPaterno_proveedor,apellidoMaterno_proveedor,edad_proveedor,
					direccion_proveedor,nom_municipio_proveedor,nom_estado_proveedor,codigo_postal_proveedor,telefono_proveedor)
VALUES (NEWID(), @nombre_proveedor,@apellidoPaterno_proveedor,@apellidoMaterno_proveedor,@edad_proveedor,
					@direccion_proveedor, @nom_municipio, @nom_estado, @codigo_postal, @telefono_proveedor)
end
GO
ALTER AUTHORIZATION ON [dbo].[RegistroDeProveedor] TO  SCHEMA OWNER 
GO
USE [master]
GO
ALTER DATABASE [BDD_PIA] SET  READ_WRITE 
GO
