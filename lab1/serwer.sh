#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Użycie: $0 {start|stop|restart}"
    exit 1
fi

case "$1" in
    start)
        echo "Usługa jest uruchamiana"
        ;;
    stop)
        echo "Usługa jest zatrzymywana"
        ;;
    restart)
        echo "Usługa jest restartowana"
        ;;
    *)
        echo "Błąd: Nieznany parametr '$1'."
        echo "Dostępne parametry: start, stop, restart"
        exit 1
        ;;
esac

exit 0