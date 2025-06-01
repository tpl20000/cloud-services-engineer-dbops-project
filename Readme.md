# DBOps-Project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Данный проект - модель базы данных виртуального магазина, целью которого является реализация
автоматической миграции данных с помощью Flyway. Для достижения поставленной цели
использовались следующие технологии:
Flyway
Github Actions
PostgreSQL
Docker и Docker-Compose

# Выполненные запросы psql для создания пользователя:
```
CREATE USER store_user WITH PASSWORD storeuserpassword;
GRANT ALL PRIVILEGES ON DATABASE store to store_user;
```

# SQL запрос для выведения данных о продажах сосисок за предыдущую неделю
```
SELECT sos.date_created, SUM(op.quantity) AS total_sold FROM orders AS sos 
    JOIN order_product AS op ON sos.id = op.order_id 
    WHERE sos.status = 'shipped' AND sos.date_created > NOW() - INTERVAL '7 DAY' 
    GROUP BY sos.date_created 
    ORDER BY sos.date_created;
```