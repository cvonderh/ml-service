#!/usr/bin/env bash

PORT=32672
echo "Port: $PORT"

IP=$(minikube ip)

URL=(minikube service hello-minikube --url)

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
#     -X POST http://$IP:$PORT/predict
      -X POST $URL/predict