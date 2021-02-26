# Blog Search

## To run the application:
1. Clone repository.
2. Open project folder.
3. Download database dump by the [link](https://www.dropbox.com/sh/cdrfv1pki506t38/AADRvZX_8cQRhPZd8qEcNAeha?dl=0&preview=dump-v2.psql). Rename to `dump.psql` and put into `db` folder.
3. Run `docker-compose build`.
4. Run `docker-compose run --rm app bin/setup`.
5. Run `docker-compose up`.
6. Run `docker ps` to get the name of postgres container
7. Run `docker inspect -f '{{ json .Mounts }}' <container_id> | python -m json.tool` to get the volume path
8. Run `docker cp </path/to/dump/in/host> <container_name>:<path_to_volume>` to copy dump to container volume
9. Run `docker exec <container_name> pg_restore -U postgres -d blog_search_development <path_to_volume>/</path/to/dump/in/host>`
