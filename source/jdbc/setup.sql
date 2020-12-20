CREATE TABLE public."user" (
id SERIAL PRIMARY KEY,
first_name varchar(255),
last_name varchar(255)
);

CREATE TABLE public."role" (
user_id integer,
roleName varchar(255),
FOREIGN KEY(user_id) REFERENCES public.user(id)
);

CREATE TABLE public."message" (
message varchar(255)
);

insert into public.user(first_name,last_name) values('Atul','Kaushal');
insert into public.user(first_name,last_name) values('John','Doe');
insert into public.role(user_id,roleName) values(1,'Developer');
insert into public.message values('Hello message');
commit;