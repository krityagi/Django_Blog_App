FROM python:3.11
ENV PYTHONUNBUFFERED 1

COPY requirements /tmp/req.txt
COPY blogproj /blogproj
WORKDIR /blogproj
EXPOSE 8443

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/req.txt && \
    rm -fr /tmp && \
    adduser \
    --disabled-password \
    --no-create-home \
    django-user && \
    chown -R django-user:django-user -R /blogproj/

ENV PATH="/scripts:/py/bin:$PATH"

USER django-user
