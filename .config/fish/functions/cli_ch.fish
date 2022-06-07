function cli_ch -a target_cluster -d "clickhouse client for easily connecting to cluster"
    switch $target_cluster
        case gr
            set -f HOST '10.16.0.85'
        case gd
            set -f HOST '10.16.30.14'
        case br
            set -f HOST '10.90.0.15'
        case '*'
            echo " Unknown target cluster '$target_cluster', only support 'gr', 'gd' and 'br' now."
            return 1
    end
    if set -q CLICK_HOUSE_PASSWORD
        execute_in_intranet "clickhouse-client -h $HOST -u root --password $CLICK_HOUSE_PASSWORD -m $argv[2..-1]"
    else
        execute_in_intranet "clickhouse-client -h $HOST -u root --ask-password -m $argv[2..-1]"
    end
end
