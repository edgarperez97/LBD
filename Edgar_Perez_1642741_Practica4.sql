USE [FARMACIA]
GO
ALTER TABLE [dbo].[Receta] DROP CONSTRAINT [FK_Receta_Paciente]
GO
ALTER TABLE [dbo].[Receta] DROP CONSTRAINT [FK_Receta_Medicamento]
GO
ALTER TABLE [dbo].[Receta] DROP CONSTRAINT [FK_Receta_Doctor]
GO
ALTER TABLE [dbo].[Doctor] DROP CONSTRAINT [FK_Doctor_Empleados]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 27/10/2018 0:57:48 ******/
DROP TABLE [dbo].[Receta]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 27/10/2018 0:57:48 ******/
DROP TABLE [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 27/10/2018 0:57:48 ******/
DROP TABLE [dbo].[Medicamento]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/10/2018 0:57:48 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 27/10/2018 0:57:48 ******/
DROP TABLE [dbo].[Doctor]
GO
USE [master]
GO
/****** Object:  Database [FARMACIA]    Script Date: 27/10/2018 0:57:48 ******/
DROP DATABASE [FARMACIA]
GO
/****** Object:  Database [FARMACIA]    Script Date: 27/10/2018 0:57:48 ******/
CREATE DATABASE [FARMACIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FARMACIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FARMACIA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FARMACIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FARMACIA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FARMACIA] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FARMACIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FARMACIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FARMACIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FARMACIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FARMACIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FARMACIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [FARMACIA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FARMACIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FARMACIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FARMACIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FARMACIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FARMACIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FARMACIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FARMACIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FARMACIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FARMACIA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FARMACIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FARMACIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FARMACIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FARMACIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FARMACIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FARMACIA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FARMACIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FARMACIA] SET RECOVERY FULL 
GO
ALTER DATABASE [FARMACIA] SET  MULTI_USER 
GO
ALTER DATABASE [FARMACIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FARMACIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FARMACIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FARMACIA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FARMACIA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FARMACIA', N'ON'
GO
ALTER DATABASE [FARMACIA] SET QUERY_STORE = OFF
GO
USE [FARMACIA]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 27/10/2018 0:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Cedula] [uniqueidentifier] NOT NULL,
	[Num_Trabajador] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/10/2018 0:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Nom_Trabajador] [nvarchar](50) NOT NULL,
	[Num_Trabajador] [uniqueidentifier] NOT NULL,
	[Puesto] [ntext] NOT NULL,
	[Sueldo] [money] NOT NULL,
	[RFC] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Num_Trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 27/10/2018 0:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[Nom_Med] [nvarchar](max) NOT NULL,
	[Id_Med] [uniqueidentifier] NOT NULL,
	[Restricciones] [text] NOT NULL,
	[Precio] [money] NOT NULL,
	[Caducidad] [date] NOT NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[Id_Med] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 27/10/2018 0:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Nom_Pac] [nvarchar](50) NOT NULL,
	[Edad] [real] NOT NULL,
	[Peso] [float] NOT NULL,
	[Id_Pac] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id_Pac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 27/10/2018 0:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[Id_Pac] [uniqueidentifier] NOT NULL,
	[Cedula] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Id_Receta] [uniqueidentifier] NOT NULL,
	[Id_Med] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[Id_Receta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'9cf404d7-a87c-4bdd-9a7e-10ca61b2eb4a', N'c6df5bdc-32dd-4bb1-b584-f4a4b87a5b1a')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'1e48bd69-fe13-4430-bb5f-1a9708b03026', N'0e3332e3-35e1-422a-934e-2bb616804fc1')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'9f7c31ad-8d7e-4efd-918a-22d5c792f6af', N'b1abe505-8317-4b02-add1-5b4adb0daece')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'7bf5ba31-4202-40a7-acc1-27903cbcad09', N'caad58e7-750b-4a2b-8bcf-7b83673cab2b')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'6b717f10-3952-4a26-aed6-2b66f28f029b', N'3b5669a1-e9a3-470c-a5b1-89e4782f6571')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'5f102613-5546-4cc9-8ddf-93b3d587d3a3', N'6e1091b8-2062-466d-ac79-f64aa3aa0d04')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'64cb1737-5992-474f-9e6a-c30aa56709b0', N'7d601ede-5b2b-42cb-bb26-8ae556055963')
INSERT [dbo].[Doctor] ([Cedula], [Num_Trabajador]) VALUES (N'04e49ee5-7862-481c-b47f-c92fafe22449', N'af9b73f0-3966-4d0b-8e63-3528760ca52b')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Plutarco Calles', N'33c27391-1466-41ed-b509-237ec9693a94', N'Chofer', 7000.0000, N'ee98aca3-a3c0-4250-976c-032cc585967d')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Angel Lopez', N'0e3332e3-35e1-422a-934e-2bb616804fc1', N'Medico', 12000.0000, N'82e17680-a454-4974-bda4-82bb0c5ae44e')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Javier Hernandez', N'af9b73f0-3966-4d0b-8e63-3528760ca52b', N'Medico', 12000.0000, N'8e0c3d73-b075-4d41-8d61-332a0d4dd93d')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Nancy Carrillo', N'24ca02a4-2537-44cb-acc0-4e4c08535eda', N'Enfermera', 8500.0000, N'0c3432ac-4bf4-4939-bb6e-71491182005d')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Cristobal Colon', N'b1f7dffb-efad-4b37-8967-58cb75f5ce35', N'Enfermero', 8500.0000, N'9293de7c-721c-42c2-b46f-122ba30118ea')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Francisco Melendez', N'b1abe505-8317-4b02-add1-5b4adb0daece', N'Medico', 12000.0000, N'fbf876f3-87ca-4ac6-a84b-4488ab13fe86')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Lucia Fernandez', N'f4c2ac49-441e-4996-b98d-6dddaea2318e', N'Enfermera', 8500.0000, N'3f1d39dd-8b92-4e74-bb5d-19501386c859')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Sthepanie Cardona', N'529707a0-f044-43bf-a2dc-7b609b8e580c', N'Enfermera', 8500.0000, N'c278b5f6-27b4-4a51-82b7-6a8ae8699e8f')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Elias Torres', N'caad58e7-750b-4a2b-8bcf-7b83673cab2b', N'Medico', 12000.0000, N'b9f0c876-289b-4974-99d2-c4d7d55324da')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Gustavo Candela', N'3b5669a1-e9a3-470c-a5b1-89e4782f6571', N'Medico', 12000.0000, N'6852f702-ec7c-4218-99af-21651c04bf6c')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Katya', N'7d601ede-5b2b-42cb-bb26-8ae556055963', N'Enfermera', 1000.0000, N'89a4e5e0-d433-4778-951b-f5565a607fb0')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Roberto Garza', N'ff770544-0e6b-4a82-a8de-d050cf143d72', N'Chofer', 7000.0000, N'5382569e-25b3-401a-b9ac-6c396e177004')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Dulce Vargas', N'55945bd6-1965-455c-a566-e5d66cfc3733', N'Laboratorista', 7500.0000, N'14d184d4-d61b-47f1-8520-ed0a1431830a')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Ricardo Ferreti', N'62d4c4b3-670f-40d7-8456-e672414a7eae', N'Laboratorista', 7500.0000, N'b921f524-a0e3-4aa1-a6d0-e24e91ac21dd')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Elva Guillen', N'c6df5bdc-32dd-4bb1-b584-f4a4b87a5b1a', N'Medico', 12000.0000, N'1688eb0f-e0e5-43e6-b122-321b25ee6f19')
INSERT [dbo].[Empleados] ([Nom_Trabajador], [Num_Trabajador], [Puesto], [Sueldo], [RFC]) VALUES (N'Erick Gutierrez', N'6e1091b8-2062-466d-ac79-f64aa3aa0d04', N'Medico', 12000.0000, N'edc71648-4e65-4cbc-b2a1-c6c1cb156b0b')
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Omeprazol', N'7384d4b9-fc0e-421c-a45f-0f5d36d86975', N'Hipersensibilidad. No mayores de 50 años. No mujeres embarazadas o en lactancia. Se vende sin receta.', 65.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Paracetamol', N'c93f2238-b5ea-481e-a225-1aaa78174472', N'Hipersensibilidad. No se debe administrar por periodos prolongados. No menores de 12 años. No mujeres embarazadas o en lactancia. Se vende sin receta.', 25.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Loperamida', N'58b8ccb7-ce93-4a15-a35a-2195ef90fd9e', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 55.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Diclofenaco', N'fc10844e-f812-4600-8b4a-2839623d067d', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 45.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Metoclopramida', N'1e66dd8a-3276-46f1-9421-2b589e32ce25', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su vente', 40.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Difenidol', N'ade97146-8f7d-47b5-86e4-319955d194dc', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 35.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Gentamicina', N'df4f8701-5b9b-40be-923e-35a6a4d45189', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su venta', 80.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Loratadina', N'8ba76421-54f4-49db-a912-4675afa49272', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 35.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Clorfenamina', N'2fd7adfa-a5a2-479d-b7e9-4a61576da5ce', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 30.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Amikacina', N'1a07bf1a-32f3-4c2d-b943-59708bbe8aa3', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su venta', 100.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Butilhioscina', N'5d73cb79-601e-4b48-8e5d-59dc7014ced9', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 60.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Magaldrato', N'73a5b088-e7b1-454e-96f0-65d88affd710', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 25.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Metamizol Sodico', N'afa0c263-59ba-42b0-93d0-7ae51d89cc41', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su venta', 105.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Cortisol ', N'417d0332-156a-402e-b72e-833a26c037c8', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su vente', 75.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Ranitidina', N'7caaa76c-97e4-4f8e-9a7d-8710e28d9f21', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su venta', 30.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Naproxeno', N'9723d97f-63db-4651-bd3b-89e0f3c9880a', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su venta', 65.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Ibuprofeno', N'add0fcc3-e0ff-42ae-80ed-9f5b58dd396d', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 50.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Diazepam', N'bd809e34-2fb3-40e8-9ca7-a3e40be18048', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su vente', 50.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Ampicilina', N'5ea4ddb9-8d2d-4908-9c69-ae4c1ee7f2c0', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se requiere receta para su venta', 90.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Benzocaina', N'dbfeea7d-adf4-4a0e-9392-ae8c130eee2d', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 65.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Ketorolako', N'f8835817-86c2-402b-9d33-b2802dcb5db0', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 45.0000, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Medicamento] ([Nom_Med], [Id_Med], [Restricciones], [Precio], [Caducidad]) VALUES (N'Aspirina', N'5f2503c9-2164-4c54-b23b-c1be1839da79', N'Hipersensibilidad. No mujeres embarazadas o en lactancia. Se vende sin receta', 35.0000, CAST(N'2018-10-27' AS Date))
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Fernando del Rio Nieto', 27, 71, N'c62ff84e-8b71-4dae-b004-10e74945af33')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Cristobal Anceres Montemayor', 21, 66.5, N'bae6a765-bd8a-486d-bfc5-2380e17bd123')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Francisco Soto Mendoza', 35, 86.5, N'dd29cb5d-a557-40b1-9395-39712caa4571')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Cecilia Salazar Bernal', 41, 77.5, N'6511f8a3-a4b0-4d82-8c36-3e3cc9569430')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Angel Gutierrez Hernandez', 45, 76, N'34e20713-a381-4e8a-93ac-460049335c62')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Javier Flores Hernandez', 46, 69.5, N'520964f8-f801-4250-b405-4f1b132972c2')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Benito Juarez Garza', 19, 74, N'cddc2fd8-1d07-4075-af89-527dfbc1bcd4')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Maria Del Rosario Fernandez', 15, 83.5, N'212f444a-c5f7-45c7-bd8f-5fa719eb22b9')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Elias Bernal Gonzalez', 36, 69, N'a50c3492-b000-4673-84b7-6b32e19857c7')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Federico Hernandez Cacho', 18, 98.5, N'871b929d-e967-4f4b-b6c0-796b2813b8a1')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Roberto Mendoza Garcia', 19, 63, N'676c5740-ef59-43fa-b432-844bbf30bffd')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Guadalupe Solis Gutierrez', 26, 64.5, N'b22613b8-cb70-4263-a7ba-857b9954437e')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Fernanda Guillen Lopez', 34, 72.5, N'c25c3e44-0ed4-44cf-9c73-85f9e807a8e2')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Marisol Garza Nieto', 17, 86, N'1c80c60f-876c-446a-87c3-b0ab45ef24f7')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Juan Rosas Garcia', 38, 85.5, N'77c7f36b-a9d6-4b2d-9fe3-b410c0cc3892')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'David Gonzalez Garcia', 31, 63, N'c2069389-b99f-4e73-9494-d3f480b6e655')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Edwin Hernandez Carrillo', 23, 79, N'cf7531c6-c803-41ee-b54f-e3ce2d99ff8e')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Itzel Lopez Mena', 26, 84.5, N'2d49b5e2-3bdd-4137-859e-ed2abcd249db')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Gabriela Serrano Quiroz', 27, 72.5, N'e5c0d76f-3825-4c93-a374-f16c3deffab5')
INSERT [dbo].[Paciente] ([Nom_Pac], [Edad], [Peso], [Id_Pac]) VALUES (N'Diana Martinez Rodriguez', 32, 90, N'4e4f26e2-c08c-4d24-b915-f8fc32a74654')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'c2069389-b99f-4e73-9494-d3f480b6e655', N'64cb1737-5992-474f-9e6a-c30aa56709b0', CAST(N'2018-10-27' AS Date), N'8e1c2162-b37f-469a-be58-06a1b65b242a', N'8ba76421-54f4-49db-a912-4675afa49272')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'bae6a765-bd8a-486d-bfc5-2380e17bd123', N'1e48bd69-fe13-4430-bb5f-1a9708b03026', CAST(N'2018-10-27' AS Date), N'12a739c9-99ec-4419-9ded-0ae08815640a', N'f8835817-86c2-402b-9d33-b2802dcb5db0')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'a50c3492-b000-4673-84b7-6b32e19857c7', N'7bf5ba31-4202-40a7-acc1-27903cbcad09', CAST(N'2018-10-27' AS Date), N'1b3d22dc-90c2-47ab-8b49-2d8e100f19fc', N'f8835817-86c2-402b-9d33-b2802dcb5db0')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'1c80c60f-876c-446a-87c3-b0ab45ef24f7', N'9cf404d7-a87c-4bdd-9a7e-10ca61b2eb4a', CAST(N'2018-10-27' AS Date), N'ae2c12b7-ac46-4fc5-9f43-2faafa864a4e', N'ade97146-8f7d-47b5-86e4-319955d194dc')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'676c5740-ef59-43fa-b432-844bbf30bffd', N'5f102613-5546-4cc9-8ddf-93b3d587d3a3', CAST(N'2018-10-27' AS Date), N'42cd6e03-077c-489b-b8cd-342dc3c3df1c', N'ade97146-8f7d-47b5-86e4-319955d194dc')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'520964f8-f801-4250-b405-4f1b132972c2', N'9f7c31ad-8d7e-4efd-918a-22d5c792f6af', CAST(N'2018-10-27' AS Date), N'ab1595f4-c8ae-4cc4-9d8e-42dd296ab77c', N'7384d4b9-fc0e-421c-a45f-0f5d36d86975')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'34e20713-a381-4e8a-93ac-460049335c62', N'9cf404d7-a87c-4bdd-9a7e-10ca61b2eb4a', CAST(N'2018-10-27' AS Date), N'983910db-0909-400b-bf9e-44e13ede403c', N'c93f2238-b5ea-481e-a225-1aaa78174472')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'e5c0d76f-3825-4c93-a374-f16c3deffab5', N'6b717f10-3952-4a26-aed6-2b66f28f029b', CAST(N'2018-10-27' AS Date), N'5f113154-2549-44cf-ab82-4a8bfb6f237c', N'2fd7adfa-a5a2-479d-b7e9-4a61576da5ce')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'c62ff84e-8b71-4dae-b004-10e74945af33', N'9cf404d7-a87c-4bdd-9a7e-10ca61b2eb4a', CAST(N'2018-10-27' AS Date), N'aa8cb64f-19f4-47b9-b727-6858e9fca8b0', N'9723d97f-63db-4651-bd3b-89e0f3c9880a')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'871b929d-e967-4f4b-b6c0-796b2813b8a1', N'6b717f10-3952-4a26-aed6-2b66f28f029b', CAST(N'2018-10-27' AS Date), N'092cd4c2-b534-4651-912b-6dbe249192fa', N'5f2503c9-2164-4c54-b23b-c1be1839da79')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'2d49b5e2-3bdd-4137-859e-ed2abcd249db', N'5f102613-5546-4cc9-8ddf-93b3d587d3a3', CAST(N'2018-10-27' AS Date), N'06683e0b-5b85-4e22-b32f-761255f67079', N'8ba76421-54f4-49db-a912-4675afa49272')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'cf7531c6-c803-41ee-b54f-e3ce2d99ff8e', N'04e49ee5-7862-481c-b47f-c92fafe22449', CAST(N'2018-10-27' AS Date), N'45fc66e5-369e-45c0-9524-8205d69c0762', N'7384d4b9-fc0e-421c-a45f-0f5d36d86975')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'b22613b8-cb70-4263-a7ba-857b9954437e', N'64cb1737-5992-474f-9e6a-c30aa56709b0', CAST(N'2018-10-27' AS Date), N'e342c368-c56d-40da-90ee-882196b1eb3e', N'2fd7adfa-a5a2-479d-b7e9-4a61576da5ce')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'77c7f36b-a9d6-4b2d-9fe3-b410c0cc3892', N'6b717f10-3952-4a26-aed6-2b66f28f029b', CAST(N'2018-10-27' AS Date), N'0b4607a6-771d-4432-953a-a8d1dabae9cc', N'f8835817-86c2-402b-9d33-b2802dcb5db0')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'c25c3e44-0ed4-44cf-9c73-85f9e807a8e2', N'5f102613-5546-4cc9-8ddf-93b3d587d3a3', CAST(N'2018-10-27' AS Date), N'297233d6-f599-48bc-a721-bffc1ec2fe87', N'c93f2238-b5ea-481e-a225-1aaa78174472')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'212f444a-c5f7-45c7-bd8f-5fa719eb22b9', N'7bf5ba31-4202-40a7-acc1-27903cbcad09', CAST(N'2018-10-27' AS Date), N'5cf30d77-2106-4ed4-96e9-c46f7576b27d', N'7384d4b9-fc0e-421c-a45f-0f5d36d86975')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'6511f8a3-a4b0-4d82-8c36-3e3cc9569430', N'9f7c31ad-8d7e-4efd-918a-22d5c792f6af', CAST(N'2018-10-27' AS Date), N'c7ad9f73-9d46-49e4-a852-d1e4c898ed45', N'c93f2238-b5ea-481e-a225-1aaa78174472')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'4e4f26e2-c08c-4d24-b915-f8fc32a74654', N'9f7c31ad-8d7e-4efd-918a-22d5c792f6af', CAST(N'2018-10-27' AS Date), N'1ee3cb7d-af01-4c12-8948-dfdf38a5b4ed', N'5f2503c9-2164-4c54-b23b-c1be1839da79')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'dd29cb5d-a557-40b1-9395-39712caa4571', N'1e48bd69-fe13-4430-bb5f-1a9708b03026', CAST(N'2018-10-27' AS Date), N'063346eb-4e6f-45eb-93db-e56853dc665d', N'ade97146-8f7d-47b5-86e4-319955d194dc')
INSERT [dbo].[Receta] ([Id_Pac], [Cedula], [Fecha], [Id_Receta], [Id_Med]) VALUES (N'cddc2fd8-1d07-4075-af89-527dfbc1bcd4', N'1e48bd69-fe13-4430-bb5f-1a9708b03026', CAST(N'2018-10-27' AS Date), N'cec039e1-e4e4-4a76-8f7d-e7d5ebc2c3f4', N'2fd7adfa-a5a2-479d-b7e9-4a61576da5ce')
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Empleados] FOREIGN KEY([Num_Trabajador])
REFERENCES [dbo].[Empleados] ([Num_Trabajador])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Empleados]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Doctor] FOREIGN KEY([Cedula])
REFERENCES [dbo].[Doctor] ([Cedula])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Doctor]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Medicamento] FOREIGN KEY([Id_Med])
REFERENCES [dbo].[Medicamento] ([Id_Med])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Medicamento]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Paciente] FOREIGN KEY([Id_Pac])
REFERENCES [dbo].[Paciente] ([Id_Pac])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Paciente]
GO
USE [master]
GO
ALTER DATABASE [FARMACIA] SET  READ_WRITE 
GO