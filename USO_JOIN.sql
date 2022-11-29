/*UNIÓN DE TABLAS*/

/*Notas: 
 * 1) la tabla de la izquierda siempre será la que vaya después del FROM y la de la derecha la que va después del JOIN
 * 2) Una tabla fuerte representa una entidad independiente, y una tabla débil representa una entidad que depende de otra.*/

/*LEFT JOIN*/ /*La tabla de la izquierda entera, y de la derecha trae los datos conectados, si no tiene, trae null.*/
SELECT c.id , c.name , cc.customer_id FROM campaign c LEFT JOIN campaign_customer cc ON cc.campaign_id = c.id; /*De última la tabla fuerte*/

/*RIGHT JOIN*/ /*La tabla de la derecha entera, y de la izquierda trae los datos conectados, si no tiene, trae null.*/
SELECT c.id , c.name , cc.customer_id  FROM  campaign c  RIGHT JOIN campaign_customer cc ON cc.campaign_id = c.id; /*De última la tabla fuerte*/

/*INNER JOIN*/ /*Compara dos tablas y muestra solo los resultados obtenidos de la intersección entre ellas, no se mostrarán datos que no hagan match entre las tablas*/
SELECT * FROM campaign c INNER JOIN campaign_customer cc ON cc.campaign_id = c.id;

/*Ejemplo de consulta un poco más compleja utilizando inner join*/
SELECT c.created_at , c.name, cc.customer_id, c2.name, c.forAll  FROM campaign c INNER JOIN campaign_customer cc ON cc.campaign_id = c.id INNER JOIN customer c2 
WHERE c2.name LIKE '%ANTONIO%' AND c.created_at >='2022-01-01' AND c.forAll ='1';

/*FULL JOIN o FULL OUTER JOIN*/ /*Muestra todos las columnas de ambas tablas de acuerdo a su relación. Si no tiene datos, trae null.*/
SELECT * FROM campaign c FULL JOIN campaign_customer cc ON cc.campaign_id = c.id;



