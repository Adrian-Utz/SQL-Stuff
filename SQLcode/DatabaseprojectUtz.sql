/*
The topic is every video game I own.


*/
CREATE TABLE gameInfo(
    gameNumber int,
    gameName varchar(250),
    gameType varchar(250),
    gameESRBrating varchar(10),
    versionNumber varchar(10)
)

CREATE TABLE systemInfo(
    systemName varchar(250),
    systemPrice double,
    systemType varchar(250)
)
CREATE TABLE gameAvailability(
    gameNumber int,
    gameAvailability varchar(250),
    systemName varchar(250)
)

CREATE TABLE systemAvailability(
    systemName varchar(250),
    systemCompanySupport boolean
)

INSERT INTO gameInfo(gameNumber, gameName, gameType, gameESRBrating, versionNumber)
VALUES ("1", "The Legend of Zelda: Ocarina of Time 3D", "Action-Adventure", "E10+", "0"),
       ("2", "The Legend of Zelda: A Link Between Worlds", "Action-Adventure", "E", "0"),
       ("3", "The Legend of Zelda: Majora's Mask 3D", "Action-Adventure", "E10+", "1.1"),
       ("4", "Animal Crossing: New Leaf", "Social-Simulation", "E", "1.5"),
       ("5", "Fantasy Life", "Role-playing, Life-simulation", "E10+", "1.7.1"),
       ("6", "Fire Emblem Fates: Conquest", "Tactical role-playing", "T", "1.1.0"),
       ("7", "Fire Emblem Fates: Birthriht", "Tactical role-playing", "T", "1.1.0"),
       ("8", "Fire Emblem Awakening", "Tactical role-playing", "T", "0.18"),
       ("9", "Fire Emblem Fates", "Tactical role-playing", "T", "0"),
       ("10", "Luigi's Mansion: Dark Moon", "Action-Adventure", "E", "0"),
       ("11", "Mario Kart 7", "Kart racing", "E", "1.2"),
       ("12", "Pokémon Alpha Sapphire", "Role-Playing", "E", "1.4"),
       ("13", "Pokémon Blue", "Role-Playing", "E", "1.2.0"),
       ("14", "Pokémon Crystal", "Role-Playing", "E", "0.1.0"),
       ("15", "Pokémon Fire Red", "Role-Playing", "E", "0"),
       ("16", "Pokémon Mystery Dungeon: Red Rescue Team", "Role-Playing", "E", "0"),
       ("17", "Pokémon Omega Ruby", "Role-Playing", "E", "1.4"),
       ("18", "Pokémon Red", "Role-Playing", "E", "1.2.0"),
       ("19", "Pokémon Silver", "Role-Playing", "E", "0"),
       ("20", "Pokémon Ultra Moon", "Role-Playing", "E", "1.2"),
       ("21", "Pokémon Ultra Sun", "Role-Playing", "E", "1.2"),
       ("22", "Pokémon X", "Role-Playing", "E", "1.5"),
       ("23", "Pokémon Y", "Role-Playing", "E", "1.5"),
       ("24", "Pokémon Yellow", "Role-Playing", "E", "1.3.0"),
       ("25", "Pokémon Emerald", "Role-Playing", "E", "0"),
       ("26", "Pokémon Leaf Green", "Role-Playing", "E", "0"),
       ("27", "Pokémon Ruby", "Role-Playing", "E", "0"),
       ("28", "Super Smash Bros. 3DS", "Fighting", "E", "1.1.7"), 
       ("29", "The Legend of Zelda: Skyward Sword HD", "Action-Adventure", "E10+", "1.0.1"),
       ("30", "The Legend of Zelda: Breath of the Wild", "Action-Adventure", "E10+", "3.0.0"),
       ("31", "Animal Crossing: New Horisons", "Social simulation", "E", "1.11.0"),
       ("32", "Super Mario Maker 2", "Level editor, platformer", "E", "3.0.1"),
       ("33", "Mario Kart 8 Deuluxe", "Kart racing", "E", "2.3.0"),
       ("34", "Super Mario Odyssey", "Platform, action-adventure", "E10+", "1.3.0"),
       ("35", "Super Smach Bro. Ultimate", "Fighting", "E10+", "13.0.1"),
       ("36", "Pokémon Brilliant Diamond", "Role-Playing", "E", "1.3.0"),
       ("37", "Pokémon Sword", "Role-Playing", "E", "1.3.2"),
       ("38", "Pokémon Violet", "Role-Playing", "E", "1.2.0"),
       ("39", "Metroid Dread", "Action-Adventure, Metroidvania", "T", "2.1.0"), 
       ("40", "Ori and the Blind Forest: Definitive Edition", "Platform-Adventure, Metroidvania", "E", "1.0"),
       ("41", "Ori and the Will of the Wisps", "Platform-Adventure, Metroidvania", "E", "1.2.0"),
       ("42", "Skyrim Special Edition", "Adtion-Adventure", "M17+", "1.5.97"),
       ("43", "Stardew Valley", "Social simulation", "E10+", "1.5"),
       ("44", "Terraria", "Action-Adventure, sandbox", "T", "1.4.4.9.1"),
       ("45", "Stray", "Adventure", "E10+", "1.03") 
       


INSERT INTO systemInfo(systemName, systemPrice, systemType)
VALUES ("Nintendo 3DS","249.99", "Handheld"),
       ("Nintendo Switch", "299.99", "Handheld, Console"),
       ("PC", "952.00", "Desktop")





INSERT INTO gameAvailability(gameNumber, gameAvailability, systemName)
VALUES ("1", "No longer Available", "Nintendo 3DS"),
       ("2", "No longer Available", "Nintendo 3DS"),
       ("3", "No longer Available", "Nintendo 3DS"),
       ("4", "No longer Available", "Nintendo 3DS"),
       ("5", "No longer Available", "Nintendo 3DS"),
       ("6", "No longer Available", "Nintendo 3DS"),
       ("7", "No longer Available", "Nintendo 3DS"),
       ("8", "No longer Available", "Nintendo 3DS"),
       ("9", "No longer Available", "Nintendo 3DS"),
       ("10", "No longer Available", "Nintendo 3DS"),
       ("11", "No longer Available", "Nintendo 3DS"),
       ("12", "No longer Available", "Nintendo 3DS"),
       ("13", "No longer Available", "Nintendo 3DS"),
       ("14", "No longer Available", "Nintendo 3DS"),
       ("15", "No longer Available", "Nintendo 3DS"),
       ("16", "No longer Available", "Nintendo 3DS"),
       ("17", "No longer Available", "Nintendo 3DS"),
       ("18", "No longer Available", "Nintendo 3DS"),
       ("19", "No longer Available", "Nintendo 3DS"),
       ("20", "No longer Available", "Nintendo 3DS"),
       ("21", "No longer Available", "Nintendo 3DS"),
       ("22", "No longer Available", "Nintendo 3DS"),
       ("23", "No longer Available", "Nintendo 3DS"),
       ("24", "No longer Available", "Nintendo 3DS"),
       ("25", "No longer Available", "Nintendo 3DS"),
       ("26", "No longer Available", "Nintendo 3DS"),
       ("27", "No longer Available", "Nintendo 3DS"),
       ("28", "No longer Available", "Nintendo 3DS"),
       ("29", "Still Available", "Nintendo Switch"),
       ("30", "Still Available", "Nintendo Switch"),
       ("31", "Still Available", "Nintendo Switch"),
       ("32", "Still Available", "Nintendo Switch"),
       ("33", "Still Available", "Nintendo Switch"),
       ("34", "Still Available", "Nintendo Switch"),
       ("35", "Still Available", "Nintendo Switch"),
       ("36", "Still Available", "Nintendo Switch"),
       ("37", "Still Available", "Nintendo Switch"),
       ("38", "Still Available", "Nintendo Switch"),
       ("39", "Still Available", "Nintendo Switch"),
       ("40", "Still Available", "PC"),
       ("41", "Still Available", "PC"),
       ("42", "Still Available", "PC"),
       ("43", "Still Available", "PC"),
       ("44", "Still Available", "PC"),
       ("45", "Still Available", "PC")

INSERT INTO systemAvailability(systemName, systemCompanySupport)
VALUES ("Nintendo 3DS", 0),
       ("Nintendo Switch", 1),
       ("PC", 1)

--Queries--

SELECT * FROM gameInfo WHERE gameESRBrating = "T" --Shows all teen rated games info--

SELECT * FROM gameInfo WHERE gameType LIKE '%Adventure%' --Shows all games that have the word adventure --

SELECT gameInfo.gameName, gameAvailability.gameAvailability FROM gameInfo 
INNER JOIN gameAvailability ON gameInfo.gameNumber = gameAvailability.gameNumber --Shows if game is still produced--

SELECT systemInfo.systemPrice, systemAvailability.systemName, systemAvailability.systemCompanySupport
FROM systemInfo INNER JOIN  systemAvailability ON systemInfo.systemName = systemAvailability.systemName --Shows price and if the device is still being produced--

--Note: These queiries don't work.--
/*
SELECT gameInfo.gameName, gameInfo.gameType, gameAvailability.systemName FROM gameInfo FULL OUTER JOIN gameAvailability
ON gameInfo.gameNumber = gameAvailability.gameNumber ORDER BY gameInfo.game WHERE gameInfo.gameType = 'Social simulation'     --Shows games labled as social simulation --

SELECT systemAvailability.systemName, systemInfo.systemType FROM systemAvailability FULL OUTER JOIN systemInfo
ON systemAvailability.systemName = systemInfo.systemName WHERE systemAvailability.systemCompanySupport != 0    --Show Name and type of game systems still being produced--
*/

CREATE VIEW game1v AS SELECT gameInfo.gameName, gameInfo.gameType, gameInfo.gameESRBrating, gameInfo.versionNumber
FROM gameInfo WHERE gameInfo.gameNumber >= 20  

CREATE VIEW game2v AS SELECT gameInfo.gameName, gameAvailability.systemName FROM gameInfo INNER JOIN gameAvailability
ON gameInfo.gameNumber = gameAvailability.gameNumber WHERE gameAvailability.systemName = 'Nintendo 3DS'   --Searches only for 3DS games--

CREATE VIEW Dog AS SELECT gameName.game1v FROM game1v --Show only the game name from game1v--

CREATE VIEW Cat AS SELECT gameAvailability.game2v FROM game2v --Shows only the sytem name.--


    SELECT MAX(systemInfo.systemPrice) AS MAX FROM systemInfo --Show Maximum--


    SELECT AVG(systemInfo.systemPrice) AS AVERAGE FROM systemInfo --Shows average--

