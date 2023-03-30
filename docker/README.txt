In this section we build the object detector inside a docker container


Documentation on how file docker compose works:

https://docs.docker.com/compose/compose-file/03-compose-file/

Una vez construida la imagen en base al dockerfile lanzamos el contenedor como:

nombre: cool_camera # nombre que tendra el contenedor
volume mount: detector:/home/detector #mapeo de directorio host a dir del contenedor
device: /dev/video0:/dev/video0 # para que se haga mapeo de la camara de video al contenedor

& sudo docker run -dit --name cool_camera -v ./detector:/home/detector --device /dev/video0:/dev/video0 bike_detector_tflite:latest

