FROM ubuntu:22.04
RUN apt-get update; apt-get install -y python3-pip
RUN pip3 install jupyterlab sqlalchemy mysql-connector-python
CMD python3 -m jupyterlab --no-browser --ip=0.0.0.0 --port=5000 --allow-root --NotebookApp.token=''