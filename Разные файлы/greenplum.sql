Скрипт для проверок
Не выполнять целиком!


CREATE TABLE public.alex (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
                age integer NOT NULL);
select * from alex;

CREATE TABLE public.alex_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
                age integer NOT NULL);


CREATE TABLE public.betta_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL);


CREATE TABLE public.gamma_out (
                id serial NOT NULL PRIMARY KEY,
                name text NOT NULL,
				family text NOT NULL,
                salary integer NOT NULL);

               
delete from alex_out;
select * from alex_out;

delete from public.betta_out;
select * from betta_out;

delete from public.gamma_out;
select * from gamma_out;