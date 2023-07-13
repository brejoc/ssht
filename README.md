# ssht

ssht is a shortcut right into your tmux session on a remote computer.

You can use ssht just like ssh itself. E.g. `ssht root@your_remote_computer.com` will connect you to your remote computer via `ssh`, but instead of simply dropping you to a shell, `ssht` tries to connect you to a running tmux session on the remote computer. If there is no tmux session ssht creates one. No magic, but very handy.

## Installation on macOS

`brew tap brejoc/tap && brew install ssht`

## Installation on Linux

[![build result](https://build.opensuse.org/projects/home:brejoc/packages/ssht/badge.svg?type=default)](https://build.opensuse.org/package/show/home:brejoc/ssht)

You can either copy `ssht` somewhere into your `$PATH` (e.g. `~/bin`) or check out the project on [OBS](https://build.opensuse.org/package/show/home:brejoc/ssht). 

Another way is to create your own package with [fpm](https://github.com/jordansissel/fpm/wiki). You can find the [Makefile here](https://github.com/brejoc/ssht/blob/master/Makefile) in the GitHub repository. Depending on your flavour Linux you just have to run `make package_deb` or `make package_rpm` and then install the generated package.

Have fun!

