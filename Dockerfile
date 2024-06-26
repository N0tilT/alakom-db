# Use the official PostgreSQL image from Docker Hub
FROM docker.io/postgres:latest

# Set the environment variables
ENV POSTGRES_DB=Cafedral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1

# Copy the SQL dump file into the container
COPY new.sql /docker-entrypoint-initdb.d/

# Copy the custom initialization script
COPY init.sh /docker-entrypoint-initdb.d/

# Grant execution permissions to the custom initialization script
RUN chmod +x /docker-entrypoint-initdb.d/init.sh
