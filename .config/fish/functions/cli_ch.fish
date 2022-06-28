function cli_ch -a target_cluster -d "clickhouse client for easily connecting to cluster"
    switch $target_cluster
        case r # release
            set -f HOST '10.16.0.85'
        case t # test
            set -f HOST '10.16.30.14'
        case b # backup
            set -f HOST '10.16.30.12'
        case tke1.8 # tke1.8
            execute_in_tke_1_8 "kubectl -n tmf exec -it chi-qapm-ck-replicated-0-0-0 -- bash -c 'clickhouse-client -u qapm --ask-password -m'"
        case '*'
            echo " Unknown target cluster '$target_cluster', only support 'r', 't' and 'b' now."
            return 1
    end
    if set -q CLICK_HOUSE_PASSWORD
        execute_in_intranet "clickhouse-client -h $HOST -u root --password $CLICK_HOUSE_PASSWORD -m $argv[2..-1]"
    else
        execute_in_intranet "clickhouse-client -h $HOST -u root --ask-password -m $argv[2..-1]"
    end
end
