# Foundation

## Getting Started

```shell
if [[ $OSTYPE == darwin* ]]; then
  echo "== Install brew and packages"
  giturl="https://raw.githubusercontent.com/vishalapte/foundation/main/"
  /bin/bash -c "$(curl -fsSL $giturl/brew_machine.sh)"
  unset -v giturl
fi
```

```shell
if [[ $OSTYPE == darwin* || $OSTYPE == linux* ]]; then
  echo "== Copy dotfiles"
  giturl="https://raw.githubusercontent.com/vishalapte/foundation/main"
  /bin/bash -c "$(curl -fsSL $giturl/shell/copy_dotfiles.sh)"
  unset -v giturl
fi
```

## Shell

bash_login.sh - Includes git convenience
- gpip() - global pip. Use with care.

bash_aliases.sh
- gzipchk()
- quxfind()
- pyclean()

qux_images.sh - Imagemagick
- png2svg()
- png2svg_gapps()
- pdf2jpg()
- img_padding()

qux_python.sh - Environment management
- quxvenv()

qux_macosx.sh
- quiclook()
- fn_rename_machine()
- hideextension()
- xhideextension()

## Sysadmin

### [Cron](sysadmin/cron)

renew_certs.sh
- mv /usr/local/sbin/

### Ansible
