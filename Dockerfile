FROM python:3
RUN pip install django==3.2
RUN pip freeze > requirements.txt
#Run sudo apt update
COPY . .
RUN python manage.py makemigrations
RUN python manage.py migrate  
CMD ["python","manage.py","runserver","0.0.0.0:8001"]
