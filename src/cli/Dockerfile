# Use official Python image
FROM python:3.12

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything from the backend folder into the container
COPY . .

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run the backend
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


# fix this later....