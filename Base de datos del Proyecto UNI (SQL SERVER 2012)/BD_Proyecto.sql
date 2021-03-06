USE [master]
GO
CREATE DATABASE [alumno]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'alumno', FILENAME = N'f:\Programas\Sql Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\alumno.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'alumno_log', FILENAME = N'f:\Programas\Sql Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\alumno_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [alumno] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [alumno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [alumno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [alumno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [alumno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [alumno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [alumno] SET ARITHABORT OFF 
GO
ALTER DATABASE [alumno] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [alumno] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [alumno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [alumno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [alumno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [alumno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [alumno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [alumno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [alumno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [alumno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [alumno] SET  ENABLE_BROKER 
GO
ALTER DATABASE [alumno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [alumno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [alumno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [alumno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [alumno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [alumno] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [alumno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [alumno] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [alumno] SET  MULTI_USER 
GO
ALTER DATABASE [alumno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [alumno] SET DB_CHAINING OFF 
GO
ALTER DATABASE [alumno] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [alumno] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [alumno]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUSCAR_CLIENTE] 
@NOMBRE VARCHAR(8), @APELLIDO_PA VARCHAR(8)
AS
SELECT * FROM cliente WHERE nombre=@NOMBRE AND apPaterno=@APELLIDO_PA

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[BUSCAR_USUARIO] 
@US VARCHAR(8), @PS VARCHAR(8)
AS
SELECT * FROM usuarios WHERE usuario=@US AND pass=@PS

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ELIMINAR_USUARIO]
@US VARCHAR(8)
AS
DELETE FROM USUARIOS WHERE USUARIO=@US

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GRABAR_CLIENTE]
@NOMBRE VARCHAR(20),@APELLIDO_PA VARCHAR(20), @APELLIDO_MA VARCHAR(20), @TELEFONO VARCHAR(11)
AS
INSERT INTO cliente VALUES(@NOMBRE, @APELLIDO_PA, @APELLIDO_MA, @TELEFONO)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GRABAR_USUARIO]
@US VARCHAR(8),@PS VARCHAR(8)
AS
INSERT INTO usuarios VALUES(@US, @PS)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertar_dos_tablas](@nombreRegion varchar(50), @nombrePais varchar(50))
as
begin
insert into region(nombreRegion) values(@nombreRegion)
 Select @@IDENTITY as identityRegion

 end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertar_dos_tablas_2](@nombreRegion varchar(50), @nombrePais varchar(50))
as
declare @identityRegion int
begin
insert into region(nombreRegion) values(@nombreRegion)
 SET @identityRegion = @@Identity
 insert into pais(nombrePais, idRegion) values(@nombrePais, @identityRegion)
 end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_empleado](@nombreRegion varchar(50), @nombrePais varchar(50), @nombreCalle varchar(50), @codigoPostal varchar(50), @ciudad varchar(50), @provincia varchar(50), @nombreDepartamento varchar(50), @nombre varchar(50), @apPaterno varchar(50), @apMaterno varchar(50), @email varchar(50), @telefono varchar(50), @fechaNac varchar(50), @salario float)
as
declare @identityRegion int
declare @identityPais int
declare @identityLocacion int
declare @identityDepartamento int
begin
insert into region(nombreRegion) values(@nombreRegion)
 SET @identityRegion = @@Identity

 insert into pais(nombrePais, idRegion) values(@nombrePais, @identityRegion)
 SET @identityPais = @@Identity

 insert into locacion(nombreCalle, codigoPostal, ciudad, provincia, idPais) values(@nombreCalle, @codigoPostal, @ciudad, @provincia, @identityPais)
 SET @identityLocacion = @@Identity

 insert into departamento(nombreDepartamento, idLocacion) values(@nombreDepartamento, @identityLocacion)
 SET @identityDepartamento = @@Identity

 insert into empleado(nombre, apPaterno, apMaterno, email, telefono, fechaNac, salario, idDepartamento) values(@nombre, @apPaterno, @apMaterno, @email, @telefono, @fechaNac, @salario, @identityDepartamento)
 end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[MODIFICAR_USUARIO]
@US VARCHAR(8),@PS VARCHAR(8)
AS
UPDATE usuarios SET pass=@PS WHERE usuario=@US

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apPaterno] [varchar](30) NOT NULL,
	[apMaterno] [varchar](30) NOT NULL,
	[telef] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[nombreDepartamento] [varchar](50) NULL,
	[idLocacion] [int] NOT NULL,
 CONSTRAINT [PK_departamento] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apPaterno] [varchar](50) NOT NULL,
	[apMaterno] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[fechaNac] [date] NOT NULL,
	[salario] [float] NOT NULL,
	[idDepartamento] [int] NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locacion](
	[idLocacion] [int] IDENTITY(1,1) NOT NULL,
	[nombreCalle] [varchar](50) NOT NULL,
	[codigoPostal] [varchar](50) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[idPais] [int] NOT NULL,
 CONSTRAINT [PK_locacion] PRIMARY KEY CLUSTERED 
(
	[idLocacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pais](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[nombrePais] [varchar](50) NOT NULL,
	[idRegion] [int] NOT NULL,
 CONSTRAINT [PK_pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[persona](
	[cod] [varchar](8) NOT NULL,
	[nombre] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[idRegion] [int] IDENTITY(1,1) NOT NULL,
	[nombreRegion] [varchar](50) NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[idRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](8) NULL,
	[pass] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_empleados]
as
select r.nombreRegion, p.nombrePais, l.nombreCalle, l.codigoPostal, l.ciudad, l.provincia, d.nombreDepartamento, e.nombre, e.apPaterno, e.apMaterno, e.email, e.telefono, e.fechaNac, e.salario
from region as r 
inner join pais as p on r.idRegion = p.idRegion
inner join locacion as l on l.idPais = p.idPais
inner join departamento as d on d.idLocacion = l.idLocacion
inner join empleado as e on e.idDepartamento = d.idDepartamento

GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (1, N'Rosario', N'Franco', N'Romero', N'908989888')
GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (2, N'Mario', N'Velásquez', N'Figueroa', N'999843333')
GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (3, N'Lola', N'Cruz', N'Palermo', N'43454444')
GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (4, N'RENZO', N'PEREZ', N'ALCORTA', N'434333333')
GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (5, N'RENZO', N'PEREZ', N'ALCORTA', N'43455555')
GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (6, N'ANA', N'Ã?UÃ?OZ', N'LATORRE', N'433333333')
GO
INSERT [dbo].[cliente] ([idCliente], [nombre], [apPaterno], [apMaterno], [telef]) VALUES (7, N'FERNANDO', N'LORA', N'GARCIA', N'43333333')
GO
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[departamento] ON 

GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (1, N'CONTABILIDAD', 1)
GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (2, N'SISTEMAS', 2)
GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (3, N'RR.HH', 3)
GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (4, N'SISTEMAS', 4)
GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (5, N'RR.HH', 5)
GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (6, N'WEFEWF', 6)
GO
INSERT [dbo].[departamento] ([idDepartamento], [nombreDepartamento], [idLocacion]) VALUES (7, N'SISTEMAS', 7)
GO
SET IDENTITY_INSERT [dbo].[departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[empleado] ON 

GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (1, N'CAROL', N'ZANTIAGO', N'HUARAL', N'carolita@hotmail.com', N'433233333', CAST(0x78140B00 AS Date), 3000.99, 1)
GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (2, N'ERNEST', N'FERDINAND', N'ROSSEOU', N'ernest222@gmail.com', N'322122222', CAST(0x2F050B00 AS Date), 3233.44, 2)
GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (3, N'MARÍA', N'LÓPEZ', N'COLCHADO', N'alicia@outlook.com', N'567898000', CAST(0x27050B00 AS Date), 1234.45, 3)
GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (4, N'ANA', N'MUÑOZ', N'TORREZ', N'anita@hotmail.com', N'121123333', CAST(0xAC160B00 AS Date), 2345.54, 4)
GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (5, N'RENZO', N'JANAMPA', N'PEÑA', N'renzito@gmail.com', N'433233333', CAST(0x23030B00 AS Date), 3333.330078125, 5)
GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (6, N'VERV', N'ERVR', N'ERV', N'ERVERV', N'3333333', CAST(0xC9170B00 AS Date), 3322, 6)
GO
INSERT [dbo].[empleado] ([idEmpleado], [nombre], [apPaterno], [apMaterno], [email], [telefono], [fechaNac], [salario], [idDepartamento]) VALUES (7, N'rtyt', N'rtytry', N'rtytry', N'rtytry', N'888888888', CAST(0x6E0B0B00 AS Date), 6666.66015625, 7)
GO
SET IDENTITY_INSERT [dbo].[empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[locacion] ON 

GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (1, N'AV COLMENA 433', N'43333', N'PEÑA NIETO', N'CHEPES', 4)
GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (2, N'AV. QUIN 211', N'44443', N'LONDRES', N'LONDRES', 5)
GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (3, N'AV LEOPARDOS 122', N'4566', N'KOYAN', N'PAKAMBU', 6)
GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (4, N'AV. FERNANDEZ 122', N'BARRANQUILLA', N'BOGOTÁ', N'BOGOTÁ', 7)
GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (5, N'AV. CANGURO 12', N'4565', N'MELBOURNE', N'MELBOURNE', 8)
GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (6, N'WEF', N'233333', N'FWEFE', N'WEFEW', 9)
GO
INSERT [dbo].[locacion] ([idLocacion], [nombreCalle], [codigoPostal], [ciudad], [provincia], [idPais]) VALUES (7, N'RBERBR', N'44444', N'HTRHTRH', N'RTHTRHTRH', 10)
GO
SET IDENTITY_INSERT [dbo].[locacion] OFF
GO
SET IDENTITY_INSERT [dbo].[pais] ON 

GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (1, N'ECUADOR', 5)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (2, N'PERÚ', 6)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (3, N'MELBOURNE', 7)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (4, N'PUERTO RICO', 8)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (5, N'INGLATERRA', 9)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (6, N'SUDÁN', 10)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (7, N'COLOMBIA', 11)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (8, N'ANGAR', 12)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (9, N'WEF', 13)
GO
INSERT [dbo].[pais] ([idPais], [nombrePais], [idRegion]) VALUES (10, N'BOLIVIA', 14)
GO
SET IDENTITY_INSERT [dbo].[pais] OFF
GO
INSERT [dbo].[persona] ([cod], [nombre]) VALUES (N'34343234', N'Lola')
GO
SET IDENTITY_INSERT [dbo].[region] ON 

GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (1, N'AMERICA DEL SUR')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (2, N'ÁFRICA')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (3, N'NORTEAMÉRICA')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (4, N'AMÉRICA DEL SUR')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (5, N'AMÉRICA DEL SUR')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (6, N'AMÉRICA DEL SUR')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (7, N'AUSTRALIA')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (8, N'AMÉRICA CENTRAL')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (9, N'EUROPA')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (10, N'ÁFRICA')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (11, N'AMÉRICA DEL SUR')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (12, N'OCEANÍA')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (13, N'EFEWFE')
GO
INSERT [dbo].[region] ([idRegion], [nombreRegion]) VALUES (14, N'AMÉRICA DEL SUR')
GO
SET IDENTITY_INSERT [dbo].[region] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

GO
INSERT [dbo].[usuarios] ([idUsuario], [usuario], [pass]) VALUES (1, N'JUAN', N'123')
GO
INSERT [dbo].[usuarios] ([idUsuario], [usuario], [pass]) VALUES (2, N'JOSE', N'111')
GO
INSERT [dbo].[usuarios] ([idUsuario], [usuario], [pass]) VALUES (3, N'MARIA', N'222')
GO
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER TABLE [dbo].[departamento]  WITH CHECK ADD  CONSTRAINT [FK_departamento_locacion] FOREIGN KEY([idLocacion])
REFERENCES [dbo].[locacion] ([idLocacion])
GO
ALTER TABLE [dbo].[departamento] CHECK CONSTRAINT [FK_departamento_locacion]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_departamento]
GO
ALTER TABLE [dbo].[locacion]  WITH CHECK ADD  CONSTRAINT [FK_locacion_pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[pais] ([idPais])
GO
ALTER TABLE [dbo].[locacion] CHECK CONSTRAINT [FK_locacion_pais]
GO
ALTER TABLE [dbo].[pais]  WITH CHECK ADD  CONSTRAINT [FK_pais_region] FOREIGN KEY([idRegion])
REFERENCES [dbo].[region] ([idRegion])
GO
ALTER TABLE [dbo].[pais] CHECK CONSTRAINT [FK_pais_region]
GO
USE [master]
GO
ALTER DATABASE [alumno] SET  READ_WRITE 
GO
