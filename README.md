# Пункт наведения ИАП

## Теория

## БД

![schema.png](schema.png)

Основные сущности:
* Задачи (таблица `task`)
* Истребители (таблица `fighter`)
* СВН (таблица `enemy`)

История и динамичность обеспечиваются с помощью полей `start_dt` и `finish_dt`

### Инициализация инстанса PostgreSQL

Запускаем инстанс и указываем, что будем работать с кодировкой `UTF-8`
```
rm -rf /usr/local/var/postgresql@9.6
initdb /usr/local/var/postgresql@9.6 -A md5 -E UTF8 -U postgres -W password
```

### Старт сервера

Работаем с `postgresql@9.6`. Для запуска сервера с базой используется команда:
```
pg_ctl -D /usr/local/var/postgresql@9.6 start
```

### Создание структуры БД

### Создание таблиц и тригера

### Заполнение данных

### Демонстрация работы запросов
