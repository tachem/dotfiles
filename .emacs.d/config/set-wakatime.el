(when (require 'wakatime-mode nil t)
  (setq wakatime-api-key "d7e6a13a-0996-44b4-8e52-8ee6fff9cc20")
  (setq wakatime-cli-path "~/.pyenv/versions/2.7.10/lib/python2.7/site-packages/wakatime/cli.py")
  (global-wakatime-mode)
  )

(provide 'set-wakatime)
