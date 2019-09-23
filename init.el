




(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" default)))
 '(package-selected-packages
   (quote
    (company-tabnine molokai-theme color-theme company racer rust-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;(add-to-list 'load-path "~/.emacs.d/elpa/rust-mode-20190517.2037/")
;;(add-to-list 'load-path "~/.emacs.d/elpa/racer-20190610.800/")
;;(autoload 'rust-mode "rust-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(require 'racer)
(require 'company)

(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(load-theme 'molokai t)

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)

(setq company-idle-delay 0)
(setq company-show-numbers t)
