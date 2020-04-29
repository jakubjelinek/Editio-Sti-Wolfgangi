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
PSALMS = 5 13 14 16 17i 17ii 17iii 19 20 29 34i 34ii 34iii 35 36i 36ii 36iii 37i 37ii 38 42 44i 44ii 45 47 48i 48ii 49i 49ii 50 56 61 63 64 65i 65ii 67i 67ii 67iii 68i 68ii 68iii 75 77i 77ii 77iii 87 89 91 113 114 115 116 128 129 130 131 132 134 135 136 137 138i 138ii 139 140 141 143i 143ii 144i 148 149 150
include tonus.mk
MODUS-5-I = vi-F
MODUS-13-I = ii-D
MODUS-14-I = ii-D
MODUS-16-I = ii-D
MODUS-17i-I = ii-D
MODUS-17ii-I = ii-D
MODUS-17iii-I = ii-D
MODUS-19-I = ii-D
MODUS-20-I = ii-D
MODUS-29-I = ii-D
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
MODUS-benedictus-I = viii-G
MODUS-magnificat-I = vi-F
MODUS-34i-II = iv-g
MODUS-34ii-II = iv-g
MODUS-34iii-II = iv-g
MODUS-36i-II = iv-g
MODUS-36ii-II = iv-g
MODUS-36iii-II = iv-g
MODUS-37i-II = iv-g
MODUS-37ii-II = iv-g
MODUS-38-II = iv-g
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
MODUS-benedictus-II = vii-c
MODUS-magnificat-II = viii-G2
MODUS-44i-III = i-g
MODUS-44ii-III = i-g
MODUS-45-III = i-g
MODUS-47-III = i-g
MODUS-48i-III = i-g
MODUS-48ii-III = i-g
MODUS-49i-III = i-g
MODUS-49ii-III = i-g
MODUS-50-III = vii-a
MODUS-63-III = vii-a
MODUS-64-III = vii-a
MODUS-148-III = ii-D
MODUS-149-III = ii-D
MODUS-150-III = ii-D
MODUS-134-III = iii-g
MODUS-135-III = iii-g
MODUS-136-III = iii-g
MODUS-137-III = iii-g
MODUS-anna = i-g2
MODUS-benedictus-III = vi-F
MODUS-magnificat-III = viii-G
MODUS-50-IV = viii-G2
MODUS-61-IV = iv-E
MODUS-65i-IV = iv-E
MODUS-65ii-IV = iv-E
MODUS-67i-IV = iv-E
MODUS-67ii-IV = iv-E
MODUS-67iii-IV = iv-E
MODUS-68i-IV = iv-E
MODUS-68ii-IV = iv-E
MODUS-68iii-IV = iv-E
MODUS-87-IV = viii-G2
MODUS-89-IV = viii-G2
MODUS-138i-IV = iii-g
MODUS-138ii-IV = iii-g
MODUS-139-IV = iii-g
MODUS-140-IV = iii-g
MODUS-148-IV = vi-F
MODUS-149-IV = vi-F
MODUS-150-IV = vi-F
MODUS-moysis = irreg
MODUS-benedictus-IV = viii-G2
MODUS-magnificat-IV = viii-G2
MODUS-50-V = i-a2
MODUS-75-V = i-a2
MODUS-91-V = i-a2
MODUS-141-V = viii-A
MODUS-143i-V = viii-A
MODUS-143ii-V = viii-A
MODUS-144i-V = viii-A
MODUS-148-V = i-f
MODUS-149-V = i-f
MODUS-150-V = i-f
MODUS-77i-V = vii-a
MODUS-77ii-V = vii-a
MODUS-77iii-V = vii-a
MODUS-habacuc = iv-E
MODUS-benedictus-V = i-f
MODUS-magnificat-V = i-D
MODUS-50-VI = i-g
CANTICIS = isaiae ezechiae anna moysis habacuc
MODUS-benedictus-VII = vi-F
MODUS-magnificat-VII = iii-a
MODUS-benedictus-VIII = iv-E
MODUS-magnificat-VIII = v-g
MODUS-benedictus-IX = i-g
MODUS-magnificat-IX = viii-G
NUMSI = I II III IV V VI
NUMSII = I II III IV V VII VIII IX
PSALMSALT = $(foreach V,$(NUMSI),$(addsuffix -$(V),$(PSALMS)))
MAGNIFICAT = $(foreach M,$(NUMSII),magnificat-$(M))
BENEDICTUS = $(foreach B,$(NUMSII),benedictus-$(B))
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
LAPSALMOPTS_COMMON = --accents-style bold --flex-underline --skip-verses 1
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
	 $(addprefix ant-,surgensjesus paxvobis praecedamvos mittemanum \
			  egosumvitis quiavidistime ardensestcormeum misidigitummeum \
			  veneruntadmonumentum reginacaelilaetarealleluia \
			  euntesinmundumalleluia pastorbonus euntesinmundumdocete \
			  mercenariusest itenuntiate sicutnovitme \
			  tusolusperegrinus aliasoveshabeo) \
	 $(addprefix hym-,AuroraLucis AdCoenam RexSempiterne AveMarisStella) \
	 respbr-laud respbr-vesp deusinadiutorium-communis \
	 $(foreach M,vi-F viii-G2 viii-G i-D iii-a v-g,magnificat-initium-$(M)) \
	 capitulum-ChristusResurgens $(addprefix versus-,mane inresurrectione) \
	 oratio oratio2 supplicatiolitaniae oratiodominica \
	 dominusvobiscum-solemnis domineexaudi \
	 benedicamus-tempore-paschali \
	 dominelabiamea inv-surrexitdominusvere \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem ille \
					evangelica divinum adsocietatem) \
	 $(addprefix resp-,angelusdominidescendit angelusdominilocutus \
			   dumtransisset mariamagdalene surrexitpastor \
			   virtutemagna deoreprudentis surgensjesus \
			   egosumvitisvera christusresurgens) \
	 tedeum-solemnis ezechiae-initium-irreg moysis-initium-irreg \
	 habacuc-initium-iv-E
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach V,$(NUMSI),$(TMP_DIR)/ps$(P)-initium-$(if $(MODUS-$(P)-$(V)),$(MODUS-$(P)-$(V)),ii-D)-auto.gabc)) \
		   $(foreach V,$(NUMSII),$(TMP_DIR)/benedictus-initium-$(if $(MODUS-benedictus-$(V)),$(MODUS-benedictus-$(V)),ii-D)-auto.gabc) \
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../DominicaInAlbis ../Epiphania/cantus/grom61 ../InNativitateBMV/cantus/amon33
include $(iter)
$(TMP_DIR)/%-I.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-II.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-III.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-IV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-V.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-IX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-I-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-II-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-III-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-IV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-V-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-IX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@

FERIAE = ii iii iv v vi
HEBDOMADAE = i ii
PDF = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
all: $(PDF)
define iter-doit
$(patsubst %.pdf,%.tex,$(i)): feria$(word 1,$(subst -, ,$(patsubst feria%.pdf,%,$(i)))).tex hebdomada$(word 2,$(subst -, ,$(patsubst feria%.pdf,%,$(i)))).tex ; touch $$@
endef
iter-left := $(PDF)
include $(iter)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach V,$(NUMSI),$(patsubst %,$(TMP_DIR)/%-$(V).tex,ps115 ps148 ps149)): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus $(CANTICIS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
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
$(PDF): %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
