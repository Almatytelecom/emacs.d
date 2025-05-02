;; LSP configuration



;; Base LSP mode
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((c-mode . lsp-deferred)
	 (c++-mode . lsp-deferred))
  :custom
  ;; for perfomance
  (lsp-idle-delay 0.500)
  (lsp-log-io nil) ; disable log spam
  (lsp-completion-provider :capf)
  (lsp-headerline-breadcrumb-enable t)
  (lsp-enable-on-type-formatting nil)
  (lsp-enable-snippet t)
  (lsp-enables-symbol-highlighting t)
  (lsp-enable-indentation t)
  (lsp-semantic-tokens-enable t)
  :config
  (lsp-enable-which-key-intergration t))




;;LSP UI enhancements
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :after lsp-mode
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-position 'at-point)
  (lsp-ui-doc-delay 0.2)
  (lsp-ui-sideline-enable t)
  (lsp-ui-sideline-show-hover nil)
  (lsp-ui-sideline-show-code-actions t)
  (lsp-ui-sideline-show-diagnostics t)
  :bind (:map lsp-ui-mode-map
	      ([remap xref-find-definitions] . lsp-ui-peek-find-definintion)
	      ([remap xref-find-references] . lsp-ui-peek-find-references)))



;; Optional but recommended: Ivy or Helm integration
(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)




;; For better error List display
(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-error-list
  :bind (:map lsp-mode-map
	      ("M-9" . lsp-treemacs-errors-list)))




;; For viewing clangd AST
(use-package lsp-clangd
  :ensure nil  ; Part of lsp-mode
  :custom
  (lsp-clients-clangd-args '("--header-insertion=never"
			     "--background-index"
			     "--clang-tidy"
			     "--completion-style=detailed"
			     "--suggest-missing-includes")))



;; Debug Adapter Protocol
(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-auto-configure-mode)
  (require 'dap-lldb)
  (require 'dap-gdb-lldb)
  ;; Customize dap-mode UI
  (dap-ui-mode 1)
  (dap-tooltip-mode 1)
  (tooltip-mode 1)
  (dap-ui-controls-mode 1))






;; Provide the feature
(provide 'tools-lsp)
  
