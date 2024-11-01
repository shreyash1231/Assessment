# Use an official Python image as the base
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file first to install dependencies
COPY ./dependencies.txt ./dependencies.txt
RUN pip install --no-cache-dir -r dependencies.txt

# Copy the rest of the Django project files
COPY . .

# Expose the Django application port
EXPOSE 8000

# Run Django migrations and start the Django development server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
