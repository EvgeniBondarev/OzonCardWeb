# Используем официальный образ nginx как базовый образ
FROM nginx:alpine

# Копируем файлы index.html и create-cart.html в директорию, которую обслуживает nginx
COPY index.html /usr/share/nginx/html/index.html
COPY create-card.html /usr/share/nginx/html/create-card.html

# Открываем порт 80, который используется по умолчанию для HTTP
EXPOSE 80

# Команда для запуска nginx (автоматически выполняется в базовом образе nginx)
CMD ["nginx", "-g", "daemon off;"]