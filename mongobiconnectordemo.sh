#!/bin/bash

export MONGOPATH=/Users/emmanuel.deletang/mongodb/bin
echo '***'
echo '***'
echo 'restore the DB  '
echo '***'
echo '***'
$MONGOPATH/mongorestore 
echo '***'
echo '***'
echo 'launch the BI connextor '
$MONGOPATH/mongosqld --mongo-uri=mongodb://localhost:27017 --schema hacka.drdl -vv --fork --logPath hacka.log
echo '***'
echo '***'
echo 'bi connector ok '
echo '***'

echo '***'




