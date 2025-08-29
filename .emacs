;;;;;;;;;;;;;;;;;;;;
;; Encoding UTF-8 ;;
;;;;;;;;;;;;;;;;;;;;
(require 'iso-transl)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Repositórios de pacotes ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(defvar bootstrap-version)
(let ((bootstrap-file
	   (expand-file-name
		"straight/repos/straight.el/bootstrap.el"
		(or (bound-and-true-p straight-base-dir)
			user-emacs-directory)))
	  (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
	(with-current-buffer
		(url-retrieve-synchronously
		 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
		 'silent 'inhibit-cookies)
	  (goto-char (point-max))
	  (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configurações de Fonte ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq default-frame-alist (quote ((fullscreen . maximized))))
(setq default-frame-alist '((font . "SF Mono-12")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cmake-ide-build-dir "")
 '(company-bibtex-bibliography
   '("/home/pedropeter/Documentos/INF2710/65f0ba968dea03d231f81fba/a04references.bib"))
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "kubernetes")
	  tramp-kubernetes-connection-local-default-profile)
	 ((:application tramp)
	  tramp-connection-local-default-system-profile
	  tramp-connection-local-default-shell-profile)
	 ((:application eshell) eshell-connection-default-profile)))
 '(connection-local-profile-alist
   '((tramp-kubernetes-connection-local-default-profile
	  (tramp-config-check . tramp-kubernetes--current-context-data)
	  (tramp-extra-expand-args 97
							   (tramp-kubernetes--container
								(car tramp-current-connection))
							   104
							   (tramp-kubernetes--pod
								(car tramp-current-connection))
							   120
							   (tramp-kubernetes--context-namespace
								(car tramp-current-connection))))
	 (tramp-connection-local-darwin-ps-profile
	  (tramp-process-attributes-ps-args "-acxww" "-o"
										"pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
										"-o" "state=abcde" "-o"
										"ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
	  (tramp-process-attributes-ps-format (pid . number)
										  (euid . number)
										  (user . string)
										  (egid . number) (comm . 52)
										  (state . 5) (ppid . number)
										  (pgrp . number)
										  (sess . number)
										  (ttname . string)
										  (tpgid . number)
										  (minflt . number)
										  (majflt . number)
										  (time . tramp-ps-time)
										  (pri . number)
										  (nice . number)
										  (vsize . number)
										  (rss . number)
										  (etime . tramp-ps-time)
										  (pcpu . number)
										  (pmem . number) (args)))
	 (tramp-connection-local-busybox-ps-profile
	  (tramp-process-attributes-ps-args "-o"
										"pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
										"-o" "stat=abcde" "-o"
										"ppid,pgid,tty,time,nice,etime,args")
	  (tramp-process-attributes-ps-format (pid . number)
										  (user . string)
										  (group . string) (comm . 52)
										  (state . 5) (ppid . number)
										  (pgrp . number)
										  (ttname . string)
										  (time . tramp-ps-time)
										  (nice . number)
										  (etime . tramp-ps-time)
										  (args)))
	 (tramp-connection-local-bsd-ps-profile
	  (tramp-process-attributes-ps-args "-acxww" "-o"
										"pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
										"-o"
										"state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
	  (tramp-process-attributes-ps-format (pid . number)
										  (euid . number)
										  (user . string)
										  (egid . number)
										  (group . string) (comm . 52)
										  (state . string)
										  (ppid . number)
										  (pgrp . number)
										  (sess . number)
										  (ttname . string)
										  (tpgid . number)
										  (minflt . number)
										  (majflt . number)
										  (time . tramp-ps-time)
										  (pri . number)
										  (nice . number)
										  (vsize . number)
										  (rss . number)
										  (etime . number)
										  (pcpu . number)
										  (pmem . number) (args)))
	 (tramp-connection-local-default-shell-profile
	  (shell-file-name . "/bin/sh") (shell-command-switch . "-c"))
	 (tramp-connection-local-default-system-profile
	  (path-separator . ":") (null-device . "/dev/null"))
	 (eshell-connection-default-profile (eshell-path-env-list))))
 '(custom-safe-themes
   '("ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c"
	 "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e"
	 "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e"
	 "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184"
	 "4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d"
	 "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9"
	 "bfccfb247a960bf15b95cd3dccc41ff87caaba93f064fcc724b646867f2f4766"
	 "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02"
	 "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098"
	 "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc"
	 "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e"
	 "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8"
	 "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63"
	 "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013"
	 "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4"
	 "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175"
	 "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5"
	 "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf"
	 "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9"
	 "6c531d6c3dbc344045af7829a3a20a09929e6c41d7a7278963f7d3215139f6a7"
	 "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5"
	 "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c"
	 "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13"
	 "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae"
	 "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d"
	 "0d01e1e300fcafa34ba35d5cf0a21b3b23bc4053d388e352ae6a901994597ab1"
	 "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb"
	 "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5"
	 "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6"
	 "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71"
	 "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b"
	 "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53"
	 "da53441eb1a2a6c50217ee685a850c259e9974a8fa60e899d393040b4b8cc922"
	 "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3"
	 "13fa7a304bd53aa4c0beec4c25c4f811de499bce9deb326798265ed0015b3b78"
	 "63df625509cec7b2b7deba1d48ef07ffbee99c735a95d130ad9d1fc3df8b9a34"
	 "55c2069e99ea18e4751bd5331b245a2752a808e91e09ccec16eb25dadbe06354"
	 "9e4db9122a0b7564a8573825975ac58d8b96b3076b358bd2a9f40cd6bc8d271d"
	 "6731049cee8f7cbd542d7b3e1c551f3fab716a92119bd7c77f0bd1ef20849fb8"
	 "179ff455fbab61b1c5be8da791c53c4a2b65598dc372031be1e95373bd9a1f25"
	 "947190b4f17f78c39b0ab1ea95b1e6097cc9202d55c73a702395fc817f899393"
	 "35b0b0e531731e270708ddb342dc2e576a31fb298dcbc56a206596a43afac54f"
	 "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e"
	 "80365dd15f97396bdc38490390c23337063c8965c4556b8f50937e63b5e9a65c"
	 default))
 '(dash-docs-browser-func 'browse-url)
 '(dash-docs-enable-debugging nil)
 '(doom-modeline-enable-word-count t)
 '(doom-modeline-height 40)
 '(eaf-browser-auto-import-chrome-cookies t)
 '(eaf-browser-chrome-browser-name "Chromium")
 '(eaf-browser-continue-where-left-off t)
 '(ein:jupyter-server-use-subcommand "server")
 '(elpy-eldoc-show-current-function nil)
 '(elpy-modules
   '(elpy-module-company elpy-module-eldoc elpy-module-pyvenv
						 elpy-module-yasnippet elpy-module-django
						 elpy-module-sane-defaults))
 '(elpy-rpc-python-command "python3")
 '(ff-always-try-to-create nil)
 '(flycheck-checker-error-threshold 1000)
 '(gdb-many-windows t)
 '(gdb-show-main t)
 '(google-translate-default-source-language "en")
 '(google-translate-default-target-language "pt")
 '(image-use-external-converter nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(large-file-warning-threshold nil)
 '(lsp-bridge-enable-auto-format-code t)
 '(lsp-bridge-enable-hover-diagnostic t)
 '(lsp-bridge-python-command "/usr/bin/python3")
 '(lsp-bridge-python-lsp-server "ruff")
 '(menu-bar-mode nil)
 '(nano-modeline-position 'nano-modeline-footer)
 '(nano-window-divider-show t)
 '(org-file-apps
   '((auto-mode . emacs) ("\\.mm\\'" . default)
	 ("\\.x?html?\\'" . default) ("\\.pdf\\'" . default)))
 '(org-hide-emphasis-markers t)
 '(org-link-frame-setup
   '((vm . vm-visit-folder-other-frame)
	 (vm-imap . vm-visit-imap-folder-other-frame)
	 (gnus . org-gnus-no-new-news) (file . find-file)
	 (wl . wl-other-frame)))
 '(org-startup-folded nil)
 '(org-startup-indented t)
 '(org-startup-with-inline-images t)
 '(package-check-signature nil)
 '(package-selected-packages
   '(magit-section lsp-mode treemacs-magit treemacs-nerd-icons
				   nano-agenda nano-modeline org-bullets doom-modeline
				   cmake-ide good-scroll org-download helm-core
				   treemacs helm-dash magit all-the-icons evil
				   pdf-view-restore use-package protobuf-mode
				   omnisharp js2-mode web-mode impatient-mode
				   org-trello google-translate dracula-theme
				   solarized-theme vale-mode shell-pop lua-mode
				   company-bibtex realgud csv-mode json-mode nov ein
				   flatui-dark-theme flatui-theme company-rtags
				   company-irony company-irony-c-headers irony
				   py-autopep8 flycheck hlinum smex))
 '(plantuml-default-exec-mode 'jar)
 '(preview-auto-cache-preamble t)
 '(preview-image-type 'dvipng)
 '(scroll-bar-mode nil)
 '(shell-pop-window-position "full")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(treemacs-python-executable "/usr/bin/python")
 '(treemacs-width 30)
 '(undo-outer-limit 72000000))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(nano-modeline-button-inactive-face ((t (:family "Roboto Mono" :box (:line-width (2 . 2) :color "#707880" :style none) :background "grey20")))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configurações básicas ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(scroll-bar-mode -1)
(electric-pair-mode 1)
;(electric-indent-mode 0)
(delete-selection-mode 1)
(show-paren-mode 1)
(toggle-truncate-lines 1)
(show-paren-mode 1)

(setq make-backup-files nil)

(setq show-paren-delay 0)

(setq initial-major-mode 'org-mode)

(add-hook 'before-save-hook 'whitespace-cleanup)

(fringe-mode 0)

(setq scroll-margin 0
	  scroll-conservatively 10000
	  scroll-preserve-screen-position t
	  auto-window-vscroll nil)

(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

(pixel-scroll-mode 1)
(good-scroll-mode 1)

(add-to-list 'image-types 'svg)

(when (version<= "26.0.50" emacs-version )
 (global-display-line-numbers-mode))

(add-hook 'doc-view-mode-hook
		  (lambda ()
			(display-line-numbers-mode -1)))
(add-hook 'shell-mode-hook
		  (lambda ()
			(display-line-numbers-mode -1)))
(add-hook 'pdf-view-mode-hook
		  (lambda ()
			(display-line-numbers-mode -1)))
(add-hook 'xwidget-webkit-mode-hook
		  (lambda ()
			(display-line-numbers-mode -1)))
(add-hook 'eshell-mode-hook
		  (lambda ()
			(display-line-numbers-mode -1)))
(add-hook 'treemacs-mode-hook
		  (lambda ()
			(display-line-numbers-mode -1)))


;;;;;;;;;
;; C++ ;;
;;;;;;;;;
(setq-default c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default tab-width 4)

;; (require 'rtags) ;; optional, must have rtags installed
;; (use-package flycheck
;;   :ensure t
;;   :init (global-flycheck-mode))

;; (cmake-ide-setup)
;; (define-key c-mode-base-map (kbd "M-.") 'rtags-find-symbol-at-point)
;; (define-key c-mode-base-map (kbd "M-,") 'rtags-find-references-at-point)

;;;;;;;;;;
;; SMEX ;;
;;;;;;;;;;
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
										; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;;;;;;;;
;; Elpy ;;
;;;;;;;;;;
;; (use-package elpy
;;   :ensure t
;;   :init
;;   (elpy-enable))

;; (setq elpy-rpc-virtualenv-path 'current)
;; (setq elpy-rpc-backend "jedi")

;; (when (require 'flycheck nil t)
;;   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;   (add-hook 'elpy-mode-hook 'flycheck-mode))

;; (use-package py-autopep8
;;   :config
;;   (setq py-autopep8-options '("--max-line-length=100" "--aggressive"))
;;   :hook ((python-mode) . py-autopep8-mode))


;; (setq python-shell-interpreter "ipython"
;;	  python-shell-interpreter-args "-i --simple-prompt")

;;;;;;;;;;;;;;
;; treemacs ;;
;;;;;;;;;;;;;;
(global-set-key [f8] 'treemacs)

(use-package treemacs-nerd-icons
  :config
  (treemacs-load-theme "nerd-icons"))

;;;;;;;;;;
;; DOOM ;;
;;;;;;;;;;
(require 'doom-themes)
(require 'doom-modeline)
(doom-modeline-mode 1)

(load-theme 'doom-dracula t)

(doom-themes-treemacs-config)
(setq doom-themes-treemacs-theme "doom-colors")

(doom-themes-visual-bell-config)
(doom-themes-org-config)

;(solaire-global-mode +1)
;(add-to-list 'solaire-mode-themes-to-face-swap "^doom-")


;;;;;;;;;;;;;
;; Company ;;
;;;;;;;;;;;;;
;; (require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)
;; (setq company-minimum-prefix-length 1)
;; (setq company-idle-delay 0)
;; (with-eval-after-load 'company
;;   (define-key company-active-map (kbd "C-n") 'company-select-next)
;;   (define-key company-active-map (kbd "C-p") 'company-select-previous))

;; ;(setq company-global-modes '(not org-mode))

;; (add-hook 'gdb-mode-hook (lambda() (company-mode 0)))

;; (company-auctex-init)
;; (add-to-list 'company-backends 'company-bibtex)
;; (add-to-list 'company-backends 'company-files)

;;;;;;;;;;;
;; magit ;;
;;;;;;;;;;;
(global-set-key (kbd "C-x g") 'magit-status)


;;;;;;;;;;;;;;;
;; pdf-tools ;;
;;;;;;;;;;;;;;;
(require 'pdf-tools)

(pdf-tools-install)
(add-hook 'pdf-view-mode-hook 'auto-revert-mode)
;;(add-hook 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode)
(setq auto-revert-interval 0.5)

(use-package pdf-view-restore
  :after pdf-tools
  :config
  (add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode))

(setq pdf-view-restore-filename "~/.emacs.d/.pdf-view-restore")

;;;;;;;;;;;;;;;
;; Helm-dash ;;
;;;;;;;;;;;;;;;
(require 'helm-dash)
(global-set-key "\C-cd" 'helm-dash-at-point)
(setq helm-dash-common-docsets (helm-dash-installed-docsets))


;;;;;;;;;;;
;; LaTeX ;;
;;;;;;;;;;;
(require 'magic-latex-buffer)
(add-hook 'LaTeX-mode-hook 'magic-latex-buffer)
(add-hook 'LaTeX-mode-hook 'prettify-symbols-mode)

(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
	  TeX-source-correlate-start-server t)

(add-hook 'TeX-after-compilation-finished-functions
		  #'TeX-revert-document-buffer)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)


;;;;;;;;;;;;;;;;;;;;
;; xwidget-webkit ;;
;;;;;;;;;;;;;;;;;;;;
(defun wenshan-other-docview-buffer-scroll-down ()
  (interactive)
  (other-window 1)
  (pdf-view-scroll-up-or-next-page)
  (other-window 1))
(defun wenshan-other-docview-buffer-scroll-up ()
  (interactive)
  (other-window 1)
  (pdf-view-scroll-down-or-previous-page)
  (other-window 1))
(defun wenshan-otherf-docview-buffer-scroll-down ()
  (interactive)
  (other-frame 1)
  (pdf-view-scroll-up-or-next-page)
  (other-frame 1))
(defun wenshan-otherf-docview-buffer-scroll-up ()
  (interactive)
  (other-frame 1)
  (pdf-view-scroll-down-or-previous-page)
  (other-frame 1))


(global-set-key (kbd "C-c 1") 'wenshan-otherf-docview-buffer-scroll-down)
(global-set-key (kbd "C-c 2") 'wenshan-otherf-docview-buffer-scroll-up)

(global-set-key (kbd "C-1") 'wenshan-other-docview-buffer-scroll-down)
(global-set-key (kbd "C-2") 'wenshan-other-docview-buffer-scroll-up)


(defun xwidget-keys()
  (define-key xwidget-webkit-mode-map [mouse-4] 'xwidget-webkit-scroll-down)
  (define-key xwidget-webkit-mode-map [mouse-5] 'xwidget-webkit-scroll-up)
  (define-key xwidget-webkit-mode-map (kbd "<up>") 'xwidget-webkit-scroll-down)
  (define-key xwidget-webkit-mode-map (kbd "<down>") 'xwidget-webkit-scroll-up)
  (define-key xwidget-webkit-mode-map (kbd "M-w") 'xwidget-webkit-copy-selection-as-kill)
  (define-key xwidget-webkit-mode-map (kbd "C-c") 'xwidget-webkit-copy-selection-as-kill)
  )

(add-hook 'xwidget-webkit-mode-hook 'xwidget-keys)

;;;;;;;;;;;;;;;;;;;;;;
;; Google Translate ;;
;;;;;;;;;;;;;;;;;;;;;;
(use-package google-translate
  :ensure t
  :custom
  (google-translate-backend-method 'curl)
  :config
   (defun google-translate--search-tkk () "Search TKK." (list 430675 2721866130))
  (bind-keys*
	("C-c t" . google-translate-at-point)
	("C-c T" . google-translate-at-point-reverse))
  )


;;;;;;;;;;;;;;
;; hunspell ;;
;;;;;;;;;;;;;;
(with-eval-after-load "ispell"
  (setenv "LANG" "en_US.UTF-8")
  (setq ispell-program-name "hunspell")
  (setq ispell-dictionary "pt_BR,en_US")
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "pt_BR,en_US")
  (setq ispell-personal-dictionary "~/.hunspell_personal"))

(add-hook 'flyspell-mode-hook 'flyspell-buffer)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;;;;;;;;;;;;;;
;; org-mode ;;
;;;;;;;;;;;;;;
(require 'org-bullets)
(require 'org-download)

(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook (lambda () (auto-revert-mode 1)))
(add-hook 'org-mode-hook (lambda () (toggle-truncate-lines 1)))
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)))

(add-hook 'dired-mode-hook 'org-download-enable)

(defun backward-delete-word (arg)
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

(global-set-key (kbd "C-<backspace>") 'backward-delete-word)
(global-set-key (kbd "C-x C-f") #'helm-find-files)


;; (add-hook 'org-mode-hook
;;	  (lambda ()
;;	  (defun ros ()
;;		(interactive)
;;		(if buffer-file-name
;;		(progn
;;		  (message "Waiting for region selection with mouse...")
;;		  (let ((filename
;;			 (concat "./"
;;				 (file-name-nondirectory buffer-file-name)
;;				 "_"
;;				 (format-time-string "%Y%m%d_%H%M%S")
;;				 ".png")))
;;			(if (executable-find "scrot")
;;			(call-process "scrot" nil nil nil "-s" filename)
;;			  (call-process "screencapture" nil nil nil "-s" filename))
;;			(insert (concat "[[" filename "]]"))
;;			(org-display-inline-images t t)
;;			)
;;		  (message "File created and linked...")
;;		  )
;;		  (message "You're in a not saved buffer! Save it first!")))))

;;;;;;;;;;;;
;; eshell ;;
;;;;;;;;;;;;
(setq shell-command-switch "-ic")

(global-set-key (kbd "C-'") 'eshell-toggle)


(defun my-latex-preview-buffer ()
  "Run `preview-buffer` if in a LaTeX mode buffer."
  (when (eq major-mode 'LaTeX-mode)
	(preview-buffer)))

(add-hook 'after-save-hook 'my-latex-preview-buffer)


;;;;;;;;;;;;;;;;;
;; emacsclient ;;
;;;;;;;;;;;;;;;;;
(if (daemonp)
	(add-hook 'after-make-frame-functions
			  (defun my/theme-init-daemon (frame)
				(with-selected-frame frame
				  (load-theme 'doom-dracula))
				;; Run this hook only once.
				(remove-hook 'after-make-frame-functions
							 #'my/theme-init-daemon)
				(fmakunbound 'my/theme-init-daemon)))
  (load-theme 'doom-dracula))

;(setq browse-url-browser-function 'browse-url-firefox)
(setq browse-url-browser-function 'eww-browse-url)


;;;;;;;;;;;
;; Tramp ;;
;;;;;;;;;;;
(setq tramp-default-method "ssh")

(add-hook
 'c++-mode-hook
 (lambda () (when (file-remote-p default-directory) (company-mode -1))))


;;;;;;;;;;;;;;;;
;; lsp-bridge ;;
;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)

;; (defun local/lsp-bridge-get-single-lang-server-by-project (project-path filepath)
;;   (let* ((json-object-type 'plist)
;;		 (custom-dir (expand-file-name ".cache/lsp-bridge/ruff" user-emacs-directory))
;;		 (custom-config (expand-file-name "ruff.json" custom-dir))
;;		 (default-config (json-read-file (expand-file-name "~/.emacs.d/lsp-bridge/langserver/ruff.json" user-emacs-directory)))
;;		 (settings (plist-get default-config :settings))
;;		 )

;;	(plist-put settings :pythonPath (executable-find "python"))

;;	(make-directory (file-name-directory custom-config) t)

;;	(with-temp-file custom-config
;;	  (insert (json-encode default-config)))

;;	custom-config))

;; (add-hook 'python-mode-hook (lambda () (setq-local lsp-bridge-get-single-lang-server-by-project 'local/lsp-bridge-get-single-lang-server-by-project)))

(add-hook 'pyvenv-post-activate-hooks
		  (lambda ()
			(lsp-bridge-restart-process)))


;;;;;;;;;;;
;; pvenv ;;
;;;;;;;;;;;
(use-package pyvenv
  :ensure t
  :config
  (pyvenv-mode 1))


(setq native-comp-async-report-warnings-errors 'silent)
(add-to-list 'warning-suppress-types '(native-compiler))
