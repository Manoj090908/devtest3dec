SELECT
    CONCAT(TARGET_PROJKEY) as c_key,
    CURRENT_TIMESTAMP() AS c_fetchdate,
    REGID,
    CHANNEL_ID,
    ARC_DOC_ID,
    AR_OBJECT,
    STATUS,
    REJ_REASON,
    REJ_DETAILS,
    CAST(TSP_REGISTER AS CHAR(14)) AS TSP_REGISTER,
    CAST(TSP_FINISH AS CHAR(14)) AS TSP_FINISH,
    TARGET_PROJKEY
FROM "/OTX/PF01_T_1REG"
WHERE :left_tsp_register_date <= CONCAT(SUBSTRING(TSP_REGISTER, 0, 4), '-', SUBSTRING(TSP_REGISTER, 5, 2), '-', SUBSTRING(TSP_REGISTER, 7, 2))
