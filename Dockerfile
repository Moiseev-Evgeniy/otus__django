FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /opt/app

RUN apt-get update && \
    apt-get install -y --no-install-recommends

RUN pip install poetry==1.7.1

COPY pyproject.toml .

RUN poetry config virtualenvs.create false && poetry install

RUN apt-get install make

COPY makefile .
COPY otus_dj_pr otus_dj_pr
COPY entrypoint.sh .

CMD ["bash", "entrypoint.sh"]
