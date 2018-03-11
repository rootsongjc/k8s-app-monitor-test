FROM alpine

ADD k8s-app-monitor-test /usr/bin/

EXPOSE 3000

ENV PORT 3000

ENTRYPOINT /usr/bin/k8s-app-monitor-test
