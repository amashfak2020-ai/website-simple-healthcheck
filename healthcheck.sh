website_url=$1
status_code=$(curl --silent --location --head --output /dev/null --write-out "%{http_code}" "${website_url}")

if [ "${status_code}" != "200" ]; then
    echo "Website is unreachable (${status_code})" >&2
    exit 1
fi

exit 0
