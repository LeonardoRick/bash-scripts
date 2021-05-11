DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )" # fix imports form another level
source $DIR/parse_params.sh

case $platform in
    win)
        node_suffix="10-win"
        platfolder="win"
        extension=".exe"
        rawextension=".bat"
        release="main"
        ;;
    winbeta)
        node_suffix="10-win"
        platfolder="win"
        extension=".exe"
        rawextension=".bat"
        release="beta"
        ;;
    macos)
        echo "script under development"
        exit
        ;;
    linux)
        node_suffix="12-linux"
        platfolder="linux"
        extension=""
        rawextension=".sh"
        release="main"
        ;;
    *)
        echo 'Wrong platform. Set --platform to "win", "macos", "linux" or its beta versions [plat][beta]. Ex: winbeta'
        exit
        ;;
esac
