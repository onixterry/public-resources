SELECT
    jsonPayload.connection.src_ip,
    COUNT( jsonPayload.connection.src_ip ) AS total_requests,
    SUM(CAST(jsonPayload.bytes_sent AS INT64)) AS bytes,
    jsonPayload.dest_instance.vm_name,
    jsonPayload.connection.dest_port,
    jsonPayload.connection.protocol,
    jsonPayload.src_location.country,
    jsonPayload.src_location.city
    FROM
    `flowlogs.(your-table-name)`
    WHERE jsonPayload.reporter = 'DEST'
    GROUP BY
    jsonPayload.connection.src_ip,
    jsonPayload.dest_instance.vm_name,
    jsonPayload.connection.dest_ip,
    jsonPayload.connection.dest_port,
    jsonPayload.connection.protocol,
    jsonPayload.src_location.country,
    jsonPayload.src_location.city
    ORDER BY
    total_requests DESC