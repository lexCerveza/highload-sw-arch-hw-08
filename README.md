# highload-sw-arch-hw-08

# Prerequisites
* docker
* linux + bash

# 1. Run MySQL with predefined innodb_flush_log_at_trx_commit in ./my-sql/mysql-config.cnf (default 0) + seed data + run queries with different indexes
```
./run.sh
```

# 2. Run cleanup script

```
./cleanup.sh
```

# Querying comparison

| Index | Query Type | Avg exec time  |
| ------------- |:-------------:| -----:|
| BTREE     | Exact Match | 3.5 ms  |
| BTREE     | Range | 14.5 ms |
| HASH  |  Exact Match | 3ms |
| HASH  |  Range | 32 ms |
| NO INDEX  | Exact Match | 2200 ms |
| NO INDEX  | Range | 3880 ms |

# Inserting comparison

| innodb_flush_log_at_trx_commit value | Inserting time  |
| ------------- |:-------------:|
| 0 | 65 sec |
| 1 | 90 sec |
| 2 | 51 sec |
