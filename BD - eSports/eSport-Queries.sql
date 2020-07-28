use eSports
go

---------------------------------
----Actualización de Datos-------

UPDATE PERSONAL
SET   PaisPersonal = 'EEUU'
WHERE PaisPersonal = 'Estados Unidos'
GO

UPDATE TORNEO
SET   PaisTorneo = 'EEUU'
WHERE PaisTorneo = 'Estados Unidos'
GO

UPDATE EQUIPO
SET   PaisEquipo = 'EEUU'
WHERE PaisEquipo = 'Estados Unidos'
GO

UPDATE JUGADOR
SET   PaisJugador = 'EEUU'
WHERE PaisJugador = 'Estados Unidos'
GO

---------------------------------
----Eliminación de Datos---------

--ON DELETE CASCADE permite que los datos de todas las tablas relacionadas se borren con facilidad.

--1. PERSONAL
DELETE FROM PERSONAL
WHERE PaisPersonal='Dinamarca'
GO

SELECT * FROM PERSONAL
WHERE PaisPersonal = 'DINAMARCA'

SELECT * FROM DETALLE_PERSONAL
WHERE IdPersonal= 124
GO
--2. EQUIPO
DELETE FROM EQUIPO
WHERE IdEquipo=1170
GO

SELECT * FROM EQUIPO
WHERE IdEquipo=1170
GO

SELECT * FROM JUGADOR
WHERE IdEquipo=1170
GO

--3. JUGADOR

DELETE FROM TORNEO
WHERE IdTorneo=10
GO

SELECT * FROM TORNEO
GO

SELECT * FROM DETALLE_EQUIPO
ORDER BY IdTorneo
GO
---------------------------------
-------Creación de Views---------

---1. Datos personales de comentadores
create view dbo.ComentadoresNombres
as
select PERSONAL.ApePersonal + ', ' + PERSONAL.NomPersonal as [Apellidos y Nombres], PERSONAL.PaisPersonal as País, 
PERSONAL.CargoPersonal as Cargo
from PERSONAL
where CargoPersonal = 'Comentador'
go

select * from ComentadoresNombres
order by País
go

---2. lista de ubicaciones en donde se han realizado los torneos
create view dbo.UbicacionesTorneos
as
select TORNEO.NomTorneo as [Nombre de Torneo], TORNEO.PaisTorneo as País, TORNEO.LugarTorneo as Lugar
from TORNEO
go

select * from UbicacionesTorneos
go

---3. lista de todo el personal que sea de Reino Unido.
create view dbo.PersonalUK
as
select PERSONAL.ApePersonal+ ', ' + PERSONAL.NomPersonal as [Apellidos y Nombres], PERSONAL.PaisPersonal as País, PERSONAL.CargoPersonal as Cargo
from PERSONAL
where PaisPersonal like '%reino%'
go

select * from PersonalUK
order by [Apellidos y Nombres]
go

---4. estadísticas de los torneos con puestos
create view dbo.topPuestos
as
select DETALLE_EQUIPO.Puesto, EQUIPO.NomEquipo as [Nombre de Equipo], DETALLE_EQUIPO.Victorias, DETALLE_EQUIPO.Derrotas, TORNEO.NomTorneo
from DETALLE_EQUIPO
inner join EQUIPO on DETALLE_EQUIPO.IdEquipo = EQUIPO.IdEquipo
inner join TORNEO on TORNEO.IdTorneo = DETALLE_EQUIPO.IdTorneo
go

--se necesita especificar el torneo 
select top 3 * from dbo.topPuestos
where NomTorneo LIKE '%2018%'
order by Puesto
go


---5. personal por nombres, cargo y país.
create view dbo.personalView
as
select PERSONAL.ApePersonal + ', ' + PERSONAL.NomPersonal as [Apellidos y Nombres], PERSONAL.CargoPersonal as Cargo, PERSONAL.PaisPersonal as País
from PERSONAL
go

select * from personalView
order by Cargo, [Apellidos y Nombres],  País
go

---------------------------------
-- Consultas en la Base de Datos-

--- El cliente pide los puestos de cada equipo en el "International 2017" y los datos de su capitán.
select DETALLE_EQUIPO.Puesto, EQUIPO.NomEquipo as Equipo, JUGADOR.ApeJugador + ', ' + JUGADOR.NomJugador as [Apellidos y Nombres], 
JUGADOR.NickJugador as Nickname, JUGADOR.EdadJugador as Edad, JUGADOR.PaisJugador as País
from EQUIPO
inner join DETALLE_EQUIPO on EQUIPO.IdEquipo = DETALLE_EQUIPO.IdEquipo
inner join JUGADOR on EQUIPO.IdEquipo = JUGADOR.IdEquipo
where DETALLE_EQUIPO.IdTorneo = 20 and JUGADOR.CapJugador = 'C'
order by DETALLE_EQUIPO.Puesto
go

--- El cliente pide los datos personales de los ganadores en el "International 2018" ordenados alfabéticamente y su respectivo nombre en el juego.
select JUGADOR.ApeJugador + ', ' + JUGADOR.NomJugador as [Apellidos y Nombres], JUGADOR.NickJugador as Nickname, JUGADOR.EdadJugador as Edad,
JUGADOR.PaisJugador
from JUGADOR
inner join DETALLE_EQUIPO on DETALLE_EQUIPO.IdEquipo = JUGADOR.IdEquipo
where DETALLE_EQUIPO.Puesto = 1 and DETALLE_EQUIPO.IdTorneo = 10
order by [Apellidos y Nombres]
go

--- El cliente pide los datos de los capitanes de los equipos que obtuvieron entre el primer y cuarto lugar en el "International 2018".
select top 4 DETALLE_EQUIPO.Puesto, JUGADOR.ApeJugador + ', ' + JUGADOR.NomJugador as [Apellidos y Nombres], JUGADOR.NickJugador as Nickname, 
EQUIPO.NomEquipo as Equipo
from JUGADOR
inner join EQUIPO on JUGADOR.IdEquipo = EQUIPO.IdEquipo
inner join DETALLE_EQUIPO on JUGADOR.IdEquipo = DETALLE_EQUIPO.IdEquipo
where CapJugador = 'C' and DETALLE_EQUIPO.IdTorneo = 10
order by DETALLE_EQUIPO.Puesto
go



--- El cliente pide una lista de los Anfitriones que participaron en el "International 2017" ordenados alfabéticamente.
select PERSONAL.ApePersonal + ', ' + PERSONAL.NomPersonal as [Apellidos y Nombres], PERSONAL.CargoPersonal as Cargo
from PERSONAL
inner join DETALLE_PERSONAL on PERSONAL.IdPersonal = DETALLE_PERSONAL.IdPersonal
where CargoPersonal = 'Comentador' and DETALLE_PERSONAL.IdTorneo = '20'
order by [Apellidos y Nombres]
go

--- El cliente pide una lista de los equipos que no tienen un país determinado
select EQUIPO.NomEquipo as Equipo, EQUIPO.PaisEquipo as País
from EQUIPO
where PaisEquipo = 'Europa'
order by NomEquipo
go

--- El cliente desea una lista de todos los jugadores menores de 21 ordenados de menor a mayor y el equipo al que pertenecen.
select JUGADOR.ApeJugador + ', ' + JUGADOR.NomJugador as [Apellidos y Nombres], JUGADOR.EdadJugador as Edad, EQUIPO.NomEquipo as Equipo
from JUGADOR
inner join EQUIPO on JUGADOR.IdEquipo = EQUIPO.IdEquipo
where EdadJugador <= 21
order by Edad
go

--- El cliente pide una lista de todos los jugadores participantes en el "International 2018" con nacionalidad China
	select JUGADOR.ApeJugador + ', ' + JUGADOR.NomJugador as [Apellidos y Nombres], JUGADOR.PaisJugador, EQUIPO.NomEquipo as Equipo
	from JUGADOR
	inner join EQUIPO on JUGADOR.IdEquipo = EQUIPO.IdEquipo
	where JUGADOR.PaisJugador = 'China'
	order by [Apellidos y Nombres]
	go

