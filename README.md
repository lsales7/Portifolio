## Northwind Dashboard
<img align="right" width="500"  src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/dashboard%20northwind.png?raw=true">
Projeto de dashboard devolvido com Power BI para realizar analise dos principais dados que influenciam o processo de tomada de decisão da exportadora Northwind. Dentre os dados analisados, estão:
- Total de receita obtida por cliente;
- Receita obtida e segmentação de cada categoria de produtos por cliente;
- Analise de custos de exportação e tempo médio de entrega para cada país;
- Participação de cada produto na receita total.

<a href="https://app.powerbi.com/view?r=eyJrIjoiMDMzZDczYWMtYjgyZi00ZDNiLWE0ZjUtNWY4YTkxMDk2MDgzIiwidCI6ImEwYzg2ZDhhLTZlMDgtNDcyYi1hMzI4LWJjNjI0Y2U5ZjA1NyJ9" target="_blank">Acesso para o dashboard</a>

<br><br>

## Modelagem de dados no Power Query
<img align="left" width="500" height="320" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/power%20query.png?raw=true">
Após a necessidade de realizarmos uma analise mais detalhada, foi iniciado o processo de ETL (Extract, Transform and Load) simples com o Power Query. realizamos a remoção de colunas desnecessárias e a transformação de alguns dados, como a coluna Freight. 

<br><br><br><br><br><br><br><br>

## Relacionamento de tabelas
<img align="right" width="500" height="320" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/Relacionamento%20de%20tabelas.png?raw=true">
Após o processo de ETL, foi realizado a criação dos relacionamentos das tabelas. 

<br><br><br><br><br><br><br><br><br><br>

## Criação as Medidas no Power BI
Passo 1: Calculando o Total de Receita Primeiro, foi calculado o valor total de receita, que consiste ser a soma do preço unitário de cada item multiplicado pela quantidade vendida:
<img align="left" width="575" height="60" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/Medidasone.png?raw=true">
<img align="left" width="262" height="125" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/receita%20total.png?raw=true">

<br><br><br><br><br><br>

Passo 2: Contagem de Pedidos Agora, foi calculado o número total de pedidos realizados:

<img align="left" width="575" height="60" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/medidatwo.png?raw=true">
<img align="left" width="262" height="125" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/orders.png?raw=true">

<br><br><br><br><br><br>

Passo 3: Média de Frete Para entender quanto, em média, o valor do frete de exportação, foi utilizado a seguinte medida:

<img align="left" width="285" height="61" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/medidathree.png?raw=true">
<img align="left" width="262" height="125" src="https://github.com/lsales7/Portifolio/blob/main/Northwind%20Project/frete.png?raw=true">

<br><br><br><br><br><br><br><br><br><br>

## Analise de indicadores

O primeiro indicador para analise é o TOTAL DE RECEITA POR CLIENTE:
<br>
<img align="right" width="385" height="565" src="https://media.licdn.com/dms/image/v2/D4D12AQGN6dqHVuho8g/article-inline_image-shrink_1500_2232/article-inline_image-shrink_1500_2232/0/1734405495812?e=1740009600&v=beta&t=ygK-5vjVawO1BMZPrT7HvnsJc7p1a1YoAymlX7UFKMQ">

<br><br><br>

