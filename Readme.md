# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Выполненные запросы psql для создания пользователя:

CREATE USER store_user WITH PASSWORD 'storeuserpassword'
GRANT CONNECT ON DATABASE store TO store_user
GRANT SELECT ON DATABASE store TO store_user
GRANT INSERT ON DATABASE store TO store_user
GRANT UPDATE ON DATABASE store TO store_user
GRANT DELETE ON DATABASE store TO store_user
