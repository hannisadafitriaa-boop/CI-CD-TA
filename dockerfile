# Gunakan image dasar Python versi 3.9
FROM python:3.9-slim

# Tentukan direktori kerja di container
WORKDIR /app

# Salin semua file proyek ke dalam container
COPY . .

# Install dependensi dari requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Tentukan port aplikasi
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]
