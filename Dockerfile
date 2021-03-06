# Pull base image
FROM python:3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
RUN mkdir /code
WORKDIR /code

# Install dependencies
# RUN pip install pipenv
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Copy project
COPY . /code/

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000