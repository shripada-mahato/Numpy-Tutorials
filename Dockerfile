FROM python:3.11-slim

WORKDIR /app

# 1. Copy only the requirements file first (speeds up future builds)
COPY requirements.txt .

# 2. Install the packages listed in your file
RUN pip install --no-cache-dir -r requirements.txt

# 3. Copy the rest of your project files
COPY . .

CMD ["python", "script.py"]
