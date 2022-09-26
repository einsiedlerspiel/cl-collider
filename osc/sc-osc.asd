(asdf/defsystem:defsystem :sc-osc
  :serial t
  :depends-on (#:osc #:alexandria #:ieee-floats #:bordeaux-threads #:usocket
		     #+lispworks #:cffi
		     #+sbcl #:sb-bsd-sockets)
  :components ((:file "package")
	       (:file "osc")
	       (:file "transmit")
	       #+ecl (:file "ecl-extension")
	       #+lispworks (:file "lw-extension")))
