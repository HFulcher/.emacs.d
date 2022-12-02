(use-package general
  :config
  (general-define-key
   :prefix "\\"
   :states '(normal visual emacs)
   "g" '(:ignore t :which-key "goto")
   "gt" '(lsp-goto-type-definition :which-key "goto-type-definition")
   "gr" '(lsp-find-definition :which-key "find-definition")
   "gg" '(lsp-find-references :which-key "find-references")
   "r" '(:ignore t :which-key "refactor")
   "rr" '(lsp-rename :which-key "rename"))

  (general-create-definer huw/leader-keys
   :states '(normal visual emacs)
   :prefix "SPC")

  (huw/leader-keys
   "t" '(:ignore t :which-key "toggles")
   "tt" '(counsel-load-theme :which-key "choose theme")
   "fs" '(save-buffer :which-key "Save buffer")
   "x" '(counsel-M-x :which-key "Counsel M-x")
   "ff" '(counsel-find-file :which-key "Counsel find file")
   "fe" '(dired :which-key "dired")
   "p" '(projectile-switch-project :which-key "Switch project")
   "s" '(swiper :which-key "Swiper")
   "fg" '(counsel-projectile-rg :which-key "Ripgrep")
   "ee" '(eval-last-sexp :which-key "Eval previous")
   "gs" '(magit-status :which-key "Magit Status")
   "bs" '(counsel-switch-buffer :which-key "Counsel switch buffer")
   "w-" '(split-window-below :which-key "Split window horizontally")
   "w|" '(split-window-right :which-key "Split window vertically")
   "wc" '(delete-window :which-key "Close current window")
   "h" '(windmove-left :which-key "Move to the window to the left")
   "l" '(windmove-right :which-key "Move to the window to the right")
   "j" '(windmove-down :which-key "Move to the window below")
   "k" '(windmove-up :which-key "Move to the window above")))


(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(provide 'keymap)
