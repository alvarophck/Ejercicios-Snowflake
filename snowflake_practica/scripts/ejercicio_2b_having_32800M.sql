-- Ejercicio 2 (variante). Umbral más alto para comprobar que HAVING descarta grupos.
SELECT
    L_SHIPMODE                 AS modalidad_envio,
    COUNT(*)                   AS num_lineas,
    SUM(L_EXTENDEDPRICE)       AS importe_total
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
GROUP BY L_SHIPMODE
HAVING SUM(L_EXTENDEDPRICE) > 32800000000
ORDER BY importe_total DESC;
