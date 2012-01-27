
;; c indentation
(setq indent-tabs-mode nil)
(setq-default c-basic-offset 4)

;;to display time
(display-time)

;;set the keybinding so that f3 will start the shell
(global-set-key [f3] 'shell)

;; use hippie expand
(global-set-key "\M-/" 'hippie-expand-case-sensitive)

;; Goto-line short-cut key                                                                                                   
(global-set-key "\C-l" 'goto-line)

;; Show line and column number
(line-number-mode 1)
(column-number-mode 1)