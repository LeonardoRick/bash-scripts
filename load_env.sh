# Export the vars in .env into your shell:
export $(egrep -v '^#' .env | xargs)
# read VERSION from .env
VERSION=$(grep VERSION .env | xargs)
IFS='=' read -ra VERSION <<< "$VERSION"
VERSION=${VERSION[1]}

if [[ -z "$VERSION" ]]; then
    echo 'set VERSION variable properly on .env file';
fi