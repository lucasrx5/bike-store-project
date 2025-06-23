# Teste de Habilidades SQL

Utilizando a base de dados *Bike Store Inc.* para efetuar consultas em T-SQL e obter métricas relevantes para as equipes de Marketing e Comercial.

---

## Linguagem e Tecnologia Utilizada

* **Linguagem:** T-SQL (Transact-SQL)
* **Ferramenta de SGBD:** Microsoft SQL Server Management Studio (SSMS)

## Análises e Métricas Desenvolvidas

Nesta seção, você pode documentar cada uma das consultas que criamos, explicando o objetivo de negócio de cada uma.

* **Consulta 1: Listar todos Clientes que não tenham realizado uma compra**
    * **Objetivo:** Identificar todos os clientes que nunca realizaram um pedido na loja, trazendo informações relevantes como cidade e contato.
    * **Info:** Pela performance nessa consulta foi optado por utilizar o NOT EXISTS invés de JOIN .
    * **Arquivo:** `01_clientes_sem_pedidos.sql`

* **Consulta 2: Listar os Produtos que não tenham sido comprados"**
    * **Objetivo:** Levantar todos os produtos que nunca foram vendidos.
    * **Info:** Lista de `product_id` para análise de inventário e possíveis promoções.
    * **Arquivo:** `02_produtos_nao_vendidos.sql`

* **Consulta 3: Listar os Produtos sem Estoque**
    * **Objetivo:** Listar produtos que não possuem estoque em nenhuma das lojas.
    * **Info:** Lista de product_id onde quantity for zero ou nulo.
    * **Arquivo:** `03_produtos_sem_estoque.sql`

* **Consulta 4: Agrupar a quantidade de vendas que uma determinada Marca por Loja.**
    * **Objetivo:** Trazer um apanhado contendo quantidade total de vendas por Marca/Loja.
    * **Info:** Trazer a soma de quantity utilizando filtros de brand_id e store_id.
    * **Arquivo:** `04_vendas_marca_loja.sql`

* **Consulta 5: Listar os Funcionarios que não estejam relacionados a um Pedido.**
    * **Objetivo:** Trazer uma listagem de funcionários que não efetuam pedidos ou não estáo em produtividade.
    * **Info:** Lista de staff_id onde não constem na tabela de orders.
    * **Arquivo:** `05_staff_sem_orders.sql`


## Como Utilizar

1.  Clone ou baixe este repositório.
2.  Os arquivos com a extensão `.sql` contêm todas as queries desenvolvidas para o projeto.
3.  Você pode abrir qualquer um desses arquivos no Microsoft SQL Server Management Studio (ou outro editor de sua preferência, como Azure Data Studio ou VS Code).
4.  Com o arquivo aberto e conectado à base de dados **Bike Store**, você pode executar as consultas para obter os resultados.

---

This is a challenge by [Coodesh](https://coodesh.com).
