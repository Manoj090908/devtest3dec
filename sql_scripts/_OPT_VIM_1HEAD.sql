SELECT
    CONCAT(DOCID) as c_key,
    CURRENT_TIMESTAMP() AS c_fetchdate,
    DOCID,
    DOCTYPE,
    ARCHIV_ID,
    ARC_DOC_ID,
    AR_OBJECT,
    ARCHIVE_DATE,
    ARCHIVE_TIME,
    ARCHIVE_USER,
    INDEX_DATE,
    INDEX_TIME,
    BUS_OBJTYPE,
    BUS_OBJKEY,
    STATUS,
    CURR_ROLE,
    CURR_PROC_TYPE,
    DELREASON,
    BUKRS,
    BLART,
    BLDAT, -- DATE timestamp
    BUDAT, -- DATE timestamp
    XBLNR,
    RMWWR,
    WAERS,
    LIFNR,
    VEND_NAME,
    REQUISITIONER,
    EMAIL_ID,
    EBELN,
    CHANNEL_ID,
    DUE_DATE -- DATE timestamp
FROM "/OPT/VIM_1HEAD"
WHERE BLDAT >= :left_bldat_date OR budat >= :left_budat_date
-- WHERE :left_index_date <= CONCAT(SUBSTRING(INDEX_DATE, 0, 4), '-', SUBSTRING(INDEX_DATE, 5, 2), '-', SUBSTRING(INDEX_DATE, 7, 2))
-- Timestamp sur cette table
