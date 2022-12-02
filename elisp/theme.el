(use-package doom-themes)
(add-hook 'after-init-hook (lambda () (load-theme 'doom-dracula t)))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package all-the-icons)

(provide 'theme)
