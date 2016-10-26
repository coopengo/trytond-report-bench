# Tryton Report Engine Bench

This is a small tool to check concurrency on Tryton report engine (unoconv, soffice, etc)

Commands:

- `./uno <n>`: convert n documents simultaneously via unoconv (one server and many client calls)
- `./uno-ns <n>`: convert n documents simultaneously via unoconv (full call - no server/client)
- `./oo <n>`: convert n documents simultaneously via soffice call
- `./docker <build|run>`: to build and run an image with the newest (almost) available office version

Conclusions:

- unoconv does not support concurrency in full mode (`./uno-ns 2` does not work)
- soffice supports concurrency but it is not reliable (not 100% ok)
- unoconv with server/client deployment supports concurrency, is reliable and performant
