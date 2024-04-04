FROM python:3.11

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

EXPOSE 80
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]

# FROM python

# WORKDIR /usr/src/app
# COPY requirements.txt ./
# RUN pip install -r requirements.txt
# copy . .

# EXPOSE 80
# #python 프로젝트는 이 부분만 변경
# CMD ["python","manage.py","runserver","0.0.0.0:80"]