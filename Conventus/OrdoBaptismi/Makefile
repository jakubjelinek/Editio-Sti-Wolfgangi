RUBY_COMMAND = ruby
GREGORIO = gregorio
LUALATEX = lualatex
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
PSALMS = 
include $(PSALMTONES_DIR)/tonus.mk
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
SCORES = litaniae introitus-Sitientes alleluia-DominusInSina communio-OmnesQui \
	 alleluia communio-versus-Confitemini-initium terogamus svatyvaclave \
	 communio-versus-Vox-initium ant-adornathalamum alleluia-SenexPuerum \
	 ant-lumenadrevelationem hym-VeniCreator ant-salveregina-simplex \
	 an_salve_regina ant-dapacemdomine
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(patsubst %,$(TMP_DIR)/communio-versus-Confitemini-%.tex,comb combfr)
ALLCOMBTEXTS = $(patsubst %,$(TMP_DIR)/%-comb.tex,ritusrecipiendi \
		 oratiofidelium oratiofidelium-2 exorcismus celebratio-baptismi \
		 ritus-explanativi conclusio-ritus evangelium evangelium2 evangelium3 \
		 evangelium-initium graduale)
ALLFRCOMBTEXTS = $(patsubst %-comb.tex,%-combfr.tex,$(ALLCOMBTEXTS))
ALLLAPARVULUSTEXTS = $(patsubst %-comb.tex,%-parvulus.tex,$(ALLCOMBTEXTS))
ALLLAPARVULATEXTS = $(patsubst %-comb.tex,%-parvula.tex,$(ALLCOMBTEXTS))
ALLLATEXTS = $(ALLLAPARVULUSTEXTS) $(ALLLAPARVULATEXTS)
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
$(TMP_DIR)/%.gtex: $(i)/%.gabc ; $(SED) -e 's/<sp>\([AVR]\)\/<\/sp>\./<v>\\\1bardot{}<\/v>/g;s/†/ +/g;:d;s/\(([^)'\'']*\)'\''/\1/g;/([^)]*'\''/bd' $$< | $$(if $$(findstring svatyvaclave,$$@),cat,$(SED) -e ':d;s/\(\(^\|)\)[^(j]*\)j/\1i/g;s/\(\(^\|)\)[^(J]*\)J/\1I/g;td') | $(GREGORIO) -s -o $$@
endef
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../PerAnnum
include $(iter)

all: $(patsubst %,ordobaptismi%pdf,. -celebrans. fr. -litaniae.)
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
$(ALLFRCOMBTEXTS): PSSKIP = 0
$(ALLFRCOMBTEXTS): $(TMP_DIR)/%-combfr.tex: %.tex %-fra.tex
	$(GENPSCOMB)
$(ALLLAPARVULUSTEXTS): $(TMP_DIR)/%-parvulus.tex: %.tex
	$(SED) -e 's/pro {\\color{red}N\.}/pro Angelo Benedícto-Ioseph/g;s/{\\color{red}N\.},/Angele Benedícte-Ioseph,/g;s/{\\color{red}N\.}/Angelus Benedíctus-Ioseph/g;s/Ioseph$$/Ioseph./' $< > $@
$(ALLLAPARVULATEXTS): $(TMP_DIR)/%-parvula.tex: %.tex
	$(SED) -e 's/{\\color{red}N\.}/Myrrha Liesse/g;s/Liesse$$/Liesse./' $< > $@
$(TMP_DIR)/communio-versus-Confitemini-comb.tex: $(patsubst %,communio-versus-Confitemini%tex,. -boh.)
	$(GENPSCOMB)
$(TMP_DIR)/communio-versus-Confitemini-combfr.tex: $(patsubst %,communio-versus-Confitemini%tex,. -fra.)
	$(GENPSCOMB)
$(patsubst %,ordobaptismi%pdf,. -celebrans. fr. -litaniae.): %.pdf: %.tex conventuscommune.tex \
	translationes_cs.tex translationes_fr.tex \
	ordobaptismi.jpg siena.jpg ignatius.jpg $(ALLCOMBTEXTS) $(ALLFRCOMBTEXTS) $(ALLLATEXTS) \
	$(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
