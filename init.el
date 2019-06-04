
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)

(setq inhibit-startup-message t)        ; Disable startup message 

(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Ciao
(if (file-exists-p "~/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el")
    (load-file "~/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el"))
(require 'ciao)
(add-to-list 'auto-mode-alist '("\\.pl\\'" . ciao-mode))

(use-package ido
  :ensure
  :init
  (progn
    (ido-mode 1)
    (use-package ido-vertical-mode
      :ensure t
      :init (ido-vertical-mode 1)
      )
    (use-package flx-ido
      :ensure t
      :init (flx-ido-mode 1)
      )
    (use-package ido-completing-read+
      :ensure t
      )
    (use-package smex
      :ensure t
      :init (smex-initialize)
      :bind ("M-x" . smex)
      )
    )
  )


(use-package haskell-mode
  :ensure t
  :mode "\\.hs\\'"
  :config
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (haskell-mode smex ido-completing-read+ flx-ido ido-vertical-mode ##))))
'(package-archives
   (quote
    (("melpa" . "http://melpa.milkbox.net/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 

; @begin(30600943)@ - Do not edit these lines - added automatically!
(if (file-exists-p "/home/jaime/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el")
  (load-file "/home/jaime/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el"))
; @end(30600943)@ - End of automatically added lines.


