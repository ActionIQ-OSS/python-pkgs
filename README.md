# python-pks

These are python packages that we host in order to ensure a consistent environment.
Otherwise source distributions get built each time with potentially different tools / libraries.
The files are [hosted here](http://actioniq-oss.github.io/python-pkgs/) by GitHub Pages.

Note we use [pyenv](https://github.com/yyuu/pyenv) in this repository.

To add a package, use the `./build-pkg.sh` script.

If you add/edit any packages here you should run `./rebuild-index.sh` to update the `index.html` file.
