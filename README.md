# BlockchainProxy Docker

Докер для [BlockchainProxy](https://github.com/ishmelev23/blockchain_proxy)

## Установка 
```
git clone https://github.com/ishmelev23/blockchain_proxy_docker
cd blockchain_proxy_docker
mkdir logs && cd logs && touch api.log publisher.log watcher.log
mkdir configs && cd configs && touch api_configs.py publisher_configs.py watcher_configs.py # and cofigure it
```


## Запуск
```
docker-compose up db # Start postgres service
docker-compose up api-app app # Start nginx with application api
docker-compose up publisher # Start publisher service
docker-compose up watcher # Start watcher service
```
