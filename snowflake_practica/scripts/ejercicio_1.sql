-- Ejercicio 1. Análisis de pedidos
-- Número de líneas de pedido e importe total por modalidad de envío.
SELECT
    L_SHIPMODE                 AS modalidad_envio,
    COUNT(*)                   AS num_lineas,
    SUM(L_EXTENDEDPRICE)       AS importe_total
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
GROUP BY L_SHIPMODE
ORDER BY importe_total DESC;
