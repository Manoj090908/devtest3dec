SELECT
    CONCAT(workitem_id, logid) as c_key,
    CURRENT_TIMESTAMP() as c_fetchdate,
    mandt,
    bus_objtype,
    bus_objkey,
    logid,
    block_reason,
    actual_agent,
    workitem_id,
    start_date,
    start_time,
    end_date,
    end_time
FROM "/OPT/VIM_8LOG"
WHERE end_date >= :left_end_date