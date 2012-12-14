(defun smart-kill-line ()
  "Kill line include the newline if currently at beginning of line. Otherwise kill-line."
  (interactive "^")
  (if (= (line-beginning-position) (point))
      (kill-whole-line)
    (kill-line)))
