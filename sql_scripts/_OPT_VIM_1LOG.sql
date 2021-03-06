SELECT
    CONCAT(DOCID, LOGID) AS c_key,
    CURRENT_TIMESTAMP() AS c_fetchdate,
    DOCID,
    LOGID,
    STATUS,
    ACTUAL_ROLE,
    ACTUAL_AGENT,
    START_DATE,
    START_TIME,
    END_DATE,
    END_TIME,
    PROCESS_TYPE,
    WORKITEM_ID
FROM "/OPT/VIM_1LOG"
WHERE END_DATE >= :left_end_date
-- WHERE :left_end_date <= CONCAT(SUBSTRING(END_DATE, 0, 4), '-', SUBSTRING(END_DATE, 5, 2), '-', SUBSTRING(END_DATE, 7, 2))
-- 1622073600000 : Timestamp formats