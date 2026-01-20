FROM documenso/documenso:latest
USER root
RUN apk add --no-cache chromium && which chromium && which chromium-browser || true
ENV PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
USER nodejs
