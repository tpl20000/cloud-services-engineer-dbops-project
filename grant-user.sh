#!/bin/bash

PGPASSWORD=postgres

psql -h localhost -U postgres -d store -c "CREATE USER store_user WITH PASSWORD storeuserpassword; GRANT ALL PRIVILEGES ON DATABASE store to store_user;"
