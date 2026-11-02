-- Ejercicio 4. Comprender la caché
-- Esta misma consulta se ejecuta dos veces seguidas, sin cambiar ni un carácter.
SELECT
    L_SHIPMODE,
    COUNT(*)           AS num_lineas,
    AVG(L_DISCOUNT)    AS descuento_medio
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
GROUP BY L_SHIPMODE;
