(custom-set-variables
  '(desktop-save-mode t)
  '(tab-stop-list (number-sequence 2 120 2))
  '(scroll-bar-mode nil)
)

(custom-set-faces

)

(set-default-font "IBM Plex Mono 13")
(add-to-list
  'default-frame-alist
  '(font . "IBM Plex Mono 13")
)

(setq initial-scratch-message "")

(add-to-list 'default-frame-alist '(height . 26))
(add-to-list 'default-frame-alist '(width . 121))

(setq line-number-mode t)
(setq column-number-mode t)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(menu-bar-mode -1)
(tool-bar-mode -1)

(setq auto-save-default nil)
(setq make-backup-files nil)

(setq backup-directory-alist
  `((".*" . ,temporary-file-directory))
)
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t))
)

(global-linum-mode 1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

(setq
  display-time-interval 1
  display-time-format "[%d %b %Y, %H:%M:%S]"
)
(display-time-mode t)

(add-hook 'after-change-major-mode-hook (lambda() (electric-indent-mode -1)))

(setq gc-cons-threshold 20000000)

(global-visual-line-mode t)

(global-set-key '[(f5)] 'buffer-menu)

(defun create-scratch-buffer nil
   "create a scratch buffer"
   (interactive)
   (switch-to-buffer (get-buffer-create "*scratch*"))
   (lisp-interaction-mode))

(global-set-key '[(f6)] 'create-scratch-buffer)
