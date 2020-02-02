(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
 
(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package helm
  :ensure t)

(use-package org
  :ensure t)

;; EVIL mode configuration
(require 'evil)
  (evil-mode 1)

;; Magit configuration
(global-set-key (kbd "C-x g") 'magit-status)

;;;; Helm mode configuration
(require 'helm-config)

(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-d") 'helm-browse-project)

;;;; Org mode configuration
(require 'org)

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(add-hook 'org-mode-hook 'turn-on-auto-fill)
;; (add-hook 'org-mode-hook
;;               (lambda ()
;;                 (when (y-or-n-p "Auto Fill mode? ")
;;                   (turn-on-auto-fill))))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; Fill Column Indicator
(require 'fill-column-indicator)

;; Show clock in buffer bar
(display-time-mode 1)

;; Prevent emacs from breaking hard links
(setq backup-by-copying-when-linked t)

;; Open Notes.org on startup
(setq inhibit-startup-screen t)
(find-file "/home/cole/Documents/Undergraduate/MSU-Spring-2020/Notes.org")

;; Tramp mode configuration
(setq tramp-default-method "ssh")

;; Set transparency
(set-frame-parameter (selected-frame) 'alpha '(90 . 50))
(add-to-list 'default-frame-alist '(alpha . (90 . 50)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(org-agenda-files
   (quote
    ("~/Documents/Notepad.org" "~/Documents/Undergraduate/MSU-Spring-2020/Notes.org")))
 '(package-selected-packages
   (quote
    (org-evil evil fill-column-indicator magit visual-fill-column use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )













































