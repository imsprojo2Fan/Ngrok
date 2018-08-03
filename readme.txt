ngrok·þÎñÆ÷
https://my.oschina.net/dingdayu/blog/736911

openssl genrsa -out rootCA.key 2048
openssl req -x509 -new -nodes -key rootCA.key -subj "/CN=ngrok.zooori.cn" -days 5000 -out rootCA.pem
openssl genrsa -out device.key 2048
openssl req -new -key device.key -subj "/CN=ngrok.zooori.cn" -out device.csr
openssl x509 -req -in device.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out device.crt -days 5000

Ö´ÐÐngrok.exe
nohup ./bin/ngrokd -domain="zooori.cn" -httpAddr=":9998"  -httpsAddr=":9999" -tunnelAddr=":4443" /dev/null 2>&1 &