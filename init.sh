#!/bin/bash
set -e

# Start the PostgreSQL server
gosu postgres postgres &

# Wait for the server to start
until pg_isready; do
  echo "Waiting for PostgreSQL to start..."
  sleep 1
done

# Assuming the backup file is named new.sql
# Change the ownership of the backup file to the postgres user
chown postgres:postgres /docker-entrypoint-initdb.d/new.sql

# Restore the SQL dump file using pg_restore as the "postgres" user
gosu postgres pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" /docker-entrypoint-initdb.d/new.sql
