# python-pks

These are python packages that we host in order to ensure a consistent environment.
Otherwise source distributions get built each time with potentially different tools / libraries.
The files are [hosted here](http://actioniq-oss.github.io/python-pkgs/) by GitHub Pages.

Note we use [pyenv](https://github.com/yyuu/pyenv) in this repository.

## Building for mac

Run `pip wheel foolib==1.2.3 --wheel-dir=./`. This should create a file called
`foolib-1.2.3-xxx-macosx_<your mac osx version>_<arch>.whl`. 

## Building for linux

Same as above. Instead of a macosx version, it should be `none-linux`.

## Refreshing index

After all whl files are built and copied to the root directory in your git branch,
you'll need to rebuild the index by running `./rebuild-index.sh`.
