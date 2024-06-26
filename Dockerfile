# syntax=docker/dockerfile:1

FROM python:3.13.0b1-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && pip install build && python -m build && pip install dist/*.whl

ENTRYPOINT ["octosuite"]
