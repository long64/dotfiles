;; load-path で ~/.emacs.d とか書かなくてよくなる
(when load-file-name
(setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get https://github.com/dimitri/el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get"))
(require 'el-get)
;; el-getでダウンロードしたパッケージは ~/.emacs.d/ に入るようにする
(setq el-get-dir (locate-user-emacs-file "elisp"))

(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

(global-linum-mode t)
(global-hl-line-mode t)

(show-paren-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

(setq ring-bell-function 'ignore)

(setq make-backup-files nil)

(setq delete-auto-save-files t)

(electric-pair-mode 1)

(global-set-key (kbd "C-@") 'hippie-expand)

;;flycheck
(el-get-bundle flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(keyboard-translate ?\C-h ?\C-?)

(require 'gud)
(setq gdb-many-windows t)
(setq gdb-use-separate-io-buffer t)

;spellcheck
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")

;; auto-conplete
(el-get-bundle auto-complete)
;; auto-complete が発動するキー
;; (ac-set-trigger-key "TAB")
;; 補完が出るまでの時間
;; (setq ac-quick-help-delay 0.5)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
	   (add-hook
	    (quote write-contents-functions)
	    (lambda nil
	      (delete-trailing-whitespace)
	      nil))
	   (require
	    (quote whitespace))
	   "Sometimes the mode needs to be toggled off and on."
	   (whitespace-mode 0)
	   (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face tabs trailing lines-tail)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
