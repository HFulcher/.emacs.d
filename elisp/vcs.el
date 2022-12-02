(use-package magit
  :config
  (setq magit-completing-read-function 'ivy-completing-read)
  :commands (magit-status magit-get-current-branch))

(use-package magit-popup)

(provide 'vcs)
