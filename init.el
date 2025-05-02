
;;config paths

(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(let (( default-directory (expand-file-name "modules" user-emacs-directory)))(normal-top-level-add-subdirs-to-load-path))
(let (( default-directory (expand-file-name "lisp" user-emacs-directory)))(normal-top-level-add-subdirs-to-load-path))


;;initialization system of packets

(require 'core-package)


;; base config

;(require 'core-ui)
;(require 'core-editor)
;(require 'core-keybindings)


;;instruments

(require 'tools-lsp)
(require 'tools-magit)


;;languages

(require 'lang-cpp)
;(require 'lang-python)



;; ready

(message "emacs succesfully loaded by init.el")

