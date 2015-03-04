;;; setup-ert-tests.el --- Provide needed forms

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(setq py-install-directory default-directory)
(sit-for 0.1 t) 


;; (require 'python-mode)

(defvar py-debug-p nil
  "Avoid error")

(defmacro gc-test-with-temp-buffer (contents &rest body)
  "Create temp buffer inserting CONTENTS.
BODY is code to be executed within the temp buffer.  Point is
 at the end of buffer."
  (declare (indent 2) (debug t))
  `(with-temp-buffer
     (let (hs-minor-mode)
       (insert ,contents)
       ;; (message "ERT %s" (point))
       ,@body)))

(provide 'setup-ert-tests)
;; setup-ert-tests.el ends here
