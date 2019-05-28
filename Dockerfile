FROM python:3.7.1

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.douban.com/simple

COPY . .

CMD ["gunicorn", "server:app", "-c", "./gunicorn.conf.py"]