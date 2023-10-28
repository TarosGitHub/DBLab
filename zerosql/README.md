# zerosql

## PostgreSQL on Docker

### Start a docker container of PostgreSQL

```
$ docker compose up -d
```

### Stop the docker container

```
$ docker compose down
```

### Enter the docker container

```
$ docker compose exec db bash
```

, or

```
$ docker container exec -it <container name> /bin/bash
```

For example, `<container name>` is "mypostgres-db-1".

## psql

See also: [psql](https://www.postgresql.jp/docs/9.4/app-psql.html)

### Enter a database without entering docker container

```
$ psql -h <host> -p <port> -U <username> -d <dbname>
```

For example:

```
$ psql -h localhost -p 5430 -U postgres
```

### Enter a database

```
# psql [-d <dbname>] -U <username>
```

For example, `<username>` is "postgres".
If `<dbname>` doesn't specify, it is specified `<username>` by default.

```
# psql postgres
```

### Meta commands

Show roles.

```
=# \du
```

Show databases.

```
=# \l
```

Show tables.

```
=# \dt
```

Show current working directory.

```
=# \! pwd
```

> Note:
> Execute any shell command.
> ```
> =# \! <command>
> ```

Change working directory.

```
=# \cd <directory>
```

Execute SQL file.

```
=# \i <SQL file>
```
