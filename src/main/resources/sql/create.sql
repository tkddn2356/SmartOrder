CREATE DATABASE IF NOT EXISTS beginner_example_database;
DROP TABLE IF EXISTS  beginner_example_database.board;
create table board(
	id bigint auto_increment,
    title varchar(200) not null,
    content varchar(3000) not null,
    user_id varchar(50) not null,
    nickname varchar(50),
    created_at timestamp default CURRENT_TIMESTAMP(),
    updated_at timestamp default CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    constraint board_PK primary key(id)
);
DROP TABLE IF EXISTS  beginner_example_database.user;
create table user(
    id bigint auto_increment,
    account_id varchar(100) not null,
    password varchar(100) not null,
    name varchar(50) not null,
    nickname varchar(50) not null,
    jwt_token varchar(255) default "",
    created_at timestamp default CURRENT_TIMESTAMP(),
    updated_at timestamp default CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    constraint user_PK primary key (id)
);