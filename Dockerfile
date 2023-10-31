FROM ghcr.io/superfly/flyctl:latest as flyctl
FROM cgr.dev/chainguard/wolfi-base

LABEL org.opencontainers.image.source https://github.com/wilsonehusin/woodpecker-plugin-flyctl

COPY --from=flyctl /flyctl /usr/bin/flyctl
COPY run.sh /usr/bin/run.sh
ENTRYPOINT ["/usr/bin/run.sh"]
