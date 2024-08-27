# Snippetbox
Snippetbox is a simple web application written in Go that allows users to create, view, and manage text snippets, similar to Pastebin. This project was created in following Alex Edwards's Let's Go book. Follow the instructions below to set up and access the program locally.

<img src="./screenshot.png" alt="Screenshot of Snippetbox" width="800"/>

## Installation
#### 1. Clone the repository
```shell
$ git clone https://github.com/yhavin/snippetbox.git
$ cd snippetbox
```

#### 2. Update module path
The default module path is `snippetbox.yhavin`. To update this, open [`module.sh`](./module.sh) and change the `NEW_MODULE_NAME` variable. Make the script executable and run it.
```shell
$ chmod +x module.sh
$ ./module.sh
```

#### 3. Install dependencies
```shell
$ go mod tidy
```

#### 4. Set up the database
Use the [`setup.sql`](./setup.sql) script, which will create the `snippetbox` database, a non-root user, and the `snippets` and `users` tables. See [MySQL setup](#mysql-setup) below for help installing and setting up MySQL.
```shell
$ mysql -u root -p < setup.sql
```

#### 5. Run the application
```shell
# Build and then run
$ go build -o snippetbox
$ ./snippetbox

# Run directly
$ go run ./cmd/web
```

Open your browser to [`https://localhost:4000`](https://localhost:4000) (must use HTTPS even though your browser will complain that it is not secure).

## MySQL setup
#### 1. Install MySQL
```shell
# Homebrew (macOS)
$ brew install mysql

# Ubuntu/Debian
$ sudo apt-get install mysql-server
```

Windows: Download from the [official MySQL website](https://dev.mysql.com/downloads/installer/).

#### 2. Start MySQL server
```shell
# Homebrew (macOS)
$ brew services start mysql

# Ubuntu/Debian
$ sudo systemctl start mysql

# Windows
$ net start MySQL
```

#### 3. Set root password
```shell
# Homebrew (macOS)
$ mysql -u root
OR
$ sudo mysql

# Ubuntu/Debian
$ sudo mysql

# Windows
Will be prompted during installation
```

Now you can continue setting up the database and running the application.