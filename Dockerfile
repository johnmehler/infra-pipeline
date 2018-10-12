FROM python:3

ADD a.py requirements.txt /

COPY child/second-directory /child/second-directory

RUN pip install -r requirements.txt python-terraform

CMD python a.py