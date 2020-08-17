docker network create daytrader-nw
docker kill daytrader-webapp
docker rm daytrader-webapp


docker run --network daytrader-nw --name daytrader-webapp -e DAYTRADER_ACCOUNTS_SERVICE=https://daytrader-accounts:1443 -e DAYTRADER_GATEWAY_SERVICE=https://daytrader-gateway:2443 -e DAYTRADER_PORTFOLIOS_SERVICE=https://daytrader-portfolios:3443 -e DAYTRADER_QUOTES_SERVICE=https://daytrader-quotes:4443 -p5443:5443 webapp .
