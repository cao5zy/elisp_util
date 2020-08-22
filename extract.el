(defun do-extract(content pattern)
  (string-match pattern content)
  (match-string 1 content)
  )

(defun extract(pattern)
  (interactive "sRegex Pattern to extract")
  (let ((all_content (buffer-substring-no-properties (point-min) (point-max))))
    (setq lines (split-string all_content "\n"))
    (setq xbuff (generate-new-buffer "*extract-output*"))

    (with-output-to-temp-buffer xbuff

      (while (> (length lines) 0)
        (setq line (car lines))
        (setq target (do-extract line pattern))
        (if (not (eq nil target)) (print target))
        (setq lines (cdr lines))
        );; while
      );; buffer
    );; let
  );;extract
    

(provide 'extract)
