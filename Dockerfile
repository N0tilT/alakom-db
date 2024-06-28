# Use the official PostgreSQL image from Docker Hub
FROM docker.io/postgres:latest

# Set the environment variables
ENV POSTGRES_DB=Cafedral
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1
