FROM python:3.7.9
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /code/

COPY entrypoint.sh /code

ENTRYPOINT ["sh","entrypoint.sh"]
