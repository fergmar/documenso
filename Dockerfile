FROM documenso/documenso:latest
USER root
RUN npx playwright install-deps chromium && npx playwright install chromium
USER nodejs
