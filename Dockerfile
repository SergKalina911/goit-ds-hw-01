# 1. Базовий образ Python
FROM python:3.13-slim

# 2. Робоча директорія всередині контейнера
WORKDIR /app

# 3. Копіювання файлів проекту у контейнер
COPY hw.py /app/
COPY pyproject.toml /app/
COPY poetry.lock /app/

# 4. Встановлення Poetry
RUN pip install poetry

# 5. Встановлення залежностей проекту
RUN poetry install --no-root

# 6. Команда запуску застосунку "Персональний помічник"
CMD ["poetry", "run", "python", "hw.py"]
