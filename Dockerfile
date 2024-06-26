# Use the official PostgreSQL image from Docker Hub
FROM docker.io/postgres:latest

# Set the environment variables
ENV POSTGRES_DB=Cafedral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1

# Copy the SQL dump file into the container
COPY new.sql /docker-entrypoint-initdb.d/

# Add command to restore the SQL dump file using pg_restore
RUN pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" /docker-entrypoint-initdb.d/new.sql
