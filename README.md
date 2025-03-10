# Dockerfile

add below lines to app.py file to work in browser.

    if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)The project makes use of Python3, Flask, SQLite, 
    Bootstrap and JQuery.

## Modify requirement.txt file

    MarkupSafe==2.0.1  

## Build the docker image from docker file

    docker build -t flask-app:latest .

## Run images to create docker containers

    docker run -d -p 5000:5000 flask-app:latest

##push the image to docker hub

     docker image tag flask-app:latest harshitha1126/flaskapp-basicimg:latest
     docker push harshitha1126/flaskapp-basicimg:latest
