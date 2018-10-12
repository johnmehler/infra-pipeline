FROM python:3

ENV MY_PARAMETER="John"

ADD a.py requirements.txt /

RUN pip install -r requirements.txt

CMD python a.py --my-parameter $MY_PARAMETER