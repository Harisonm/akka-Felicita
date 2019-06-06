CREATE TABLE subscribers (
    id varchar(30) primary key,
    first_name text,
    last_name text,
    pseudo text
);
INSERT INTO subscribers(id,first_name,last_name,pseudo) VALUES ('1','Pierre','Simon','psim');
INSERT INTO subscribers(id,first_name,last_name,pseudo) VALUES ('2','Paul','Trois','polo');
INSERT INTO subscribers(id,first_name,last_name,pseudo) VALUES ('3','Jacque','Gaudefroy','jacouille');
INSERT INTO subscribers(id,first_name,last_name,pseudo) VALUES ('6','William','Sheakspear','serein');

CREATE TABLE donations(
    id varchar(30) primary key,
    subscriber_id varchar(30),
    amount float
);
INSERT INTO donations(id,subscriber_id,amount) VALUES ('243KJF9','1','10');

CREATE TABLE giveaways (
    id varchar(30) primary key,
    description_giveaway text
);

CREATE TABLE giveaway_subscriber (
    id varchar(30) primary key,
    giveaway_id varchar(30),
    subscriber_id varchar(30)
);

CREATE TABLE blacklist (
    id varchar(30) primary key,
    subscriber_id varchar(30)
);

CREATE TABLE surveys (
    id varchar(30) primary key, 
    total_response_0 int
);