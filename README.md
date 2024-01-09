# ioris

## Server Development

To set up the development environment install following:
 * `gvm`
 * `gvm install go1.21.3 -B`
 * `gvm use go1.21.3`
 * `sudo apt install apache2-bin make mariadb-server mariadb-client`

All server-related code is in `server/`.

To compile ioris server and copy static (HTML?) files to `build/`:
  ```
  make build
  ```

To start Apache2 development server:
  ```
  make start
  ```

### Creating Database

1. On SQL client (if necessary, you can replace `ioris` with whatever database name):
   ```
   mysql -u your-mysql-admin-username -p -e "CREATE DATABASE ioris;"
   ```
1. On command line (again, replace `ioris` with your database name):
   ```
   cat database.sql | mysql -u your-mysql-admin-username -p ioris
   ```
