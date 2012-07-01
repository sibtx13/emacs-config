;; displays the time in the status bar
(display-time)

;; do not make backup files
(setq make-backup-files nil)

;; Goto-line short-cut key
(global-set-key "\C-l" 'goto-line)

;;set the keybinding so that f3 will start the shell
(global-set-key [f3] 'shell)

;; use hippie expand
(global-set-key "\M-/" 'hippie-expand-case-sensitive)


;; set default ccmode indent to 4
(setq c-default-style "bsd"
      c-basic-offset 4)

;; change indents from tabs to spaces
(setq c-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))
(setq objc-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))
(setq c++-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))

;; indents the whole file
(defun indent-all ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; python mode
(add-to-list 'load-path ".emacs.d/python-mode/") 
(setq py-install-directory ".emacs.d/python-mode/")
(require 'python-mode)

;; org-mode! for note taking and task completion
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
