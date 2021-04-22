/*questão maior e menor npreço*/
select max(price), min(price) from products;

/*questão fornecedor Ajax SA*/
select p.name, pr.name from products p join providers pr on pr.id=p.id_providers
where pr.id=1;

 /*questão representantes executivos*/
 select p.name, pr.name from products p join providers pr 
 on p.id_providers=pr.id 
 where p.id_categories=6;

/*questão categorias*/
select p.id, p.name from products p join categories c on p.id_categories=c.id
where c.name like 'super%';

/*questão filmes de ação*/
select m.id, m.name from movies m join genres g 
	on m.id_genres=g.id 
		where g.description='Action';

/*questão Produtos importados*/
select p.name, pr.name, c.name from products p join providers pr
on p.id_providers = pr.id join categories c on p.id_categories = c.id
where pr.name = 'Sansul SA' and c.name = 'Imported';

/*questão Super luxo*/
select p.name, pr.name, p.price from products p join providers pr on
p.id_providers = pr.id join categories c on p.id_categories = c.id
where (p.price > 1000) and (c.name = 'Super Luxury');

/*questão Pessoas Jurídicas*/
select c.name from customers c join legal_person l on l.id_customers = c.id;

/*questão filmes em promoção*/
select m.id, m.name from movies m join prices p on m.id_prices = p.id
where p.value < 2.00;

/*questão CPF dos empregados*/
select e.cpf, e.enome, d.nome from empregados e
join departamentos d on d.cpf_gerente = e.cpf
join projetos p on p.dnumero = e.dnumero
where p.dnumero is null; /*incorreta*/

/*quantidade de cidades por clientes*/
select count(distinct city) from customers;

/*produtos por categorias*/
select c.name, round(sum(p.price),0) from categories
c join products p on p.id_categories = c.id group by 1;/*errado*/
/*round serve para casas decimais*/
/*certo*/
select c.name, sum(p.amount)
from categories
c join products p on p.id_categories = c.id group by 1;
