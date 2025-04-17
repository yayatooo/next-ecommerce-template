# Use the official Bun image
FROM oven/bun:latest

WORKDIR /app

# Copy and install dependencies
COPY bun.lockb bunfig.toml package.json ./
RUN bun install

# Copy the rest of the app
COPY . .

# Build the app
RUN bun run build

# Start the app
CMD ["bun", "start"]
