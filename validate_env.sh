DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
source $DIR/parse_params.sh

case $env in
    dev|local)
        ;;
    *)
        echo 'Wrong env. Set --env to "dev" or "local"'
        exit
        ;;
esac