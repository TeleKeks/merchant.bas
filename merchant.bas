5280   IF WIDTH < 80 THEN PRINT "Terminal too small to play the game. Set your terminal width to 80 or more." : END
5290   CLS
5300   RANDOMIZE TIMER
5310   PRINT CHR$(27) + "[48;5;232m" + "Loading.";
5320   DEF FND(X) = INT(RND(X))+1
5330   DIM GOODS(12)
5340   DIM GOODSNAME$(12)
5350   DIM GOODSWEIGHT(12)
5360   DIM MINPRICE(12)
5370   DIM MAXPRICE(12)
5380   GOODS(0) = 0 : GOODSNAME$(0) = "beer" : GOODSWEIGHT(0) = 10 : MINPRICE(0) = 7 : MAXPRICE(0) = 15
5390   GOODS(1) = 0 : GOODSNAME$(1) = "furs" : GOODSWEIGHT(1) = 8 : MINPRICE(1) = 10 : MAXPRICE(1) = 22
5400   GOODS(2) = 0 : GOODSNAME$(2) = "spices" : GOODSWEIGHT(2) = 2 : MINPRICE(2) = 50 : MAXPRICE(2) = 75
5410   GOODS(3) = 0 : GOODSNAME$(3) = "elixirs" : GOODSWEIGHT(3) = 3 : MINPRICE(3) = 60 : MAXPRICE(3) = 90
5420   GOODS(4) = 0 : GOODSNAME$(4) = "toods" : GOODSWEIGHT(4) = 3 : MINPRICE(4) = 20 : MAXPRICE(4) = 30
5430   GOODS(5) = 0 : GOODSNAME$(5) = "cotton" : GOODSWEIGHT(5) = 5 : MINPRICE(5) = 15 : MAXPRICE(5) = 28
5440   GOODS(6) = 0 : GOODSNAME$(6) = "gems" : GOODSWEIGHT(6) = 2 : MINPRICE(6) = 90 : MAXPRICE(6) = 115
5450   GOODS(7) = 0 : GOODSNAME$(7) = "marble" : GOODSWEIGHT(7) = 15 : MINPRICE(7) = 70 : MAXPRICE(7) = 120
5460   GOODS(8) = 0 : GOODSNAME$(8) = "wine" : GOODSWEIGHT(8) = 8 : MINPRICE(8) = 15 : MAXPRICE(8) = 30
5470   GOODS(9) = 0 : GOODSNAME$(9) = "fish" : GOODSWEIGHT(9) = 10 : MINPRICE(9) = 5 : MAXPRICE(9) = 12
5480   GOODS(10) = 0 : GOODSNAME$(10) = "iron ore" : GOODSWEIGHT(10) = 15 : MINPRICE(10) = 23 : MAXPRICE(10) = 55
5490   GOODS(11) = 0 : GOODSNAME$(11) = "copper ore" : GOODSWEIGHT(11) = 15 : MINPRICE(11) = 17 : MAXPRICE(11) = 40
5500   DIM BEER(17)
5510   DIM FURS(17)
5520   DIM SPICES(17)
5530   DIM ELIXIRS(17)
5540   DIM TOODS(17)
5550   DIM COTTON(17)
5560   DIM GEMS(17)
5570   DIM MARBLE(17)
5580   DIM WINE(17)
5590   DIM FISH(17)
5600   DIM IRONORE(17)
5610   DIM COPPERORE(17)
5620   REM Randomizing prices
5630   FOR I = 0 TO 16
5640    BEER(I) = FND(MAXPRICE(0)-MINPRICE(0))+MINPRICE(0)
5650    FURS(I) = FND(MAXPRICE(1)-MINPRICE(1))+MINPRICE(1)
5660    SPICES(I) = FND(MAXPRICE(2)-MINPRICE(2))+MINPRICE(2)
5670    ELIXIRS(I) = FND(MAXPRICE(3)-MINPRICE(3))+MINPRICE(3)
5680    TOODS(I) = FND(MAXPRICE(4)-MINPRICE(4))+MINPRICE(4)
5690    COTTON(I) = FND(MAXPRICE(5)-MINPRICE(5))+MINPRICE(5)
5700    GEMS(I) = FND(MAXPRICE(6)-MINPRICE(6))+MINPRICE(6)
5710    MARBLE(I) = FND(MAXPRICE(7)-MINPRICE(7))+MINPRICE(7)
5720    WINE(I) = FND(MAXPRICE(8)-MINPRICE(8))+MINPRICE(8)
5730    FISH(I) = FND(MAXPRICE(9)-MINPRICE(9))+MINPRICE(9)
5740    IRONORE(I) = FND(MAXPRICE(10)-MINPRICE(10))+MINPRICE(10)
5750    COPPERORE(I) = FND(MAXPRICE(11)-MINPRICE(11))+MINPRICE(11)
5760   NEXT I
5770   WINE(15) = 15
5780   IRONORE(1) = 18
5790   FISH(6) = 5
5800   GOLD = 250
5810   STRENGTH = 8
5820   DEXTERITY = 8
5830   ENDURANCE = 8
5840   CHARISMA = 8
5850   PLAYERX = 34
5860   PLAYERY = 21
5870   CURRENTCITY = 5
5880   LASTCITY$ = "Germont"
5890   ENEMY$ = "" : ENEMYHP = 0 : ENEMYATTACK = 0 : ENEMYGOLD = 0 : ENEMYEXPERIENCE = 0
5900   REM Monster stats
5910   DIM MONSTERNAME$(20)
5920   DIM MONSTERHP(20)
5930   DIM MONSTERATTACK(20)
5940   DIM MONSTERGOLD(20)
5950   DIM MONSTEREXPERIENCE(20)
5960   MONSTERNAME$(0) = "goblin" : MONSTERHP(0) = 10 : MONSTERATTACK(0) = 3 : MONSTERGOLD(0) = 0 : MONSTEREXPERIENCE(0) = 30
5970   MONSTERNAME$(1) = "hobgoblin" : MONSTERHP(1) = 15 : MONSTERATTACK(1) = 5 : MONSTERGOLD(1) = 10 : MONSTEREXPERIENCE(1) = 50
5980   MONSTERNAME$(2) = "rabid dog" : MONSTERHP(2) = 5 : MONSTERATTACK(2) = 2 : MONSTERGOLD(2) = 0 : MONSTEREXPERIENCE(2) = 20
5990   MONSTERNAME$(3) = "wolf" : MONSTERHP(3) = 25 : MONSTERATTACK(3) = 5 : MONSTERGOLD(3) = 0 : MONSTEREXPERIENCE(3) = 70
6000   MONSTERNAME$(4) = "dire wolf" : MONSTERHP(4) = 40 : MONSTERATTACK(4) = 10 : MONSTERGOLD(4) = 0 : MONSTEREXPERIENCE(4) = 150
6010   MONSTERNAME$(5) = "warewolf" : MONSTERHP(5) = 60 : MONSTERATTACK(5) = 15 : MONSTERGOLD(5) = 0 : MONSTEREXPERIENCE(5) = 250
6020   MONSTERNAME$(6) = "kobold" : MONSTERHP(6) = 8 : MONSTERATTACK(6) = 2 : MONSTERGOLD(6) = 0 : MONSTEREXPERIENCE(6) = 25
6030   MONSTERNAME$(7) = "bandit" : MONSTERHP(7) = 20 : MONSTERATTACK(7) = 5 : MONSTERGOLD(7) = 30 : MONSTEREXPERIENCE(7) = 60
6040   MONSTERNAME$(8) = "barbarian" : MONSTERHP(8) = 30 : MONSTERATTACK(8) = 7 : MONSTERGOLD(8) = 50 : MONSTEREXPERIENCE(8) = 100
6050   MONSTERNAME$(9) = "skeleton" : MONSTERHP(9) = 15 : MONSTERATTACK(9) = 3 : MONSTERGOLD(9) = 0 : MONSTEREXPERIENCE(9) = 40
6060   MONSTERNAME$(10) = "zombie" : MONSTERHP(10) = 25 : MONSTERATTACK(10) = 5 : MONSTERGOLD(10) = 0 : MONSTEREXPERIENCE(10) = 75
6070   MONSTERNAME$(11) = "dire bear" : MONSTERHP(11) = 40 : MONSTERATTACK(11) = 15 : MONSTERGOLD(11) = 0 : MONSTEREXPERIENCE(11) = 200
6080   MONSTERNAME$(12) = "forest troll" : MONSTERHP(12) = 80 : MONSTERATTACK(12) = 20 : MONSTERGOLD(12) = 0 : MONSTEREXPERIENCE(12) = 400
6090   MONSTERNAME$(13) = "half-ogre" : MONSTERHP(13) = 40 : MONSTERATTACK(13) = 10 : MONSTERGOLD(13) = 100 : MONSTEREXPERIENCE(13) = 150
6100   MONSTERNAME$(14) = "dwarven outlaw" : MONSTERHP(14) = 30 : MONSTERATTACK(14) = 7 : MONSTERGOLD(14) = 40 : MONSTEREXPERIENCE(14) = 110
6110   MONSTERNAME$(15) = "young vampire" : MONSTERHP(15) = 70 : MONSTERATTACK(15) = 20 : MONSTERGOLD(15) = 150 : MONSTEREXPERIENCE(15) = 350
6120   MONSTERNAME$(16) = "ghul" : MONSTERHP(16) = 30 : MONSTERATTACK(16) = 8 : MONSTERGOLD(16) = 0 : MONSTEREXPERIENCE(16) = 125
6130   MONSTERNAME$(17) = "harpy" : MONSTERHP(17) = 40 : MONSTERATTACK(17) = 10 : MONSTERGOLD(17) = 0 : MONSTEREXPERIENCE(17) = 160
6140   MONSTERNAME$(18) = "cannibal" : MONSTERHP(18) = 20 : MONSTERATTACK(18) = 5 : MONSTERGOLD(18) = 0 : MONSTEREXPERIENCE(18) = 60
6150   MONSTERNAME$(19) = "giant rat" : MONSTERHP(19) = 8 : MONSTERATTACK(19) = 2 : MONSTERGOLD(19) = 0 : MONSTEREXPERIENCE(19) = 30
6160   DEFENSE = 0
6170   CLS
6180   PRINT CHR$(27) + "[48;5;232m" + "Loading..";
6190   DIM CITYNAME$(17)
6200   CITYNAME$(0) = "Garren's Well"
6210   CITYNAME$(1) = "Whitewick"
6220   CITYNAME$(2) = "Grimstall"
6230   CITYNAME$(3) = "Thronmouth"
6240   CITYNAME$(4) = "Deerford"
6250   CITYNAME$(5) = "Germont"
6260   CITYNAME$(6) = "Sleekfalls"
6270   CITYNAME$(7) = "Arrowhaven"
6280   CITYNAME$(8) = "Nightshield"
6290   CITYNAME$(9) = "Deervein"
6300   CITYNAME$(10) = "Rustmere"
6310   CITYNAME$(11) = "Summerhelm"
6320   CITYNAME$(12) = "Borroux"
6330   CITYNAME$(13) = "Bellogne"
6340   CITYNAME$(14) = "Toodsburg"
6350   CITYNAME$(15) = "Sarris"
6360   CITYNAME$(16) = "Oakenshire"
6370   DIM CITYLOCATION$(17)
6380   CITYLOCATION$(0) = "17:12"
6390   CITYLOCATION$(1) = "40:10"
6400   CITYLOCATION$(2) = "58:13"
6410   CITYLOCATION$(3) = "28:15"
6420   CITYLOCATION$(4) = "42:17"
6430   CITYLOCATION$(5) = "34:21"
6440   CITYLOCATION$(6) = "60:23"
6450   CITYLOCATION$(7) = "19:25"
6460   CITYLOCATION$(8) = "32:27"
6470   CITYLOCATION$(9) = "43:27"
6480   CITYLOCATION$(10) = "61:30"
6490   CITYLOCATION$(11) = "44:32"
6500   CITYLOCATION$(12) = "33:35"
6510   CITYLOCATION$(13) = "17:39"
6520   CITYLOCATION$(14) = "38:41"
6530   CITYLOCATION$(15) = "49:38"
6540   CITYLOCATION$(16) = "62:40"
6550   DIM MERCPRICE(17)
6560   DIM WORKERSPRICE(17)
6570   DIM MAGEPRICE(17)
6580   FOR I = 0 TO 16
6590    MERCPRICE(I) = FND(40) + 30
6600    WORKERSPRICE(I) = FND(20) + 10
6610    MAGEPRICE(I) = FND(400) + 300
6620   NEXT I
6630   MAGEPRICE(8) = 410
6640   WEAPON$ = "no weapon"
6650   ARMOR$ = "no armor"
6660   ATTACK = 0
6670   DEFENSE = 0
6680   DIM DAGGERPRICE(17)
6690   DIM SHORTSPRICE(17)
6700   DIM LONGSPRICE(17)
6710   DIM BASTARDSPRICE(17)
6720   DIM TWOHSPRICE(17)
6730   DIM MAGICSPRICE(17)
6740   DIM LEATHERAPRICE(17)
6750   DIM CHAINMAILPRICE(17)
6760   DIM PLATEARMORPRICE(17)
6770   DIM MAGICAPRICE(17)
6780   FOR I = 0 TO 16
6790    DAGGERPRICE(I) = FND(10) + 5
6800    SHORTSPRICE(I) = FND(30) + 15
6810    LONGSPRICE(I) = FND(50) + 100
6820    BASTARDSPRICE(I) = FND(100) + 200
6830    TWOHSPRICE(I) = FND(200) + 300
6840    MAGICSPRICE(I)= FND(500) + 1000
6850    LEATHERAPRICE(I) = FND(20) + 20
6860    CHAINMAILPRICE(I) = FND(100) + 150
6870    PLATEARMORPRICE(I) = FND(400) + 400
6880    MAGICAPRICE(I) = FND(1000) + 1500
6890   NEXT I
6900   EXPERIENCE = 0
6910   LEVEL = 1
6920   MAXCAPACITY = 0
6930   CAPACITY = 0
6940   PEOPLE = 0
6950   WORKERS = 0
6960   MAGES = 0
6970   MERCENARIES = 0
6980   BUMMAP = 0
6990   BUMTREASURE = 0
7000   DEATHCAUSE$ = ""
7010   DIM CITYDESC$(17)
7020   CITYDESC$(0) = ", a small town located near the forest."
7030   CITYDESC$(1) = ", a small mining town in the northern mountains."
7040   CITYDESC$(2) = ", a large and noisy port city."
7050   CITYDESC$(3) = ", a city famous for its 450-years old stone castle."
7060   CITYDESC$(4) = ", a large city located at the crossroads of trade routes."
7070   CITYDESC$(5) = ", a big, crowded city full of shops and taverns."
7080   CITYDESC$(6) = ", a small fishing village."
7090   CITYDESC$(7) = ", a small city still recovering after dragon attack."
7100   CITYDESC$(8) = ", a large city famous for its mages' academy."
7110   CITYDESC$(9) = ", the capital city of Voteron Kingdom."
7120   CITYDESC$(10) = ", a seaside town with large port and shipyard."
7130   CITYDESC$(11) = ", an infamous city where the thieves' guild is located."
7140   CITYDESC$(12) = ", an old city with the largest temple in the country."
7150   CITYDESC$(13) = ", a small town, inhabited mostly by elves."
7160   CITYDESC$(14) = ", a large city known for the best toods in the kingdom."
7170   CITYDESC$(15) = ", a small city famous for its winery."
7180   CITYDESC$(16) = ", a large, wealthy seaside city."
7190   CLS
7200   PRINT CHR$(27) + "[48;5;232m" + "Loading...";
7210   KEK$ = CHR$(27) + "[48;5;088m" + " " + CHR$(27) + "[48;5;232m"
7220   DIM MMAP$(48)
7230   DIM MAP$(48)
7240   MAP$(0) = ".......................................~~~....................................,~"
7250   MAP$(1) = ".........................................~~..................................,~~"
7260   MAP$(2) = ".............^^^^^^^^^^^^^^^..............~~.................................,~~"
7270   MAP$(3) = "...........^^^^^^^^^^^^^^^^^^^~~~~~~~......~~.......^^^^^^^^................,~~~"
7280   MAP$(4) = ".........^^^^^^^^^^^^^^^^^^^^^^^^...~~~~~...~....^^^^^^^^^^^^^^^...........,~~~~"
7290   MAP$(5) = "...........^^^^^^^^^^^^^^^^^^^..........~~~~~~.^^^^^^^^^^^^^^^^^^^.........,~~~~"
7300   MAP$(6) = ".......ttt...................................~~~~~^^^^^^^^^^D^^^^^^......,~~~~~~"
7310   MAP$(7) = "......ttttttt......................^^^^^^^^^^^^^.~~~......^^#^^^^^^....,~~~~~~~~"
7320   MAP$(8) = ".......ttttttt..................^^^^^^^^^^^^^^^^^^..~~......#.........,~~~~~~~~~"
7330   MAP$(9) = "........ttttttt..............^^^^^^^^^^O^^^^^^^^^^^..~,..####........,~~~~~~~~~~"
7340   MAP$(10)= "..........ttttt......................^^#^^^^^^^^^....~~~.#......,,,,,~~~~~~~~~~~"
7350   MAP$(11)= "............tt..O##....................#...............~~#~,,,,,~~~,~~~~~~~~~~~~"
7360   MAP$(12)= "..................#####................#.................O~~~~~~~~~~~~~~~~~~~~~~"
7370   MAP$(13)= "......................####.............###...............#.,~~~~~~~~~~~~~~~~~~~~"
7380   MAP$(14)= ".........................##O####.........#.............###.,~~~~~~~~~~~~~~~~~~~~"
7390   MAP$(15)= "...............tttttt..........######....#.............#....,,~~~~~~~~~~~~~~~~~~"
7400   MAP$(16)= ".............tttttttttt........#....#####O####......####......,,~~~~~~~~~~~~~~~~"
7410   MAP$(17)= "...........ttttttttttt.........#.........#...########..........,~~~~~~~~~~~~~~~~"
7420   MAP$(18)= "..........tttttttttttttt.......###.......#.......#............,~~~~~~~~~~~~~~~~~"
7430   MAP$(19)= "..............ttttttttttt........#...#####.......####........,~~~~~~~~~~~~~~~~~~"
7440   MAP$(20)= "..............tttttttttttt.......O####...#..........#.......,~~~~~~~~~~~~~~~~~~~"
7450   MAP$(21)= "...tttt........tttttttttt........#.......#..........####...,~~~~~~~~~~~~~~~~~~~~"
7460   MAP$(22)= "..ttttttt........tttt............#.......#.............####O~~~~~~~~~~~~~,,,,~~~"
7470   MAP$(23)= "..ttttttt......................###.ttt...#..............#..,~~~~~~~~~~~~,....,~~"
7480   MAP$(24)= "..ttttttttt.......O###.........#..tttttt.##.............##,~~~~~~~~~~~~,.....,~~"
7490   MAP$(25)= "...ttttttt...........###.......#...ttttt..#..............#.,~~~~~~~~~~~~,O,,,~~~"
7500   MAP$(26)= ".....tttt..............########O....ttttt.O#####.........#.,~~~~~~~~~~~~~~~~~~~~"
7510   MAP$(27)= "...............................#.....ttt..#....#####.....##.,~~~~~~~~~~~~~~~~~~~"
7520   MAP$(28)= "...............................##.........##.......#####..#.,~~~~~~~~~~~~~~~~~~~"
7530   MAP$(29)= ".......ttt......................#..........#...........#####O~~~~~~~~~~~~~~~~~~~"
7540   MAP$(30)= "......ttttt........tttt.........####.......#...........#....,~~~~~~~~~~~~~~~~~~~"
7550   MAP$(31)= "........tttt......ttttt.........#..########O...........#.....,~~~~~~~~~~~~~~~~~~"
7560   MAP$(32)= "..........ttt.....tttttt........#..........#.........###....,~~~~~~~~~~~~~~~~~~~"
7570   MAP$(33)= "....................tttttt......#..........##........#.....,~~~~~~~~~~~~~~~~~~~~"
7580   MAP$(34)= "......................ttt.....##O...........#.......##.....,~~~~~~~~~~~~~~~~~~~~"
7590   MAP$(35)= "............................###.............#.......#.....,~~~~~~~~~~~~~~~~~~~~~"
7600   MAP$(36)= "..........tttt............###...............##....###......,~~~~~~~~~~~~~~~~~~~~"
7610   MAP$(37)= "........ttttttt....########..................###O##.........,~~~~~~~~~~~~~~~~~~~"
7620   MAP$(38)= ".......ttttttt..O###......###.............####....######....,~~~~~~~~~~~~~~~~~~~"
7630   MAP$(39)= ".........tttt...............####......#####............######O~~~~~~~~~~~~~~~~~~"
7640   MAP$(40)= "...............................######O#....................~~~~~~~~~~~~~~~~~~~~~"
7650   MAP$(41)= ".......................ttt.....................~~~~~......~~.,~~~~~~~~~~~~~~~~~~"
7660   MAP$(42)= ".....................tttttt..............~~~~~~~...~~~.,,~~..,~~~~~~~~~~~~~~~~~~"
7670   MAP$(43)= ".......ttt..........tttttttt..........~~~~.ttttttt...~~~~~....,~~~~~~~~~~~~~~~~~"
7680   MAP$(44)= "......ttttt..........tttttt....~~~~~~~~..tttttttttt............,~~~~~~~~~~~~~~~~"
7690   MAP$(45)= "....ttttttttt..........ttt..~~~~ttt.......ttttttt............,~~~~~~~~~~~~~~~~~~"
7700   MAP$(46)= ".....tttttt...............~~...ttttt.........................,~~~~~~~~~~~~~~~~~~"
7710   MAP$(47)= "......tttttt............~~~...ttttttt........................,~~~~~~~~~~~~~~~~~~"
7720   REM The map with colors:
7721   A$ = CHR$(27) + "[38;5;076m." : REM grass
7722   B$ = CHR$(27) + "[38;5;023mt" : REM tree
7723   C$ = CHR$(27) + "[38;5;094m#" : REM road
7724   D$ = CHR$(27) + "[38;5;051m~" : REM water
7725   E$ = CHR$(27) + "[38;5;088mO" : REM city
7726   F$ = CHR$(27) + "[38;5;240m^" : REM mountain
7727   G$ = CHR$(27) + "[38;5;142mD" : REM dragon
7728   H$ = CHR$(27) + "[38;5;222m." : REM sand
7730   MMAP$(0)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$
7740   MMAP$(1)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$
7750   MMAP$(2)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$
7760   MMAP$(3)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+D$+D$+D$+D$+D$+D$+D$+A$+A$+A$+A$+A$+A$+D$+D$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$
7770   MMAP$(4)=A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+D$+D$+D$+D$+D$+A$+A$+A$+D$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$
7780   MMAP$(5)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+D$+D$+D$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$
7790   MMAP$(6)=A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+D$+D$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+G$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$
7800   MMAP$(7)=A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+D$+D$+D$+A$+A$+A$+A$+A$+A$+F$+F$+C$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$
7810   MMAP$(8)=A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+D$+D$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7820   MMAP$(9)=A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+E$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+D$+H$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7830   MMAP$(10)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+F$+F$+C$+F$+F$+F$+F$+F$+F$+F$+F$+F$+A$+A$+A$+A$+D$+D$+D$+A$+C$+A$+A$+A$+A$+A$+A$+H$+H$+H$+H$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7840   MMAP$(11)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+A$+A$+E$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+C$+D$+H$+H$+H$+H$+H$+D$+D$+D$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7850   MMAP$(12)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+E$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7860   MMAP$(13)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7870   MMAP$(14)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+E$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7880   MMAP$(15)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+C$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+H$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7890   MMAP$(16)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+C$+C$+C$+C$+C$+E$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+H$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7900   MMAP$(17)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+C$+C$+C$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7910   MMAP$(18)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7920   MMAP$(19)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7930   MMAP$(20)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+E$+C$+C$+C$+C$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7940   MMAP$(21)=A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
7950   MMAP$(22)=A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+E$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+H$+H$+H$+H$+D$+D$+D$
7960   MMAP$(23)=A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+B$+B$+B$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+H$+A$+A$+A$+A$+H$+D$+D$
7970   MMAP$(24)=A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+E$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+B$+B$+B$+B$+B$+B$+A$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+H$+A$+A$+A$+A$+A$+H$+D$+D$
7980   MMAP$(25)=A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+B$+B$+B$+B$+B$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+H$+E$+H$+H$+H$+D$+D$+D$
7990   MMAP$(26)=A$+A$+A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+C$+C$+C$+E$+A$+A$+A$+A$+B$+B$+B$+B$+B$+A$+E$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8000   MMAP$(27)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+C$+A$+A$+A$+A$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+C$+C$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8010   MMAP$(28)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+A$+A$+C$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8020   MMAP$(29)=A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+E$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8030   MMAP$(30)=A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8040   MMAP$(31)=A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+C$+C$+C$+C$+C$+C$+C$+C$+E$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8050   MMAP$(32)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8060   MMAP$(33)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8070   MMAP$(34)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+A$+A$+A$+C$+C$+E$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+C$+C$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8080   MMAP$(35)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+A$+A$+C$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8090   MMAP$(36)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8100   MMAP$(37)=A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+C$+C$+C$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+E$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8110   MMAP$(38)=A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+E$+C$+C$+C$+A$+A$+A$+A$+A$+A$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+C$+C$+C$+C$+C$+C$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8120   MMAP$(39)=A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+C$+E$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8130   MMAP$(40)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+C$+C$+C$+C$+C$+C$+E$+C$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8140   MMAP$(41)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+D$+D$+A$+A$+A$+A$+A$+A$+D$+D$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8150   MMAP$(42)=A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+D$+D$+D$+D$+A$+A$+A$+D$+D$+D$+A$+H$+H$+D$+D$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8160   MMAP$(43)=A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+D$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+D$+D$+D$+D$+D$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8170   MMAP$(44)=A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+D$+D$+D$+D$+D$+D$+D$+D$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8180   MMAP$(45)=A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+A$+A$+D$+D$+D$+D$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8190   MMAP$(46)=A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+A$+A$+A$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8200   MMAP$(47)=A$+A$+A$+A$+A$+A$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+D$+D$+D$+A$+A$+A$+B$+B$+B$+B$+B$+B$+B$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+A$+H$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$+D$
8210   REM Adding colors to map - too slow to do it every time
8220   REM FOR I = 0 TO 47
8230   REM  FOR J = 1 TO 80
8240   REM   X$ = MID$(MAP$(I),J,1)
8250   REM   IF X$ = "." THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;076m" + X$
8260   REM   IF X$ = "t" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;023m" + X$
8270   REM   IF X$ = "#" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;094m" + X$
8280   REM   IF X$ = "~" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;051m" + X$
8290   REM   IF X$ = "O" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;088m" + X$
8300   REM   IF X$ = "^" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;240m" + X$
8310   REM   IF X$ = "D" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;142m" + X$
8320   REM   IF X$ = "," THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;222m" + "."
8330   REM  NEXT J
8340   REM NEXT I
8341   CLS
8350   PRINT CHR$(27) + "[38;5;28m" + TAB$(3) + "                     Programmed in TeleBASIC by Keks                  "
8360   PRINT CHR$(27) + "[38;5;142m"
8370   PRINT ""
8380   PRINT ""
8390   PRINT TAB$(3) + " ____    ____                       __                       _    _       "
8400   PRINT TAB$(3) + "|_   \  /   _|                     [  |                     / |_ | |      "
8410   PRINT TAB$(3) + "  |   \/   |  .---.  _ .--.  .---.  | |--.   ,--.   _ .--. `| |-'\_|.--.  "
8420   PRINT TAB$(3) + "  | |\  /| | / /__\\[ `/'`\]/ /'`\] | .-. | `'_\ : [ `.-. | | |    ( (`\] "
8430   PRINT TAB$(3) + " _| |_\/_| |_| \__., | |    | \__.  | | | | // | |, | | | | | |,    `'.'. "
8440   PRINT TAB$(3) + "|_____||_____|'.__.'[___]   '.___.'[___]|__]\'-;__/[___||__]\__/   [\__) )"
8450   PRINT TAB$(3) + "                    ___                            _                      "
8460   PRINT TAB$(3) + "                  .'   `.                         / |_                    "
8470   PRINT TAB$(3) + "                 /  .-.  \  __   _   .---.  .--. `| |-'                   "
8480   PRINT TAB$(3) + "                 | |   | | [  | | | / /__\\( (`\] | |                     "
8490   PRINT TAB$(3) + "                 \  `-'  \_ | \_/ |,| \__., `'.'. | |,                    "
8500   PRINT TAB$(3) + "                  `.___.\__|'.__.'_/ '.__.'[\__) )\__/                    "
8510   PRINT TAB$(3) + "                                                                          "
8520   PRINT TAB$(3) + "                                                                          "
8530   PRINT TAB$(3) + "                                                                          "
8540   PRINT CHR$(27) + "[38;5;28m" + TAB$(3) + "                              Press Enter                           "
8550   INPUT DUMPP$
8560   PRINT CHR$(27) + "[38;5;214m"
8570   PRINT "  After over 400 years of peace the Voteron Kingdom was attacked by a dragon.  "
8580   PRINT "The dreadful beast destroyed a few cities and flee to mountains in northeastern"
8590   PRINT "  part of country. Several warriors, wizards and other heroes tried to kill    "
8600   PRINT "the dragon in its lair, but failed. The king of Voteron offered half a million "
8610   PRINT "  gold pieces for slaying the dragon. You never considered yourself a hero,    "
8620   PRINT "but you always loved money, so you decided to do it. You aren't powerful enough"
8630   PRINT "  to become a monster-hunter, but you plan to hire a group of mercenaries to   "
8640   PRINT "  help you with this task. All you need is make enough good deals to afford    "
8650   PRINT "                            a small private army.                              "
8660   PRINT CHR$(27) + "[38;5;252m" + ""
8670   REM Creating new character
8680   INPUT "What is your name? ", NAME$
8690   IF NAME$ = "" THEN NAME$ = USER$
8700   IF LEN(NAME$) > 10 THEN NAME$ = LEFT$(NAME$, 10)
8710   PRINT "Are you a " + CHR$(27) + "[38;5;051m[h]" + CHR$(27) + "[38;5;252muman, a " + CHR$(27) + "[38;5;051m[d]";
8711   PRINT CHR$(27) + "[38;5;252mwarf, an " + CHR$(27) + "[38;5;051m[o]" + CHR$(27) + "[38;5;252mrc or an " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mlf?"
8712   INPUT "", RACE$
8720   IF RACE$ = "" THEN RACE$ = " "
8730   RACE$ = LEFT$(RACE$,1)
8740   RACE$ = UPS$(RACE$)
8750   IF (RACE$ <> "H") AND (RACE$ <> "D") AND (RACE$ <> "O") AND (RACE$ <> "E") THEN GOTO 8710
8760   IF RACE$ = "H" THEN CHARISMA = 12
8770   IF RACE$ = "D" THEN ENDURANCE = 12
8780   IF RACE$ = "O" THEN STRENGTH = 12
8790   IF RACE$ = "E" THEN DEXTERITY = 12
8800   MAXHP = 10 + ENDURANCE
8810   HP = MAXHP
8820   MAXCAPACITY = STRENGTH * 5
8830   REM
8840   REM Drawing an automap
8850   CLS
8860   PRINT STRING$(80,KEK$)
8870   FOR I = 0 TO 12
8880    PRINT KEK$;
8890    IF I = 6 THEN PRINT MID$(MMAP$(PLAYERY-1),(PLAYERX-16)*12+1,15*12) + CHR$(27) + "[48;5;247m" + MID$(MMAP$(PLAYERY-1),(PLAYERX-1)*12+1,12) + CHR$(27) + "[48;5;232m" + MID$(MMAP$(PLAYERY-1),(PLAYERX)*12+1,15*12) + KEK$;
8900    IF I <> 6 THEN PRINT MID$(MMAP$(I + PLAYERY - 7),(PLAYERX-16)*12+1,31*12) + KEK$;
8910    IF I > 0 AND GOODS(I-1) = 0 THEN PRINT CHR$(27) + "[38;5;252m" + TAB$(4) + GOODSNAME$(I-1) + ": " + STR$(GOODS(I-1))
8911    IF I > 0 AND GOODS(I-1) > 0 THEN PRINT CHR$(27) + "[38;5;214m" + TAB$(4) + GOODSNAME$(I-1) + ": " + STR$(GOODS(I-1))
8920    IF I = 0 THEN PRINT CHR$(27) + "[38;5;28m" + TAB$(4) + "GOODS:"
8930   NEXT I
8940   PRINT STRING$(80,KEK$)
8950   FOR I = 2 to 14
8960    LOCATE I,80
8970    PRINT KEK$;
8980    LOCATE I, 55
8990    PRINT KEK$
9000   NEXT I
9010   LOCATE 2,58
9020   PRINT CHR$(27) + "[38;5;214m" + NAME$
9030   LOCATE 3,58
9040   PRINT "Level: " + STR$(LEVEL)
9050   LOCATE 4,58
9060   PRINT "Experience: " + STR$(EXPERIENCE)
9070   LOCATE 5,58
9080   PRINT "HP: " + STR$(HP) + "/" + STR$(MAXHP)
9090   LOCATE 6,58
9100   PRINT "Strength: " + STR$(STRENGTH)
9110   LOCATE 7,58
9120   PRINT "Dexterity: " + STR$(DEXTERITY)
9130   LOCATE 8,58
9140   PRINT "Endurance: " + STR$(ENDURANCE)
9150   LOCATE 9,58
9160   PRINT "Charisma: " + STR$(CHARISMA)
9170   LOCATE 11,58
9180   PRINT "Gold: " + STR$(GOLD)
9190   LOCATE 12,58
9200   PRINT "W: " + WEAPON$ 
9210   LOCATE 13, 58
9220   PRINT "A: " + ARMOR$
9230   LOCATE 16,1
9240   IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "#" THEN GOTO 9710
9250   IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "D" THEN GOTO 9710
9260   FOR I = 0 to 16
9270   IF STR$(PLAYERX) + ":" + STR$(PLAYERY) = CITYLOCATION$(I) THEN CURRENTCITY = I
9280   NEXT I
9290   IF CITYNAME$(CURRENTCITY) = LASTCITY$ THEN GOTO 9710 : REM Skip the lines below
9300   REM Random price fluctuations
9310   REM
9320   FOR I = 0 TO 16
9330    BEER(I) = BEER(I) + (FND(2) * (FND(3) - 2))
9340    IF BEER(I) > MAXPRICE(0) THEN BEER(I) = MAXPRICE(0)
9350    IF BEER(I) < MINPRICE(0) THEN BEER(I) = MINPRICE(0)
9360    FURS(I) = FURS(I)  + (FND(3) * (FND(3) - 2))
9370    IF FURS(I) > MAXPRICE(1) THEN FURS(I) = MAXPRICE(1)
9380    IF FURS(I) < MINPRICE(1) THEN FURS(I) = MINPRICE(1)
9390    SPICES(I) = SPICES(I) + (FND(6) * (FND(3) - 2))
9400    IF SPICES(I) > MAXPRICE(2) THEN SPICES(I) = MAXPRICE(2)
9410    IF SPICES(I) < MINPRICE(2) THEN SPICES(I) = MINPRICE(2)
9420    ELIXIRS(I) = ELIXIRS(I) + (FND(7) * (FND(3) - 2))
9430    IF ELIXIRS(I) > MAXPRICE(3) THEN ELIXIRS(I) = MAXPRICE(3)
9440    IF ELIXIRS(I) < MINPRICE(3) THEN ELIXIRS(I) = MINPRICE(3)
9450    TOODS(I) = TOODS(I) + (FND(3) * (FND(3) - 2))
9460    IF TOODS(I) > MAXPRICE(4) THEN TOODS(I) = MAXPRICE(4)
9470    IF TOODS(I) < MINPRICE(4) THEN TOODS(I) = MINPRICE(4)
9480    COTTON(I) = COTTON(I) + (FND(3) * (FND(3) - 2))
9490    IF COTTON(I) > MAXPRICE(5) THEN COTTON(I) = MAXPRICE(5)
9500    IF COTTON(I) < MINPRICE(5) THEN COTTON(I) = MINPRICE(5)
9510    GEMS(I) = GEMS(I) + (FND(10) * (FND(3) - 2))
9520    IF GEMS(I) > MAXPRICE(6) THEN GEMS(I) = MAXPRICE(6)
9530    IF GEMS(I) < MINPRICE(6) THEN GEMS(I) = MINPRICE(6)
9540    MARBLE(I) = MARBLE(I) + (FND(9) * (FND(3) - 2))
9550    IF MARBLE(I) > MAXPRICE(7) THEN MARBLE(I) = MAXPRICE(7)
9560    IF MARBLE(I) < MINPRICE(7) THEN MARBLE(I) = MINPRICE(7)
9570    WINE(I) = WINE(I) + (FND(3) * (FND(3) - 2))
9580    IF WINE(I) > MAXPRICE(8) THEN WINE(I) = MAXPRICE(8)
9590    IF WINE(I) < MINPRICE(8) THEN WINE(I) = MINPRICE(8)
9600    FISH(I) = FISH(I) + (FND(2) * (FND(3) - 2))
9610    IF FISH(I) > MAXPRICE(9) THEN FISH(I) = MAXPRICE(9)
9620    IF FISH(I) < MINPRICE(9) THEN FISH(I) = MINPRICE(9)
9630    IRONORE(I) = IRONORE(I) + (FND(4) * (FND(3) - 2))
9640    IF IRONORE(I) > MAXPRICE(10) THEN IRONORE(I) = MAXPRICE(10)
9650    IF IRONORE(I) < MINPRICE(10) THEN IRONORE(I) = MINPRICE(10)
9660    COPPERORE(I) = COPPERORE(I) + (FND(3) * (FND(3) - 2))
9670    IF COPPERORE(I) > MAXPRICE(11) THEN COPPERORE(I) = MAXPRICE(11)
9680    IF COPPERORE(I) < MINPRICE(11) THEN COPPERORE(I) = MINPRICE(11)
9690   NEXT I
9700   LASTCITY$=CITYNAME$(CURRENTCITY)
9710   IF HEIGHT > 25 THEN PRINT ""
9711   IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;252m" + "You are in " + CITYNAME$(CURRENTCITY) + CITYDESC$(CURRENTCITY)
9720   IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "#" THEN PRINT CHR$(27) + "[38;5;252m" + "You are on a road."
9730   IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "D" THEN PRINT CHR$(27) + "[38;5;252m" + "You are at the entrance to the dragon's cave."
9740   PEOPLE = MERCENARIES + WORKERS + MAGES
9750   IF PEOPLE = 0 THEN PRINT "You are alone."
9760   IF PEOPLE = 1 THEN PRINT "There is one person with you: ";
9770   IF PEOPLE = 1 AND MAGES = 1 THEN PRINT "a mage."
9780   IF PEOPLE = 1 AND MERCENARIES = 1 THEN PRINT "a mercenary."
9790   IF PEOPLE = 1 AND WORKERS = 1 THEN PRINT "a worker."
9800   IF PEOPLE > 1 THEN PRINT "There are " + STR$(PEOPLE) " people with you: ";
9810   IF PEOPLE > 1 AND WORKERS = 0 AND MERCENARIES = 1 AND MAGES = 1 THEN PRINT "one mercenary and one mage."
9820   IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES = 0 AND MAGES = 1 THEN PRINT "one laborer and one mage."
9830   IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES = 1 AND MAGES = 0 THEN PRINT "one worker and one mercenary."
9840   IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES = 1 AND MAGES = 1 THEN PRINT "one worker, one mercenary and one mage."
9850   IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 1 AND MAGES = 1 THEN PRINT STR$(WORKERS) + " workers, one mercenary and one mage."
9860   IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 1 AND MAGES = 0 THEN PRINT STR$(WORKERS) + " workers and one mercenary."
9870   IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 0 AND MAGES = 0 THEN PRINT "all of them are workers."
9880   IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 0 AND MAGES = 1 THEN PRINT STR$(WORKERS) + " workers and one mage."
9890   IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES > 1 AND MAGES = 1 THEN PRINT "one worker, " + STR$(MERCENARIES) + " mercenaries and one mage."
9900   IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES > 1 AND MAGES = 0 THEN PRINT "one worker and " + STR$(MERCENARIES) + " mercenaries."
9910   IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES > 1 AND MAGES = 1 THEN PRINT STR$(WORKERS) + " workers, " + STR$(MERCENARIES) + " mercenaries and one mage."
9920   IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES > 1 AND MAGES = 0 THEN PRINT STR$(WORKERS) + " workers and " + STR$(MERCENARIES) + " mercenaries."
9930   IF PEOPLE > 1 AND WORKERS = 0 AND MERCENARIES > 1 AND MAGES = 0 THEN PRINT "all of them are mercenaries."
9940   IF PEOPLE > 1 AND WORKERS = 0 AND MERCENARIES > 1 AND MAGES = 1 THEN PRINT STR$(MERCENARIES) + " mercenaries and one mage."
9950   IF MAGES > 1 THEN PRINT "Software failure. Press enter to continue." : PRINT "Guru Meditation #0000009,0000AB71" : INPUT DUMPP$ : END
9960   MAXCAPACITY = STRENGTH * 5 + WORKERS * 30
9970   CAPACITY = 0
9980   FOR I = 0 TO 11
9990    CAPACITY = CAPACITY + GOODS(I)*GOODSWEIGHT(I)
10000  NEXT I
10010  IF WORKERS = 0 THEN PRINT "You carry " + STR$(CAPACITY) + " kg.";
10020  IF WORKERS = 1 THEN PRINT "You and your worker carry " + STR$(CAPACITY) + " kg.";
10030  IF WORKERS > 1 THEN PRINT "You and your workers carry " + STR$(CAPACITY) + " kg.";
10040  PRINT " Your maximum carrying capacity is " + STR$(MAXCAPACITY) + " kg."
10041  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "D" THEN GOSUB 14750
10042  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "#" THEN GOSUB 13150
10050  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT "You can visit:"
10060  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;051m[1]" + CHR$(27) + "[38;5;252m a market"
10070  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;051m[2]" + CHR$(27) + "[38;5;252m an inn"
10080  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;051m[3]" + CHR$(27) + "[38;5;252m a blacksmith"
10090  REM
10100  REM
10101  IF HEIGHT > 25 THEN PRINT ""
10110  REM Travel options
10120  PRINT "You can go: ";
10130  NORTH = 0 : SOUTH = 0 : EAST = 0 : WEST = 0
10140  IF MID$(MAP$(PLAYERY-2),PLAYERX,1) = "#" OR MID$(MAP$(PLAYERY-2),PLAYERX,1) = "O" OR MID$(MAP$(PLAYERY-2),PLAYERX,1) = "D" THEN NORTH = 1 : PRINT CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252morth ";
10150  IF MID$(MAP$(PLAYERY),PLAYERX,1) = "#" OR MID$(MAP$(PLAYERY),PLAYERX,1) = "O" OR MID$(MAP$(PLAYERY),PLAYERX,1) = "D" THEN SOUTH = 1 : PRINT CHR$(27) + "[38;5;051m[s]" + CHR$(27) + "[38;5;252mouth ";
10160  IF MID$(MAP$(PLAYERY-1),PLAYERX-1,1) = "#" OR MID$(MAP$(PLAYERY-1),PLAYERX-1,1) = "O" OR MID$(MAP$(PLAYERY-1),PLAYERX-1,1) = "D" THEN WEST = 1 : PRINT CHR$(27) + "[38;5;051m[w]" + CHR$(27) + "[38;5;252mest ";
10170  IF MID$(MAP$(PLAYERY-1),PLAYERX+1,1) = "#" OR MID$(MAP$(PLAYERY-1),PLAYERX+1,1) = "O" OR MID$(MAP$(PLAYERY-1),PLAYERX+1,1) = "D" THEN EAST = 1 : PRINT CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mest ";
10180  PRINT "or look at the " + CHR$(27) + "[38;5;051m[m]" + CHR$(27) + "[38;5;252map.";
10181  PRINT ""
10190  INPUT "Your choice: ", CHOICE$
10200  CHOICE$ = UPS$(CHOICE$)
10210  IF NORTH = 1 AND (CHOICE$ = "N" OR CHOICE$ = "GO NORTH" OR CHOICE$ = "NORTH") THEN PLAYERY = PLAYERY - 1 : GOTO 8840
10220  IF SOUTH = 1 AND (CHOICE$ = "S" OR CHOICE$ = "GO SOUTH" OR CHOICE$ = "SOUTH") THEN PLAYERY = PLAYERY + 1 : GOTO 8840
10230  IF WEST = 1 AND (CHOICE$ = "W" OR CHOICE$ = "GO WEST" OR CHOICE$ = "WEST") THEN PLAYERX = PLAYERX - 1 : GOTO 8840
10240  IF EAST = 1 AND (CHOICE$ = "E" OR CHOICE$ = "GO EAST" OR CHOICE$ = "EAST") THEN PLAYERX = PLAYERX + 1 : GOTO 8840
10250  IF NORTH = 0 AND (CHOICE$ = "N" OR CHOICE$ = "GO NORTH" OR CHOICE$ = "NORTH") THEN PRINT "You can't go north." : GOTO 10050
10260  IF SOUTH = 0 AND (CHOICE$ = "S" OR CHOICE$ = "GO SOUTH" OR CHOICE$ = "SOUTH") THEN PRINT "You can't go south." : GOTO 10050
10270  IF WEST = 0 AND (CHOICE$ = "W" OR CHOICE$ = "GO WEST" OR CHOICE$ = "WEST") THEN PRINT "You can't go west." : GOTO 10050
10280  IF EAST = 0 AND (CHOICE$ = "E" OR CHOICE$ = "GO EAST" OR CHOICE$ = "EAST") THEN PRINT "You can't go east." : GOTO 10050
10290  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" AND CHOICE$ = "1" THEN GOTO 10350
10300  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" AND CHOICE$ = "2" THEN GOTO 11640
10310  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" AND CHOICE$ = "3" THEN GOTO 12320
10320  IF CHOICE$ = "M" OR CHOICE$ = "MAP" THEN GOTO 13040
10330  PRINT "Wrong choice." : GOTO 10050
10340  REM
10350  REM Bazaar
10360  PRINT "You enter a crowdy market. There are dozens of merchants here trying to sell their goods."
10370  PRINT TAB$(19) + "Buying price:" + TAB$(7) + "Selling price:"
10380  FOR I = 0 TO 11
10390   PRINT " " + STR$(I+1) + ". ";
10400   PRINT GOODSNAME$(I);
10410   IF I < 9 THEN PRINT " ";
10420   PRINT TAB$(19-LEN(GOODSNAME$(I)));
10430   IF I = 0 THEN PRINT BEER(CURRENTCITY);
10431   IF I = 0 AND BEER(CURRENTCITY) < 10 THEN PRINT " ";
10432   IF I = 0 THEN PRINT " ";
10440   IF I = 1 THEN PRINT FURS(CURRENTCITY);
10441   IF I = 1 THEN PRINT " ";
10450   IF I = 2 THEN PRINT SPICES(CURRENTCITY);
10451   IF I = 2 THEN PRINT " ";
10460   IF I = 3 THEN PRINT ELIXIRS(CURRENTCITY);
10461   IF I = 3 THEN PRINT " ";
10470   IF I = 4 THEN PRINT TOODS(CURRENTCITY);
10471   IF I = 4 THEN PRINT " ";
10480   IF I = 5 THEN PRINT COTTON(CURRENTCITY);
10481   IF I = 5 THEN PRINT " ";
10490   IF I = 6 THEN PRINT GEMS(CURRENTCITY);
10491   IF I = 6 AND GEMS(CURRENTCITY) < 100 THEN PRINT " ";
10500   IF I = 7 THEN PRINT MARBLE(CURRENTCITY);
10501   IF I = 7 AND MARBLE(CURRENTCITY) < 100 THEN PRINT " ";
10510   IF I = 8 THEN PRINT WINE(CURRENTCITY);
10511   IF I = 8 THEN PRINT " ";
10520   IF I = 9 THEN PRINT FISH(CURRENTCITY);
10521   IF I = 9 AND FISH(CURRENTCITY) < 10 THEN PRINT " ";
10522   IF I = 9 THEN PRINT " ";
10530   IF I = 10 THEN PRINT IRONORE(CURRENTCITY);
10531   IF I = 10 THEN PRINT " ";
10540   IF I = 11 THEN PRINT COPPERORE(CURRENTCITY);
10541   IF I = 11 THEN PRINT " ";
10550   PRINT TAB$(15);
10560   REM
10570   IF I = 0 THEN PRINT BEER(CURRENTCITY) - INT(BEER(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10580   IF I = 1 THEN PRINT FURS(CURRENTCITY) - INT(FURS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10590   IF I = 2 THEN PRINT SPICES(CURRENTCITY) - INT(SPICES(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10600   IF I = 3 THEN PRINT ELIXIRS(CURRENTCITY)- INT(ELIXIRS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10610   IF I = 4 THEN PRINT TOODS(CURRENTCITY) - INT(TOODS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10620   IF I = 5 THEN PRINT COTTON(CURRENTCITY)- INT(COTTON(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10630   IF I = 6 THEN PRINT GEMS(CURRENTCITY) - INT(GEMS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10640   IF I = 7 THEN PRINT MARBLE(CURRENTCITY) - INT(MARBLE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10650   IF I = 8 THEN PRINT WINE(CURRENTCITY) - INT(WINE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10660   IF I = 9 THEN PRINT FISH(CURRENTCITY) - INT(FISH(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10670   IF I = 10 THEN PRINT IRONORE(CURRENTCITY) - INT(IRONORE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10680   IF I = 11 THEN PRINT COPPERORE(CURRENTCITY) - INT(COPPERORE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
10690  NEXT I
10700  PRINT "Do you want to " + CHR$(27) + "[38;5;051m[b]" + CHR$(27) + "[38;5;252muy, " + CHR$(27) + "[38;5;051m[s]" + CHR$(27) + "[38;5;252mell or " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit? "
10701  INPUT MARKETCHOICE$
10710  MARKETCHOICE$ = UPS$(MARKETCHOICE$)
10720  IF MARKETCHOICE$ = "B" OR MARKETCHOICE$ = "BUY" THEN GOTO 10770
10730  IF MARKETCHOICE$ = "S" OR MARKETCHOICE$ = "SELL" THEN GOTO 11280
10740  IF MARKETCHOICE$ = "E" OR MARKETCHOICE$ = "EXIT" THEN GOTO 8840
10750  PRINT "Wrong choice." : GOTO 10700
10760  REM
10770  REM Buying goods
10780  INPUT "Which goods do you want to buy? ", GOODSCHOICE$
10790  GOODSCHOICE$ = UPS$(GOODSCHOICE$)
10800  GOODSCHOICENR = 13
10801  IF GOODSCHOICE$ = "" THEN GOTO 10890
10810  FOR I = 0 TO 12
10820   IF VAL(GOODSCHOICE$) = I+1 THEN GOODSCHOICENR = I
10830   IF I <> 9 AND I <> 1 AND I <> 5 AND I <> 11 AND LEFT$(GOODSCHOICE$, 1) = LEFT$(UPS$(GOODSNAME$(I)),1) THEN GOODSCHOICENR = I
10840   IF (I = 1 OR I = 9) AND LEFT$(GOODSCHOICE$, 2) = LEFT$(UPS$(GOODSNAME$(I)),2) THEN GOODSCHOICENR = I
10850   IF (I = 5 OR I = 11) AND LEFT$(GOODSCHOICE$, 3) = LEFT$(UPS$(GOODSNAME$(I)),3) THEN GOODSCHOICENR = I
10860   IF GOODSCHOICE$ = "CO" OR GOODSCHOICE$ = "C" THEN PRINT "A merchant asks you: cotton or copper ore, dear sir?" : GOTO 10890
10870   IF GOODSCHOICE$ = "F" THEN PRINT "A merchant asks you: fish or furs, dear sir?" : GOTO 10890
10880  NEXT I
10890  IF GOODSCHOICENR = 13 THEN PRINT "Please enter the valid goods name or number." : GOTO 10780
10900  IF GOLD = 0 THEN PRINT "You don't have money to buy anything!" : GOTO 10700
10910  AFFORDGOODS = 0
10920  IF GOODSCHOICENR = 0 THEN AFFORDGOODS = INT(GOLD / BEER(CURRENTCITY))
10930  IF GOODSCHOICENR = 1 THEN AFFORDGOODS = INT(GOLD / FURS(CURRENTCITY))
10940  IF GOODSCHOICENR = 2 THEN AFFORDGOODS = INT(GOLD / SPICES(CURRENTCITY))
10950  IF GOODSCHOICENR = 3 THEN AFFORDGOODS = INT(GOLD / ELIXIRS(CURRENTCITY))
10960  IF GOODSCHOICENR = 4 THEN AFFORDGOODS = INT(GOLD / TOODS(CURRENTCITY))
10970  IF GOODSCHOICENR = 5 THEN AFFORDGOODS = INT(GOLD / COTTON(CURRENTCITY))
10980  IF GOODSCHOICENR = 6 THEN AFFORDGOODS = INT(GOLD / GEMS(CURRENTCITY))
10990  IF GOODSCHOICENR = 7 THEN AFFORDGOODS = INT(GOLD / MARBLE(CURRENTCITY))
11000  IF GOODSCHOICENR = 8 THEN AFFORDGOODS = INT(GOLD / WINE(CURRENTCITY))
11010  IF GOODSCHOICENR = 9 THEN AFFORDGOODS = INT(GOLD / FISH(CURRENTCITY))
11020  IF GOODSCHOICENR = 10 THEN AFFORDGOODS = INT(GOLD / IRONORE(CURRENTCITY))
11030  IF GOODSCHOICENR = 11 THEN AFFORDGOODS = INT(GOLD / COPPERORE(CURRENTCITY))
11040  IF AFFORDGOODS = 0 THEN PRINT "You can't afford to buy it" : GOTO 10700
11050  PRINT "How many units? You can afford up to " + STR$(AFFORDGOODS) + "."
11060  INPUT UNITSCHOICE$
11070  IF VAL(UNITSCHOICE$) < 0 THEN PRINT "No, that's a dumb idea. You can't buy a negative number of goods." : GOTO 11050
11080  IF VAL(UNITSCHOICE$) = 0 THEN PRINT "You decide to not buy." : GOTO 10700
11090  IF VAL(UNITSCHOICE$) > AFFORDGOODS THEN PRINT "You don't have enough money to buy " + UNITSCHOICE$ + " units." : GOTO 11050
11100  IF VAL(UNITSCHOICE$)*GOODSWEIGHT(GOODSCHOICENR) + CAPACITY > MAXCAPACITY THEN PRINT "That's too heavy! You need to hire more workers to carry the goods." : GOTO 11050
11110  IF VAL(UNITSCHOICE$) > 1 THEN PRINT "You buy " + UNITSCHOICE$ + " units." : GOTO 11140
11120  IF VAL(UNITSCHOICE$) = 1 THEN PRINT "You buy one unit." : GOTO 11140
11130  PRINT "Please enter a valid number." : GOTO 11050
11140  IF GOODSCHOICENR = 0 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * BEER(CURRENTCITY) : GOODS(0) = GOODS(0) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(0)
11150  IF GOODSCHOICENR = 1 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * FURS(CURRENTCITY) : GOODS(1) = GOODS(1) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(1)
11160  IF GOODSCHOICENR = 2 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * SPICES(CURRENTCITY) : GOODS(2) = GOODS(2) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(2)
11170  IF GOODSCHOICENR = 3 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * ELIXIRS(CURRENTCITY) : GOODS(3) = GOODS(3) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(3)
11180  IF GOODSCHOICENR = 4 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * TOODS(CURRENTCITY) : GOODS(4) = GOODS(4) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(4)
11190  IF GOODSCHOICENR = 5 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * COTTON(CURRENTCITY) : GOODS(5) = GOODS(5) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(5)
11200  IF GOODSCHOICENR = 6 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * GEMS(CURRENTCITY) : GOODS(6) = GOODS(6) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(6)
11210  IF GOODSCHOICENR = 7 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * MARBLE(CURRENTCITY) : GOODS(7) = GOODS(7) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(7)
11220  IF GOODSCHOICENR = 8 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * WINE(CURRENTCITY) : GOODS(8) = GOODS(8) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(8)
11230  IF GOODSCHOICENR = 9 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * FISH(CURRENTCITY) : GOODS(9) = GOODS(9) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(9)
11240  IF GOODSCHOICENR = 10 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * IRONORE(CURRENTCITY) : GOODS(10) = GOODS(10) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(10)
11250  IF GOODSCHOICENR = 11 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * COPPERORE(CURRENTCITY) : GOODS(11) = GOODS(11) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(11)
11260  PRINT "Now you have " + STR$(GOLD) + " gold pieces." : GOTO 10700
11270  REM
11280  REM Selling goods
11290  INPUT "Which goods do you want to sell? ", GOODSCHOICE$
11300  GOODSCHOICE$ = UPS$(GOODSCHOICE$)
11310  GOODSCHOICENR = 13
11311  IF GOODSCHOICE$ = "" THEN GOTO 11400
11320  FOR I = 0 TO 12
11330   IF VAL(GOODSCHOICE$) = I+1 THEN GOODSCHOICENR = I
11340   IF I <> 9 AND I <> 1 AND I <> 5 AND I <> 11 AND LEFT$(GOODSCHOICE$, 1) = LEFT$(UPS$(GOODSNAME$(I)),1) THEN GOODSCHOICENR = I
11350   IF (I = 1 OR I = 9) AND LEFT$(GOODSCHOICE$, 2) = LEFT$(UPS$(GOODSNAME$(I)),2) THEN GOODSCHOICENR = I
11360   IF (I = 5 OR I = 11) AND LEFT$(GOODSCHOICE$, 3) = LEFT$(UPS$(GOODSNAME$(I)),3) THEN GOODSCHOICENR = I
11370   IF GOODSCHOICE$ = "CO" OR GOODSCHOICE$ = "C" THEN PRINT "A merchant asks you: cotton or copper ore, dear sir?" : GOTO 11400
11380   IF GOODSCHOICE$ = "F" THEN PRINT "A merchant asks you: fish or furs, dear sir?" : GOTO 11400
11390  NEXT I
11400  IF GOODSCHOICENR = 13 THEN PRINT "Please enter the valid goods name or number." : GOTO 11290
11410  IF GOODS(GOODSCHOICENR) = 0 THEN PRINT "You don't have any " + GOODSNAME$(GOODSCHOICENR) + "!": GOTO 10700
11420  PRINT "How many units you want to sell? You have " + STR$(GOODS(GOODSCHOICENR)) + "."
11430  INPUT UNITSCHOICE$
11440  IF VAL(UNITSCHOICE$) < 0 THEN PRINT "No, that's a dumb idea. You can't sell a negative number of goods." : GOTO 11420
11450  IF VAL(UNITSCHOICE$) = 0 THEN PRINT "You decide to not sell." : GOTO 10700
11460  IF VAL(UNITSCHOICE$) > GOODS(GOODSCHOICENR) THEN PRINT "That's more than you have!" : GOTO 11420
11470  IF VAL(UNITSCHOICE$) > 1 THEN PRINT "You sell " + UNITSCHOICE$ + " units." : GOTO 11500
11480  IF VAL(UNITSCHOICE$) = 1 THEN PRINT "You sell one unit." : GOTO 11500
11490  PRINT "Please enter a valid number." : GOTO 11420
11500  IF GOODSCHOICENR = 0 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (BEER(CURRENTCITY) - (INT(BEER(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(0) = GOODS(0) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(0)
11510  IF GOODSCHOICENR = 1 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (FURS(CURRENTCITY) - (INT(FURS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(1) = GOODS(1) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(1)
11520  IF GOODSCHOICENR = 2 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (SPICES(CURRENTCITY) - (INT(SPICES(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(2) = GOODS(2) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(2)
11530  IF GOODSCHOICENR = 3 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (ELIXIRS(CURRENTCITY) - (INT(ELIXIRS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(3) = GOODS(3) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(3)
11540  IF GOODSCHOICENR = 4 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (TOODS(CURRENTCITY) - (INT(TOODS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(4) = GOODS(4) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(4)
11550  IF GOODSCHOICENR = 5 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (COTTON(CURRENTCITY) - (INT(COTTON(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(5) = GOODS(5) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(5)
11560  IF GOODSCHOICENR = 6 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (GEMS(CURRENTCITY) - (INT(GEMS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(6) = GOODS(6) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(6)
11570  IF GOODSCHOICENR = 7 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (MARBLE(CURRENTCITY) - (INT(MARBLE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(7) = GOODS(7) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(7)
11580  IF GOODSCHOICENR = 8 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (WINE(CURRENTCITY) - (INT(WINE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(8) = GOODS(8) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(8)
11590  IF GOODSCHOICENR = 9 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (FISH(CURRENTCITY) - (INT(FISH(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1))  : GOODS(9) = GOODS(9) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(9)
11600  IF GOODSCHOICENR = 10 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (IRONORE(CURRENTCITY) - (INT(IRONORE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1))  : GOODS(10) = GOODS(10) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(10)
11610  IF GOODSCHOICENR = 11 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (COPPERORE(CURRENTCITY) - (INT(COPPERORE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1))  : GOODS(11) = GOODS(11) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(11)
11620  PRINT "Now you have " + STR$(GOLD) + " gold pieces." : GOTO 10700
11630  REM
11640  REM Inn
11650  PRINT "As you enter the inn through the heavily used, wooden door, you're welcomed by joyful music and the smile of a waitress."
11660  PRINT "You can " + CHR$(27) + "[38;5;051m[1]" + CHR$(27) + "[38;5;252m rent a room, " + CHR$(27) + "[38;5;051m[2]" + CHR$(27) + "[38;5;252m hire laborers, " + CHR$(27) + "[38;5;051m[3]";
11661  PRINT CHR$(27) + "[38;5;252m hire mercenaries, " + CHR$(27) + "[38;5;051m[4]" + CHR$(27) + "[38;5;252m hire a mage or " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit."
11670  INPUT "What is your choice? ", INNCHOICE$
11680  INNCHOICE$ = UPS$(INNCHOICE$)
11690  IF INNCHOICE$ = "1" OR INNCHOICE$= "RENT" OR INNCHOICE$ = "RENT A ROOM" THEN GOTO 11760
11700  IF INNCHOICE$ = "2" OR INNCHOICE$= "HIRE LABORERS" OR INNCHOICE$ = "HIRE WORKERS" THEN GOTO 11860
11710  IF INNCHOICE$ = "3" OR INNCHOICE$= "HIRE MERCENARIES" THEN GOTO 12040
11720  IF INNCHOICE$ = "4" OR INNCHOICE$= "HIRE MAGE" OR INNCHOICE$ = "HIRE A MAGE" THEN GOTO 12210
11730  IF INNCHOICE$ = "E" OR INNCHOICE$= "EXIT" THEN PRINT "You leave the inn." : GOTO 8840
11740  PRINT "Invalid choice." : GOTO 11660
11750  REM
11760  REM Renting a room
11770  IF GOLD < 20 + 2*PEOPLE THEN Print "You can't afford to rent a room." : GOTO 11660
11780  IF PEOPLE = O THEN PRINT "You rent a room. You pay 20 gold pieces."
11790  IF PEOPLE = 1 THEN PRINT "You rent a room for you and your employee. You pay 22 gold pieces."
11800  IF PEOPLE > 5 THEN PRINT "You rent rooms for you and your " + STR$(PEOPLE) + " people. You pay " + STR$(20+2*PEOPLE) + " gold pieces."
11810  IF PEOPLE > 1 AND PEOPLE < 6 THEN PRINT "You rent a room for you and your " + STR$(PEOPLE) + " people. You pay " + STR$(20+2*PEOPLE) + " gold pieces."
11820  GOLD = GOLD - (20+PEOPLE*2)
11830  HP = MAXHP
11840  PRINT "You wake up refreshed." : GOTO 11660
11850  REM
11860  REM Hiring workers
11870  IF GOLD < WORKERSPRICE(CURRENTCITY) THEN PRINT "You don't have enough money to hire even one worker!" : GOTO 11660
11880  IF WORKERS = 50 THEN PRINT "You already employ maximum number of workers." : GOTO 11660
11890  PRINT "The cost is " + STR$(WORKERSPRICE(CURRENTCITY)) + " gold pieces per employee. How many workers do you want to hire?"
11900  INPUT HOWMANYWORKERS$
11910  IF VAL(HOWMANYWORKERS$) = 0 THEN PRINT "You decide to not hire anybody." : GOTO 11660
11920  IF VAL(HOWMANYWORKERS$) < 0 THEN PRINT "Please enter a positive number." : GOTO 11890
11930  IF VAL(HOWMANYWORKERS$)*WORKERSPRICE(CURRENTCITY) = 0 THEN PRINT "You decide to not hire anyone." : GOTO 11660
11940  IF VAL(HOWMANYWORKERS$) + WORKERS > 50 THEN PRINT "That's too many, you can employ maximally 50 workers. Please enter a lower number." : GOTO 11890
11950  IF VAL(HOWMANYWORKERS$)*WORKERSPRICE(CURRENTCITY) > GOLD THEN PRINT "You don't have enough money. You can hire maximally " + STR$(INT(GOLD/WORKERSPRICE(CURRENTCITY))) + " workers." : GOTO 11890
11960  IF VAL(HOWMANYWORKERS$) = 1 THEN PRINT "You hired one worker. "
11970  IF VAL(HOWMANYWORKERS$) > 1 THEN PRINT "You hired " + HOWMANYWORKERS$ + " workers. "
11980  WORKERS = WORKERS + VAL(HOWMANYWORKERS$) : PRINT "The total number of employed workers is " + STR$(WORKERS)
11990  PEOPLE = PEOPLE + VAL(HOWMANYWORKERS$)
12000  MAXCAPACITY = MAXCAPACITY + VAL(HOWMANYWORKERS$)*30
12010  GOLD = GOLD - VAL(HOWMANYWORKERS$)*WORKERSPRICE(CURRENTCITY)
12020  GOTO 11660
12030  REM
12040  REM Hiring mercenaries
12050  IF GOLD < MERCPRICE(CURRENTCITY) THEN PRINT "You don't have enough money to hire even one mercenary!" : GOTO 11660
12060  IF MERCENARIES = 50 THEN PRINT "You already employ maximum number of mercenaries." : GOTO 11660
12070  PRINT "The cost is " + STR$(MERCPRICE(CURRENTCITY)) + " gold pieces per employee. How many mercenaries do you want to hire?"
12080  INPUT HOWMANYWORKERS$
12090  IF VAL(HOWMANYWORKERS$) = 0 THEN PRINT "You decide to not hire anybody." : GOTO 11660
12100  IF VAL(HOWMANYWORKERS$) < 0 THEN PRINT "Please enter a positive number." : GOTO 12070
12110  IF VAL(HOWMANYWORKERS$) * MERCPRICE(CURRENTCITY) = 0 THEN PRINT "You decide to not hire anyone." : GOTO 11660
12120  IF VAL(HOWMANYWORKERS$) + MERCENARIES > 50 THEN PRINT "That's too many, you can employ maximally 50 mercenaries. Please enter a lower number." : GOTO 12070
12130  IF VAL(HOWMANYWORKERS$) * MERCPRICE(CURRENTCITY) > GOLD THEN PRINT "You don't have enough money. You can hire maximally " + STR$(INT(GOLD/MERCPRICE(CURRENTCITY))) + " mercenaries." : GOTO 12070
12140  IF VAL(HOWMANYWORKERS$) = 1 THEN PRINT "You hired one mercenary."
12150  IF VAL(HOWMANYWORKERS$) > 1 THEN PRINT "You hired " + HOWMANYWORKERS$ + " mercenaries. "
12160  MERCENARIES = MERCENARIES + VAL(HOWMANYWORKERS$) : PRINT "The total number of employed mercenaries is " + STR$(MERCENARIES)
12170  PEOPLE = PEOPLE + VAL(HOWMANYWORKERS$)
12180  GOLD = GOLD - VAL(HOWMANYWORKERS$)*MERCPRICE(CURRENTCITY)
12190  GOTO 11660
12200  REM
12210  REM Hiring a mage
12220  IF MAGES = 1 THEN PRINT "You already have a mage in your party. " : GOTO 11660
12230  IF GOLD < MAGEPRICE(CURRENTCITY) THEN PRINT "You don't have " + STR$(MAGEPRICE(CURRENTCITY)) + " gold pieces to hire a mage." : GOTO 11660
12240  PRINT "The cost is " + STR$(MAGEPRICE(CURRENTCITY)) + " gold pieces. Do you want to hire a mage?"
12250  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
12251  INPUT "", HIREAMAGE$
12260  IF UPS$(HIREAMAGE$) <> "Y" AND UPS$(HIREAMAGE$) <> "YES" THEN PRINT "You decide to not hire a mage." : GOTO 11660
12270  GOLD = GOLD - MAGEPRICE(CURRENTCITY)
12280  MAGES = 1 : PRINT "You hire a mage. You pay " + STR$(MAGEPRICE(CURRENTCITY)) + " gold pieces."
12290  PEOPLE = PEOPLE + 1
12300  GOTO 11660
12310  REM
12320  REM Blacksmith's shop
12330  PRINT "You enter a small blacksmith shop. There are several weapons and armors available for sale."
12340  PRINT CHR$(27) + "[38;5;051m[1]" + CHR$(27) + "[38;5;252m Buy a dagger for " + STR$(DAGGERPRICE(CURRENTCITY)) + " gold pieces"
12350  PRINT CHR$(27) + "[38;5;051m[2]" + CHR$(27) + "[38;5;252m Buy a short sword for " + STR$(SHORTSPRICE(CURRENTCITY)) + " gold pieces"
12360  PRINT CHR$(27) + "[38;5;051m[3]" + CHR$(27) + "[38;5;252m Buy a long sword for " + STR$(LONGSPRICE(CURRENTCITY)) + " gold pieces"
12370  PRINT CHR$(27) + "[38;5;051m[4]" + CHR$(27) + "[38;5;252m Buy a bastard sword for " + STR$(BASTARDSPRICE(CURRENTCITY)) + " gold pieces"
12380  PRINT CHR$(27) + "[38;5;051m[5]" + CHR$(27) + "[38;5;252m Buy a two-handed sword for " + STR$(TWOHSPRICE(CURRENTCITY)) + " gold pieces"
12390  PRINT CHR$(27) + "[38;5;051m[6]" + CHR$(27) + "[38;5;252m Buy a magic sword for " + STR$(MAGICSPRICE(CURRENTCITY)) + " gold pieces"
12400  PRINT CHR$(27) + "[38;5;051m[7]" + CHR$(27) + "[38;5;252m Buy a leather armor for " + STR$(LEATHERAPRICE(CURRENTCITY)) + " gold pieces"
12410  PRINT CHR$(27) + "[38;5;051m[8]" + CHR$(27) + "[38;5;252m Buy a chainmail for " + STR$(CHAINMAILPRICE(CURRENTCITY)) + " gold pieces"
12420  PRINT CHR$(27) + "[38;5;051m[9]" + CHR$(27) + "[38;5;252m Buy a plate armor for " + STR$(PLATEARMORPRICE(CURRENTCITY)) + " gold pieces"
12430  PRINT CHR$(27) + "[38;5;051m[10]" + CHR$(27) + "[38;5;252m Buy a magic armor for " + STR$(MAGICAPRICE(CURRENTCITY)) + " gold pieces"
12440  IF WEAPON$ <> "no weapon" THEN PRINT CHR$(27) + "[38;5;051m[11]" + CHR$(27) + "[38;5;252m Sell your " + WEAPON$
12450  IF ARMOR$ <> "no armor" THEN PRINT CHR$(27) + "[38;5;051m[12]" + CHR$(27) + "[38;5;252m Sell your " + ARMOR$
12460  PRINT CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit"
12470  INPUT BLACKSMITHCHOICE$
12480  BLACKSMITHCHOICE$ = UPS$(BLACKSMITHCHOICE$)
12490  PRICE = 0
12500  IF (BLACKSMITHCHOICE$ = "1" OR BLACKSMITHCHOICE$="2" OR BLACKSMITHCHOICE$="3" OR BLACKSMITHCHOICE$="4" OR BLACKSMITHCHOICE$="5" OR BLACKSMITHCHOICE$="6") AND WEAPON$ <> "no weapon" THEN PRINT "You need to sell you current weapon first." : GOTO 12340
12510  IF (BLACKSMITHCHOICE$ = "7" OR BLACKSMITHCHOICE$="8" OR BLACKSMITHCHOICE$="9" OR BLACKSMITHCHOICE$="10") AND ARMOR$ <> "no armor" THEN PRINT "You need to sell you current armor first. " : GOTO 12340
12520  IF BLACKSMITHCHOICE$ = "E" OR BLACKSMITHCHOICE$ = "EXIT" THEN PRINT "You leave the blacksmith shop." : GOTO 8840
12530  IF BLACKSMITHCHOICE$ = "1" THEN PRICE = DAGGERPRICE(CURRENTCITY)
12540  IF BLACKSMITHCHOICE$ = "2" THEN PRICE = SHORTSPRICE(CURRENTCITY)
12550  IF BLACKSMITHCHOICE$ = "3" THEN PRICE = LONGSPRICE(CURRENTCITY)
12560  IF BLACKSMITHCHOICE$ = "4" THEN PRICE = BASTARDSPRICE(CURRENTCITY)
12570  IF BLACKSMITHCHOICE$ = "5" THEN PRICE = TWOHSPRICE(CURRENTCITY)
12580  IF BLACKSMITHCHOICE$ = "6" THEN PRICE = MAGICSPRICE(CURRENTCITY)
12590  IF BLACKSMITHCHOICE$ = "7" THEN PRICE = LEATHERAPRICE(CURRENTCITY)
12600  IF BLACKSMITHCHOICE$ = "8" THEN PRICE = CHAINMAILPRICE(CURRENTCITY)
12610  IF BLACKSMITHCHOICE$ = "9" THEN PRICE = PLATEARMORPRICE(CURRENTCITY)
12620  IF BLACKSMITHCHOICE$ = "10" THEN PRICE = MAGICAPRICE(CURRENTCITY)
12630  IF BLACKSMITHCHOICE$ = "11" AND WEAPON$ <> "no weapon" THEN GOTO 12820
12640  IF BLACKSMITHCHOICE$ = "12" AND ARMOR$ <> "no armor" THEN GOTO 12940
12650  IF PRICE = 0 THEN PRINT "Enter a valid number or " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit." : GOTO 12470
12660  REM
12670  REM Buying a weapon or an armor
12680  IF PRICE > GOLD THEN PRINT "You can't afford it." : PRINT "" : GOTO 12340
12690  IF BLACKSMITHCHOICE$ = "1" THEN PRINT "You bought a steel dagger." : WEAPON$ = "dagger"
12700  IF BLACKSMITHCHOICE$ = "2" THEN PRINT "You bought a short sword." : WEAPON$ = "short sword"
12710  IF BLACKSMITHCHOICE$ = "3" THEN PRINT "You bought a long sword." : WEAPON$ = "long sword"
12720  IF BLACKSMITHCHOICE$ = "4" THEN PRINT "You bought a bastard sword." : WEAPON$ = "bastard sword"
12730  IF BLACKSMITHCHOICE$ = "5" THEN PRINT "You bought a two-handed sword." : WEAPON$ = "2-handed sword"
12740  IF BLACKSMITHCHOICE$ = "6" THEN PRINT "You bought a super-expensive magic sword." : WEAPON$ = "magic sword"
12750  IF BLACKSMITHCHOICE$ = "7" THEN PRINT "You bought a leather armor." : ARMOR$ = "leather armor"
12760  IF BLACKSMITHCHOICE$ = "8" THEN PRINT "You bought a chainmail." : ARMOR$ = "chainmail"
12770  IF BLACKSMITHCHOICE$ = "9" THEN PRINT "You bought a plate armor." : ARMOR$ = "plate armor"
12780  IF BLACKSMITHCHOICE$ = "10" THEN PRINT "You bought a magic armor. You hope the armor is really worth its price." : ARMOR$ = "magic armor"
12790  GOLD = GOLD - PRICE : PRINT "Now you have " + STR$(GOLD) + " gold pieces." : PRINT ""
12800  GOTO 12340
12810  REM
12820  REM Sell your weapon
12830  IF WEAPON$ = "dagger" THEN SELLPRICE = 5
12840  IF WEAPON$ = "short sword" THEN SELLPRICE = 15
12850  IF WEAPON$ = "long sword" THEN SELLPRICE = 100
12860  IF WEAPON$ = "bastard sword" THEN SELLPRICE = 200
12870  IF WEAPON$ = "2-handed sword" THEN SELLPRICE = 300
12880  IF WEAPON$ = "magic sword" THEN SELLPRICE = 1000
12890  PRINT "You sold your " + WEAPON$ + " for " + STR$(SELLPRICE) + " gold pieces."
12900  GOLD = GOLD + SELLPRICE
12910  WEAPON$ = "no weapon" : PRINT "Now you have " + STR$(GOLD) + " gold pieces." : PRINT ""
12920  GOTO 12340
12930  REM
12940  REM Sell you armor
12950  IF ARMOR$ = "leather armor" THEN SELLPRICE = 20
12960  IF ARMOR$ = "chainmail" THEN SELLPRICE = 150
12970  IF ARMOR$ = "plate armor" THEN SELLPRICE = 400
12980  IF ARMOR$ = "magic armor" THEN SELLPRICE = 1500
12990  PRINT "You sold your " + ARMOR$ + " for " + STR$(SELLPRICE) + " gold pieces."
13000  GOLD = GOLD + SELLPRICE
13010  ARMOR$ = "no armor" : PRINT "Now you have " + STR$(GOLD) + " gold pieces." : PRINT ""
13020  GOTO 12340
13030  REM
13040  REM Display the map
13050  CLS
13060  FOR I = 0 to 47
13070  IF (HEIGHT<48) AND (I=HEIGHT) THEN INPUT "Press enter...", DUMPP$
13080  IF (HEIGHT<24) AND (I=HEIGHT*2) THEN INPUT "Press enter...", DUMPP$
13090  IF I <> (PLAYERY-1) THEN PRINT MMAP$(I)
13100  IF I = (PLAYERY-1) THEN PRINT MID$(MMAP$(PLAYERY-1),1,(PLAYERX-1)*12) + CHR$(27) + "[48;5;247m" + MID$(MMAP$(PLAYERY-1),(PLAYERX-1)*12+1,12) + CHR$(27) + "[48;5;232m" + MID$(MMAP$(PLAYERY-1),(PLAYERX)*12+1,(80-PLAYERX)*12)
13110  NEXT I
13120  PRINT CHR$(27) + "[38;5;252m" + ""
13130  INPUT "Press enter", DUMPP$
13131  GOTO 10050
13140  REM
13150  REM Random fights and events
13160  REM
13170  DICEROLL = FND(100)
13180  IF DICEROLL < 80 THEN RETURN
13190  IF DICEROLL < 96 AND DICEROLL > 79 THEN GOSUB 13230
13200  IF DICEROLL > 95 THEN GOSUB 15160
13210  RETURN
13220  REM
13230  DICEROLL2 = FND(20) - 1
13240  ENEMY$ = MONSTERNAME$(DICEROLL2)
13250  ENEMYATTACK = MONSTERATTACK(DICEROLL2)
13260  ENEMYHP = MONSTERHP(DICEROLL2)
13270  ENEMYGOLD = MONSTERGOLD(DICEROLL2)
13280  ENEMYEXPERIENCE = MONSTEREXPERIENCE(DICEROLL2)
13290  PRINT "" : PRINT "You see a " + ENEMY$ + "."
13300  PRINT "The " + ENEMY$ + " is hostile!"
13310  GOSUB 13340
13320  RETURN
13330  REM
13340  REM Fight!
13350  ENEMYMAXHP = ENEMYHP
13351  HPCOLOR$ = ""
13352  IF HP > MAXHP-4 THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;076m"
13353  IF HP < MAXHP-3 AND HP > INT(MAXHP/2)-1 THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;220m"
13354  IF HP < INT(MAXHP/2) THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;160m"
13355  IF HP < INT(MAXHP/4) THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;124m"
13360  PRINT "Your HP: " + HPCOLOR$ + STR$(HP) + "/" + STR$(MAXHP) + TAB$(5) + "" + CHR$(27) + "[38;5;252mEnemy's HP: " + STR$(ENEMYHP) + "/" + STR$(ENEMYMAXHP)
13370  PRINT "You can " + CHR$(27) + "[38;5;051m[a]" + CHR$(27) + "[38;5;252mttack the " + ENEMY$ + " or " + CHR$(27) + "[38;5;051m[r]" + CHR$(27) + "[38;5;252mun."
13380  INPUT FIGHTCHOICE$
13390  FIGHTCHOICE$ = UPS$(FIGHTCHOICE$)
13400  IF FIGHTCHOICE$ <> "A" AND FIGHTCHOICE$ <> "ATTACK" AND FIGHTCHOICE$ <> "R" AND FIGHTCHOICE$ <> "RUN" THEN PRINT "Invalid choice." : GOTO 13370
13410  IF FIGHTCHOICE$ = "A" OR FIGHTCHOICE$ = "ATTACK" THEN GOTO 13660
13420  IF FIGHTCHOICE$ = "R" OR FIGHTCHOICE$ = "RUN" THEN PRINT "You flee from the enemy."
13430  REM RUN
13440  IF WORKERS = 1 THEN PRINT "Your worker tries to run, but gets killed by the " + ENEMY$ + "!"
13450  IF WORKERS > 1 AND CAPACITY = 0 THEN PRINT "Your workers fly in panic."
13460  IF WORKERS > 1 AND CAPACITY > 0 THEN PRINT "Your workers fly in panic and drop the goods."
13470  IF WORKERS > 1 THEN PRINT "Some of your workers get killed by the " + ENEMY$ + "!"
13480  IF WORKERS > 1 THEN PRINT "The survivors are too afraid to travel with you and leave you."
13490  IF WORKERS > 0 AND CAPACITY > 0 THEN PRINT "You lost all of your workers and all goods."
13500  IF WORKERS > 0 AND CAPACITY = 0 THEN PRINT "You lost all of your workers."
13510  FOR I = 0 TO 11
13520   IF WORKERS > 0 THEN GOODS(I) = 0
13530  NEXT I
13540  WORKERS = 0
13550  CAPACITY = 0
13560  IF MAGES = 1 THEN PRINT "Your mage looks at you with disfavor."
13570  DICEROLL3 = FND(10)
13580  IF DICEROLL3 = 10 AND MAGES = 1 THEN PRINT "Your mage says 'I don't wanna travel with such coward as you' and leaves you." : MAGES = 0
13590  IF MERCENARIES > 1 THEN PRINT "Your mercenaries are upset with you for your decision."
13600  DICEROLL4 = FND(10)
13610  DICEROLL5 = FND(MERCENARIES)
13620  IF DICEROLL4 = 10 AND MERCENARIES > 1 THEN PRINT "They decide to leave you." : MERCENARIES = 0
13630  IF DICEROLL4 = 9 AND MERCENARIES > 1 THEN PRINT "After a short dispute " + STR$(DICEROLL5) + " of them decided to leave you." : MERCENARIES = MERCENARIES - DICEROLL5
13640  RETURN
13650  REM
13660  REM
13670  IF WEAPON$ = "no weapon" THEN ATTACK = 0
13680  IF WEAPON$ = "dagger" THEN ATTACK = 1
13690  IF WEAPON$ = "short sword" THEN ATTACK = 2
13700  IF WEAPON$ = "long sword" THEN ATTACK = 3
13710  IF WEAPON$ = "bastard sword" THEN ATTACK = 4
13720  IF WEAPON$ = "2-handed sword" THEN ATTACK = 6
13730  IF WEAPON$ = "magic sword" THEN ATTACK = 10
13740  DAMAGE = 0
13750  IF ATTACK + STRENGTH + LEVEL + FND(20) > 20 THEN DAMAGE = INT((STRENGTH+LEVEL)/2)+ATTACK+FND(10) : PRINT "You hit the " + ENEMY$ + " (" + STR$(DAMAGE) + " damage points)." : ENEMYHP = ENEMYHP - DAMAGE : GOTO 13780
13760  IF WEAPON$ = "no weapon" THEN PRINT "You try to hit the " + ENEMY$ + " with your bare hands, but you miss."
13770  IF WEAPON$ <> "no weapon" THEN PRINT "You try to slash the " + ENEMY$ + " with your " + WEAPON$ + ", but you miss."
13780  IF ENEMYHP < 1 THEN GOTO 14140
13790  DAMAGE = 0
13800  IF ARMOR$ = "no armor" THEN DEFENSE = 0
13810  IF ARMOR$ = "leather armor" THEN DEFENSE = 1
13820  IF ARMOR$ = "chainmail" THEN DEFENSE = 3
13830  IF ARMOR$ = "plate armor" THEN DEFENSE = 6
13840  IF ARMOR$ = "magic armor" THEN DEFENSE = 10
13850  EDAMAGE = 0
13860  EHIT = 0
13870  IF ENEMYATTACK + FND(20) > DEXTERITY + DEFENSE THEN EHIT = 1 : EDAMAGE = FND(ENEMYATTACK)+FND(ENEMYATTACK) - DEFENSE
13880  IF EHIT = 1 AND EDAMAGE > 0 THEN PRINT "The " + ENEMY$ + " hits you (" + STR$(EDAMAGE) + " damage points)." : HP = HP - EDAMAGE
13890  IF EHIT = 0 THEN PRINT "The " + ENEMY$ + " misses you."
13900  IF EHIT = 1 AND EDAMAGE < 1 THEN PRINT "The " + ENEMY$ + " hits you, but your " + ARMOR$ + " protects you well and you don't get any damage."
13910  DICEROLL9 = FND(100)
13920  IF EHIT = 1 AND EDAMAGE > 9 AND DICEROLL9 = 100 AND ARMOR$ <> "no armor" AND ARMOR$ <> "magic armor" THEN PRINT "The " + ENEMY$ + "'s mighty attack destroys your " + ARMOR$ + "!" : ARMOR$ = "no armor"
13930  IF (ENEMYATTACK + FND(30)) > 35 AND MERCENARIES > 0 THEN PRINT "Oh no, the " + ENEMY$ + " kills one of your mercenaries!" : MERCENARIES = MERCENARIES - 1
13940  DICEROLL8 = FND(100)
13950  IF (ENEMYATTACK + FND(30)) > 35 AND MAGES = 1 AND DICEROLL8 = 100 THEN PRINT "The " + ENEMY$ + " attacks your mage and kills him!" : MAGES = 0
13960  IF HP < 1 THEN DEATHCAUSE$ = ENEMY$ : GOTO 14590
13970  IF MERCENARIES > 1 AND (MERCENARIES+FND(100) > 60) THEN DAMAGE = INT(MERCENARIES/3 + 1)+FND(INT(MERCENARIES/2)) : PRINT "Your mercenaries hit the " + ENEMY$ + " (" + STR$(DAMAGE) + " damage points)." : ENEMYHP = ENEMYHP - DAMAGE : GOTO 14000
13971  IF MERCENARIES = 1 AND (MERCENARIES+FND(100) > 60) THEN DAMAGE = INT(MERCENARIES/3 + 1)+FND(INT(MERCENARIES/2)) : PRINT "Your mercenary hits the " + ENEMY$ + " (" + STR$(DAMAGE) + " damage points)." : ENEMYHP = ENEMYHP - DAMAGE : GOTO 14000
13980  IF MERCENARIES = 1 THEN PRINT "Your mercenary miss the " + ENEMY$ + "."
13990  IF MERCENARIES > 1 THEN PRINT "Your mercenaries miss the " + ENEMY$ + "."
14000  IF ENEMYHP < 1 THEN GOTO 14140
14010  DAMAGE = 0
14020  HEALING = 0
14030  IF MAGES = 1 THEN DICEROLL6 = FND(5)
14040  IF MAGES = 1 AND DICEROLL6 = 1 THEN PRINT "Your mage tries to cast a spell, but fails."
14050  IF MAGES = 1 AND DICEROLL6 = 2 THEN PRINT "Your mage throws a fireball, but misses."
14060  IF MAGES = 1 AND DICEROLL6 = 3 THEN DAMAGE = FND(20) : PRINT "Your mage throws a fireball, the " + ENEMY$ + " loses " + STR$(DAMAGE) + " HP." : ENEMYHP = ENEMYHP - DAMAGE
14070  IF MAGES = 1 AND DICEROLL6 = 4 AND HP < MAXHP THEN HEALING = FND(MAXHP-HP) : PRINT "Your mage casts a healing spell, you recover " + STR$(HEALING) + " HP." : HP = HP + HEALING
14080  IF MAGES = 1 AND DICEROLL6 = 4 AND HP = MAXHP AND MERCENARIES > 0 THEN PRINT "Your mage casts a spell and the wounds of one of your mercenaries are healed."
14090  IF MAGES = 1 AND DICEROLL6 = 4 AND HP = MAXHP AND MERCENARIES = 0 THEN PRINT "Your mage casts a protection spell and his aura starts to glow."
14100  IF MAGES = 1 AND DICEROLL6 = 5 THEN DAMAGE = 5+FND(10) : PRINT "Your mage casts a magic missle, the " + ENEMY$ + " loses " + STR$(DAMAGE) + " HP." : ENEMYHP = ENEMYHP - DAMAGE
14110  IF ENEMYHP < 1 THEN GOTO 14140
14120  PRINT "" : GOTO 13352
14130  REM
14140  REM Winning the fight
14150  PRINT "You kill the " + ENEMY$ + "!"
14160  IF MERCENARIES=1 THEN PRINT "Your mercenary checks the corpse to be sure the " + ENEMY$ + " is really dead."
14170  IF MERCENARIES>1 THEN PRINT "Your mercenaries celebrate the victory."
14180  DICEROLL7 = FND(2)
14190  IF DICEROLL7 = 1 AND MAGES = 1 AND HP < MAXHP THEN HEALING = FND(MAXHP-HP) : PRINT "Your mage looks at your wounds and casts a healing spell. You recover " + STR$(HEALING) + " HP." : HP = HP + HEALING
14200  IF DICEROLL7 = 2 AND MAGES = 1 THEN PRINT "Your mage congratulates you for winning the fight."
14210  LOOT = FND(ENEMYGOLD) + 1
14220  IF ENEMYGOLD > 0 THEN PRINT "You search the " + ENEMY$ + "'s corpse and find " + STR$(LOOT) + " gold pieces." : GOLD = GOLD + LOOT
14230  PRINT "For winning the fight you gain " + STR$(ENEMYEXPERIENCE) + " experience points. "
14240  EXPERIENCE = EXPERIENCE + ENEMYEXPERIENCE
14250  ADVANCE = 0
14260  IF EXPERIENCE > 100 AND LEVEL = 1 THEN ADVANCE = 1
14270  IF EXPERIENCE > 300 AND LEVEL = 2 THEN ADVANCE = 1
14280  IF EXPERIENCE > 500 AND LEVEL = 3 THEN ADVANCE = 1
14290  IF EXPERIENCE > 800 AND LEVEL = 4 THEN ADVANCE = 1
14300  IF EXPERIENCE > 1200 AND LEVEL = 5 THEN ADVANCE = 1
14310  IF EXPERIENCE > 1600 AND LEVEL = 6 THEN ADVANCE = 1
14320  IF EXPERIENCE > 2400 AND LEVEL = 7 THEN ADVANCE = 1
14330  IF EXPERIENCE > 3400 AND LEVEL = 8 THEN ADVANCE = 1
14340  IF EXPERIENCE > 4500 AND LEVEL = 9 THEN ADVANCE = 1
14350  IF EXPERIENCE > 5700 AND LEVEL = 10 THEN ADVANCE = 1
14360  FOR I = 11 TO 100
14370   IF LEVEL = I AND EXPERIENCE > 5700 + (LEVEL-10)*1500 THEN ADVANCE = 1
14380  NEXT I
14390  IF ADVANCE = 1 THEN LEVEL = LEVEL + 1
14400  IF ADVANCE = 1 THEN PRINT "You advance to level " + STR$(LEVEL) + "!"
14410  IF ADVANCE = 1 AND STRENGTH > 19 AND DEXTERITY > 19 AND ENDURANCE > 19 AND CHARISMA > 19 THEN GOTO 14560
14420  IF ADVANCE = 1 THEN PRINT "You can increase one of your stats: ";
14430  IF ADVANCE = 1 AND STRENGTH < 20 THEN PRINT CHR$(27) + "[38;5;051m[s]" + CHR$(27) + "[38;5;252mtrength " ;
14440  IF ADVANCE = 1 AND DEXTERITY < 20 THEN PRINT CHR$(27) + "[38;5;051m[d]" + CHR$(27) + "[38;5;252mexterity ";
14450  IF ADVANCE = 1 AND ENDURANCE < 20 THEN PRINT CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mndurance ";
14460  IF ADVANCE = 1 AND CHARISMA < 20 THEN PRINT CHR$(27) + "[38;5;051m[c]" + CHR$(27) + "[38;5;252mharisma " ;
14470  IF ADVANCE = 1 THEN PRINT ""
14480  STATCHOICE$ = ""
14490  IF ADVANCE = 1 THEN INPUT "Which one do you want to increase? ", STATCHOICE$
14500  IF ADVANCE = 1 THEN STATCHOICE$ = UPS$(STATCHOICE$)
14510  IF ADVANCE = 1 AND (STATCHOICE$ = "S" OR STATCHOICE$ = "STRENGTH") AND STRENGTH < 20 THEN PRINT "Your strength is now " + STR$(STRENGTH+1) : STRENGTH = STRENGTH + 1
14520  IF ADVANCE = 1 AND (STATCHOICE$ = "D" OR STATCHOICE$ = "DEXTERITY") AND DEXTERITY < 20 THEN PRINT "Your dexterity is now " + STR$(DEXTERITY+1) : DEXTERITY = DEXTERITY + 1
14530  IF ADVANCE = 1 AND (STATCHOICE$ = "E" OR STATCHOICE$ = "ENDURANCE") AND ENDURANCE < 20 THEN PRINT "Your endurance is now " + STR$(ENDURANCE+1) : ENDURANCE = ENDURANCE + 1
14540  IF ADVANCE = 1 AND (STATCHOICE$ = "C" OR STATCHOICE$ = "CHARISMA") AND CHARISMA < 20 THEN PRINT "Your charisma is now " + STR$(CHARISMA+1) : CHARISMA = CHARISMA + 1
14550  IF ADVANCE = 1 AND STATCHOICE$ <> "C" AND STATCHOICE$ <> "CHARISMA" AND STATCHOICE$ <> "S" AND STATCHOICE$ <> "STRENGTH" AND STATCHOICE$ <> "D" AND STATCHOICE$ <> "DEXTERITY" AND STATCHOICE$ <> "E" AND STATCHOICE$ <> "ENDURANCE" THEN GOTO 14420
14560  IF ADVANCE = 1 THEN MAXHP = 10 + LEVEL * ENDURANCE : HP = HP + ENDURANCE
14561  IF ENEMY$ = "red dragon" THEN GOTO 14840
14570  RETURN
14580  REM
14590  REM Death
14600  PRINT "The " + ENEMY$ + " kills you!"
14610  SLEEP 1
14620  PRINT CHR$(27) + "[38;5;246m                                         "
14630  PRINT "            .-------------.              "
14640  PRINT "           /               \             "
14650  PRINT "          |                 |            "
14660  PRINT "          |       RIP       |            "
14670  PRINT "          |                 |            "
14680  PRINT "          |" + CHR$(27) + "[38;5;252m" + TAB$(NINT((17-LEN(NAME$))/2)) + NAME$ + TAB$(NINT((18-LEN(NAME$))/2)) + "" + CHR$(27) + "[38;5;246m|            "
14690  PRINT "          |                 |            "
14700  PRINT "          |                 |            "
14710  PRINT CHR$(27) + "[38;5;040m.........." + CHR$(27) + "[38;5;246m|" + CHR$(27) + "[38;5;040m................." + CHR$(27) + "[38;5;246m|" + CHR$(27) + "[38;5;040m............"
14720  PRINT CHR$(27) + "[0mPress enter"
14721  INPUT DUMPP$
14730  END
14740  REM
14750  REM Fight with the dragon
14760  PRINT "Do you really want to enter the cave?"
14770  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
14771  INPUT "", DRAGONCHOICE$
14780  DRAGONCHOICE$ = UPS$(DRAGONCHOICE$)
14790  IF DRAGONCHOICE$ = "N" OR DRAGONCHOICE$ = "NO" THEN PRINT "You decide to not take a risk." : RETURN
14800  IF DRAGONCHOICE$ <> "Y" AND DRAGONCHOICE$ <> "YES" THEN GOTO 14770
14810  PRINT "You enter the cave. The dragon notices you! The dragon is hostile!"
14820  ENEMY$ = "red dragon" : ENEMYHP = 300 : ENEMYATTACK = 25 : ENEMYEXPERIENCE = 4000 : ENEMYGOLD = 10000
14830  GOTO 13340
14840  PRINT "You have defeated the dragon. The Voteron Kingdom is now safe."
14850  REM ASCII art
14860  REM
14870  REM
14880  REM
14890  REM
14900  REM
14910  REM
14920  REM
14930  REM
14940  REM
14950  REM
14960  REM
14970  REM
14980  REM
14990  REM
15000  REM
15010  REM
15020  REM
15030  REM
15040  REM
15050  REM
15060  REM
15070  REM
15080  REM
15090  REM
15100  REM
15110  REM
15120  REM
15130  REM
15140  END
15150  REM
15160  REM Random events
15170  REM
15180  DICEROLL10 = FND(30)
15190  IF DICEROLL10 = 1 THEN GOTO 15700
15200  IF DICEROLL10 = 2 THEN GOTO 15840
15210  IF DICEROLL10 = 3 THEN GOTO 15910
15220  IF DICEROLL10 = 4 THEN GOTO 16050
15230  IF DICEROLL10 = 5 THEN GOTO 16130
15240  IF DICEROLL10 = 6 THEN GOTO 16200
15250  IF DICEROLL10 = 7 THEN GOTO 16250
15260  IF DICEROLL10 = 8 THEN GOTO 16300
15270  IF DICEROLL10 = 9 THEN GOTO 16400
15280  IF DICEROLL10 = 10 THEN GOTO 16470
15290  IF DICEROLL10 = 11 THEN GOTO 16610
15300  IF DICEROLL10 = 12 THEN GOTO 16870
15310  IF DICEROLL10 = 13 THEN GOTO 17060
15320  IF DICEROLL10 = 14 THEN GOTO 17180
15330  IF DICEROLL10 = 15 THEN GOTO 17250
15340  IF DICEROLL10 = 16 THEN GOTO 17390
15350  IF DICEROLL10 = 17 THEN GOTO 17590
15360  IF DICEROLL10 = 18 THEN GOTO 17740
15370  IF DICEROLL10 = 19 THEN GOTO 17790
15380  IF DICEROLL10 = 20 THEN GOTO 17830
15390  IF DICEROLL10 = 21 THEN GOTO 17870
15400  IF DICEROLL10 = 22 THEN GOTO 17910
15410  IF DICEROLL10 = 23 THEN GOTO 17960
15420  IF DICEROLL10 = 24 THEN GOTO 18000
15430  IF DICEROLL10 = 25 THEN GOTO 18040
15440  IF DICEROLL10 = 26 THEN GOTO 18100
15450  IF DICEROLL10 = 27 THEN GOTO 18250
15460  IF DICEROLL10 = 28 THEN GOTO 18320
15470  IF DICEROLL10 = 29 THEN GOTO 18550
15480  IF DICEROLL10 = 30 THEN GOTO 18750
15490  REM IF DICEROLL10 = 31 THEN GOTO
15500  REM IF DICEROLL10 = 32 THEN GOTO
15510  REM IF DICEROLL10 = 33 THEN GOTO
15520  REM IF DICEROLL10 = 34 THEN GOTO
15530  REM IF DICEROLL10 = 35 THEN GOTO
15540  REM IF DICEROLL10 = 36 THEN GOTO
15550  REM IF DICEROLL10 = 37 THEN GOTO
15560  REM IF DICEROLL10 = 38 THEN GOTO
15570  REM IF DICEROLL10 = 39 THEN GOTO
15580  REM IF DICEROLL10 = 40 THEN GOTO
15590  REM
15600  REM
15610  REM
15620  REM
15630  REM
15640  REM
15650  REM
15660  REM
15670  REM
15680  REM
15690  REM
15700  REM Dice roll 1
15710  IF WEAPON$ <> "no weapon" THEN RETURN
15720  IF PEOPLE > 0 THEN RETURN
15730  PRINT "You find an enterance to a small cave. Do you want to enter?"
15740  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
15741  INPUT "", CAVECHOICE$
15750  CAVECHOICE$ = UPS$(CAVECHOICE$)
15760  IF CAVECHOICE$ = "NO" OR CAVECHOICE$ = "N" THEN PRINT "You return to the main road. " : RETURN
15770  IF CAVECHOICE$ <> "N" AND CAVECHOICE$ <> "NO" AND CAVECHOICE$ <> "Y" AND CAVECHOICE$ <> "YES" THEN GOTO 15740
15780  IF CAVECHOICE$ = "Y" OR CAVECHOICE$ = "YES" THEN PRINT "You decide to enter. Inside the cave you meet an old man in red robes. He says:"
15790  PRINT "'It's dangerous to go alone, take this!'"
15800  PRINT "The old man gives you a short sword."
15810  WEAPON$ = "short sword"
15820  RETURN
15830  REM
15840  REM Dice roll 2
15850  IF MAXCAPACITY-CAPACITY < 15 THEN RETURN
15860  TOODSROLL = FND(4) + 1
15870  PRINT "You find " + STR$(TOODSROLL) + " fresh toods."
15880  GOODS(4) = GOODS(4) + TOODSROLL
15890  RETURN
15900  REM
15910  REM Dice roll 3
15920  IF STRENGTH > 19 THEN RETURN
15930  PRINT "You meet a caravan of gnome merchants."
15940  PRINT "One of them offers you a potion of strength for 500 gold pieces."
15950  PRINT "Do you want to buy?"
15960  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
15961  INPUT "", GNOMECHOICE$
15970  GNOMECHOICE$ = UPS$(GNOMECHOICE$)
15980  IF GNOMECHOICE$ <> "Y" AND GNOMECHOICE$ <> "YES" AND GNOMECHOICE$ <> "NO" AND GNOMECHOICE$ <> "N" THEN GOTO 15960
15990  IF GNOMECHOICE$ = "N" OR GNOMECHOICE$ = "NO" THEN PRINT "You decide to not buy" : RETURN
16000  IF (GNOMECHOICE$ = "Y" OR GNOMECHOICE$ = "YES") AND GOLD < 500 THEN PRINT "You want to buy it, but you don't have enough money." : RETURN
16010  PRINT "You buy a potion and immediately drink it. You feel slightly stronger."
16020  STRENGTH = STRENGTH + 1
16030  RETURN
16040  REM
16050  REM Dice roll 4
16060  IF MERCENARIES < 5 THEN RETURN
16070  IF GOODS(0) < 5 THEN RETURN
16080  BEERROLL = FND(4)+1
16090  PRINT "Your mercenaries started a party and got drunk. They took your " + STR$(BEERROLL) + " barrels of beer."
16100  GOODS(0) = GOODS(0) - BEERROLL
16110  RETURN
16120  REM
16130  REM Dice roll 5
16140  IF WORKERS < 2 THEN RETURN
16150  IF MAXCAPACITY-CAPACITY < 30 THEN RETURN
16160  PRINT "One of your workers died of dysentery. "
16170  WORKERS = WORKERS - 1
16180  RETURN
16190  REM
16200  REM Dice roll 6
16210  PRINT "You meet a group of guards patrolling the road. One of them says to you:"
16220  PRINT "'I used to be a merchant like you. Then I took an arrow in the knee...'"
16230  RETURN
16240  REM
16250  REM Dice roll 7
16260  PRINT "You find a gold coin on the road. Well, it may be your lucky day."
16270  GOLD = GOLD + 1
16280  RETURN
16290  REM
16300  REM Dice roll 8
16310  IF GOLD < 1000 THEN RETURN
16320  IF MERCENARIES < 10 THEN RETURN
16330  MERCENARYROLL = FND(4) + 1
16340  GOLDROLL = FND(150)+10
16350  PRINT STR$(MERCENARYROLL) + " of your mercenaries stole your money and flee. You lost " + STR$(GOLDROLL) + " gold pieces."
16360  GOLD = GOLD - GOLDROLL
16370  MERCENARIES = MERCENARIES - MERCENARYROLL
16380  RETURN
16390  REM
16400  REM Dice roll 9
16410  IF GOLD < 10000 THEN RETURN
16420  PRINT "You meet a tax inspector. He asks you about taxes you didn't pay."
16430  PRINT "The tax inspector is hostile!"
16440  ENEMY$ = "tax inspector" : ENEMYATTACK = 10 : ENEMYHP = 60 : ENEMYEXPERIENCE = 200 : ENEMYGOLD = 1000
16450  GOTO 13340
16460  REM
16470  REM Dice roll 10
16480  IF CHARISMA > 19 THEN RETURN
16490  IF GOLD < 50 THEN RETURN
16500  PRINT "You meet a bard in a crossroads inn. The bard tells you he's broke."
16510  PRINT "Do you want to give him 50 gold pieces?"
16520  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
16521  INPUT "", BARDCHOICE$
16530  BARDCHOICE$ = UPS$(BARDCHOICE$)
16540  IF BARDCHOICE$ = "N" OR BARDCHOICE$ = "NO" THEN PRINT "You leave the inn. The bard is very unhappy." : RETURN
16550  IF BARDCHOICE$ <> "Y" AND BARDCHOICE$ <> "YES" THEN GOTO 16520
16560  PRINT "The young bard thanks you and gives you a few tips on art of persuasion."
16570  PRINT "You feel your charisma increased by one point!"
16580  CHARISMA = CHARISMA + 1 : GOLD = GOLD - 50
16590  RETURN
16600  REM
16610  REM Dice roll 11
16620  IF BUMMAP = 1 THEN RETURN
16630  IF GOODS(8) < 6 THEN RETURN
16640  PRINT "You meet a dwarven bum. He challenges you to a drinking duel."
16650  PRINT "Do you want to drink wine with the dwarven bum?"
16660  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
16661  INPUT "", BUMCHOICE$
16670  BUMCHOICE$ = UPS$(BUMCHOICE$)
16680  IF BUMCHOICE$ = "N" OR BUMCHOICE$ = "NO" THEN PRINT "You refuse to drink. The dwarven bum is very upset." : PRINT "The dwarven bum draws a weapon and starts a fight!"
16690  IF BUMCHOICE$ = "N" OR BUMCHOICE$ = "NO" THEN ENEMY$ = "dwarven bum" : ENEMYATTACK = 5 : ENEMYEXPERIENCE = 100 : ENEMYHP = 20 : ENEMYGOLD = 0 : GOTO 13340
16700  IF BUMCHOICE$ <> "Y" AND BUMCHOICE$ <> "YES" THEN GOTO 16660
16710  PRINT "You start drinking wine with the dwarven bum."
16720  PRINT "You and the dwarven bum drink the first bottle of wine. He looks sober."
16730  PRINT "You start drinking second bottle of wine. The dwarven bum is still sober."
16740  PRINT "You have a vertigo, but continue drinking. The dwarven bum burps."
16750  GOODS(8) = GOODS(8) - 6
16760  BUMROLL = FND(10) + ENDURANCE
16770  IF BUMROLL < 18 THEN PRINT "After the third bottle you black out. You wake up next morning with terrible headache." : PRINT "The dwarven bum is gone. There are six empty bottle lying around." : RETURN
16780  PRINT "After the third bottle the dwarf blacks out. You win the drinking duel!"
16790  PRINT "You wake up next morning with annoying headache. The dwarven bum vomits."
16800  PRINT "After eating a very spicy breakfast the dwarven bum tells you his story."
16810  PRINT "He says he used to be a bandit, but was too scared to kill people and resigned."
16820  PRINT "He tels you about small cave where his comrades used to store stolen gold."
16830  PRINT "The dwarven bum quickly draws a map to the cave and leaves you."
16840  BUMMAP = 1
16850  RETURN
16860  REM
16870  REM Dice roll 12
16880  IF BUMMAP = 0 THEN RETURN
16890  IF BUMTREASURE = 1 THEN RETURN
16900  PRINT "You find a small cave marked on dwarven bum's map. "
16910  PRINT "You feel excited. Do you want do enter the cave?"
16920  BUMTREASURE = 1
16930  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
16931  INPUT "", BUMCAVECHOICE$
16940  BUMCAVECHOICE$ = UPS$(BUMCAVECHOICE$)
16950  IF BUMCAVECHOICE$ = "N" OR BUMCAVECHOICE$ = "NO" THEN PRINT "You return on the main road. You feel you missed some big opportunity." : RETURN
16960  IF BUMCAVECHOICE$ <> "Y" AND BUMCAVECHOICE$ <> "YES" THEN GOTO 16930
16970  IF MAXCAPACITY-CAPACITY < 10 THEN PRINT "You enter the cave and find a wooden chest with 5000 pieces of gold inside."
16980  IF MAXCAPACITY-CAPACITY > 9 THEN PRINT "You enter the cave and find a wooden chest with 5000 pieces of gold inside." : PRINT "You also find a few diamonds and rubies." : GOODS(6) = GOODS(6) + 5
16990  GOLD = GOLD + 5000
17000  PRINT "When you leave the cave a bandit's chieftain notices you from the distance."
17010  PRINT "The bandit's chieftain runs in your direction!"
17020  PRINT "The bandit's chieftain is hostile!"
17030  ENEMY$ = "bandit's chieftain" : ENEMYHP = 40 : ENEMYATTACK = 10 : ENEMYEXPERIENCE = 150 : ENEMYGOLD = 100
17040  GOTO 13340
17050  REM
17060  REM Dice roll 13
17070  PRINT "You notice a sleeping mountain troll. "
17080  PRINT "Do you want to " + CHR$(27) + "[38;5;051m[a]" + CHR$(27) + "[38;5;252mttack the troll or " + CHR$(27) + "[38;5;051m[l]" + CHR$(27) + "[38;5;252meave him alone? ";
17090  INPUT "", TROLLCHOICE$
17100  TROLLCHOICE$ = UPS$(TROLLCHOICE$)
17110  IF TROLLCHOICE$ = "L" OR TROLLCHOICE$ = "LEAVE" THEN PRINT "You leave the troll alone and return on the road." : RETURN
17120  IF TROLLCHOICE$ <> "A" AND TROLLCHOICE$ <> "ATTACK" THEN GOTO 17080
17130  PRINT "The mountain troll wakes up and is very angry."
17140  PRINT "You start a fight with the mountain troll."
17150  ENEMY$ = "mountain troll" : ENEMYHP = 100 : ENEMYATTACK = 20 : ENEMYEXPERIENCE = 500 : ENEMYGOLD = 0
17160  GOTO 13340
17170  REM
17180  REM Dice roll 14
17190  IF HP = MAXHP THEN RETURN
17200  PRINT "You meet an elven priestess. She casts a spell and cure your wounds."
17210  PRINT "You are fully healed."
17220  HP = MAXHP
17230  RETURN
17240  REM
17250  REM Dice roll 15
17260  IF GOLD = 0 THEN RETURN
17270  PRINT "You encounter a group of bandits."
17280  PRINT "They say they will let you live if you give them all your money."
17290  PRINT "Do you want to " + CHR$(27) + "[38;5;051m[f]" + CHR$(27) + "[38;5;252might with them or " + CHR$(27) + "[38;5;051m[p]" + CHR$(27) + "[38;5;252may? ";
17291  INPUT "", BANDITSCHOICE$
17300  BANDITSCHOICE$ = UPS$(BANDITSCHOICE$)
17310  IF BANDITSCHOICE$ = "P" OR BANDITSCHOICE$ = "PAY" THEN GOLD = 0 : PRINT "You decided to give bandits all of your gold. " : PRINT "They laugh loudly and leave you alive. " : RETURN
17320  IF BANDITSCHOICE$ <> "F" AND BANDITSCHOICE$ <> "FIGHT" THEN GOTO 17290
17330  IF MERCENARIES > 1 THEN PRINT "Your mercenaries easily kill most of the bandits, but not the bandit's chief."
17340  IF MERCENARIES = 1 THEN PRINT "You and your mercenary easily kill most of the bandits, but not their chief."
17350  IF MERCENARIES = 0 THEN PRINT "You easily kill most of the bandits, but not their chief."
17360  ENEMY$ = "bandit chief" : ENEMYHP = 30 : ENEMYATTACK = 10 : ENEMYEXPERIENCE = 100 : ENEMYGOLD = 100
17370  GOTO 13340
17380  REM
17390  REM Dice roll 16
17400  PRINT "You meet an alchemist who is traveling to the city. "
17410  PRINT "He proposes you to make a potion of dexterity using 3 of your elixirs."
17420  PRINT "Do you want to give him three elixirs?"
17430  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
17431  INPUT "", ALCHEMISTCHOICE$
17440  ALCHEMISTCHOICE$ = UPS$(ALCHEMISTCHOICE$)
17450  IF ALCHEMISTCHOICE$ = "N" OR ALCHEMISTCHOICE$ = "NO" THEN PRINT "You refuse the alchemist's proposal." : RETURN
17460  IF ALCHEMISTCHOICE$ <> "Y" AND ALCHEMISTCHOICE$ <> "YES" THEN GOTO 17430
17470  IF GOODS(3) < 3 THEN PRINT "You don't have that many elixirs! Such a bad luck." : RETURN
17480  PRINT "The old alchemist carefully mixes your exlixirs. "
17490  PRINT "He adds a drop of some strange, fluorescent liquid to the mixture."
17500  PRINT "The potion of dexterity is ready!"
17510  PRINT "The alchemist takes part of the potion as a payment for his work."
17520  PRINT "You drink the potion, it tastes like strawberries."
17530  GOODS(3) = GOODS(3) - 3
17540  IF DEXTERITY > 19 THEN PRINT "You don't feel any difference. Your dexterity is already very high." : RETURN
17550  PRINT "Your dexterity is now " + STR$(DEXTERITY+1) + "!"
17560  DEXTERITY = DEXTERITY + 1
17570  RETURN
17580  REM
17590  REM Dice roll 17
17600  PRINT "You meet a village healer who offers to cure your wounds for 50 gold pieces."
17610  PRINT "Do you want to pay for healing?"
17620  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
17621  INPUT "", HEALERCHOICE$
17630  HEALERCHOICE$ = UPS$(HEALERCHOICE$)
17640  IF HEALERCHOICE$ = "N" OR HEALERCHOICE$ = "NO" THEN PRINT "You decide to not pay and the village healer leaves." : RETURN
17650  IF HEALERCHOICE$ <> "Y" AND HEALERCHOICE$ <> "YES" THEN GOTO 17620
17660  IF GOLD < 50 THEN PRINT "You don't have enough gold!" : RETURN
17670  GOLD = GOLD - 50
17680  IF HP = MAXHP THEN PRINT "The healer takes your money and starts examining you." : PRINT "The village healer says you're completely healthy." : RETURN
17690  PRINT "The village healer looks at your wounds and gives you a health potion."
17700  PRINT "It tastes awful, but after a few minutes you feel much better."
17710  HP = MAXHP
17720  RETURN
17730  REM
17740  REM Dice roll 18
17750  PRINT "You pass a carriage with an old man with grey beard and pointed hat."
17760  PRINT "The old man is smoking a pipe. You wonder where is he going."
17770  RETURN
17780  REM
17790  REM Dice roll 19
17800  PRINT "You pass a group of farmers, returning from cabbage fields."
17810  RETURN
17820  REM
17830  REM Dice roll 20
17840  PRINT "You see a stone castle in the distance."
17850  RETURN
17860  REM
17870  REM Dice roll 21
17880  PRINT "It starts raining. You hope you will soon find an inn."
17890  RETURN
17900  REM
17910  REM Dice roll 22
17920  PRINT "You pass a shepherd and tens of sheep."
17930  PRINT "You wonder how would look your life if you choose a different profession."
17940  RETURN
17950  REM
17960  REM Dice roll 23
17970  PRINT "You hear wolves howling in a distance."
17980  RETURN
17990  REM
18000  REM Dice roll 24
18010  PRINT "You hear an owl hooting."
18020  RETURN
18030  REM
18040  REM Dice roll 25
18050  PRINT "You pass a white-haired (but not old) man in black, leather jacket."
18060  PRINT "He's carrying a corpse of some nasty monster."
18070  PRINT "You wonder how rich would you be if you get paid for every monster you slayed."
18080  RETURN
18090  REM
18100  REM Dice roll 26
18110  PRINT "You meet a beggar who asks you for one gold piece."
18120  PRINT "Do you want to give him money?"
18130  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
18131  INPUT "", BEGGARCHOICE$
18140  BEGGARCHOICE$ = UPS$(BEGGARCHOICE$)
18150  IF (BEGGARCHOICE$ = "N" OR BEGGARCHOICE$ = "NO") AND PEOPLE = 0 THEN PRINT "You refuse to give him a gold piece. Maybe it's a better choice." : RETURN
18160  IF (BEGGARCHOICE$ = "N" OR BEGGARCHOICE$ = "NO") AND PEOPLE > 0 THEN PRINT "You refuse go give him a gold piece." : PRINT "One of your employees gives him a loaf of bread." 
18161  IF (BEGGARCHOICE$ = "N" OR BEGGARCHOICE$ = "NO") AND PEOPLE > 0 THEN PRINT "The beggar seems disappointed and throws the bread away when you leave him." : RETURN
18170  IF BEGGARCHOICE$ <> "Y" AND BEGGARCHOICE$ <> "YES" THEN GOTO 18130
18180  IF GOLD = 0 THEN PRINT "You want to give the beggar a coin, but you realize you are completely broke." : PRINT "The beggar smiles at you, you notice he's almost toothless." 
18181  IF GOLD = 0 THEN PRINT "The beggar opens his pouch which is full of money and gives you 5 gold pieces." : GOLD = GOLD + 5 : RETURN
18190  GOLD = GOLD - 1
18200  PRINT "You give the beggar one gold piece."
18210  PRINT "He thanks you and tells you he used to be a spice merchant,"
18220  PRINT "but lost all his wealth because of bandits and tax inspectors."
18230  RETURN
18240  REM
18250  REM Dice roll 27
18260  IF RACE$ <> "O" THEN RETURN
18270  PRINT "You enter a crossroads inn, but the innkeeper shows you a sign:"
18280  PRINT "'NO ORCS ALLOWED!'"
18290  PRINT "You leave the inn in a bad mood. You think it's such an injustice."
18300  RETURN
18310  REM
18320  REM Dice roll 28
18330  PRINT "You meet an orc shamaness. She wants to sell you a weird potion that enhances "
18340  PRINT "one's strength, but lowers charisma. The price is 300 gold pieces."
18350  PRINT "Do you want to buy a potion?"
18360  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
18361  INPUT "", SHAMANESSCHOICE$
18370  SHAMANESSCHOICE$ = UPS$(SHAMANESSCHOICE$)
18380  IF SHAMANESSCHOICE$ = "N" OR SHAMANESSCHOICE$ = "NO" THEN PRINT "You refuse to buy a potion and leave." : RETURN
18390  IF SHAMANESSCHOICE$ <> "Y" AND SHAMANESSCHOICE$ <> "YES" THEN GOTO 18360
18400  IF GOLD < 300 THEN PRINT "You want to buy the potion, but you don't have enough gold." : RETURN
18410  GOLD = GOLD - 300
18420  PRINT "You buy the potion and drink it. It doesn't taste good and it's quite intoxicating."
18430  PRINT "The orc shamaness tells you she used a moonshine to soak the magic herbs. "
18440  IF STRENGTH > 19 THEN PRINT "You don't feel any difference. Your strengh is already very high."
18450  IF STRENGTH = 19 THEN PRINT "You feel slightly stronger." : STRENGTH = STRENGTH + 1
18460  IF STRENGTH < 19 THEN PRINT "You feel your muscles grow instantly." : STRENGTH = STRENGTH + 2
18470  IF CHARISMA < 3 THEN PRINT "The charisma-lowering side effect is deadly for you!" : DEATHCAUSE$ = "magic potion poisoning" : GOTO 14620
18480  CHARISMA = CHARISMA - 2
18490  PRINT "The side effect of the potion is a change of your apperance."
18500  PRINT "Your skin is now covered in scars after too fast muscle growth."
18510  PRINT "You are afraid it will have negative effect on your relations with people."
18520  PRINT "Your charisma is now lower by 2 points."
18530  RETURN
18540  REM
18550  REM Dice roll 29
18560  PRINT "You encounter a robbed caravan. The merchant and his people were murdered."
18570  PRINT "Bandits took almost everything, including horses, but left one wooden chest."
18580  PRINT "The chest is closed and there is a strange, glowing inscription on the lock."
18590  PRINT "You suppose it may be a magic lock, possibly with some nasty trap."
18600  PRINT "Do you want to open the chest?"
18610  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
18611  INPUT "", CHESTCHOICE$
18620  IF CHESTCHOICE$ = "N" OR CHESTCHOICE$ = "NO" THEN PRINT "You decide to not touch the chest." : RETURN
18630  IF CHESTCHOICE$ <> "Y" AND CHESTCHOICE$ <> "YES" THEN GOTO 18610
18640  IF MAGES = 1 THEN PRINT "Your mage examines the lock and says it's a simple magic trap." : PRINT "The bandits probably also knew what is this and decided to not take a risk." : PRINT "Your mage casts a spell and the trap is disarmed."
18650  TRAPDAMAGE = FND(10)
18660  IF MAGES = 0 THEN PRINT "You carefully try to disarm the trap, but it suddenly explodes!" : PRINT "You lose " + STR$(TRAPDAMAGE) + " HP." : HP = HP - TRAPDAMAGE
18670  IF HP < 1 THEN DEATHCAUSE$ = "magic trap" : PRINT "Oh no, you die!" : GOTO 14620
18680  PRINT "You use your lockpicking skills and unlock the chest."
18690  DICEROLL11 = FND(3) : CHESTGOLD = FND(200) + 50
18700  IF DICEROLL11 = 1 THEN PRINT "Unfortunately, the chest is empty."
18710  IF DICEROLL11 = 2 THEN PRINT "You find " + STR$(CHESTGOLD) + " gold pieces inside!" : GOLD = GOLD + CHESTGOLD
18720  IF DICEROLL11 = 3 THEN PRINT "You open the chest and find a mummy inside. The mummy is hostile!" : ENEMY$ = "mummy" : ENEMYATTACK = 5 : ENEMYHP = 15 : ENEMYEXPERIENCE = 70 : ENEMYGOLD = 0 : GOTO 13340
18730  RETURN
18740  REM
18750  REM Dice roll 30
18760  IF WORKERS < 2 THEN RETURN
18770  IF GOLD < WORKERS * 15 THEN RETURN
18780  PRINT "Your workers demand a higher pay. The want additional 5 gold pieces per person."
18790  PRINT "Do you want to increase their wages? (cost: " + STR$(5*WORKERS) + " gold pieces)"
18800  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
18801  INPUT "", WAGESCHOICE$
18810  WAGESCHOICE$ = UPS$(WAGESCHOICE$)
18820  IF WAGESCHOICE$ = "Y" OR WAGESCHOICE$ = "YES" THEN PRINT "You decide to pay additional 5 gold pieces to every worker." : PRINT "Your workers are happy now." : GOLD = GOLD - WORKERS*5 : RETURN
18830  IF WAGESCHOICE$ <> "N" AND WAGESCHOICE$ <> "NO" THEN GOTO 18800
18840  PRINT "You refuse to pay them extra money. Your workers are very upset."
18850  DICEROLL12 = FND(3)
18860  IF DICEROLL < 3 THEN RETURN
18870  PRINT "You wake up next day and realize all of your workers are gone!"
18880  PRINT "The worse, they stole all of your goods!"
18890  WORKERS = 0
18900  FOR I = 0 TO 11
18910  GOODS(I) = 0
18920  NEXT I
18930  RETURN
18940  REM