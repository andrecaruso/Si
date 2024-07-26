select * from clientes where mediavendas = (select max(mediavendas) from clientes)


select cidade,sum(mediavendas) from clientes
group by cidade
order by cidade

select cidade,sum(mediavendas),count(cidade) from clientes
group by cidade
order by cidade

select cidade,sum(mediavendas) as total,count(cidade) as contagem from clientes
group by cidade
order by cidade

select cidade,
	   sum(mediavendas) as total,
	   count(cidade) as "# de clientes" from clientes
group by cidade
order by cidade


select *,extract('year' from ult_compra) from clientes

select *,extract('year' from ult_compra) as ano from clientes

select extract('year' from ult_compra) as ano,
       count(nome) 
from clientes
group by ano

select extract('year' from ult_compra) as ano,
       count(nome) 
from clientes
group by ano
order by ano

