FROM jupyter/pyspark-notebook:latest

EXPOSE 8888 4040 4041

RUN pip install boto3

