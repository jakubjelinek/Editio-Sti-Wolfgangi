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
PSALMS = 1 4 15 19 22 41 42 62 80 83 90 92 99 109 110 115 127 133 147 148 149 150
include tonus.mk
MODUS-1 = i-D_
MODUS-4 = viii-G
MODUS-15 = iii-a3
MODUS-19 = iv-E
MODUS-22 = v-a
MODUS-41 = vi-F
MODUS-42 = vii-a
MODUS-62 = iii-a
MODUS-80 = viii-G
MODUS-83 = vi-F
MODUS-90 = viii-G
MODUS-92 = i-a2
MODUS-99 = ii-D
MODUS-109 = i-f
MODUS-110 = ii-D
MODUS-115 = iii-a
MODUS-127 = iv-E
MODUS-133 = viii-G
MODUS-147 = v-g
MODUS-148 = v-a
MODUS-149 = v-a
MODUS-150 = v-a
MODUS-dan3 = iv-E
MODUS-nuncdimittis = iii-a
MODUS-magnificat-I = visoll-F
MODUS-magnificat-II = vsoll-a
MODUS-magnificat-III = viiisoll-G
MODUS-benedictus-I = isoll-a2
MODUS-benedictus-II = viiisoll-G
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
			  salvanos-antiquo \
			  angelorumesca calicemsalutaris egosumpanis egosumpanisvivus \
			  homoquidam miseratordominus oquamsuavisest osacrumconvivium \
			  pinguisest puersamuelministrabat quipacem sacerdosinaeternum \
			  sacerdotessancti sapientiaaedificavit sicutnovellae vincentidabo \
			  miserere salveregina-simplex subtuum \
			  afructufrumenti communionecalicis fructumsalutiferum \
			  cibavitnos-FKP exaltari-FKP introibo-FKP invoceexsultationis-FKP \
			  memorsit-FKP paraturnobis-FKP) \
	 $(addprefix hym-,AEterneRexAltissime JesuNostraRedemptio \
			  PangeLingua VerbumSupernum TeLucis SacrisSolemniis) \
	 $(addprefix resp-,ascendenschristusinaltum ascendenschristusinaltum-simplex \
			   ascenditdeus inmanus \
			   cibavit cibavit-simplex panemcaeli) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(foreach M,visoll-F vsoll-a vsoll-a_ viiisoll-G,magnificat-initium-$(M)) \
	 $(addprefix capitulum-,PrimumQuidem CarissimiEstote tuautem FratresEgo) \
	 $(addprefix versus-,ascenditdeus dominusincaelo custodi gaude \
			     ascenditdeus-communis dominusincaelo-communis \
			     panemdecaelo posuitfines panemdecaelo-communis \
			     panemdecaelohomo-communis cibavit educas) \
	 oratio oratio2 supplicatiolitaniae oratiodominica oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 benedicamus-tempore-paschali benedicamus-minor \
	 $(addprefix benedicamus-solemnism-,1vesp 2vesp laud) \
	 dominelabiamea inv-christumregemadoremus benedicamus-solemnis-laud \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem) \
	 $(addprefix resp-,egorogabopatrem-sinedox exaltaredomine-cumdox \
			   ponitnubem-cumdox omnispulchritudodomini-sinedox \
			   ascendensinaltum-cumdox nonconturbetur-sinedox \
			   tempusest-sinedox postpassionemsuam-sinedox \
			   sienimnonabiero-cumdox quammagnamultitudo-cumdox \
			   accepitiesus coenantibus comedetiscarnes \
			   egosumpanisvitae immolabithaedum misitmevivenspater \
			   quimanducat respexitelias) \
	 tedeum-solemnis an_regina_caeli_simplex convertenosdeus \
	 jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 benedictio-noctemquietam an_salve_regina ps22-initium-v-a
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(foreach B,isoll-a2 viiisoll-G,$(TMP_DIR)/benedictus-initium-$(B)-auto.gtex) \
	    $(TMP_DIR)/ps4-initium-ii-D-auto.gtex $(TMP_DIR)/ps4iiD.tex
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../PostPentecosten
include $(iter)

PDF = corpuschristi.pdf $(patsubst %,feria%-ocx.pdf,ii iii iv v vi) sabbato-ocx.pdf dominicainfraoctavamcorpuschristi.pdf
all: $(PDF)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps4iiD.tex: TONUS = 1 0 1 1
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
$(TMP_DIR)/ps4iiD.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps4.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(PDF): %.pdf: %.tex corpusx.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
