-- Ejercicio 3. Investigar la ejecución
-- Consulta sobre LINEITEM cuyo Query Profile se abre desde Monitoring > Query History.
SELECT
    L_RETURNFLAG,
    L_LINESTATUS,
    SUM(L_QUANTITY)        AS cantidad_total,
    AVG(L_EXTENDEDPRICE)   AS precio_medio
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
GROUP BY L_RETURNFLAG, L_LINESTATUS;
