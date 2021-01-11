FROM continuumio/anaconda3:4.4.0
WORKDIR /usr/app/
ENV FLASK_APP=Flask_app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV http_proxy http://proxy-chain.xxx.com:911
ENV https_proxy http://proxy-chain.xxx.com:912
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . /usr/app/
CMD ["python", "Flask_app.py}]
