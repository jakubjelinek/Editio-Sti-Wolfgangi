RUBY_COMMAND = ruby
GREGORIO = gregorio
LUALATEX = lualatex
LILYPOND = lilypond
SED = sed
AWK = awk
GREP = grep
CAT = cat
CP = cp
TMP_DIR = temporalia
ifneq ($(wildcard $(TMP_DIR)),$(TMP_DIR))
TD := $(shell mkdir $(TMP_DIR))
endif
EDITIO_ROOTDIR = ../..
TOOLS_DIR = $(EDITIO_ROOTDIR)/instrumenta
PSALMS_DIR = $(EDITIO_ROOTDIR)/psalmi/amon33
PSALMTONES_DIR = $(EDITIO_ROOTDIR)/tonipsalmorum/arom12
PSALMTONES_DIR_ps115 = .
PSALMTONES_DIR_ps117 = $(PSALMTONES_DIR)
CZECH_PSALMS_DIR = $(EDITIO_ROOTDIR)/bohemice_psalmi
COMMON_CHANTS_DIR = $(EDITIO_ROOTDIR)/cantuscommunes
PSALM_PREPROCESSOR = $(TOOLS_DIR)/psalmpreprocessor.rb
INITIUM_TOOL = $(TOOLS_DIR)/initiumpsalmi.rb
PSSKIP = 1
GENPSCOMB = $(AWK) -f pscomb.awk -v PSSKIP=$(PSSKIP) -v TRFILE=$(word 2,$^) $< > $@
PSALMS = 115 117
MODUS-115 = ii-D
MODUS-117 = viii-C
include tonus.mk
MODUSLIST = $(sort $(foreach P,$(PSALMS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS)
ALLCOMBPSALMS = $(patsubst $(TMP_DIR)/%-boh.tex,$(TMP_DIR)/%-comb.tex,$(ALLCZPSALMS))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(PSALMS))
LAPSALMSEXTRA = 
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant,1 2 3 4 5 6 7 2p 5p 6p 7p) \
	 $(addprefix hym-,AdoroTe PangeLingua) $(addprefix introitus-,NosAutem NosAutemp) \
	 $(addprefix viii-,kyrie gloria sanctus agnusdei) \
	 $(addprefix offertorium-,UbiCaritas DexteraDomini) \
	 $(addprefix communio-,HocCorpus Calicem) \
	 mysterium-fidei oratio-dominica resp-quia
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
ALLCOMBTEXTS = $(patsubst %,$(TMP_DIR)/%-comb.tex,collecta \
		 praefatio epiclesis post-mysterium liberanos ante-oratiodominica \
		 pax post-communionem)
LILYPONDSCORES = ant-kalich vers-cim graduale-prikazani
#ant-bozemuj vers-posmivaji graduale-kristus ant-otce \
#		 $(addprefix offertorium-kbozicti,1 234 5 678 9)
LILYPONDPDFS = $(patsubst %,$(TMP_DIR)/%.pdf,$(LILYPONDSCORES))
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(4)/$(2)-auto.gabc; \
	     cd ..; $$(if $$(filter .,$(4)),,$(SED) -i -e 's/ (::)/ <sp>A\/<\/sp>.(::)/' $(3))
iter = $(patsubst %,iterator.mk,$(iter-left))
define iter-doit
$(TMP_DIR)/%-initium-$(i)-auto.gabc: %.pslm $(PSALMTONES_DIR)/$(i)-auto.gabc; $(call GENINITIUM,$$<,$(i),$$@,$$(PSALMTONES_DIR_$$*))
endef
iter-left := $(MODUSLIST)
include $(iter)
define iter-doit
$(TMP_DIR)/%.gtex: $(i)/%.gabc ; if $(GREP) -q ^nabc-lines: $$<; then $(SED) -e ':d;s/\(([^).]*\)\./\1/g;/([^)]*\./bd' $$<; else $(CAT) $$<; fi | $(SED) -e 's/<sp>\([AVR]\)\/<\/sp>\./<v>\\\1bardot{}<\/v>/g;s/†/ +/g;:d;s/\(([^)'\'']*\)'\''/\1/g;/([^)]*'\''/bd' | $(SED) -e ':d;s/\(\(^\|)\)[^(j]*\)j/\1i/g;s/\(\(^\|)\)[^(J]*\)J/\1I/g;td' | $(GREGORIO) -s -o $$@
endef
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR)
include $(iter)

all: cenadomini.pdf cenadominischola.pdf
$(LILYPONDPDFS): $(TMP_DIR)/%.pdf: %.ly
	$(LILYPOND) --pdf -o $(patsubst %.pdf,%,$@) $<
$(TMP_DIR)/%.tex: PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS): $(TMP_DIR)/%-boh.tex: %-boh.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: ps%.pslm
	$(GENPSALM)
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(ALLCOMBTEXTS): PSSKIP = 0
$(ALLCOMBTEXTS): $(TMP_DIR)/%-comb.tex: %.tex %-boh.tex
	$(GENPSCOMB)
cenadomini.pdf cenadominischola.pdf: %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	$(LILYPONDPDFS) $(ALLCOMBTEXTS) \
	$(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
