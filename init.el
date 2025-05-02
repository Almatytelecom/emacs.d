
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
