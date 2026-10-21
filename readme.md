`docker stop frontend backend mysql_db; docker rm frontend backend mysql_db; docker rmi docker-frontend docker-backend; docker compose up -d --build --remove-orphans;`

`docker build -t frontend .`
`docker build -t backend .`
`docker-compose down; docker compose up -d --build --remove-orphans;`

`docker compose logs;`

-f, --force: Bypasses the confirmation prompt.

`docker image prune -f`

`docker system prune`