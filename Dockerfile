FROM python:latest

LABEL maintainer="Felipe Faria <me@felipefaria.me>"

# Installs dependencies.
RUN pip install fastapi pyyaml uv

# Adds entrypoint file.
ADD entrypoint.py /entrypoint.py

# Runs entrypoint on docker run.
ENTRYPOINT python /entrypoint.py
