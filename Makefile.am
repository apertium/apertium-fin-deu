###############################################################################
## Makefile for Finnish--German
###############################################################################

LANG1=fin
LANG2=deu
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON = \
	$(PREFIX1).automorf.hfst \
	$(PREFIX1).rlx.bin \
	$(PREFIX1).autobil.bin \
	$(PREFIX1).autolex.bin \
	$(PREFIX1).autogen.bin \
	$(PREFIX1).t1x.bin \
	$(PREFIX1).t2x.bin \
	$(PREFIX1).t3x.bin \
	$(PREFIX2).automorf.bin $(PREFIX2).automorf-untrimmed.bin \
	$(PREFIX2).rlx.bin \
	$(PREFIX2).prep.cg3.bin \
	$(PREFIX2).autobil.bin \
	$(PREFIX2).autolex.bin \
	$(PREFIX2).autogen.hfst \
	$(PREFIX2).t1x.bin \
	$(PREFIX2).t2x.bin \
	$(PREFIX2).t3x.bin
if CAN_LSX
TARGETS_COMMON+=$(PREFIX2).autosep.bin
endif


# This include defines goals for install-modes, .deps/.d and .mode files:
@ap_include@

###############################################################################
## Monolingual transducers
###############################################################################

# -------------------
# Finnish analysis:
# -------------------

$(PREFIX1).automorf.hfst: $(AP_SRC1)/$(LANG1).automorf.hfst
	cp -v $< $@

# -------------------
# Finnish generation:
# ---------------------


$(PREFIX2).autogen.hfst: $(AP_SRC1)/$(LANG1).autogen.hfst
	cp -v $< $@

# -------------------
# German analysis:
# -------------------

$(PREFIX2).automorf.bin: $(AP_SRC2)/$(LANG2).automorf.bin $(PREFIX2).autobil.bin
	lt-trim $^ $@

$(PREFIX2).automorf-untrimmed.bin: $(AP_SRC2)/$(LANG2).automorf.bin
	cp -v $< $@

# -------------------
# German generation:
# ---------------------


$(PREFIX1).autogen.bin: $(AP_SRC2)/$(LANG2).autogen.bin
	cp $< $@

###############################################################################
## Tagger models
###############################################################################

$(PREFIX1).prob: $(AP_SRC1)/$(LANG1).prob
	cp $< $@

$(PREFIX2).prob: $(AP_SRC2)/$(LANG2).prob
	cp $< $@

###############################################################################
## Disambiguation rules
###############################################################################

$(PREFIX1).rlx.bin: $(AP_SRC1)/$(LANG1).rlx.bin
	cp -v $< $@

$(PREFIX2).rlx.bin: $(AP_SRC2)/apertium-$(LANG2).$(LANG2).rlx
	cg-comp $< $@

$(PREFIX2).prep.cg3.bin: apertium-$(LANG1)-$(LANG2).$(LANG2)-$(LANG1).prep.cg3
	cg-comp $< $@

###############################################################################
## Bilingual dictionaries
###############################################################################

$(PREFIX1).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $<
	lt-comp lr $< $@

$(PREFIX2).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $<
	lt-comp rl $< $@

###############################################################################
## Lexical selection rules
###############################################################################

$(PREFIX1).autolex.bin: $(BASENAME).$(PREFIX1).lrx
	lrx-comp $< $@

$(PREFIX2).autolex.bin: $(BASENAME).$(PREFIX2).lrx
	lrx-comp $< $@

###
## Separable!
###

$(PREFIX2).autosep.bin: $(BASENAME).$(PREFIX2).lsx
	$(LSXCOMP) lr $< $@

###############################################################################
## Structural transfer rules
###############################################################################

$(PREFIX1).t1x.bin: $(BASENAME).$(PREFIX1).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX1).t2x.bin: $(BASENAME).$(PREFIX1).t2x
	apertium-validate-interchunk $<
	apertium-preprocess-transfer $< $@

$(PREFIX1).t3x.bin: $(BASENAME).$(PREFIX1).t3x
	apertium-validate-postchunk $<
	apertium-preprocess-transfer $< $@


$(PREFIX2).t1x.bin: $(BASENAME).$(PREFIX2).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX2).t2x.bin: $(BASENAME).$(PREFIX2).t2x
	apertium-validate-interchunk $<
	apertium-preprocess-transfer $< $@

$(PREFIX2).t3x.bin: $(BASENAME).$(PREFIX2).t3x
	apertium-validate-postchunk $<
	apertium-preprocess-transfer $< $@

###############################################################################
## Postgeneration dictionaries
###############################################################################

$(PREFIX1).autopgen.bin: $(AP_SRC2)/$(LANG2).autopgen.bin
	cp $< $@

$(PREFIX2).autopgen.bin: $(AP_SRC1)/$(LANG1).autopgen.bin
	cp $< $@

###############################################################################
## Distribution
###############################################################################

EXTRA_DIST= \
		$(BASENAME).$(PREFIX1).lrx \
		$(BASENAME).$(PREFIX1).dix \
		$(BASENAME).$(PREFIX2).lsx \
		$(BASENAME).$(PREFIX2).lrx \
		$(BASENAME).$(PREFIX1).t1x \
		$(BASENAME).$(PREFIX1).t2x \
		$(BASENAME).$(PREFIX1).t3x \
		$(BASENAME).$(PREFIX2).t1x \
		$(BASENAME).$(PREFIX2).t2x \
		$(BASENAME).$(PREFIX2).t3x \
		$(BASENAME).$(PREFIX2).prep.cg3 \
		t/config.sh.in \
		modes.xml

###############################################################################
## Installation
###############################################################################

apertium_fin_deudir=$(prefix)/share/apertium/$(BASENAME)/

# Files which should be installed to $(prefix)/share/apertium/$(BASENAME)/:
apertium_fin_deu_DATA= \
	$(TARGETS_COMMON) \
	$(BASENAME).$(PREFIX1).t1x \
	$(BASENAME).$(PREFIX1).t2x \
	$(BASENAME).$(PREFIX1).t3x \
	$(BASENAME).$(PREFIX2).t1x \
	$(BASENAME).$(PREFIX2).t2x \
	$(BASENAME).$(PREFIX2).t3x

apertium_fin_deu_modesdir=$(prefix)/share/apertium/modes/
apertium_fin_deu_modes_DATA=modes/$(PREFIX1).mode \
							modes/$(PREFIX2).mode

###############################################################################
## Cleanup
###############################################################################

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes *.mode

###############################################################################
## Test
###############################################################################

test: all
	echo "talo" | apertium -f line -d . fin-deu | tee .test-mt
	@echo "Haus" > .test-ref
	@diff .test-ref .test-mt
	echo "Haus" | apertium -f line -d . deu-fin | tee .test-mt
	@echo "talo" > .test-ref
	@diff .test-ref .test-mt
	@rm .test-ref .test-mt

# Slow but near-complete test of dictionary consistency:
test-gen-fin-deu: all
	! dev/testvoc/generation.sh --hfst fin-deu

test-gen-deu-fin: all
	! dev/testvoc/generation.sh deu-fin

test-voc: test-gen-fin-deu \
	      test-gen-deu-fin

