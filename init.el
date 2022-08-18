(setq current-language-environment "UTF-8")

					;Hide startup message
(setq inhibit-startup-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(org))
 '(initial-frame-alist '((fullscreen . maximized)))
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(defun load-directory (directory)
  "Load recursively all `.el' files in DIRECTORY."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
           (fullpath (concat directory "/" path))
           (isdir (car (cdr element)))
           (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir t) (not ignore-dir))
        (load-directory fullpath))
       ((and (eq isdir nil) (string= (substring path -3) ".el"))
        (load (file-name-sans-extension fullpath)))))))

(load-directory "~/.emacs.d/config")

(load-file "~/.emacs.d/scimax/init.el")

(setq scimax-dir "~/.emacs.d/scimax")

(add-to-list 'load-path "~/.emacs.d/scimax")

					;Set Personnel Information
(setq user-full-name "Vincent Montero")
(setq user-mail-address "vincent_montero@icloud.com")
(setq calendar-latitude 43.17)
(setq calendar-longitude 5.22)
(setq calendar-location-name "Marseille, France")
