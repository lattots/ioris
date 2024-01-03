# ioris

## Server Development

To set up the development environment install following:
 * `gvm`
 * `gvm use 1.21.3`
 * `sudo apt install apache2-bin make`

All server-related code is in `server/`.

To compile ioris server:
  ```
  make build
  ```

To start Apache2 development server:
  ```
  make start
  ```