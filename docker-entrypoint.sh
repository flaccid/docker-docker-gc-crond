#!/bin/sh -e

:> /etc/docker-gc.env
echo export LOG_TO_SYSLOG="$LOG_TO_SYSLOG" >> /etc/docker-gc.env
echo export SYSLOG_FACILITY="$SYSLOG_FACILITY" >> /etc/docker-gc.env
echo export SYSLOG_LEVEL="$SYSLOG_LEVEL" >> /etc/docker-gc.env
echo export SYSLOG_TAG="$SYSLOG_TAG" >> /etc/docker-gc.env && \
echo export DRY_RUN="$DRY_RUN" >> /etc/docker-gc.env && \
echo export DRY_RUN_CONTAINERS="$DRY_RUN_CONTAINERS" >> /etc/docker-gc.env
echo export DRY_RUN_IMAGES="$DRY_RUN_IMAGES" >> /etc/docker-gc.env
echo export EXCLUDE_IMAGES="$EXCLUDE_IMAGES" >> /etc/docker-gc.env
echo export EXCLUDE_CONTAINERS=\'"$EXCLUDE_CONTAINERS"\' >> /etc/docker-gc.env
echo "$CRON_SCHEDULE . /etc/docker-gc.env && /docker-gc" > /var/spool/cron/crontabs/root

echo "> $@" && exec "$@"
