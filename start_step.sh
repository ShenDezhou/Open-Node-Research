#/bin/bash
curl -XPOST 127.0.0.1:3000/start -H 'Content-Type: application/json'  -d '{"reset":"soft", "waitTicks":1}'

curl -XPOST 127.0.0.1:3000/step -H 'Content-Type: application/json'  -d '{   "code":"bot.chat(`/time set ${getNextTime()}`);\nbot.chat(`/difficulty peaceful`);",   "programs":""}'
