FROM node:12

# Папка приложения
ARG APP_DIR=pixelistic_backend
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}

# Установка зависимостей
COPY package*.json ./
RUN npm install --production
# Для использования в продакшне
# RUN npm install --production

# Копирование файлов проекта
COPY ./pixelistic-backend/ .

# Уведомление о порте, который будет прослушивать работающее приложение
EXPOSE 4000

# Запуск проекта
CMD ["npm", "start"]
