FROM eeacms/docker-gc

MAINTAINER Chris Fordham <chris@fordham-nagy.id.au>

COPY root.cron /var/spool/cron/crontabs/root

VOLUME /var/spool/cron

CMD crond -l 2 -f
