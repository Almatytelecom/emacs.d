;;; counsel-etags-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from counsel-etags.el

(autoload 'counsel-etags-guess-program "counsel-etags" "\
Guess path from its EXECUTABLE-NAME on Windows.
Return nil if it's not found.

(fn EXECUTABLE-NAME)")
(autoload 'counsel-etags-version "counsel-etags" "\
Return version.")
(autoload 'counsel-etags-get-hostname "counsel-etags" "\
Reliable way to get current hostname.
`(getenv \"HOSTNAME\")' won't work because $HOSTNAME is NOT an
 environment variable.
`system-name' won't work because /etc/hosts could be modified")
(autoload 'counsel-etags-async-shell-command "counsel-etags" "\
Execute string COMMAND and create TAGS-FILE asynchronously.

(fn COMMAND TAGS-FILE)")
(autoload 'counsel-etags-exuberant-ctags-p "counsel-etags" "\
If CTAGS-PROGRAM is Exuberant Ctags.

(fn CTAGS-PROGRAM)")
(autoload 'counsel-etags-universal-ctags-p "counsel-etags" "\
If CTAGS-PROGRAM is Universal Ctags.

(fn CTAGS-PROGRAM)")
(autoload 'counsel-etags-scan-dir-internal "counsel-etags" "\
Create tags file from SRC-DIR.

(fn SRC-DIR)")
(autoload 'counsel-etags-directory-p "counsel-etags" "\
Does directory of current file match REGEX?

(fn REGEX)")
(autoload 'counsel-etags-filename-p "counsel-etags" "\
Does current file match REGEX?

(fn REGEX)")
(autoload 'counsel-etags-push-marker-stack "counsel-etags" "\
Save current position.")
(autoload 'counsel-etags-find-tag-name-default "counsel-etags" "\
Find tag at point.")
(autoload 'counsel-etags-word-at-point "counsel-etags" "\
Get word at point.  PREDICATE should return t on testing word character.

For example, get a word when dot character is part of word,

   (counsel-etags-word-at-point (lambda (c)
                                  (or (= c ?.)
                                      (and (>= c ?0) (<= c ?9))
                                      (and (>= c ?A) (<= c ?Z))
                                      (and (>= c ?a) (<= c ?z)))))

(fn PREDICATE)")
(autoload 'counsel-etags-scan-code "counsel-etags" "\
Use Ctags to scan code at DIR.

(fn &optional DIR)" t)
(autoload 'counsel-etags-list-tag "counsel-etags" "\
List all tags.  Tag is fuzzy and case insensitively matched." t)
(autoload 'counsel-etags-imenu-default-create-index-function "counsel-etags" "\
Create an index alist for the definitions in the current buffer.")
(autoload 'counsel-etags-list-tag-in-current-file "counsel-etags" "\
List tags in current file." t)
(autoload 'counsel-etags-find-tag "counsel-etags" "\
Find tag in two step.
Step 1, user need input regex to fuzzy and case insensitively match tag.
Any tag whose sub-string matches regex will be listed.

Step 2, user keeps filtering tags." t)
(autoload 'counsel-etags-find-tag-at-point "counsel-etags" "\
Find tag using tagname at point.  Use `pop-tag-mark' to jump back.
Please note parsing tags file containing line with 2K characters could be slow.
That's the known issue of Emacs Lisp.  The program itself is perfectly fine." t)
(autoload 'counsel-etags-recent-tag "counsel-etags" "\
Find tag using tagname from `counsel-etags-tag-history'." t)
(autoload 'counsel-etags-virtual-update-tags "counsel-etags" "\
Scan code and create tags file again.
It's the interface used by other hooks or commands.
The tags updating might not happen." t)
(autoload 'counsel-etags-grep "counsel-etags" "\
Grep at project with best grep program (ripgrep, grep...) automatically.
Extended regex like (pattern1|pattern2) is used.
If DEFAULT-KEYWORD is not nil, it's used as grep keyword.
If HINT is not nil, it's used as grep hint.
ROOT is the directory to grep.  It's automatically detected.
If current file is org file, current node or parent node's property
\"GREP_PROJECT_ROOT\" is read to get the root directory to grep.
If SHOW-KEYWORD-P is t, show the keyword in the minibuffer.

This command uses Ivy which supports regexp negation with \"!\".
For example, \"define key ! ivy quit\" first selects everything
matching \"define.*key\", then removes everything matching \"ivy\",
and finally removes everything matching \"quit\". What remains is the
final result set of the negation regexp.

(fn &optional DEFAULT-KEYWORD HINT ROOT SHOW-KEYWORD-P)" t)
(autoload 'counsel-etags-grep-current-directory "counsel-etags" "\
Grep current directory or LEVEL up parent directory.

(fn &optional LEVEL)" t)
(autoload 'counsel-etags-update-tags-force "counsel-etags" "\
Update current tags file using default implementation.
If FORCED-TAGS-FILE is nil, the updating process might now happen.

(fn &optional FORCED-TAGS-FILE)" t)
(autoload 'counsel-etags-tag-line "counsel-etags" "\
One line in tag file using CODE-SNIPPET, TAG-NAME, LINE-NUMBER, and BYTE-OFFSET.

(fn CODE-SNIPPET TAG-NAME LINE-NUMBER &optional BYTE-OFFSET)")
(autoload 'counsel-etags-append-to-tags-file "counsel-etags" "\
Append SECTIONS into TAGS-FILE.
Each section is a pair of file and tags content in that file.
File can be url template like \"https//myproj.com/docs/API/%s\".
The `counsel-etags-browse-url-function' is used to open the url.

(fn SECTIONS TAGS-FILE)")
(register-definition-prefixes "counsel-etags" '("counsel-etags-"))

;;; End of scraped data

(provide 'counsel-etags-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; counsel-etags-autoloads.el ends here
