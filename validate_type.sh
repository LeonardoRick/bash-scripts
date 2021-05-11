DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
source $DIR/parse_params.sh

# this file is used to make sure you're using the right starter files and
# ensure you're not zipping the front-end when --server is passed
if [[ $server ]]; then
    type="-server"

elif [[ $client ]]; then
    type="client"
fi
