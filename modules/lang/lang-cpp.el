;; this settings for C/C++ mode


(use-package cc-mode
  :ensure nil
  :hook ((c-mode . lsp-deffered)
	 (c++-mode . lsp-deffered))
  :config
  ;; Default style
  (setq c-default-style "linux"
	c-basic-offset 4)
  ;; Use spaces instead of tabs
  (setq-default indent-tabs-mode nil))



;; C++ code highlighting
(use-package modern-cpp-font-lock
  :ensure t
  :hook (c++-mode . modern-c++-font-lock-mode))



;; Code completion
(use-package company
  :ensure t
  :defer 2
  :diminish
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)
  :config
  (global-company-mode))



;;Syntax checking
(use-package flycheck
  :ensure t
  :defer 2
  :diminish
  :init (global-flycheck-mode))



;;CMake integration
(use-package cmake-mode
  :ensure t
  :mode ("CMakeList\\.txt\\'" "\\.cmake\\'"))



;;Create and manage compilation commands
(use-package compile
  :ensure nil
  :custom
  (compilation-scroll-output t)
  (compilation-window-height 15)
  :config
  (global-set-key (kbd "C-c c") 'compile))



;;Project managment with Projectile
(use-package projectile
  :ensure t
  :diminish
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map))



;;Optional: GDB integration with better UI
(use-package gdb-mi
  :ensure nil  ; built-in
  :init
  (setq gdb-many-windows t
	gdb-show-main t))



;;Make header files accessible
(use-package find-file
  :ensure t
  :config
  (setq cc-seartch-directrories '("." "../include" "../inc" "../common" "../public"
				  "/usr/include" "/usr/local/include/*"
				  "../*/include" "/usr/include/c++/*")))



;; Optional: better syntax highlighting for C++
(use-package highlight-doxygen
  :ensure t
  :hook (c++-mode . highlight-doxygen-mode))



;; Support for clang-format
(use-package clang-format
  :ensure t
  :bind (:map c++-mode-map
	      ("C-c f" . clang-format-buffer)
	      ("C-c r" . clang-format-region)))



;; Better code navigation
(use-package counsel-etags
  :ensure t
  :bind (("C-]" . counsel-etags-find-tag-at-point))
  :init
  (add-hook 'prog-mode-hook
	    (lambda ()
	      (add-hook 'after-save-hook
			'counsel-etags-virtual-update-tags 'append 'local))))




;; Global settings
(global-set-key (kbd "C-c o") 'ff-find-other-file)
(electric-pair-mode 1)
(show-paren-mode 1)
(add-hook 'progmode-hook 'display-line-numbers-mode)







;; Provide the feature

(provide 'lang-cpp)





  
