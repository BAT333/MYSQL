select  cliente.id,cliente.nome, categoria.nome, produto.nome,item_pedido.preco_unitario,item_pedido.quantidade, pedido.data from cliente inner join categoria on cliente.id = categoria.id inner join produto on produto.id = categoria.id inner join item_pedido on item_pedido.id = produto.id inner join pedido on pedido.id = item_pedido.id;



select categoria.nome,item_pedido.preco_unitario AS VALOR from categoria inner join item_pedido on categoria.id = item_pedido.id;


select categoria.nome , sum(item_pedido.preco_unitario) AS RESULTADO  FROM categoria inner join item_pedido on categoria.id = item_pedido.id group by categoria.nome ;


select count(item_pedido.quantidade)as QUANTIDADE_DE_PEDIDOS, sum(item_pedido.quantidade) AS QUANTIDADE_VENDIDA,min(item_pedido.preco_unitario) as PEDIDO_MAIS_BARATO, max(item_pedido.preco_unitario)AS MAIS_CARO, avg(item_pedido.preco_unitario) AS MONTATE  FROM item_pedido ;


select nome,count(nome) as Comprou_quantas_vezes from cliente group by nome order by cliente.nome  ;