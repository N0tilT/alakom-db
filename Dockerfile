# Use an official PostgreSQL image as the base image
FROM docker.io/postgres:latest

# Set the environment variables for PostgreSQL
ENV POSTGRES_DB=Cafedral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1


# Create a directory to store the dump file inside the container
WORKDIR /docker-entrypoint-initdb.d

# Copy the database dump file into the directory where PostgreSQL will look for initialization scripts
COPY new.sql new.sql

# Start the PostgreSQL database server
CMD ["postgres"]

# Execute the restore command inside the running container
# Use the password provided through the environment variable
RUN pg_restore --dbname=$POSTGRES_DB --username=$POSTGRES_USER --no-owner --no-privileges /new.sql
