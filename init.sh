#!/bin/bash
set -e

# Start the PostgreSQL server
gosu postgres postgres &

# Wait for the server to start
until pg_isready; do
  echo "Waiting for PostgreSQL to start..."
  sleep 1
done

# Restore the SQL dump file using pg_restore
pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" /docker-entrypoint-initdb.d/new.sql
