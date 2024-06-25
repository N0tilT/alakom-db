# Use an official PostgreSQL image as the base image
FROM docker.io/postgres:latest

# Set the environment variables for PostgreSQL
ENV POSTGRES_DB=Cafedral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1

# Copy the database dump file into the container
COPY new.sql /new.sql

# Run pg_restore to restore the database from the dump file
# Be sure to replace the database name, username, and dump file name with your actual values
RUN pg_restore --dbname=$POSTGRES_DB --username=$POSTGRES_USER /new.sql
