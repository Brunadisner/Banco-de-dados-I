create table providers(
id integer not null,
name varchar(255) not null,
street varchar(255) not null,
city varchar not null,
state varchar(2) not null,
constraint pk_providers primary key (id));

create table products(
id integer not null,                                           
name varchar(255) not null,
amount integer not null,
price numeric(6,2) not null,
id_providers integer not null,
constraint pk_products primary key (id),
constraint fk_products_providers foreign key (id_providers) references providers (id));




insert into providers(id,name,street,city,state) values
(1,'Ajax SA', 'Presidente Castelo Branco','Porto Alegre','RS'),
(2,'Sansul SA', 'AV Brasil','Rio de Janeiro','RJ'),
(3,'South Chairs' ,'Av Moinho','Santa Maria', 'RS'),
(4,'Elon Electro'  ,'Apolo',       'São Paulo','SP'),
(5 ,'Mike Electro' ,'Pedro da Cunha',  'Curitiba','PR');

insert into products(id, name, amount, price,id_providers) values
(1,' Blue Chair', 30, 300.00, 5),
(2,' Red Chair' ,50, 2150.00, 1),
(3,' Disney Wardrobe', 400, 829.50, 4),
(4,' Blue Toaster', 20, 9.90, 3),
(5,' Solar Panel', 30, 3000.25, 4);