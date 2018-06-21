(require 'iso-transl)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
										;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(add-to-list 'initial-frame-alist '(font . "Hack-12"))
;(add-to-list 'default-frame-alist '(font . "Hack-10.5"))

;; (defun adjust-font(frame)
;;   (with-selected-frame frame
;; 	(set-frame-font "Hack-10" nil t)))

;; (add-to-list 'after-make-frame-functions 'adjust-font)
;;(add-to-list 'default-frame-alist '(font . "Hack-11"))
;;(set-face-attribute 'default nil :height 110)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(battery-update-interval 30)
 '(custom-safe-themes
   (quote
	("ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "10e3d04d524c42b71496e6c2e770c8e18b153fcfcc838947094dad8e5aa02cef" "4a7abcca7cfa2ccdf4d7804f1162dd0353ce766b1277e8ee2ac7ee27bfbb408f" "e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "d2c61aa11872e2977a07969f92630a49e30975220a079cd39bec361b773b4eb3" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "a17c68ed6c3feb24eaeb7bb4d69221e0cf3e6a658f1da62c8f8edb90769b7b12" "9f569b5e066dd6ca90b3578ff46659bc09a8764e81adf6265626d7dc0fac2a64" "d507c9e58cb0eb8508e15c8fedc2d4e0b119123fab0546c5fd30cadd3705ac86" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "5900bec889f57284356b8216a68580bfa6ece73a6767dfd60196e56d050619bc" "365d9553de0e0d658af60cff7b8f891ca185a2d7ba3fc6d29aadba69f5194c7f" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a4c9e536d86666d4494ef7f43c84807162d9bd29b0dfd39bdf2c3d845dcc7b2e" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(display-time-format nil)
 '(display-time-interval 10)
 '(display-time-mode nil)
 '(display-time-string-forms
   (quote
	((if
		 (and
		  (not display-time-format)
		  display-time-day-and-date)
		 (format-time-string "%a %b %e " now)
	   "")
	 (propertize
	  (format-time-string
	   (or display-time-format
		   (if display-time-24hr-format "%H:%M" "%-I:%M%p"))
	   now)
	  (quote help-echo)
	  (format-time-string "%a %b %e, %Y" now))
	 load
	 (if mail
		 (concat " "
				 (propertize display-time-mail-string
							 (quote display)
							 (\`
							  (when
								  (and display-time-use-mail-icon
									   (display-graphic-p))
								(\,@ display-time-mail-icon)
								(\,@
								 (if
									 (and display-time-mail-face
										  (memq
										   (plist-get
											(cdr display-time-mail-icon)
											:type)
										   (quote
											(pbm xbm))))
									 (let
										 ((bg
										   (face-attribute display-time-mail-face :background)))
									   (if
										   (stringp bg)
										   (list :background bg)))))))
							 (quote face)
							 display-time-mail-face
							 (quote help-echo)
							 "You have new mail; mouse-2: Read mail"
							 (quote mouse-face)
							 (quote mode-line-highlight)
							 (quote local-map)
							 (make-mode-line-mouse-map
							  (quote mouse-2)
							  read-mail-command)))
	   ""))))
 '(elpy-rpc-backend "jedi")
 '(fancy-battery-show-percentage (quote non-nil))
 '(google-translate-default-source-language "en")
 '(google-translate-default-target-language "pt")
 '(google-translate-output-destination nil)
 '(menu-bar-mode nil)
 '(org-babel-load-languages
   (quote
	((plantuml . t)
	 (emacs-lisp . t)
	 (C . t)
	 (ditaa . t))))
 '(org-plantuml-jar-path "/home/hermes/.emacs.d/elpa/contrib/scripts/plantuml.jar")
 '(org-startup-folded nil)
 '(org-support-shift-select t)
 '(package-selected-packages
   (quote
	(company-bibtex company-auctex auctex google-translate smex helm-dash dracula-theme magit monokai-theme highlight-indent-guides company-rtags company-irony company-irony-c-headers solarized-theme org-edna org-plus-contrib use-package dash all-the-icons doom-themes hlinum google-this pdf-tools neotree)))
 '(python-indent-offset 4)
 '(python-shell-interpreter "python3")
 '(python-shell-virtualenv-root "/home/hermes/.virtualenvs/cv/")
 '(spaceline-all-the-icons-separator-type (quote slant))
 '(spaceline-all-the-icons-slim-render nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 120 :width normal))))
 '(spaceline-all-the-icons-sunset-face ((t (:inherit powerline-active2 :background "black" :foreground "black")))))

;; Removendo página inicial
(setq inhibit-startup-message t)

;; Número de linhas
(global-linum-mode t)
(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
					  (ceiling (* (if (boundp 'text-scale-mode-step)
									  (expt text-scale-mode-step
											text-scale-mode-amount) 1)
								  (if (car (window-margins))
									  (car (window-margins)) 1)
								  ))))
(advice-add #'linum-update-window :after #'linum-update-window-scale-fix)
(add-hook 'doc-view-mode-hook
		  (lambda ()
			(linum-mode -1)))
(add-hook 'shell-mode-hook
		  (lambda ()
			(linum-mode -1)))
(add-hook 'pdf-view-mode-hook
		  (lambda ()
			(linum-mode -1)))
(add-hook 'xwidget-webkit-mode-hook
		  (lambda ()
			(linum-mode -1)))
(add-hook 'eshell-mode-hook
		  (lambda ()
			(linum-mode -1)))

;; PDF-TOOLS
(pdf-tools-install)
(add-hook 'pdf-view-mode-hook 'auto-revert-mode)
(setq auto-revert-interval 0.5)
;;(auto-revert-set-timer)

(defun wenshan-other-docview-buffer-scroll-down ()
  "There are two visible buffers, one for taking notes and one
for displaying PDF, and the focus is on the notes buffer. This
command moves the PDF buffer forward."
  (interactive)
  (other-window 1)
  (pdf-view-scroll-up-or-next-page)
  (other-window 1))
(defun wenshan-other-docview-buffer-scroll-up ()
  "There are two visible buffers, one for taking notes and one
for displaying PDF, and the focus is on the notes buffer. This
command moves the PDF buffer backward."
  (interactive)
  (other-window 1)
  (pdf-view-scroll-down-or-previous-page)
  (other-window 1))

(defun wenshan-otherframe-docview-buffer-scroll-down ()
  "There are two visible buffers, one for taking notes and one
for displaying PDF, and the focus is on the notes buffer. This
command moves the PDF buffer forward."
  (interactive)
  (other-frame 1)
  (pdf-view-scroll-up-or-next-page)
  (other-frame 1))
(defun wenshan-otherframe-docview-buffer-scroll-up ()
  "There are two visible buffers, one for taking notes and one
for displaying PDF, and the focus is on the notes buffer. This
command moves the PDF buffer backward."
  (interactive)
  (other-frame 1)
  (pdf-view-scroll-down-or-previous-page)
  (other-frame 1))



(global-set-key (kbd "C-1") 'wenshan-other-docview-buffer-scroll-down)
(global-set-key (kbd "C-2") 'wenshan-other-docview-buffer-scroll-up)
(global-set-key (kbd "C-c 1") 'wenshan-otherframe-docview-buffer-scroll-down)
(global-set-key (kbd "C-c 2") 'wenshan-otherframe-docview-buffer-scroll-up)


;; Xwidget
(defun my-xwidget-mode-config ()
  "For use in `html-mode-hook'."
  (local-set-key (kbd "<down>") 'xwidget-webkit-scroll-up)
  (local-set-key (kbd "<up>") 'xwidget-webkit-scroll-down)
  (local-set-key (kbd "M-w") 'xwidget-webkit-copy-selection-as-kill)
  (local-set-key [mouse-4] 'xwidget-webkit-scroll-down)
  (local-set-key [mouse-5] 'xwidget-webkit-scroll-up)
  ;;(local-set-key (kbd "RET") 'xwidget-webkit-insert-string)
  )
(add-hook 'xwidget-webkit-mode-hook 'my-xwidget-mode-config)


(global-set-key (kbd "C-c a") 'org-agenda)



(global-set-key [f8] 'neotree-toggle)

;; Company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(company-auctex-init)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-rtags))

(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
;(add-hook 'python-mode-hook 'my/python-mode-hook)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;(push '(company-rtags company-keywords) company-backends)



(scroll-bar-mode -1)
(electric-pair-mode 1)
;(electric-indent-mode 0)
(delete-selection-mode 1)
(show-paren-mode 1)

(setq initial-major-mode 'emacs-lisp-mode)
(setq initial-scratch-message "")
(setq org-agenda-files '("~/Dropbox/org"))
(setq org-startup-indented t)
(setq org-startup-truncated nil)
(setq org-src-tab-acts-natively t)

(add-hook 'org-mode-hook 'org-hide-block-all)

(google-this-mode 1)

(setq browse-url-browser-function 'xwidget-webkit-browse-url)


(require 'hlinum)
(hlinum-activate)

(require 'all-the-icons)
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'dracula t)

;; Enable flashing mode-line on errors
;(doom-themes-visual-bell-config)

;; Enable custom neotree  theme
;(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
;(doom-themes-org-config)

;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(defun org-pedro ()
  (define-key org-mode-map (kbd "C-c C-c")
  (lambda () (interactive) (org-ctrl-c-ctrl-c)
                           (org-display-inline-images)))
  )

(add-hook 'org-mode-hook 'org-pedro)

(setq highlight-indent-guides-method 'character)

;; C++
(setq-default c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default tab-width 4)

(add-hook 'c++-mode-hook 'highlight-indent-guides-mode)
(add-hook 'python-mode-hook 'highlight-indent-guides-mode)

;; Helm-dash
(require 'helm-dash)
(global-set-key "\C-cd" 'helm-dash-at-point)
(setq helm-dash-common-docsets (helm-dash-installed-docsets))

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; gdb
(setq gdb-many-windows t)

;; Tramp
 (setq tramp-default-method "ssh")

;; smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
										; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; google-translate
(require 'google-translate)
(require 'google-translate-default-ui)
(global-set-key "\C-ct" 'google-translate-at-point)
(global-set-key "\C-cT" 'google-translate-query-translate)


;;auctex
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(setq TeX-PDF-mode t)

;; company auctex
;; (company-auctex-init)

;; company bibtex
(add-to-list 'company-backends 'company-bibtex)

(setq company-bibtex-bibliography
	'("/home/pedropeter/Dropbox/LABMINT/CSBC 2018/sbc-template.bib"))

;; Use pdf-tools to open PDF files
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)

;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)
