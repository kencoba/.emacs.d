(setq inhibit-startup-message t)

(tool-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-install)
(add-to-list 'load-path auto-install-directory)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; wdired.el
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

(setq transient-mark-mode t)

(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))
(setq migemo-dictionary "/usr/local/share/migemo/euc-jp/migemo-dict")
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)

(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)

(require 'eldoc-extension)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(setq eldoc-idle-deley 0.2)
(setq eldoc-minor-mode-string "")

(require 'ert-expectations)

(require 'anything-startup)

(load-theme 'deeper-blue t)

(require 'popwin)
(popwin-mode 1)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "~/ccl/lx86cl64")
