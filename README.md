# ioris

## Server Development

To set up the development environment install following:
 * `gvm`
 * `gvm install go1.21.3 -B`
 * `gvm use go1.21.3`
 * `sudo apt install apache2-bin make`

All server-related code is in `server/`.

To compile ioris server and copy static (HTML?) files to `build/`:
  ```
  make build
  ```

To start Apache2 development server:
  ```
  make start
  ```