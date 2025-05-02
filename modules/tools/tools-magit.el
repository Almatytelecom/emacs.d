;; Git integration with Magit




;; Main Magit package
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status)
  :config
  (setq magit-completing-read-function 'ivy-completing-read)
  (setq magit-display-buffer-funtion #'magit-display-buffer-same-window-except-diff-v1))




;; Add git gutter for visual diff markers
(use-package git-gutter
  :ensure t
  :diminish
  :config
  (global-git-gutter-mode +1)
  (setq git-gutter:update-interval 0.02))




;; Add git time machine for browsing through file history
(use-package git-timemachine
  :ensure t
  :bind ("C-c t" . git-timemachine))




;; Add forge for GitHub/GitLab integration
(use-package forge
  :ensure t
  :after magit)






;; Provide the feature
(provide 'tools-magit)
