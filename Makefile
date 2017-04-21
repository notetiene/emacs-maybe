PREFIX := /usr/local

.PHONY: all
all:
@echo "Nothing to be done. Type:\n make install"

.PHONY: install
install:
	@cp emacs_maybe.sh $(PREFIX)/bin/
	@chmod +x $(PREFIX)/bin/emacs_maybe.sh
	@echo "emacs_maybe.sh: file copied"
	@cp emacs.desktop $(PREFIX)/share/applications
	@chmod +x $(PREFIX)/share/applications/emacs.desktop
	@echo "emacs.desktop: file copied"

.PHONY: uninstall
uninstall:
	@rm $(PREFIX)/bin/emacs_maybe.sh
	@echo "emacs_maybe.sh: file removed"
	@rm $(PREFIX)/share/applications/emacs.desktop
	@echo "emacs.desktop: file removed"



