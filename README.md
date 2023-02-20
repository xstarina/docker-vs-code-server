# docker-vs-code-server

VS Code Server running a docker container.

By running this container you agree to [VS Code Server license](https://code.visualstudio.com/license/server).

## Build

```bash
docker build -t starina/vs-code-server:latest .
```

### Run

```bash
docker run \
    -p 8000:8000 \
    -v <DIR>:/data \
    -e UID=82 \
    -e GID=82 \
    starina/vs-code-server:latest
```

Open http://localhost:8000 