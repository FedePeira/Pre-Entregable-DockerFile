#!/bin/bash
airflow standalone

airflow db migrate

airflow users create \
    --username admin \
    --firstname federico \
    --lastname peirano \
    --role Admin \
    --email fedepr2345@gmail.com 

airflow webserver --port 8080

airflow scheduler