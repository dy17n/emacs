(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(eval-when-compile
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(use-package adwaita-dark-theme
  :ensure t
  :config
  (load-theme 'adwaita-dark t)
  (adwaita-dark-theme-arrow-fringe-bmp-enable))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  (setq doom-modeline-height 30))

(use-package magit)

(use-package enlight
  :init
  (setopt initial-buffer-choice 'enlight))

(use-package company)
(add-hook 'after-init-hook 'global-company-mode)
  
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(set-frame-font "Terminus 12" nil t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a68ec832444ed19b83703c829e60222c9cfad7186b7aea5fd794b79be54146e6" default))
 '(package-selected-packages
   '(company enlight magit centaur-tabs vim-tab-bar mood-line modus-themes doom-modeline adwaita-dark-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
