(defun huw/evil-hook ()
  (dolist (mode '(custom-mode
                   eshell-mode
                   git-rebase-mode
                   erc-mode
                   circe-server-mode
                   circe-chat-mode
                   circe-query-mode
                   sauron-mode
                   term-mode))
    (add-to-list 'evil-emacs-state-modes mode)))

(use-package evil
  :init 
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :hook (evil-mode . huw/evil-hook))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(evil-mode 1)

(provide 'vim)
