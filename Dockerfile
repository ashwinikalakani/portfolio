FROM ghcr.io/cirruslabs/flutter:stable AS builder
WORKDIR /app
COPY . .
RUN flutter config --enable-web
RUN flutter pub get
RUN flutter build web --release

FROM python:3.12-alpine
WORKDIR /app
COPY --from=builder /app/build/web /app
ENV PORT=10000
EXPOSE 10000
CMD sh -c "python -m http.server ${PORT:-10000} --directory /app"
