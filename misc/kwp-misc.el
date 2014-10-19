;;; kwp-misc --- misc configuration for kwp-emacs

;;; Code:

;; ----------------------------------------
;; set the PATH variable (get it)
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

;; ----------------------------------------
;; set the default startup directory
(setq default-directory "~/Documents/projects/" )

;; ----------------------------------------
;; set the indent settings
(setq tab-width 2)

;; ----------------------------------------
;; column numbers
(global-linum-mode t)

;; ----------------------------------------
;; set the feedbacks
(blink-cursor-mode 1)
(setq visible-bell 1)
(set-default 'indicate-empty-lines t)

;; ----------------------------------------
;; enable the clipboard
(setq x-select-enable-clipboard t)

;; ----------------------------------------
;; yes = y no = n
(defalias 'yes-or-no-p 'y-or-n-p)

;; ----------------------------------------
;; i'm on a mac yo!
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; ----------------------------------------
;; use aspell for flyspell (not ispell)
(setq-default ispell-program-name "/usr/local/bin/aspell")
(setq ispell-list-command "--list")
(add-hook 'text-mode-hook (lambda() (flyspell-mode 1)))

;; ----------------------------------------
;; enable global rainbow delimiters
(require 'rainbow-delimiters)

;; rainbow-delimiters got rid of global mode ...
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'text-mode-hook 'rainbow-delimiters-mode)

;; ----------------------------------------
;; move the backups
(setq backup-directory-alist `(("." . "~/.emacs_backups")))

(provide 'kwp-misc)

;;; kwp-misc.el ends here