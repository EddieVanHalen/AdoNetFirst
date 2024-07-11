USE master

CREATE DATABASE TestAdo

USE TestAdo

CREATE TABLE Users(
    Id INT PRIMARY KEY IDENTITY (1,1),
    Name NVARCHAR(250) NOT NULL,
    Surname NVARCHAR(250) NOT NULL,
    Age INT NOT NULL,
    Login NVARCHAR(250) NOT NULL UNIQUE,
    Password NVARCHAR(250) NOT NULL
)

insert into Users (Name, Surname, Age, Login, Password) values ('123', '123', 30, 'a', 'a');
insert into Users (Name, Surname, Age, Login, Password) values ('Florida', 'Stripling', 30, 'fstripling0', 'gE5"vx`sX=');
insert into Users (Name, Surname, Age, Login, Password) values ('Aguie', 'Blondell', 4, 'ablondell1', 'qY3(@N(jW');
insert into Users (Name, Surname, Age, Login, Password) values ('Laurel', 'Ayling', 36, 'layling2', 'xU0*fA.#r\1d(.');
insert into Users (Name, Surname, Age, Login, Password) values ('Ursulina', 'Durno', 9, 'udurno3', 'kG5\P2pQ');
insert into Users (Name, Surname, Age, Login, Password) values ('Karen', 'Codd', 24, 'kcodd4', 'dY9@8td2l7`od+');
insert into Users (Name, Surname, Age, Login, Password) values ('Gilda', 'Gwyn', 89, 'ggwyn5', 'dW0*9$N?');
insert into Users (Name, Surname, Age, Login, Password) values ('Derek', 'Ledekker', 87, 'dledekker6', 'wW4`hSVU_ebZ');
insert into Users (Name, Surname, Age, Login, Password) values ('Piotr', 'Van Der Straaten', 11, 'pvanderstraaten7', 'xK2$E<<AeJ|)');
insert into Users (Name, Surname, Age, Login, Password) values ('Frasier', 'Mithan', 78, 'fmithan8', 'tA3##IqbW');
insert into Users (Name, Surname, Age, Login, Password) values ('Fiorenze', 'Barbie', 16, 'fbarbie9', 'rH1_GJxu%b1,B');
insert into Users (Name, Surname, Age, Login, Password) values ('Lindon', 'Mogra', 17, 'lmograa', 'nO0*jCU{|J"');
insert into Users (Name, Surname, Age, Login, Password) values ('Roosevelt', 'Froment', 38, 'rfromentb', 'qX0)Oa{=))i');
insert into Users (Name, Surname, Age, Login, Password) values ('Tilly', 'Rickhuss', 96, 'trickhussc', 'vI1&=96=vpd#YR9\');
insert into Users (Name, Surname, Age, Login, Password) values ('Veronica', 'Sixsmith', 54, 'vsixsmithd', 'yL9&In*%');
insert into Users (Name, Surname, Age, Login, Password) values ('Dalt', 'Heine', 48, 'dheinee', 'rT9\2wpLU"');
insert into Users (Name, Surname, Age, Login, Password) values ('Sinclare', 'Cretney', 86, 'scretneyf', 'jN3/0mW0I~H');
insert into Users (Name, Surname, Age, Login, Password) values ('Granger', 'Flinn', 95, 'gflinng', 'vY8)v!N&=!99yRc');
insert into Users (Name, Surname, Age, Login, Password) values ('Merill', 'Walburn', 23, 'mwalburnh', 'zM4!2`bf01');
insert into Users (Name, Surname, Age, Login, Password) values ('Donalt', 'Grieveson', 13, 'dgrievesoni', 'fI2\pI`b`(');
insert into Users (Name, Surname, Age, Login, Password) values ('Reiko', 'Turmel', 90, 'rturmelj', 'nZ2(Kn_{1qy(?');
insert into Users (Name, Surname, Age, Login, Password) values ('Blinny', 'Wellington', 74, 'bwellingtonk', 'zP0{n9wg/P9');
insert into Users (Name, Surname, Age, Login, Password) values ('Evanne', 'McGerraghty', 96, 'emcgerraghtyl', 'qG3+4xmsBhWGKgkU');
insert into Users (Name, Surname, Age, Login, Password) values ('Pavlov', 'Yo', 78, 'pyom', 'zM6.{>BY');
insert into Users (Name, Surname, Age, Login, Password) values ('Cinderella', 'McReidy', 41, 'cmcreidyn', 'iZ7$%gFlgw%');
insert into Users (Name, Surname, Age, Login, Password) values ('Algernon', 'Capaldi', 65, 'acapaldio', 'nF6(<.RH93KC');
insert into Users (Name, Surname, Age, Login, Password) values ('Justine', 'Bainbridge', 39, 'jbainbridgep', 'iZ6*S(rZ5kE_,u');
insert into Users (Name, Surname, Age, Login, Password) values ('Tansy', 'Eardley', 65, 'teardleyq', 'nB3}i~.,6V');
insert into Users (Name, Surname, Age, Login, Password) values ('Tove', 'Beever', 52, 'tbeeverr', 'iN5,3q''HCD3orP8');
insert into Users (Name, Surname, Age, Login, Password) values ('Waldemar', 'Verdie', 36, 'wverdies', 'kF7}sRO*KiZjvi)');
insert into Users (Name, Surname, Age, Login, Password) values ('Roberta', 'St Louis', 75, 'rstlouist', 'nB3=8Z_1*n');
insert into Users (Name, Surname, Age, Login, Password) values ('Orelia', 'Mauchlen', 22, 'omauchlenu', 'eY4~wbmj#f#Sm5');
insert into Users (Name, Surname, Age, Login, Password) values ('Eadie', 'Millyard', 45, 'emillyardv', 'fU5>xNo}IYE=l');
insert into Users (Name, Surname, Age, Login, Password) values ('Chanda', 'Seger', 92, 'csegerw', 'xH7(l7twO`|y');
insert into Users (Name, Surname, Age, Login, Password) values ('Karine', 'Curnucke', 68, 'kcurnuckex', 'xV2@CjNtu''');
insert into Users (Name, Surname, Age, Login, Password) values ('Issy', 'Keane', 21, 'ikeaney', 'hC5*''_J8sfkWK0B%');
insert into Users (Name, Surname, Age, Login, Password) values ('Silas', 'Lowis', 82, 'slowisz', 'kM7~pEp}f''');
insert into Users (Name, Surname, Age, Login, Password) values ('Justine', 'Gaw', 4, 'jgaw10', 'vV8@rt`Q');
insert into Users (Name, Surname, Age, Login, Password) values ('Claudina', 'Duinkerk', 57, 'cduinkerk11', 'bK9~Hfcp');
insert into Users (Name, Surname, Age, Login, Password) values ('Murdoch', 'Larrington', 59, 'mlarrington12', 'vA7>*a4#y');
insert into Users (Name, Surname, Age, Login, Password) values ('Shaylah', 'Saulter', 19, 'ssaulter13', 'qQ8%2o9\f.30Q8I0');
insert into Users (Name, Surname, Age, Login, Password) values ('Elayne', 'Rishworth', 47, 'erishworth14', 'qU0!)/85E,A');
insert into Users (Name, Surname, Age, Login, Password) values ('Aldridge', 'Briffett', 3, 'abriffett15', 'hJ2,j~hZpED.');
insert into Users (Name, Surname, Age, Login, Password) values ('Shay', 'Wilding', 36, 'swilding16', 'oR2=d$FvK');
insert into Users (Name, Surname, Age, Login, Password) values ('Val', 'Vasentsov', 22, 'vvasentsov17', 'kO3?9y@mPEZ}2s_');
insert into Users (Name, Surname, Age, Login, Password) values ('Mariska', 'Baraclough', 2, 'mbaraclough18', 'jI0\A,wP');
insert into Users (Name, Surname, Age, Login, Password) values ('Sallee', 'Faill', 56, 'sfaill19', 'mA3@FkU~*t`rK0=');
insert into Users (Name, Surname, Age, Login, Password) values ('Warner', 'Whitticks', 98, 'wwhitticks1a', 'dR4)I&tq<fAvp&');
insert into Users (Name, Surname, Age, Login, Password) values ('Evanne', 'Goalby', 49, 'egoalby1b', 'uW0`\$xG');
insert into Users (Name, Surname, Age, Login, Password) values ('Christophe', 'Perfili', 9, 'cperfili1c', 'bG8!SzR4lbH"i2');
insert into Users (Name, Surname, Age, Login, Password) values ('Krispin', 'Hessenthaler', 43, 'khessenthaler1d', 'bJ7~z|5<PDG');
insert into Users (Name, Surname, Age, Login, Password) values ('Dyan', 'Pleace', 50, 'dpleace1e', 'vO0!taw?6N+6');
insert into Users (Name, Surname, Age, Login, Password) values ('Shoshana', 'Hale', 81, 'shale1f', 'xF2#@@/{>');
insert into Users (Name, Surname, Age, Login, Password) values ('Godwin', 'Tome', 88, 'gtome1g', 'sW7@AEY9$k');
insert into Users (Name, Surname, Age, Login, Password) values ('Ilaire', 'Pietruszewicz', 31, 'ipietruszewicz1h', 'vP1=M6i=#p');
insert into Users (Name, Surname, Age, Login, Password) values ('Starla', 'Pasque', 14, 'spasque1i', 'hQ7|fani');
insert into Users (Name, Surname, Age, Login, Password) values ('Pepito', 'Trehearne', 29, 'ptrehearne1j', 'iZ7""4!CZj>_0U{n');
insert into Users (Name, Surname, Age, Login, Password) values ('Laureen', 'Rarity', 90, 'lrarity1k', 'zR1\8!"P"SPn%''');
insert into Users (Name, Surname, Age, Login, Password) values ('Laura', 'Eslemont', 61, 'leslemont1l', 'hP5"oz@IyFHFQ0g8');
insert into Users (Name, Surname, Age, Login, Password) values ('Harrie', 'Jowitt', 85, 'hjowitt1m', 'jQ9+6WJOgh');
insert into Users (Name, Surname, Age, Login, Password) values ('Raleigh', 'Iannuzzelli', 57, 'riannuzzelli1n', 'vN2%l9h0yxgw''zbn');
insert into Users (Name, Surname, Age, Login, Password) values ('Shem', 'Tattershall', 12, 'stattershall1o', 'xX3<KJ~Q>@3UYnQ');
insert into Users (Name, Surname, Age, Login, Password) values ('Odo', 'Date', 8, 'odate1p', 'bW2@6{>FnhmG');
insert into Users (Name, Surname, Age, Login, Password) values ('Kile', 'Steart', 12, 'ksteart1q', 'nB4*VZQH');
insert into Users (Name, Surname, Age, Login, Password) values ('Kamila', 'Iwanczyk', 62, 'kiwanczyk1r', 'hX7|d5)9iD8eR7');
insert into Users (Name, Surname, Age, Login, Password) values ('Allsun', 'Lared', 1, 'alared1s', 'yQ6)V4F+R9T\mH@y');
insert into Users (Name, Surname, Age, Login, Password) values ('Danya', 'Toohey', 11, 'dtoohey1t', 'xG7#<@9=&');
insert into Users (Name, Surname, Age, Login, Password) values ('Joelle', 'Lambillion', 59, 'jlambillion1u', 'iN6{`45b''=R');
insert into Users (Name, Surname, Age, Login, Password) values ('Angelia', 'Scadding', 6, 'ascadding1v', 'oA6%z5ksT');
insert into Users (Name, Surname, Age, Login, Password) values ('Timothy', 'Cordery', 63, 'tcordery1w', 'tA8(U4*|');
insert into Users (Name, Surname, Age, Login, Password) values ('Aile', 'Jolly', 53, 'ajolly1x', 'lH3~BbXT');
insert into Users (Name, Surname, Age, Login, Password) values ('Alex', 'Halgarth', 1, 'ahalgarth1y', 'hP7+1seT');
insert into Users (Name, Surname, Age, Login, Password) values ('Roda', 'Furnival', 62, 'rfurnival1z', 'rC0,/=S1wP');
insert into Users (Name, Surname, Age, Login, Password) values ('Drusie', 'Arran', 100, 'darran20', 'dE5}d!%dXC`Fw');
insert into Users (Name, Surname, Age, Login, Password) values ('Orton', 'Klagge', 29, 'oklagge21', 'qZ0${?P$CW/');
insert into Users (Name, Surname, Age, Login, Password) values ('Doloritas', 'Loynes', 48, 'dloynes22', 'fA4}9u"~K');
insert into Users (Name, Surname, Age, Login, Password) values ('Claudina', 'Talman', 74, 'ctalman23', 'yT0@~l}Vzx');
insert into Users (Name, Surname, Age, Login, Password) values ('Sonni', 'Risebrow', 50, 'srisebrow24', 'pY4`5`Te(');
insert into Users (Name, Surname, Age, Login, Password) values ('Tonya', 'Sangwin', 59, 'tsangwin25', 'mZ1"Km?W)RSQ2');
insert into Users (Name, Surname, Age, Login, Password) values ('Jeffy', 'Deakes', 10, 'jdeakes26', 'xL0~,7)/i,_G%');
insert into Users (Name, Surname, Age, Login, Password) values ('Kittie', 'Courcey', 47, 'kcourcey27', 'yN7}a=\gB1');
insert into Users (Name, Surname, Age, Login, Password) values ('Korney', 'MacConnal', 44, 'kmacconnal28', 'fZ4)Mu~/s`0>');
insert into Users (Name, Surname, Age, Login, Password) values ('Gerta', 'Mapston', 67, 'gmapston29', 'lM6\sK!AW');
insert into Users (Name, Surname, Age, Login, Password) values ('Michaeline', 'Tarbard', 15, 'mtarbard2a', 'uX5}IZ4@?\p8');
insert into Users (Name, Surname, Age, Login, Password) values ('Estele', 'Tropman', 66, 'etropman2b', 'wI0?MH.X7K$');
insert into Users (Name, Surname, Age, Login, Password) values ('Winonah', 'Bernardotte', 33, 'wbernardotte2c', 'lA2*R"_rhTHZ)w');
insert into Users (Name, Surname, Age, Login, Password) values ('Kissee', 'Dabnot', 63, 'kdabnot2d', 'zG4$}VR,OAg3');
insert into Users (Name, Surname, Age, Login, Password) values ('Corene', 'Kemer', 45, 'ckemer2e', 'iW3.sk!Et');
insert into Users (Name, Surname, Age, Login, Password) values ('Delmar', 'Barents', 44, 'dbarents2f', 'zS6%voXPji3!jI>)');
insert into Users (Name, Surname, Age, Login, Password) values ('Harman', 'Marjoribanks', 85, 'hmarjoribanks2g', 'aL2$?LdaL7iOeRT');
insert into Users (Name, Surname, Age, Login, Password) values ('Alys', 'Grimmolby', 9, 'agrimmolby2h', 'oF3?Z$(8A<@sP');
insert into Users (Name, Surname, Age, Login, Password) values ('Kitty', 'Snoden', 4, 'ksnoden2i', 'sH1*v!m\|RG');
insert into Users (Name, Surname, Age, Login, Password) values ('Muffin', 'Wicken', 33, 'mwicken2j', 'hV3=5A={');
insert into Users (Name, Surname, Age, Login, Password) values ('Coleen', 'Node', 44, 'cnode2k', 'jV7|.kELxA|+');
insert into Users (Name, Surname, Age, Login, Password) values ('Harland', 'Moakson', 23, 'hmoakson2l', 'uB7)q}gdux');
insert into Users (Name, Surname, Age, Login, Password) values ('Tedman', 'Goodbairn', 73, 'tgoodbairn2m', 'bI6,F&|y$l=fh"K&');
insert into Users (Name, Surname, Age, Login, Password) values ('Floria', 'Lambirth', 86, 'flambirth2n', 'jI9"vYcs/');
insert into Users (Name, Surname, Age, Login, Password) values ('Mira', 'Bothams', 15, 'mbothams2o', 'lC0!+sbmF=G?D');
insert into Users (Name, Surname, Age, Login, Password) values ('Toiboid', 'Enochsson', 52, 'tenochsson2p', 'cZ7$*r{o');
insert into Users (Name, Surname, Age, Login, Password) values ('Berke', 'Strelitzer', 17, 'bstrelitzer2q', 'oB0/_>}`Ou');
insert into Users (Name, Surname, Age, Login, Password) values ('Tamma', 'O'' Finan', 16, 'tofinan2r', 'hR2&"E`qLGt{');
