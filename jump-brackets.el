(defun jump-brackets (&optional ascend-mode)
  "Jump to the corresponding (open/close) bracket if at a close/open bracket,
   otherwise to nearest open bracket on the same level in terms of brackets."
  (interactive "^p")
  (or ascend-mode (setq ascend-mode 1))
  (let (c open)
    (setq c (following-char))
    (cond ((member c '(?\( ?[ ?()) (goto-char (or (- scan-lists (point) 1 0) ascend-mode) (buffer-end 1))))
           (t (goto-char (or (scan-lists (point) -1 1) (buffer-end -1))))))))
