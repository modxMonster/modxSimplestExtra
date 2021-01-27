# About this Repo

This repository holds a simple example of a modxExtra, this is intended for learning purposes
and can be used as a base template for new extra projects

## How to run
[Here you can find](https://youtu.be/UJF5ATIzWG4) a video showing how to setup and run the current project
This project depends on the basic modxMonster docker image, [check this repo](https://github.com/modxMonster/modxBaseEnviroment) to see how to set
up the base image and get this running inside docker.

Once all the steps defined on the baseImageRepo, you'll still need to load the files objects into modx, we achieve this using [Gitify](https://github.com/modmore/Gitify)

1. Run `docker exec -ti modxsimplestextra_web_1 sh -c "cd /var/www/html && Gitify build && rm -fr /var/www/html/core/cache"`
2. Using mysqWorkBench, or other database tool, import the file stored at `database/Dumpxxxx.sql` (xxxx will change along time) and load it into the mysql docker database

Login and see it working!



