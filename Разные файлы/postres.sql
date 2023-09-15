Скрипт для проверок
Не выполнять целиком!

select * from alex;
select * from alex_out;
delete from alex_out;

delete from public.alex;
insert into public.alex (name, age) values ('Pushkin', 32);
insert into public.alex (name, age) values ('Smyslov', 65);
insert into public.alex (name, age) values ('Dima', 34);
insert into public.alex (name, age) values ('Max', 34);
insert into public.alex (name, age) values ('Sofia', 8);
insert into public.alex (name, age) values ('Kristina', 36);
insert into public.alex (name, age) values ('Misha', 21);
insert into public.alex (name, age) values ('Анастасия', 88);
insert into public.alex (name, age) values ('Гриша', 55);
insert into public.alex (name, age) values ('Vovan', 50);
insert into public.alex (name, age) values ('Botan', 13);
insert into public.alex (name, age) values ('Petr', 77);
insert into public.alex (name, age) values ('Varvara', 44);
insert into public.alex (name, age) values ('Grunya', 16);


select * from public.sync_tables;

CREATE TABLE public.sync_tables (
                input_table text NOT NULL,
                output_table text NOT NULL,
                lastid integer NOT NULL
);

delete from public.sync_tables;
insert into public.sync_tables (input_table, output_table, lastid) 
	values ('alex', 'alex_out', -2);
insert into public.sync_tables (input_table, output_table, lastid)
	values ('betta', 'betta_out', -2);
insert into public.sync_tables (input_table, output_table, lastid) 
	values ('gamma', 'gamma_out', -2);


update public.sync_tables set lastid = -2;

select * from public.sync_tables;

CREATE TABLE public.betta_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
                age integer NOT NULL
);


CREATE TABLE public.lastid (
                tablename text NOT NULL,
                lastid integer NOT NULL
);

delete from public.alex;
insert into public.alex (name, age) values ('Pushkin', 32);
insert into public.alex (name, age) values ('Smyslov', 65);
insert into public.alex (name, age) values ('Dima', 34);
insert into public.alex (name, age) values ('Max', 34);

select * from sync_tables;


select * from betta;
delete from public.betta;
insert into public.betta (name) values ('Pushkin');
insert into public.betta (name) values ('Smyslov');
insert into public.betta (name) values ('Dima');


delete from public.betta_out;
select * from betta_out;

CREATE TABLE public.gamma (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
				family text NOT NULL,
                salary integer NOT NULL);
               
select * from gamma;
delete from public.gamma_out;
delete from public.gamma;
insert into public.gamma (name, family, salary) values ('Alex', 'Pushkin', 300);
insert into public.gamma (name, family, salary) values ('Vasya', 'Smyslov', 200);
insert into public.gamma (name, family, salary) values ('Dima', 'Zadonsky', 100);
insert into public.gamma (name, family, salary) values ('Petr', 'Sviridov', 777);
select * from gamma_out;

update public.sync_tables set lastid = -2;
select * from sync_tables;

delete from alex_out;
select * from alex_out;

select max(id) from betta;
select lastid from sync_tables where input_table = 'betta';

select lastid from sync_tables where input_table='alex';
select COALESCE(max(id), -1) from public.alex;

select * from public.alex where id > (select lastid from sync_tables where input_table='alex');
update public.sync_tables set lastid = (select COALESCE(max(id), -1) from public.alex) where input_table='alex';


select * from ${shema_in}.${table_in} where id > (select lastid from ${shema_out}.sync_tables where input_table=${table_in});
update ${shema_out}.sync_tables set lastid = (select COALESCE(max(id), -1) from ${shema_in}.${table_in}) where input_table=${table_in};
