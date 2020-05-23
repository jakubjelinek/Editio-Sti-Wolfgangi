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
PSALMS = 4 8 10 18 20 29 46 62 90 92 96 98 99 102 109 110 111 112 133 148 149 150
include tonus.mk
MODUS-4 = viii-G
MODUS-8 = iv-A_
MODUS-10 = viii-C
MODUS-18 = iv-A_
MODUS-20 = iv-A_
MODUS-29 = viii-G
MODUS-46 = iv-A_
MODUS-62 = iv-A_
MODUS-90 = viii-G
MODUS-92 = vii-a
MODUS-96 = vi-F
MODUS-98 = vi-F
MODUS-99 = viii-G2
MODUS-102 = vi-F
MODUS-109 = vii-a
MODUS-110 = viii-G2
MODUS-111 = iv-A_
MODUS-112 = viii-G
MODUS-133 = viii-G
MODUS-148 = viii-G
MODUS-149 = viii-G
MODUS-150 = viii-G
MODUS-dan3 = viii-G2
MODUS-nuncdimittis = iii-a
MODUS-magnificat-I = visoll-F
MODUS-magnificat-II = iisoll-D
MODUS-magnificat-III = viiisoll-G
MODUS-benedictus-I = viisoll-a
MODUS-benedictus-III = viiisoll-G
MAGNIFICAT = $(foreach M,I II III,magnificat-$(M))
BENEDICTUS = $(foreach B,I II,benedictus-$(B))
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(MAGNIFICAT) dan3 nuncdimittis $(BENEDICTUS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat dan3 nuncdimittis)
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMS)) $(MAGNIFICAT) $(BENEDICTUS) dan3 nuncdimittis)
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --flex-underline --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(PSALMS))
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) dan3 nuncdimittis)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,ascenditdeus ascendoadpatrem asummocoeloegressioejus \
			  cumqueintuerentur cumveneritparaclitus dominusincoelo \
			  dominusinsion dominusintemplosanctosuo \
			  elevataestmagnificentiatua elevatismanibus exaltabotedomine \
			  exaltaredomine exaltateregemregum exiviapatre \
			  haeclocutussumvobis ipseenimpater nimisexaltatusest \
			  oportebatpatichristum orexgloriae patermanifestavi \
			  patervenithora petiteetaccipietisquaerite \
			  videntibusillis virigalilaeiquidaspicitis \
			  alleluia-compl salvanos-antiquo-tp) \
	 $(addprefix hym-,AEterneRexAltissime JesuNostraRedemptio TeLucis) \
	 $(addprefix resp-,ascendenschristusinaltum ascendenschristusinaltum-simplex \
			   ascenditdeus inmanus-tp) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(foreach M,visoll-F iisoll-D viiisoll-G,magnificat-initium-$(M)) \
	 $(addprefix capitulum-,PrimumQuidem CarissimiEstote tuautem) \
	 $(addprefix versus-,ascenditdeus dominusincaelo custodi gaude \
			     ascenditdeus-communis dominusincaelo-communis) \
	 oratio oratio2 supplicatiolitaniae oratiodominica \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 benedicamus-tempore-paschali benedicamus-minor \
	 dominelabiamea inv-alleluiachristumdominum \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem) \
	 $(addprefix resp-,egorogabopatrem-sinedox exaltaredomine-cumdox \
			   ponitnubem-cumdox omnispulchritudodomini-sinedox \
			   ascendensinaltum-cumdox nonconturbetur-sinedox \
			   tempusest-sinedox postpassionemsuam-sinedox \
			   sienimnonabiero-cumdox) \
	 tedeum-solemnis an_regina_caeli_simplex convertenosdeus \
	 jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 benedictio-noctemquietam
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(foreach B,viisoll-a viiisoll-G,$(TMP_DIR)/benedictus-initium-$(B)-auto.gtex)
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3 nuncdimittis,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes
include $(iter)

PDF = ascensionedomini.pdf $(patsubst %,feria%-oa.pdf,ii iii iv v vi) sabbato-oa.pdf dominicainfraoctavamascensionis.pdf
all: $(PDF)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(BENEDICTUS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/benedictus.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/nuncdimittis-boh.tex $(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,dan3 nuncdimittis): \
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
$(PDF): %.pdf: %.tex ascensione.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
