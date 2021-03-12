FROM registry.access.redhat.com/ubi8/ubi

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
COPY crda.sh /
RUN chmod +x /crda.sh

ENTRYPOINT ["/entrypoint.sh"]
