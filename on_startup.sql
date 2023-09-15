CREATE TABLE public.sync_tables (
                input_table text NOT NULL,
                output_table text NOT NULL,
                lastid integer NOT NULL
);

insert into public.sync_tables (input_table, output_table, lastid) values ('alex', 'alex_out', -2);
insert into public.sync_tables (input_table, output_table, lastid) values ('betta', 'betta_out', -2);
insert into public.sync_tables (input_table, output_table, lastid) values ('gamma', 'gamma_out', -2);


CREATE TABLE public.alex (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
                age integer NOT NULL);

insert into public.alex (name, age) values ('Pushkin', 32);
insert into public.alex (name, age) values ('Smyslov', 65);

CREATE TABLE public.alex_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
                age integer NOT NULL);


CREATE TABLE public.betta (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL);

CREATE TABLE public.betta_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL);

CREATE TABLE public.gamma (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
				family text NOT NULL,
                salary integer NOT NULL);

CREATE TABLE public.gamma_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
				family text NOT NULL,
                salary integer NOT NULL);

CREATE TABLE public.test (
                id serial NOT NULL PRIMARY KEY,
                nomer integer NOT null,
                name text NOT NULL,
                rost integer NOT NULL);