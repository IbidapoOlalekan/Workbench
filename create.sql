use demo;

create table Human(
		humanID int(10)   Not Null,
        `name`    varChar(30) Not Null,
        age     int(3)  Not Null,
        gender   varChar(1) Not Null,
        bloodtype  varChar(3) Not Null,
        Genotype   varChar(3) Not Null,
        
        constraint human_PK Primary Key(humanId)
);

create table Games(
			`gameId` int(3) Not Null,
            `Gamename`  varChar(30) Not Null,
            `Price`   numeric(4,2) Not Null,
            `quantity` int(3) 	Not Null,
            Location varChar(25) Not Null,
            constraint Games_PK Primary Key(gameId)
            );
            
create table GamePurchase(
	humanID int(10) Not Null,
    `gameId` int(3) Not Null,
    `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    constraint Order_PK Primary Key(humanID, gameId),
    constraint human_fk foreign Key(humanID)
						references Human(humanID),
    constraint games_fk foreign Key(gameId)
						references Games(gameId)
);