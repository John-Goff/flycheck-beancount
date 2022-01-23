;;; flycheck-beancount.el --- Flycheck integration for beancount files  -*- lexical-binding: t -*-

;; Copyright (C) 2022  John Goff

;; Author: John Goff <john@hiredhippo.ai>
;; Homepage: https://github.com/John-Goff/flycheck-beancount
;; Version: DEV
;; Keywords: convenience languages tools
;; Package-Requires: ((emacs "24.1") (flycheck "0.15"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This flychecker uses the output of "bean-check" on the current file to
;; find errors such as unbalanced transactions and syntax errors.

;;;; Setup

;; (eval-after-load 'flycheck '(require 'flycheck-beancount))

;;; Code:

(require 'flycheck)

(flycheck-define-checker beancount
  "A beancount syntax checker using bean-check.

See URL `https://beancount.github.io/docs/running_beancount_and_generating_reports.html#bean-check`"
  :command ("bean-check" source)
  :error-patterns
  ((error line-start (file-name) ":" line ": " (message) line-end))
  :modes beancount-mode)

(add-to-list 'flycheck-checkers 'beancount)

(provide 'flycheck-beancount)
;;; flycheck-beancount.el ends here
