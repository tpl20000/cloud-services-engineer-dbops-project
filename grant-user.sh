#!/bin/bash

PGPASSWORD=postgres

psql -h localhost -U postgres -d store -c "CREATE USER store_user WITH PASSWORD storeuserpassword"
psql -h localhost -U postgres -d store -c "GRANT ALL PRIVILEGES ON DATABASE store to store_user"