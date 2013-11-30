(defun smart-kill-line ()
  "Kill whole line if only spaces are between the beginnning of line and point, indent the line and set the point to the line beginning position for the ease of kill again. Otherwise kill-line."
  (interactive "^")
  (setq ctr-spaces-skipped (skip-chars-backward " "))
  (if (= (line-beginning-position) (point))
      (progn
        (kill-whole-line)
        (beginning-of-line))
    (progn
      (kill-line)
      (insert-char ?  (- ctr-spaces-skipped)))))
