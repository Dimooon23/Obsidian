#!/bin/bash
# 
# auteur: Dominique Huguenin (dominique.huguenin AT rpn.ch)
HOST=192.168.136.131
PORT=5432
USER=postgres
PASSWORD=postgres
DATABASE=genealogieDB
PSQL_SCRIPT=script.psql

PGPASSWORD=$PASSWORD psql -h $HOST -p $PORT -U $USER $DATABASE -f $PSQL_SCRIPT
