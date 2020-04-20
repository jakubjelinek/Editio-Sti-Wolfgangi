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
CZECH_PSALMS_DIR = $(EDITIO_ROOTDIR)/bohemice_psalmi
COMMON_CHANTS_DIR = $(EDITIO_ROOTDIR)/cantuscommunes
PSALM_PREPROCESSOR = $(TOOLS_DIR)/psalmpreprocessor.rb
INITIUM_TOOL = $(TOOLS_DIR)/initiumpsalmi.rb
PSSKIP = 1
GENPSCOMB = $(AWK) -f pscomb.awk -v PSSKIP=$(PSSKIP) -v TRFILE=$(word 2,$^) $< > $@
PSALMS = 5 13 14 16 34 35 42 50 56 113 114 115 116 128 129 130 131 132 148 149 150
include tonus.mk
MODUS-5-I = vi-F
MODUS-13-I = ii-D
MODUS-14-I = ii-D
MODUS-16-I = ii-D
MODUS-35-I = vi-F
MODUS-50-I = vi-F
MODUS-113-I = i-g2
MODUS-114-I = i-g2
MODUS-115-I = i-g2
MODUS-116-I = i-g2
MODUS-128-I = i-g2
MODUS-148-I = i-a
MODUS-149-I = i-a
MODUS-150-I = i-a
MODUS-isaiae = viii-G
MODUS-magnificat-I = vi-F
MODUS-benedictus-I = viii-G
MODUS-34-II = iv-g
MODUS-42-II = iv-E
MODUS-50-II = iv-E
MODUS-56-II = iv-E
MODUS-129-II = viii-A
MODUS-130-II = viii-A
MODUS-131-II = viii-A
MODUS-132-II = viii-A
MODUS-148-II = v-g
MODUS-149-II = v-g
MODUS-150-II = v-g
MODUS-ezechiae = irreg
MODUS-magnificat-II = viiisoll-C
MODUS-benedictus-II = viii-G
CANTICIS = isaiae ezechiae
NUMS = I II
PSALMSALT = $(foreach V,$(NUMS),$(addsuffix -$(V),$(PSALMS)))
MAGNIFICAT = $(foreach M,$(NUMS),magnificat-$(M))
BENEDICTUS = $(foreach B,$(NUMS),benedictus-$(B))
MODUSLIST = $(sort $(foreach P,$(PSALMSALT) $(MAGNIFICAT) $(CANTICIS) $(BENEDICTUS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat benedictus $(CANTICIS))
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMSALT)) $(MAGNIFICAT) \
						   $(CANTICIS) $(BENEDICTUS))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(PSALMSALT))
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) $(CANTICIS))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
FERIIS = fii fiii fiv fv fvi sabbato
SCORES = $(patsubst %,ant-alleluia-%-laudes-1,$(FERIIS)) \
	 $(patsubst %,ant-alleluia-%-laudes-2,$(FERIIS))  \
	 $(patsubst %,ant-alleluia-%-matutinum,$(FERIIS)) \
	 $(patsubst %,ant-alleluia-%-vesperas,fii fiii fiv fvi) \
	 $(patsubst %,ant-%-tp,cantemusdomino conversusest cunctisdiebus \
			       datemagnitudinem domineaudivi dominusjudicabit) \
	 $(addprefix ant-,surgensjesus paxvobis) \
	 $(addprefix hym-,AuroraLucis AdCoenam RexSempiterne) respbr-laud respbr-vesp \
	 deusinadiutorium-communis \
	 $(foreach M,vi-F i-D,magnificat-initium-$(M)) \
	 capitulum-ChristusResurgens $(addprefix versus-,mane inresurrectione) \
	 oratio supplicatiolitaniae oratiodominica \
	 dominusvobiscum-solemnis domineexaudi \
	 benedicamus-tempore-paschali \
	 dominelabiamea inv-surrexitdominusvere \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem) \
	 $(addprefix resp-,angelusdominidescendit angelusdominilocutus \
			   dumtransisset mariamagdalene surrexitpastor \
			   virtutemagna deoreprudentis surgensjesus \
			   egosumvitisvera) \
	 tedeum-solemnis ezechiae-initium-irreg
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach V,$(NUMS),$(TMP_DIR)/ps$(P)-initium-$(if $(MODUS-$(P)-$(V)),$(MODUS-$(P)-$(V)),ii-D)-auto.gabc)) \
		   $(foreach V,$(NUMS),$(TMP_DIR)/benedictus-initium-$(if $(MODUS-benedictus-$(V)),$(MODUS-benedictus-$(V)),ii-D)-auto.gabc) \
		   $(foreach P,$(CANTICIS),$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
iter = $(patsubst %,iterator.mk,$(iter-left))
define iter-doit
$(TMP_DIR)/%-initium-$(i)-auto.gabc: $(PSALMS_DIR)/%.pslm $(PSALMTONES_DIR)/$(i)-auto.gabc; $(call GENINITIUM,$$<,$(i),$$@)
endef
iter-left := $(MODUSLIST)
include $(iter)
define iter-doit
$(TMP_DIR)/%.gtex: $(i)/%.gabc ; if $(GREP) -q ^nabc-lines: $$<; then $(SED) -e ':d;s/\(([^).]*\)\./\1/g;/([^)]*\./bd' $$<; else $(CAT) $$<; fi | $(SED) -e 's/<sp>\([AVR]\)\/<\/sp>\./<v>\\\1bardot{}<\/v>/g;s/†/ +/g;:d;s/\(([^)'\'']*\)'\''/\1/g;/([^)]*'\''/bd' | $(SED) -e ':d;s/\(\(^\|)\)[^(j]*\)j/\1i/g;s/\(\(^\|)\)[^(J]*\)J/\1I/g;td' | $(GREGORIO) -s -o $$@
endef
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../DominicaInAlbis ../Epiphania/cantus/grom61
include $(iter)
$(TMP_DIR)/%-I.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-II.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-I-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-II-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@

FERIAS = ii iii
all: $(patsubst %,feria%.pdf,$(FERIAS))
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach V,$(NUMS),$(patsubst %,$(TMP_DIR)/%-$(V).tex,ps115 ps148 ps149)): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus $(CANTICIS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(CANTICIS)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(BENEDICTUS)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/benedictus.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(patsubst %,feria%.pdf,$(FERIAS)): \
%.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
