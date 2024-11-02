# Use an official Python image as the base
FROM python:3.9

# Set environment variable to prevent Python from buffering stdout/stderr
ENV PYTHONUNBUFFERED=1

# Define environment variables, adjust as needed
ENV FRONTEND_URL=http://localhost:3000

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file first to install dependencies
COPY ./dependencies.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r dependencies.txt

# Copy the rest of the Django project files
COPY . .

# Expose the Django application port
EXPOSE 8000

# Collect static files
RUN python manage.py collectstatic --noinput

# Apply migrations at runtime and start Gunicorn
CMD ["sh", "-c", "python manage.py migrate && gunicorn backend.wsgi:application --bind 0.0.0.0:8000"]
