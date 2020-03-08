FROM python:2.7

WORKDIR /project
COPY requirements.* ./
RUN pip install -r requirements.txt
RUN pip list

COPY . .


ENV DISABLE_CONTRACTS=1
ENTRYPOINT ["python", "-u", "minimal_agent_python2.py"]
