## Part 1. Готовый докер
Взять официальный докер образ с nginx и выкачать его при помощи docker pull

![img](screens/1.png)

Проверить наличие докер образа через docker images

![img](screens/2.png)

Запустить докер образ через docker run -d [image_id|repository]

![img](screens/3.png)

Проверить, что образ запустился через docker ps

![img](screens/4.png)


Посмотреть информацию о контейнере через docker inspect [container_id|container_name]. По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера

id

![img](screens/5.png)

size

![img](screens/6.png)

ports

![img](screens/7.png)

Остановить докер образ через docker stop [container_id|container_name]

![img](screens/8.png)

Проверить, что образ остановился через docker ps

![img](screens/9.png)

Запустить докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду run

![img](screens/10.png)

Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx

![img](screens/11.png)


Перезапустить докер контейнер через docker restart [container_id|container_name]

![img](screens/12.png)


Проверить любым способом, что контейнер запустился

![img](screens/13.png)


## Part 2. Операции с контейнером

Прочитать конфигурационный файл nginx.conf внутри докер контейнера через команду exec

![img](screens/14.png)


Создать на локальной машине файл nginx.conf

![img](screens/15.png)

Настроить в нем по пути /status отдачу страницы статуса сервера nginx

![img](screens/16.png)

Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp

![img](screens/17.png)


Перезапустить nginx внутри докер образа через команду exec

![img](screens/18.png)

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![img](screens/19.png)

Экспортировать контейнер в файл container.tar через команду export

![img](screens/20.png)

Остановить контейнер

![img](screens/21.png)

Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры
![img](screens/22.png)


Удалить остановленный контейнер

![img](screens/23.png)


Импортировать контейнер обратно через команду import

![img](screens/24.png)


Запустить импортированный контейнер

![img](screens/25.png)


Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![img](screens/26.png)

## Part 3. Мини веб-сервер

Написать мини-сервер на C и FastCgi, который будет возвращать простейшую страничку с надписью Hello, World!

![img](screens/27.png)

Запустить написанный мини-сервер через spawn-fcgi на порту 8080

![img](screens/28.png)

Написать свой nginx.conf, который будет проксировать все запросы с 81 порта на 127.0.0.1:8080

![img](screens/29.png)

Запусти локально nginx с написанной конфигурацией.

![img](screens/30.png)

![img](screens/31.png)

![img](screens/32.png)

![img](screens/33.png)

Проверь, что в браузере по localhost:81 отдается написанная тобой страничка.

![img](screens/34.png)

## Part 4. Свой докер

Написать свой докер образ, который:

1) собирает исходники мини сервера на FastCgi из Части 3

![img](screens/35.png)

2) запускает его на 8080 порту

![img](screens/36.png)

3) копирует внутрь образа написанный ./nginx/nginx.conf

![img](screens/37.png)

4) запускает nginx.
nginx можно установить внутрь докера самостоятельно, а можно воспользоваться готовым образом с nginx'ом, как базовым.

![img](screens/38.png)

Собрать написанный докер образ через docker build при этом указав имя и тег

![img](screens/39.png)

Проверить через docker images, что все собралось корректно

![img](screens/40.png)

Запустить собранный докер образ с маппингом 81 порта на 80 на локальной машине и маппингом папки ./nginx внутрь контейнера по адресу, где лежат конфигурационные файлы nginx'а (см. Часть 2)

![img](screens/41.png)

Проверить, что по localhost:80 доступна страничка написанного мини сервера

![img](screens/42.png)

Дописать в ./nginx/nginx.conf проксирование странички /status, по которой надо отдавать статус сервера nginx

![img](screens/43.png)

Проверить, что теперь по localhost:80/status отдается страничка со статусом nginx
![img](screens/44.png)

## Part 5. Dockle

Просканировать образ из предыдущего задания через dockle [image_id|repository]

![img](screens/45.png)

Исправить образ так, чтобы при проверке через dockle не было ошибок и предупреждений

![img](screens/46.png)

готовый dockerfile

![img](screens/47.png)

## Part 6. Базовый Docker Compose

Написать файл docker-compose.yml, с помощью которого:

1) Поднять докер контейнер из Части 5 (он должен работать в локальной сети, т.е. не нужно использовать инструкцию EXPOSE и мапить порты на локальную машину)

![img](screens/48.png)

![img](screens/49.png)

![img](screens/50.png)


2) Поднять докер контейнер с nginx, который будет проксировать все запросы с 8080 порта на 81 порт первого контейнера

![img](screens/51.png)

![img](screens/52.png)

Замапить 8080 порт второго контейнера на 80 порт локальной машины

![img](screens/53.png)

Остановить все запущенные контейнеры

![img](screens/54.png)

Собрать и запустить проект с помощью команд docker-compose build и docker-compose up

![img](screens/55.png)

![img](screens/56.png)

Проверить, что в браузере по localhost:80 отдается написанная вами страничка, как и ранее

![img](screens/57.png)