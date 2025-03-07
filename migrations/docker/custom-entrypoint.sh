#!/bin/bash

echo "MIGRATION_COMMAND set to ${MIGRATION_COMMAND}"

if [ "$MIGRATION_COMMAND" == "update" ]; then
  echo "Running update command"
  /liquibase/docker-entrypoint.sh update --changelog-file=migrations/master.yml
elif [ "$MIGRATION_COMMAND" == "rollback" ]; then
  echo "Running rollback command"
  /liquibase/docker-entrypoint.sh rollback-count --count=1 --changelog-file=migrations/master.yml
else
  echo "Invalid command"
  exit 1
fi
