--liquibase formatted sql

--changeset user:00001
--comment: insert data into orders table

insert into orders(name) values ('order1');
insert into orders(name) values ('order2');