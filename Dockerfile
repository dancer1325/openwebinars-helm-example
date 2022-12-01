FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the applications here in this directory
COPY . .

CMD [ "python", "./app.py" ]
