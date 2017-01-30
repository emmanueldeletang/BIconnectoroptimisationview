#!/bin/bash

MONGORESTORE=$mongorestore
MONGOSQLD=$mongosqld

echo '***'
echo '***'
echo 'restore the DB  '
echo '***'
echo '***'

$MONGORESTORE --port 27017

echo '***'
echo '***'
echo 'launch the BI connextor'

$MONGOSQLD --mongo-uri=mongodb://localhost:27017 --schema hacka.drdl -vv --fork --logPath hacka.log

echo '***'
echo '***'
echo 'bi connector ok '
echo '***'
echo '***'
