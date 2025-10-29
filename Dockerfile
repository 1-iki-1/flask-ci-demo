# Используем официальный Python-образ
FROM python:3.10-slim

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл зависимостей и устанавливаем пакеты
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код приложения
COPY . .

# Указываем порт, который будет использоваться приложением
EXPOSE 5000

# Команда запуска Flask-приложения
CMD ["python", "app.py"]
