# Blog Search

## To run the application:
1. Clone repository.
2. Open project folder.
3. Download database dump by the [link](https://www.dropbox.com/sh/cdrfv1pki506t38/AADRvZX_8cQRhPZd8qEcNAeha?dl=0&preview=dump-v2.psql). Rename to `dump.psql` and put into `db` folder.
3. Run `docker-compose build`.
4. Run `docker-compose run --rm app bin/setup`.
5. Run `docker-compose up`.
