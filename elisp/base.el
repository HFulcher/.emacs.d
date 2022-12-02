(defvar huw/default-font-size 100)

(set-face-attribute 'default nil :height huw/default-font-size)

(defvar huw/custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Package repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)


;; Emacs customizations
(setq custom-file huw/custom-file
      make-backup-files nil
      display-lines-numbers-type 'relative
      inhibit-startup-message t
      use-package-always-ensure t
      visible-bell t)

;; Keep buffers up to date
(global-auto-revert-mode t)

;; Display line numbers
(global-display-line-numbers-mode)
(dolist (mode '(org-mode-hook
                 term-mode-hook
                 eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Show matching parenthesis
(show-paren-mode 1)

(if (file-exists-p huw/custom-file)
  (load custom-file))

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'base)
