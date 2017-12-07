#!/bin/bash

hosts=( srv11 srv26 srv73 srv96 srv100 srv116 srv121 srv126 srv131 )

for host in ${hosts[@]}; do
	curl -X DELETE http://admin:admin@${host}:7180/api/v11/timeseries/dashboards/Host%20Metrics

	curl -kL -X POST -H "Content-Type: application/json" \
		--data "$(curl -s http://admin:admin@srv77:7180/api/v11/timeseries/dashboards | jq '.items[]|{items:[{name:.name,json:.json}]}' | tr -d \\n)" \
		http://admin:admin@${host}:7180/api/v11/timeseries/dashboards
done
