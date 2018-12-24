docker build -t jupyter-octave .
docker run --rm -p 8888:8888 -v "$PWD/src":/home/jovyan/work jupyter-octave 