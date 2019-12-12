FROM python:3
WORKDIR /data
COPY  dup-finder.py .
ENTRYPOINT ["python", "dup-finder.py"]  
