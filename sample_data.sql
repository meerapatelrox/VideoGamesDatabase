INSERT INTO public."Company"(
	"Name", "Founder", "Year Founded", "CEO", "Headquarters") VALUES
	('Sega','David Rosen',1960,'Hajime Satomi','Tokyo, Japan'), 
	('Nintendo','Fusajiro Yamauchi',1889,'Shuntaro Furukawa','Kyoto, Japan'), 
	('Konami','Kagemasa Kozuki',1969,'Hideki Hayakawa','Tokyo, Japan'), 
	('Activision','Larry Kaplan',1979,'Robert A. Kotick','Santa Monica, CA, USA'), 
	('Electronic Arts','Trip Hawkins',1982,'Andrew Wilson','San Mateo, CA, USA'), 
	('Rockstar Games','Sam Houser',1998,'Terry Donovan','New York, NY, USA');

INSERT INTO public."Customer"(
	"Name", "Address", "City", "State", "ZIP", "Phone Number", "CID") VALUES 
	('Meera Patel','20165 S Campus','Tampa','FL','33620','863-123-4567','MP2SCTFL33'),
	('Matthew Kramer','4202 Fowler Ave','Tampa','FL','33618','974-289-4837','MK4FATFL33'),
	('Edmund Lee','1871 Main St','Orlando','FL','32801','892-350-2930','EL1MSOFL32'),
	('Kashia Vang','1546 Palms Blvd','Tampa','FL','33618','405-177-8902','KV1PBTFL33'),
	('Tim Ernest','28450 Town Loop','Lakeland','FL','33809','346-203-9093','IS2TLLFL33');

INSERT INTO public."Games"(
	"GID", "Title", "Publisher", "Developer", "Genre", "Year", "System", "Price") VALUES 
	('SUPSMA1999','Super Smash Bros','Nintendo','HAL Laboratory','Fighting',1999,'Nintendo N64',150),
	('SUPMAR1996','Super Mario 64','Nintendo','Nintendo','Action',1996,'Nintendo N64',30),
	('CALDUT2003','Call of Duty','Activision','Infinity','Action',2003,'Valve Steam',59.99),
	('MARKAR2014','Mario Kart 8','Nintendo','Nintendo','Racing',2014,'Nintendo Wii U',60),
	('PIKMIN2001','Pikmin','Nintendo','Nintendo','Puzzle',2001,'Nintendo GameCube',25),
	('METGEA2009','Metal Gear Solid Rising','Konami','Konami','Action',2009,'Microsoft Xbox 360',49.99),
	('SONADV1999','Sonic Adventure','Sega','Sega','Action',1999,'Sega Dreamcast',39.05),
	('FIFWOR2010','2010 FIFA World Cup','Electronic Arts','EA Canada','Sports',2010,'Microsoft Xbox 360',29.99),
	('MADNFL2003','Madden NFL 2003','Electronic Arts','Electronic Arts','Sports',2002,'Nintendo GameCube',24),
	('GTAFIV2013','Grand Theft Auto V','Rockstar Games','Rockstar Games','Action',2013,'Microsoft Xbox 360',60),
	('SPIMAN2004','Spider-Man 2','Activision','Treyarch','Fighting',2004,'Sony Playstation 2',39.99),
	('GUIHER2009','Guitar Hero 5','Activision','Neversoft','Music',2009,'Microsoft Xbox 360',19.99);

INSERT INTO public."Orders"(
	"OID", "GID", "CID", "Sale", "Date") VALUES
	('SUPKV10001','SUPSMA1999','KV1PBTFL33',45.5,CAST('2018-6-27' AS DATE)),
	('GTAIS20001','GTAFIV2013','IS2TLLFL33',60,CAST('2018-8-12' AS DATE)),
	('PIKMP20001','PIKMIN2001','MP2SCTFL33',25,CAST('2018-8-15' AS DATE)),
	('CALMK40001','CALDUT2003','MK4FATFL33',59.99,CAST('2018-10-5' AS DATE)),
	('GUIMP20002','GUIHER2009','MP2SCTFL33',19.99,CAST('2018-12-31' AS DATE)),
	('SONMP20003','SONADV1999','MP2SCTFL33',39.05,CAST('2019-1-17' AS DATE)),
	('SPIEL10001','SPIMAN2004','EL1MSOFL32',39.99,CAST('2019-2-14' AS DATE)),
	('SUPMP20004','SUPSMA1999','MP2SCTFL33',45.5,CAST('2019-2-18' AS DATE)),
	('SUPIS20002','SUPMAR1996','IS2TLLFL33',30,CAST('2019-3-22' AS DATE)),
	('MARKV10002','MARKAR2014','KV1PBTFL33',60,CAST('2019-4-9' AS DATE)),
	('PIKKV10003','PIKMIN2001','KV1PBTFL33',25,CAST('2019-4-27' AS DATE)),
	('SUPEL10002','SUPSMA1999','EL1MSOFL32',45.5,CAST('2019-4-28' AS DATE));
