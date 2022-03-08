#!/bin/sh -e

cat /etc/alertmanager/alertmanager.yml | sed -e "s,\${slack_api_url},${SLACK_URL}," -e "s,\${channel},${SLACK_CHANNEL}," > /tmp/alertmanager.yml

mv /tmp/alertmanager.yml /etc/alertmanager/alertmanager.yml

set -- /bin/alertmanager "$@"

exec "$@"
