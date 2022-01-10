    SELECT  
    jsonPayload.connection.src_ip,
    jsonPayload.connection.dest_port,
    jsonPayload.remote_location.continent,
    jsonPayload.remote_location.country,
    jsonPayload.remote_location.region,
    jsonPayload.rule_details.action
    FROM `denied_logs.(your-table-name-here)` 
    ORDER BY jsonPayload.connection.dest_port