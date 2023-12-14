FROM


RUN --mount=type=secret,id=http_proxy \
    export http_proxy=$(cat /run/secrets/http_proxy) && \
    export https_proxy=$(cat /run/secrets/http_proxy) && \
    apk update && \
    apk add netstat