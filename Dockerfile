FROM python:3.13.0a4-alpine3.19
RUN pip install --upgrade pip
RUN pip install poetry

WORKDIR /app
COPY ./ /app
RUN poetry install
ENTRYPOINT ["poetry","run"]
CMD ["gunicorn","-b","0.0.0.0:5000", "server:app"]
