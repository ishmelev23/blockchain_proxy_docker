#!/bin/bash 


_term() { 
  kill -TERM "$child" 2>/dev/null
}

trap _term SIGTERM

python3 ./init_db.py

if [ "$1" == 'worker' ] 
then
	./worker.py start --name "${@:2}" &
elif [ "$1" == 'api' ]
then
	gunicorn app:app --bind 0.0.0.0 "${@:2}" &
else 
	echo "First argument must define program type: worker or api"
	exit 1;
fi

child=$! 
wait "$child"