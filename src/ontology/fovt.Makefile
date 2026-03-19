## Customize Makefile settings for fovt
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

# Definition
#redefinition of ANNOTATE_CONVERT_FILE from the Makefile
ANNOTATE_CONVERT_FILE = annotate --ontology-iri $(ONTBASE)/$@ --annotation owl:versionInfo $(VERSION) convert -f ofn --output $@.tmp.owl && mv $@.tmp.owl $@

# Special cases
imports/oba_import.owl: mirror/oba.owl imports/oba_terms_combined.txt
	@if [ $(IMP) = true ]; then $(ROBOT) extract -i $< -T imports/oba_terms_combined.txt --force true --method BOT \
		remove --term UBERON:0005156 --axioms EquivalentClasses \
		query --update ../sparql/inject-subset-declaration.ru \
		$(ANNOTATE_CONVERT_FILE); fi

.PRECIOUS: imports/oba_import.owl

imports/pato_import.owl: mirror/pato.owl imports/pato_terms.txt
	@if [ $(IMP) = true ]; then \
		$(ROBOT) extract --method BOT \
		    	-i $< \
				-T imports/pato_terms.txt \
			remove \
				--term UBERON:0000379 \
			$(ANNOTATE_CONVERT_FILE); fi
.PRECIOUS: imports/pato_import.owl