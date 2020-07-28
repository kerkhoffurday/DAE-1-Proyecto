use eSports
go

---------------------------------
--- Agregar Datos ---------------

--- Tabla Personal
insert into PERSONAL values('100', 'Cho', 'William', 'Corea del Sur', 'Anfitrión')
insert PERSONAL values('101', 'Richardson', 'Alex', 'Reino Unido', 'Anfitrión')
insert PERSONAL values('102', 'Chaloner', 'Paul', 'Reino Unido', 'Anfitrión')
insert PERSONAL values('103', 'van der Heijden', 'Jorien', 'Holanda', 'Anfitrión')
insert PERSONAL values('104', 'Graham', 'Marcus', 'Estados Unidos', 'Anfitrión')
insert PERSONAL values('105', 'Leibig', 'Jonathan', 'Alemania', 'Observador')
insert PERSONAL values('106', 'Holm Melin', 'Rikard', 'Suecia', 'Observador')
insert PERSONAL values('107', 'Westberg', 'Johan', 'Suecia', 'Observador')
insert PERSONAL values('108', 'Aitchison', 'Kaci', 'Estados Unidos', 'Creador de Contenido')
insert PERSONAL values('109', 'Chen', 'Ken', 'Estados Unidos', 'Creador de Contenido')
insert PERSONAL values('110', 'Forsyth', 'Ted', 'Reino Unido', 'Creador de Contenido')
insert PERSONAL values('111', 'Kanner', 'Jake', 'Estados Unidos', 'Creador de Contenido')
insert PERSONAL values('112', 'Walsh', 'Austin', 'Estados Unidos', 'Comentador')
insert PERSONAL values('113', 'Parker', 'David', 'Australia', 'Comentador')
insert PERSONAL values('114', 'Harris', 'Grant', 'Estados Unidos', 'Comentador')
insert PERSONAL values('115', 'Zhang', 'David', 'Estados Unidos', 'Comentador')
insert PERSONAL values('116', 'Cruz', 'Gabriel', 'Estados Unidos', 'Comentador')
insert PERSONAL values('117', 'Davies', 'Owen', 'Reino Unido', 'Comentador')
insert PERSONAL values('118', 'Dawson', 'Toby', 'Australia', 'Comentador')
insert PERSONAL values('119', 'MacKenzie', 'Trent', 'Canadá', 'Comentador')
insert PERSONAL values('120', 'Lee', 'William', 'Estados Unidos', 'Comentador')
insert PERSONAL values('121', 'Canavan', 'Brian', 'Estados Unidos', 'Comentador')
insert PERSONAL values('122', 'Loucas', 'Ioannis', 'Estados Unidos', 'Comentador')
insert PERSONAL values('123', 'Freedman', 'Kyle', 'Estados Unidos', 'Comentador')
insert PERSONAL values('124', 'Lyngholt Nielsen', 'Troels', 'Dinamarca', 'Comentador')
insert PERSONAL values('125', 'Litt Binn', 'Chan', 'Malasia', 'Comentador')
insert PERSONAL values('126', 'Bester', 'Alan', 'Estados Unidos', 'Comentador')
insert PERSONAL values('127', 'Tae-won', 'Park', 'Corea del Sur', 'Comentador')
insert PERSONAL values('128', 'Godec', 'Kevin', 'Estados Unidos', 'Comentador')
insert PERSONAL values('129', 'Reitmeier', 'Dominik', 'Alemania', 'Comentador')
insert PERSONAL values('130', 'Plott', 'Sean', 'Estados Unidos', 'Anfitrión')
insert PERSONAL values('131', 'Lee Stiles', 'Andy', 'Estados Unidos', 'Comentador')
insert PERSONAL values('132', 'Gorman', 'David', 'Estados Unidos', 'Comentador')
insert PERSONAL values('133', 'Wu', 'Ben', 'Estados Unidos', 'Comentador')
insert PERSONAL values('134', 'Akterhall', 'Joakim', 'Suecia', 'Analista')
insert PERSONAL values('135', 'Callahan', 'Quinn', 'Estados Unidos', 'Analista')
insert PERSONAL values('136', 'Anders Olsson Lille', 'Per', 'Suecia', 'Analista')
insert PERSONAL values('137', 'Dager', 'Peter', 'Estados Unidos', 'Analista')


--- Tabla Juego
insert JUEGO values('1', 'Dota 2', 'Valve', '20130709', 'MOBA')

--- Tabla Torneo
insert TORNEO values('10', 'The International 2018', 'Valve', 'Canadá', 'Rogers Arena', '20180815', '20180825', '1')
insert TORNEO values('20', 'The International 2017', 'Valve', 'Estados Unidos', 'KeyArena', '20170802', '20170812', '1')

--- Tabla Detalle Personal
insert DETALLE_PERSONAL values('100', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('101', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('102', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('103', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('104', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('105', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('106', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('107', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('108', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('109', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('110', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('111', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('112', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('113', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('114', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('115', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('116', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('117', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('118', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('119', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('120', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('121', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('122', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('123', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('124', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('125', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('126', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('127', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('128', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('129', '10', '20180815', '20180825')
insert DETALLE_PERSONAL values('101', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('103', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('106', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('107', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('108', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('109', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('110', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('111', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('113', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('115', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('117', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('118', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('120', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('122', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('124', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('125', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('128', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('130', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('131', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('132', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('133', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('134', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('135', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('136', '20', '20170802', '20170812')
insert DETALLE_PERSONAL values('137', '20', '20170802', '20170812')

--- Tabla Equipo
insert into EQUIPO values('1000', 'Virtus.pro', 'Rusia')
insert into EQUIPO values('1010', 'Team Liquid', 'Europa')
insert into EQUIPO values('1020', 'PSG.LGD', 'China')
insert into EQUIPO values('1030', 'Team Secret', 'Europa')
insert into EQUIPO values('1040', 'Mineski', 'Filipinas')
insert into EQUIPO values('1050', 'Vici Gaming', 'China')
insert into EQUIPO values('1060', 'Newbee', 'China')
insert into EQUIPO values('1070', 'VGJ.Thunder', 'China')
insert into EQUIPO values('1080', 'OG', 'Europa')
insert into EQUIPO values('1090', 'Winstrike Team', 'Rusia')
insert into EQUIPO values('1100', 'Team Serenity', 'China')
insert into EQUIPO values('1110', 'Invictus Gaming', 'China')
insert into EQUIPO values('1120', 'Fnatic', 'Malasia')
insert into EQUIPO values('1130', 'TNC Predator', 'Filipinas')
insert into EQUIPO values('1140', 'VGJ.Storm', 'Estados Unidos')
insert into EQUIPO values('1150', 'Evil Geniuses', 'Estados Unidos')
insert into EQUIPO values('1160', 'OpTic Gaming', 'Estados Unidos')
insert into EQUIPO values('1170', 'paiN Gaming', 'Brasil')

--- Tabla Detalle Equipo
insert into DETALLE_EQUIPO values('1000', '10', '10', '6','5');
insert into DETALLE_EQUIPO values('1010', '10', '13', '3','4');
insert into DETALLE_EQUIPO values('1020', '10', '11', '5','2');
insert into DETALLE_EQUIPO values('1030', '10', '8', '8','6');
insert into DETALLE_EQUIPO values('1040', '10', '5', '11','10');
insert into DETALLE_EQUIPO values('1050', '10', '7', '9','12');
insert into DETALLE_EQUIPO values('1060', '10', '8', '8','15');
insert into DETALLE_EQUIPO values('1070', '10', '6', '10','16');
insert into DETALLE_EQUIPO values('1080', '10', '9', '7','1');
insert into DETALLE_EQUIPO values('1090', '10', '4', '12','11');
insert into DETALLE_EQUIPO values('1100', '10', '7', '9','9');
insert into DETALLE_EQUIPO values('1110', '10', '4', '12','17');
insert into DETALLE_EQUIPO values('1120', '10', '7', '9','13');
insert into DETALLE_EQUIPO values('1130', '10', '7', '9','14');
insert into DETALLE_EQUIPO values('1140', '10', '12', '4','8');
insert into DETALLE_EQUIPO values('1150', '10', '13', '3','3');
insert into DETALLE_EQUIPO values('1160', '10', '8', '8','7');
insert into DETALLE_EQUIPO values('1170', '10', '5', '11','18');
insert into DETALLE_EQUIPO values('1000', '20', '10', '6','5');
insert into DETALLE_EQUIPO values('1010', '20', '13', '3','1');
insert into DETALLE_EQUIPO values('1020', '20', '12', '4','4');
insert into DETALLE_EQUIPO values('1030', '20', '7', '9','9');
insert into DETALLE_EQUIPO values('1040', '20', '5', '11','13');
insert into DETALLE_EQUIPO values('1050', '20', '5', '11','15');
insert into DETALLE_EQUIPO values('1060', '20', '11', '5','2');
insert into DETALLE_EQUIPO values('1080', '20', '9', '7','8');
insert into DETALLE_EQUIPO values('1090', '20', '6', '10','14');
insert into DETALLE_EQUIPO values('1100', '20', '6', '10','12');
insert into DETALLE_EQUIPO values('1110', '20', '10', '6','6');
insert into DETALLE_EQUIPO values('1120', '20', '2', '14','17');
insert into DETALLE_EQUIPO values('1130', '20', '9', '7','11');
insert into DETALLE_EQUIPO values('1140', '20', '6', '10','7');
insert into DETALLE_EQUIPO values('1150', '20', '11', '5','10');
insert into DETALLE_EQUIPO values('1160', '20', '14', '2','3');
insert into DETALLE_EQUIPO values('1170', '20', '1', '15','18');

--- Tabla Jugador
insert JUGADOR values('1001', 'Kushnarev', 'Roman', 'RAMZES666', '19', 'Rusia', '', '1000')
insert JUGADOR values('1002', 'Minenko', 'Vladimir', 'No[o]ne', '20', 'Ucrania', '', '1000')
insert JUGADOR values('1003', 'Khvastunov', 'Pavel', '9pasha', '26', 'Rusia', '', '1000')
insert JUGADOR values('1004', 'Nikogosyan', 'Vladimir', 'RodjER', '24', 'Rusia', '', '1000')
insert JUGADOR values('1005', 'Berezin', 'Alexei', 'Solo', '28', 'Rusia', 'C', '1000')
insert JUGADOR values('1011', 'Urpalainen', 'Lasse', 'MATUMBAMAN', '23', 'Finlandia', '', '1010')
insert JUGADOR values('1012', 'Al-Barkawi', 'Amer', 'Miracle-', '21', 'Jordania', '', '1010')
insert JUGADOR values('1013', 'Borislavov', 'Ivan', 'MinD_ContRoL', '23', 'Bulgaria', '', '1010')
insert JUGADOR values('1014', 'Merhej', 'Maroun', 'GH', '23', 'Libano', '', '1010') 
insert JUGADOR values('1015', 'Salehi Takhasomi', 'Kuro', 'KuroKy', '26', 'Alemania', 'C', '1010') 
insert JUGADOR values('1021', 'Chunyu', 'Wang', 'Ame', '21', 'China', '', '1020')
insert JUGADOR values('1022', 'Yao', 'Lu', 'SomnusM', '22', 'China', '', '1020')
insert JUGADOR values('1023', 'Shenyi', 'Yang', 'Chalice', '20', 'China', '', '1020')
insert JUGADOR values('1024', 'Jian Wei', 'Yap', 'xNova', '21', 'Malasia', '', '1020')
insert JUGADOR values('1025', 'Linsen', 'Xu', 'fy', '23', 'China', 'C', '1020')
insert JUGADOR values('1031', 'Hoelgaard', 'Marcus', 'Ace', '24', 'Dinamarca', '', '1030')
insert JUGADOR values('1032', 'Nai Zheng', 'Yeik', 'MidOne', '22', 'Malasia', '', '1030')
insert JUGADOR values('1033', 'Trinks', 'Adrian', 'Fata', '25', 'Alemania', '', '1030')
insert JUGADOR values('1034', 'Jaradat', 'Yazied', 'YapzOr', '24', 'Jordania', '', '1030')
insert JUGADOR values('1035', 'Ivanov', 'Clement', 'Puppey', '28', 'Estonia', 'C', '1030')
insert JUGADOR values('1041', 'Boon Seng', 'Kam', 'NaNa', '23', 'Malasia', '', '1040')
insert JUGADOR values('1042', 'Koh Pei Xiang', 'Daryl', 'iceiceice', '28', 'Singapur', '', '1040')
insert JUGADOR values('1043', 'Jirawong', 'Anucha', 'Jabz', '20', 'Tailandia', '', '1040')
insert JUGADOR values('1044', 'Ross Jr.', 'Michael', 'ninjaboogie', '26', 'Filipinas', '', '1040')
insert JUGADOR values('1045', 'Yee Fung', 'Chai', 'Mushi', '28', 'Malasia', 'C', '1040')
insert JUGADOR values('1051', 'Chengjun', 'Zhang', 'Paparazi', '22', 'China', '', '1050')
insert JUGADOR values('1052', 'Jiaoyang', 'Zeng', 'Ori', '23', 'China', '', '1050')
insert JUGADOR values('1053', 'Yangwei', 'Ren', 'eLeVeN', '22', 'China', '', '1050')
insert JUGADOR values('1054', 'Zhicheng', 'Zhang', 'LaNm', '28', 'China', '', '1050')
insert JUGADOR values('1055', 'Chao', 'Lu', 'Fenrir', '29', 'China', 'C', '1050')
insert JUGADOR values('1061', 'Han', 'Xu', 'Moogy', '24', 'China', '', '1060')
insert JUGADOR values('1062', 'Chun', 'Song', 'Sccc', '23', 'China', '', '1060')
insert JUGADOR values('1063', 'Chok', 'Damien', 'kpii', '25', 'Australia', '', '1060')
insert JUGADOR values('1064', 'Hongda', 'Zeng', 'faith', '26', 'China', '', '1060')
insert JUGADOR values('1065', 'Liangzhi', 'Hu', 'Kaka', '26', 'China', 'C', '1060')
insert JUGADOR values('1071', 'Jiajun', 'Liu', 'Sylar', '24', 'China', '', '1070')
insert JUGADOR values('1072', 'Jie', 'Zheng', 'ghost', '22', 'China', '', '1070')
insert JUGADOR values('1073', 'Haiyang', 'Zhou', 'Yang', '22', 'China', '', '1070')
insert JUGADOR values('1074', 'Fat-meng', 'Leong', 'ddc', '28', 'Macao', '', '1070')
insert JUGADOR values('1075', 'Yi', 'Pan', 'Fade', '22', 'China', 'C', '1070')
insert JUGADOR values('1081', 'Pham', 'Anathan', 'ana', '19', 'Australia', '', '1080')
insert JUGADOR values('1082', 'Taavitsainen', 'Topias', 'Topson', '25', 'Finlandia', '', '1080')
insert JUGADOR values('1083', 'Vainikka', 'Jesse', 'JerAx', '26', 'Finlandia', '', '1080')
insert JUGADOR values('1084', 'Sundstein', 'Johan', 'n0tail', '25', 'Dinamarca', '', '1080')
insert JUGADOR values('1085', 'Debs', 'Sébastien', '7ckngMad', '26', 'Francia', 'C', '1080')
insert JUGADOR values('1091', 'Gaziev', 'Airat', 'Silent', '25', 'Rusia', '', '1090')
insert JUGADOR values('1092', 'Vasilenko', 'Bogdan', 'Iceberg', '21', 'Ucrania', '', '1090')
insert JUGADOR values('1093', 'Vasilev', 'Alexey', 'nongrata', '22', 'Rusia', '', '1090')
insert JUGADOR values('1094', 'Churochkin', 'Aleksander', 'Nofear', '25', 'Rusia', '', '1090')
insert JUGADOR values('1095', 'Bondarenko', 'Andrey', 'ALWAYSWANNAFLY', '27', 'Ucrania', 'C', '1090')
insert JUGADOR values('1101', 'Zhiyi', 'Jin', 'zhizhizhi', '21', 'China', '', '1100')
insert JUGADOR values('1102', 'Quanda', 'Zhang', 'Zyd', '20', 'China', '', '1100')
insert JUGADOR values('1103', 'Zixing', 'Zhao', 'XinQ', '19', 'China', '', '1100')
insert JUGADOR values('1104', 'Chaojian', 'Xiao', 'XCJ', '24', 'China', '', '1100')
insert JUGADOR values('1105', 'Jiahan', 'Xiong', 'Pyw', '24', 'China', 'C', '1100')
insert JUGADOR values('1111', 'Zhilei', 'Xu', 'BurNIng', '30', 'China', '', '1110') 
insert JUGADOR values('1112', 'Peng', 'Ou', 'Op', '19', 'China', '', '1110')
insert JUGADOR values('1113', 'Jing', 'Lin', 'Xxs', '19', 'China', '', '1110')
insert JUGADOR values('1114', 'Zhibiao', 'Ye', 'BoBoKa', '21', 'China', '', '1110')
insert JUGADOR values('1115', 'Bin', 'Fu', 'Q', '25', 'China', 'C', '1110')
insert JUGADOR values('1121', 'Mao', 'Jacky', 'EternaLEnVy', '27', 'Canadá', '', '1120')
insert JUGADOR values('1122', 'Azel L. Yusof', 'Abed', 'Abed', '18', 'Filipinas', '', '1120')
insert JUGADOR values('1123', 'Arora', 'Saahil', 'UNiVeRsE', '29', 'Estados Unidos', '', '1120')
insert JUGADOR values('1124', 'Åström', 'Johan', 'pieliedie', '27', 'Suecia', '', '1120')
insert JUGADOR values('1125', 'Ye', 'Steve', 'Xcalibur', '21', 'Suecia', '', '1120')
insert JUGADOR values('1126', 'Jicko B. Mampusti', 'Djardel', 'DJ', '24', 'Filipinas', 'C', '1120')
insert JUGADOR values('1131', 'Polo Luis Fausto', 'Marc', 'Raven', '20', 'Filipinas', '', '1130')
insert JUGADOR values('1132', 'Paul Tabios', 'Armel', 'Armel', '18', 'Filipinas', '', '1130')
insert JUGADOR values('1133', 'Solomon Enojosa Hidalgo', 'Samson', 'Sam_H', '23', 'Filipinas', '', '1130')
insert JUGADOR values('1134', 'Randrup', 'Timothy', 'Tims', '21', 'Filipinas', '', '1130')
insert JUGADOR values('1135', 'Palad', 'Carlo', 'Kuku', '22', 'Filipinas', 'C', '1130')
insert JUGADOR values('1141', 'Hassan', 'Yawar', 'YawaR', '24', 'Pakistán', '', '1140')
insert JUGADOR values('1142', 'Fominok', 'Roman', 'Resolut1on', '22', 'Ucrania', '', '1140')
insert JUGADOR values('1143', 'Wu', 'Jingjun', 'Sneyking', '23', 'Estados Unidos', '', '1140')
insert JUGADOR values('1144', 'Anwar', 'Arif', 'MSS', '22', 'Estados Unidos', '', '1140')
insert JUGADOR values('1145', 'Silverman', 'Avery', 'SVG', '25', 'Estados Unidos', 'C', '1140')
insert JUGADOR values('1151', 'Babaev', 'Artour', 'Arteezy', '22', 'Canadá', '', '1150')
insert JUGADOR values('1152', 'Sumail Hassan', 'Syed', 'SumaiL', '19', 'Pakistán', '', '1150')
insert JUGADOR values('1153', 'Magnusson', 'Gustav', 's4', '26', 'Suecia', '', '1150')
insert JUGADOR values('1154', 'Franck Nielsen', 'Andreas', 'Cr1t-', '22', 'Dinamarca', '', '1150')
insert JUGADOR values('1155', 'Aizik', 'Tal', 'Fly', '25', 'Israel', 'C', '1150')
insert JUGADOR values('1161', 'Olsson Lille', 'Per', 'Pajkatt', '26', 'Suecia', '', '1160')
insert JUGADOR values('1162', 'Callahan', 'Quinn', 'CCnC', '22', 'Estados Unidos', '', '1160')
insert JUGADOR values('1163', 'Shapira', 'Neta', '33', '21', 'Israel', '', '1160')
insert JUGADOR values('1164', 'Wåhlberg', 'Ludwig', 'Zai', '21', 'Suecia', '', '1160')
insert JUGADOR values('1165', 'Filipsen', 'Rasmus', 'MiSeRy', '27', 'Dinamarca', '', '1160')
insert JUGADOR values('1166', 'Dager', 'Peter', 'ppd', '27', 'Estados Unidos', 'C', '1160')
insert JUGADOR values('1171', 'Medeiros', 'William', 'hFn', '21', 'Brasil', '', '1170')
insert JUGADOR values('1172', 'Omar', 'Aliwi', 'w33', '23', 'Siria', '', '1170')
insert JUGADOR values('1173', 'Gabriel', 'Otavio', 'tavo', '23', 'Brasil', '', '1170')
insert JUGADOR values('1174', 'Pereira', 'Heitor', 'Duster', '18', 'Brasil', '', '1170')
insert JUGADOR values('1175', 'Nascimento', 'Danylo', 'KINGRD', '26', 'Brasil', 'C', '1170')


--los inserts del campo CapJugador tiene datos vacíos; hay que cambiarlos para implempentar un check
UPDATE JUGADOR
SET   CapJugador = 'X'
WHERE CapJugador = ''
GO

--se agrega el check después de que se arreglen los campos vacíos
ALTER TABLE JUGADOR
ADD CONSTRAINT CHK_Capitan CHECK (CapJugador='C' or CapJugador='X')
GO

select * from JUGADOR where CapJugador = 'x'
go

select * from JUGADOR where CapJugador = ''
go
