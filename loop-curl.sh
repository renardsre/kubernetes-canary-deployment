#!/bin/bash

count=0

while [ $count = 0 ]; do

	curl $(kubectl get svc | grep stable-service | awk '{print $4}'):$(kubectl get svc | grep stable-service | awk '{print $5}' | cut -d":" -f2 | cut -d"/" -f1)
	sleep 1 

done
