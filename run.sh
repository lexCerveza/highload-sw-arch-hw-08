#! /bin/bash

# Install MySQL client
sudo apt-get update && sudo apt-get install mysql-client unzip -y 

echo "MySQL client installed"

# Run MySQL
unzip ./my-sql/users.zip -d ./my-sql/users
sudo chmod 0444 ./my-sql/*.cnf
docker-compose up -d
sleep 15

echo "MySQL is up and running"

# Seed data
time mysql -h localhost -P 3306 --protocol=tcp -u root -p test --password=pass < ./my-sql/seed-data.sql

echo "Data seeded"

# Run queries with different indexes
mysql -h localhost -P 3306 --protocol=tcp -u root -p test --password=pass < ./scripts/run-queries-btree-hash-no-index.sql
