# Stage 1 — Install dependencies
FROM node:18-alpine AS builder

ENV WORKDIR /usr/src/app/
WORKDIR $WORKDIR

COPY package*.json $WORKDIR
RUN npm install --production --no-cache

# Stage 2 — Run application securely
FROM node:18-alpine

# Create non-root user
ENV USER node
ENV WORKDIR /home/$USER/app

WORKDIR $WORKDIR

# Copy dependencies from builder stage
COPY --from=builder /usr/src/app/node_modules node_modules

# Copy application files with correct ownership
COPY --chown=node:node . $WORKDIR

# Set secure permissions
RUN chmod -R g-s,o-rx /home/$USER && \
    chmod -R o-wrx $WORKDIR

# Switch to non-root user
USER $USER

# Expose application port
EXPOSE 4000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:4000 || exit 1

# Start application
CMD ["node", "server.js"]