# Tryton Report Engine Test

This is a small tool to check concurrency on Tryton report engine (unoconv, soffice, etc)

Commands:

- `./oo <n>`: convert n documents simultaneously via soffice call
- `./uno <n>`: convert n documents simultaneously via unoconv (one server and many client calls)
- `./docker <build|run>`: to build and run an image with the newest (almost) available office version
