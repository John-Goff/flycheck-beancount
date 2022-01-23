# flycheck-beancount
[Flycheck](https://www.flycheck.org/en/latest/index.html) checker for [beancount](https://beancount.github.io/docs/index.html).

## Usage
When `flycheck-mode` is enabled, `beancount-mode` files will be checked
automatically for correctness. See the [beancount docs](https://beancount.github.io/docs/beancount_language_syntax.html) for more details on 
what is considered correct.

## Installation
I prefer to install with [straight.el](https://github.com/raxod502/straight.el) and
[use-package](https://github.com/jwiegley/use-package).
```elisp
(use-package flycheck-beancount
  :straight (flycheck-beancount :type git :host github :repo "John-Goff/flycheck-beancount"))
```

You can also install this package manually by first ensuring `flycheck` is
installed, then downloading this code and adding the directory to your Emacs
`load-path`.

Then, in your `init.el`:

```elisp
(eval-after-load 'flycheck
  '(require 'flycheck-beancount))
```

## License
This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see http://www.gnu.org/licenses/.

See
[COPYING](https://github.com/John-Goff/flycheck-beancount/blob/main/COPYING)
for details.

