(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers")
   dotspacemacs-configuration-layers
   '(
     ansible
     asm
     auto-completion
     c-c++
     chrome
     colors
     common-lisp
     cscope
     csharp
     csv
     deft
     django
     docker
     elfeed
     emacs-lisp
     fasd
     finance
     floobits
     games
     git
     github
     go
     gtags
     helm
     html
     imenu-list
     java
     javascript
     lua
     markdown
     nginx
     org
     pandoc
     php
     plantuml
     prodigy
     python
     ranger
     react
     restclient
     ruby
     ruby-on-rails
     search-engine
     semantic
     shell
     shell-scripts
     speed-reading
     spell-checking
     sql
     syntax-checking
     systemd
     terraform
     themes-megapack
     twitter
     typescript
     typography
     version-control
     wakatime
     windows-scripts
     yaml
     ycmd
     )
   dotspacemacs-additional-packages
   '(
     add-node-modules-path
     editorconfig
     prettier-js
     xclip
     nhexl-mode
     )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner '000
   dotspacemacs-startup-lists
   '(
     (recents . 5)
     (projects . 7)
     )
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes
   '(
     spacemacs-dark
     spacemacs-light
     )
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font
   '(
     "Source Code Pro"
     :size 13
     :weight normal
     :width normal
     :powerline-scale 1.1
     )
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  (setq exec-path-from-shell-arguments '("-l")))
(defun dotspacemacs/user-config ()
  (setq recentf-save-file (format "/tmp/recentf.%s" (emacs-pid)))
  (editorconfig-mode 1)
  (add-to-list 'auto-mode-alist '("\\.dat\\'" . ledger-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . rjsx-mode))
  (add-hook 'json-mode-hook 'prettier-js-mode)
  (add-hook 'typescript-mode-hook 'prettier-js-mode)
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  ;; (eval-after-load 'typescript-mode
  ;;   '(add-hook 'typescript-mode-hook #'add-node-modules-path))
  ;; (eval-after-load 'rjsx-mode
  ;;   '(add-hook 'rjsx-mode-hook #'add-node-modules-path))
  ;; (eval-after-load 'javascript-mode
  ;;   '(add-hook 'javascript-mode-hook #'add-node-modules-path))
  (xclip-mode 1)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("62408b3adcd05f887b6357e5bd9221652984a389e9b015f87bbc596aba62ba48" "4e63466756c7dbd78b49ce86f5f0954b92bf70b30c01c494b37c586639fa3f6f" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (jinja2-mode company-ansible ansible-doc ansible nhexl-mode treepy graphql yapfify yaml-mode x86-lookup web-mode web-beautify typo typit mmt tide typescript-mode thrift tagedit sudoku stickyfunc-enhance stan-mode srefactor sql-indent slime-company slime slim-mode scss-mode scad-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv qml-mode pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails rake inflections powershell pony-mode plantuml-mode pip-requirements phpunit phpcbf php-extras php-auto-yasnippets pacmacs org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download omnisharp shut-up nasm-mode mmm-mode minitest matlab-mode markdown-toc lua-mode livid-mode skewer-mode live-py-mode less-css-mode julia-mode js2-refactor multiple-cursors js2-mode js-doc insert-shebang hy-mode htmlize helm-pydoc helm-css-scss helm-company helm-c-yasnippet haml-mode go-guru go-eldoc gnuplot markdown-mode gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck fish-mode feature-mode emmet-mode simple-httpd drupal-mode php-mode json-mode json-snatcher json-reformat disaster cython-mode csv-mode csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-go go-mode company-emacs-eclim eclim company-c-headers company-anaconda company common-lisp-snippets coffee-mode cmake-mode clang-format chruby bundler inf-ruby auto-yasnippet yasnippet auto-dictionary arduino-mode anaconda-mode pythonic ac-ispell auto-complete 2048-game add-node-modules-path xclip rjsx-mode prettier-js editorconfig xterm-color wakatime-mode twittering-mode terraform-mode hcl-mode systemd spray shell-pop restclient-helm ranger prodigy pdf-tools pandoc-mode ox-pandoc ob-restclient ob-http nginx-mode multi-term ledger-mode imenu-list gmail-message-mode ham-mode html-to-markdown flymd flycheck-ycmd flycheck-ledger fasd eshell-z eshell-prompt-extras esh-help engine-mode elfeed-web elfeed-org elfeed-goodies ace-jump-mode noflet elfeed edit-server dockerfile-mode docker tablist docker-tramp deft company-ycmd ycmd request-deferred deferred company-restclient restclient know-your-http-well zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme swift-mode sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle seti-theme reverse-theme rebecca-theme rainbow-mode rainbow-identifiers railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme orgit organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme nlinum-relative nlinum naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme helm-gtags helm-gitignore helm-cscope xcscope hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht ggtags gandalf-theme floobits flatui-theme flatland-theme farmhouse-theme exotica-theme evil-magit magit magit-popup git-commit ghub let-alist with-editor espresso-theme dracula-theme django-theme diff-hl darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(wakatime-cli-path "/usr/local/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d9aa334b2011d57c8ce279e076d6884c951e82ebc347adbe8b7ac03c4b2f3d72" "7f9dc0c7bc8e5b4a1b9904359ee449cac91fd89dde6aca7a45e4ed2e4985664c" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" "7824eb15543c5c57c232c131ca64c4f25bfeeeda6744f71b999787a9172fa74e" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "89536596ee5bdc5ef9ea3d3d5b515ea616285fa9274c836263024f1993f6b3dd" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "b44f201f67425ece29e34972be12917189cac2bac90e3e35d3160bce211d3199" "a77ced882e25028e994d168a612c763a4feb8c4ab67c5ff48688654d0264370c" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "d74fe1508cff43708fa2f97c4bf58d19f0e002b2e0c92bf958bf483113b7d89d" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "8a97050c9dd0af1cd8c3290b061f4b6032ccf2044ddc4d3c2c39e516239b2463" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "713f898dd8c881c139b62cf05b7ac476d05735825d49006255c0a31f9a4f46ab" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "6124d0d4205ae5ab279b35ac6bc6a180fbb5ca594616e1e9a22097024c0a8a99" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "62408b3adcd05f887b6357e5bd9221652984a389e9b015f87bbc596aba62ba48" "4e63466756c7dbd78b49ce86f5f0954b92bf70b30c01c494b37c586639fa3f6f" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (jinja2-mode company-ansible ansible-doc ansible nhexl-mode treepy graphql yapfify yaml-mode x86-lookup web-mode web-beautify typo typit mmt tide typescript-mode thrift tagedit sudoku stickyfunc-enhance stan-mode srefactor sql-indent slime-company slime slim-mode scss-mode scad-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv qml-mode pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails rake inflections powershell pony-mode plantuml-mode pip-requirements phpunit phpcbf php-extras php-auto-yasnippets pacmacs org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download omnisharp shut-up nasm-mode mmm-mode minitest matlab-mode markdown-toc lua-mode livid-mode skewer-mode live-py-mode less-css-mode julia-mode js2-refactor multiple-cursors js2-mode js-doc insert-shebang hy-mode htmlize helm-pydoc helm-css-scss helm-company helm-c-yasnippet haml-mode go-guru go-eldoc gnuplot markdown-mode gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck fish-mode feature-mode emmet-mode simple-httpd drupal-mode php-mode json-mode json-snatcher json-reformat disaster cython-mode csv-mode csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-go go-mode company-emacs-eclim eclim company-c-headers company-anaconda company common-lisp-snippets coffee-mode cmake-mode clang-format chruby bundler inf-ruby auto-yasnippet yasnippet auto-dictionary arduino-mode anaconda-mode pythonic ac-ispell auto-complete 2048-game add-node-modules-path xclip rjsx-mode prettier-js editorconfig xterm-color wakatime-mode twittering-mode terraform-mode hcl-mode systemd spray shell-pop restclient-helm ranger prodigy pdf-tools pandoc-mode ox-pandoc ob-restclient ob-http nginx-mode multi-term ledger-mode imenu-list gmail-message-mode ham-mode html-to-markdown flymd flycheck-ycmd flycheck-ledger fasd eshell-z eshell-prompt-extras esh-help engine-mode elfeed-web elfeed-org elfeed-goodies ace-jump-mode noflet elfeed edit-server dockerfile-mode docker tablist docker-tramp deft company-ycmd ycmd request-deferred deferred company-restclient restclient know-your-http-well zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme swift-mode sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle seti-theme reverse-theme rebecca-theme rainbow-mode rainbow-identifiers railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme orgit organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme nlinum-relative nlinum naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme helm-gtags helm-gitignore helm-cscope xcscope hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht ggtags gandalf-theme floobits flatui-theme flatland-theme farmhouse-theme exotica-theme evil-magit magit magit-popup git-commit ghub let-alist with-editor espresso-theme dracula-theme django-theme diff-hl darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(wakatime-cli-path "/usr/local/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
