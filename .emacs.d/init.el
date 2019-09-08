;; Add and enable MELPA
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom/")

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(
    ;; -------------------------- global configurations -------------------------------------
    better-defaults      ;; some nice default settings to start with
    volatile-highlights  ;; highlight yank (auto run) 
    golden-ratio         ;; used golden ratio when split windows (auto run)
    highlight-symbol     ;; hight symble and cycling through defs (C-c l activate, M-p/M-n nevigate)
    auto-complete        ;; auto complete text that has appeared prev, and func auto complete for elisp but not python [disabled]
    ;; -------------------------- global configurations -------------------------------------
    elpy                 ;; python environment 
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

;; (setq inhibit-startup-message t) ;; hide the startup message
;; (load-theme 'solarized-light t) ;; load material theme
;; (global-linum-mode t) ;; enable line numbers globally





(require 'yulu-editing)
(require 'yulu-convenience)
(require 'yulu-environment)
(require 'yulu-faces-and-ui)
(require 'yulu-python3)
(require 'yulu-latex)
;; (require 'yulu-org)
;; (require 'yulu-header)


;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-auto-complete nil)
 '(company-idle-delay 0.5)
 '(package-selected-packages (quote (material-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "color-17"))))
 '(company-scrollbar-fg ((t (:background "color-243"))))
 '(company-tooltip ((t (:background "color-110" :foreground "black"))))
 '(company-tooltip-annotation ((t (:foreground "magenta"))))
 '(company-tooltip-common ((t (:foreground "brightblue"))))
 '(company-tooltip-selection ((t (:background "blue")))))
