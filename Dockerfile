FROM postgres
MAINTAINER Max Rydahl Andersen <max@xam.dk>

ENV POSTGRES_DB pagila
ENV POSTGRES_USER sakila
ENV POSTGRES_PASSWORD sakila

#COPY *.sh /docker-entrypoint-initdb.d/
COPY pagile/*.sql /docker-entrypoint-initdb.d/dump/

EXPOSE 5432
CMD ["postgres"]