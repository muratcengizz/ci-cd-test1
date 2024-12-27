FROM python:3.9-slim

RUN mkdir /aaaproject6

WORKDIR /aaaproject6

COPY . .

RUN apt-get update && apt-get install -y gcc libpq-dev && apt-get clean

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]