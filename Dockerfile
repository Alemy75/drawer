FROM python:3.10.11-alpine3.18

WORKDIR app/

COPY requirements.txt requirements.txt

RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install --timeout=100 --verbose -r requirements.txt

COPY . .

CMD ["python3", "main.py", "-a", "1"]
