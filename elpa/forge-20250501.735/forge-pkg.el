;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "forge" "20250501.735"
  "Access Git forges from Magit."
  '((emacs         "29.1")
    (compat        "30.0.2.0")
    (closql        "2.2.1")
    (emacsql       "4.3.0")
    (ghub          "4.3.0")
    (let-alist     "1.0.6")
    (llama         "0.6.2")
    (magit         "4.3.2")
    (markdown-mode "2.7")
    (seq           "2.24")
    (transient     "0.8.7")
    (yaml          "1.2.0"))
  :url "https://github.com/magit/forge"
  :commit "9cf25a7d8d3db1afdc8b6da9db357aa008b554ff"
  :revdesc "9cf25a7d8d3d"
  :keywords '("git" "tools" "vc")
  :authors '(("Jonas Bernoulli" . "emacs.forge@jonas.bernoulli.dev"))
  :maintainers '(("Jonas Bernoulli" . "emacs.forge@jonas.bernoulli.dev")))
