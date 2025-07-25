FROM python:3.10


# Install required system packages
# RUN apt-get update && apt-get install -y python3-distutils curl && apt-get clean

# Install Django
RUN pip install django==3.2

# copy project files
COPY . .

# Expose Port
EXPOSE 8000

# Start the Django server
CMD ["python","manage.py","runserver","0.0.0.0:8000"]


