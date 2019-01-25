# $Id: makefile.ins,v 1.1 2003-03-04 12:08:44 marquet Exp $
#------------------------------------------------------------

PAGES = index 
MEDIAS = 
CSSS = phm.css 

# config 
CSS = -c $(CSSS)

.PHONY : docs notes pages todo 
pages : $(addsuffix .html,$(PAGES)) 

# page web
%.html : %.md
	pandoc $(CSS) -s $< -o $@

# install -> build -> mirroir serveur web 
.PHONY : install 
install : $(addsuffix .html,$(PAGES))
	@echo git push to github.io to install ! 

# misc
.PHONY : clean realclean mrproper
clean :
realclean mrproper : clean




