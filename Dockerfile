FROM python:slim
RUN apt-get update -y && apt-get install python3-pip -y
RUN mkdir /app
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt 
CMD [ "gunicorn", "--bind", "0.0.0.0:8000", "pyproject.wsgi" ]
