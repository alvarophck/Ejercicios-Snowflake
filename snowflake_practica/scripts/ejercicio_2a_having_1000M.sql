-- Ejercicio 2. Modificar la consulta
-- Solo modalidades con importe total superior a 1.000 millones.
SELECT
    L_SHIPMODE                 AS modalidad_envio,
    COUNT(*)                   AS num_lineas,
    SUM(L_EXTENDEDPRICE)       AS importe_total
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
GROUP BY L_SHIPMODE
HAVING SUM(L_EXTENDEDPRICE) > 1000000000
ORDER BY importe_total DESC;
