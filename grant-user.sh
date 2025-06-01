#!/bin/bash

PGPASSWORD=postgres

psql -h ${{ secrets.DB_HOST }} -U postgres -d ${{ secrets.DB_NAME }} -c "CREATE USER ${{ secrets.DB_USER }} WITH PASSWORD ${{ secrets.DB_PASSWORD }}; GRANT ALL PRIVILEGES ON DATABASE ${{ secrets.DB_NAME}} to ${{ secrets.DB_USER }};"
