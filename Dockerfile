#pull the image

FROM python:3.9

#Create Workdireckory

WORKDIR /app

#copy the file from host to container

COPY . .

#upgrade setuptools before installing dependies

RUN pip install --upgrade pip setuptools

#install libraries

RUN pip install --no-cache-dir  -r requirements.txt

#expose the port

EXPOSE 5000

#RUN flask app

CMD ["python","app.py","0.0.0.0:5000"]
