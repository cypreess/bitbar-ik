#!/bin/bash

echo -n '$:'`curl -s http https://klient.internetowykantor.pl/api/public/marketBrief | /usr/local/bin/jq '.[] | select(.pair=="USD_PLN")' | /usr/local/bin/jq ".directExchangeOffers | .buyNow"`
echo -n '  '
echo -n '€:'`curl -s http https://klient.internetowykantor.pl/api/public/marketBrief | /usr/local/bin/jq '.[] | select(.pair=="EUR_PLN")' | /usr/local/bin/jq ".directExchangeOffers | .buyNow"`
