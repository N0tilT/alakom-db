# Use the official PostgreSQL image from Docker Hub
FROM docker.io/postgres:latest

# Set the environment variables
ENV POSTGRES_DB=Cafedral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1

# Copy the SQL dump file into the container
COPY new.sql /docker-entrypoint-initdb.d/
ENTRYPOINT [ "pg_restore", "--verbose", "--clean", "--no-acl", "--no-owner", "-U", "postgres", "-d", "Cafedral", "./new.sql"]
