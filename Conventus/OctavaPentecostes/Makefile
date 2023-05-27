RUBY_COMMAND = ruby
GREGORIO = gregorio
LUALATEX = lualatex
SED = sed
AWK = awk
GREP = grep
CAT = cat
CP = cp
MV = mv
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
PSALMS = 4 47 62 66 67 90 92 99 103 109 110 111 112 133 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-4 = viii-G
MODUS-47 = viii-C
MODUS-62 = viii-G
MODUS-66 = viii-G
MODUS-67 = viii-C
MODUS-90 = viii-G
MODUS-92 = iii-a2
MODUS-99 = viii-G
MODUS-103 = viii-C
MODUS-109 = iii-a2
MODUS-110 = viii-G
MODUS-111 = viii-G
MODUS-112 = vii-c2
MODUS-133 = viii-G
MODUS-148 = vii-c2
MODUS-149 = vii-c2
MODUS-150 = vii-c2
MODUS-nuncdimittis = iii-a
MODUS-dan3 = i-a2
MODUS-benedictus-I = viisoll-a
MODUS-magnificat-I = isoll-d3
MODUS-benedictus-II = viiisoll-G
MODUS-magnificat-II = iiisoll-a
MODUS-benedictus-III = viiisoll-g
MODUS-magnificat-III = isoll-f
MODUS-benedictus-IV = ivsoll-E
MODUS-magnificat-IV = viiisoll-G2
MODUS-benedictus-V = isoll-D2
MODUS-magnificat-V = viiisoll-G
MODUS-benedictus-VI = isoll-f
MAGNIFICAT = $(foreach M,I II III IV V,magnificat-$(M))
BENEDICTUS = $(foreach B,I II III IV V VI,benedictus-$(B))
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(BENEDICTUS) $(MAGNIFICAT) nuncdimittis dan3,$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat dan3 nuncdimittis)
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMS)) $(MAGNIFICAT) $(BENBEDICTUS) dan3 nuncdimittis)
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,nuncdimittis dan3)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA) $(patsubst %,$(TMP_DIR)/%.tex,$(BENEDICTUS) $(MAGNIFICAT))
SCORES = $(addprefix ant,1 2 3 4 5) ant-magn-vesp1 ant-magn-vesp2 ant-ben-laud \
	 $(addprefix ant-,caritasdei convocatisjesusduodecimapostolis dixitjesusutsciatis \
			  egosumostium egosumpanisetpanis egosumpanis magn-vesp1 \
			  pacemrelinquovobis paraclitusautem sicdeusdilexitmundum \
			  siquisdiligitme spiritusquiapatreprocedit accipitespiritum \
			  dapacemdomine) \
	 $(addprefix matant,1 2 3) $(addprefix matresp,1 2) \
	 $(addprefix versus-,spiritus repleti loquebantur custodi gaude \
			     spiritus-simplex repleti-simplex spiritusparaclitus-communis \
			     repleti-communis loquebantur-communis) \
	 $(addprefix hym-,VeniCreator BeataNobis TeLucis JamChristus RectorPotens RerumDeus \
			  BeataNobis-LH LuxIucunda) \
	 deusinadiutorium-solemnis deusinadiutorium-communis \
	 supplicatiolitaniae oratiodominica resp1v resp2v respl \
	 $(addprefix resp-,spiritus-simplex apparueruntapostolis-sinedox \
			   disciplinametsapientiam-sinedox iamnondicam-sinedox \
			   iteinorbemuniversum-cumdox repletisuntomnes-cumdox \
			   repletisuntomnes-sinedox spiritussanctusprocedens-cumdox \
			   inprincipiodeuscreavit-sinedox spiritusdominireplevit-cumdox \
			   dumcomplerentur-joppich-sinedox iamnondicam-cumdox \
			   apparueruntapostolis-cumdox dumcomplerentur-CROCHU) \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix capitulum-,CumComplerentur tuautem Facta Judaei GratiaVobis) oratio $(addprefix oratio,2 3 4 5 6 -sinedox) \
	 benedictio-noctemquietam jubedomnebenedicere lectiobrevis-fratressobrii \
	 convertenosdeus ant-alleluia-compl deusinadiutorium-solemnis \
	 resp-inmanus-tp ant-salvanos-antiquo-tp \
	 oratio-visita $(addprefix benedicamus-,minor tempore-paschali octava-paschae) an_regina_caeli_simplex \
	 oratiodominica-mat $(addprefix absolutio-,exaudi ipsius avinculis) tedeum-solemnis tedeum-solemnis-gn \
	 $(addprefix benedictio-solemn-,evangelica divinum adsocietatem) \
	 $(addprefix benedicamus-solemnism-,laud 1vesp 2vesp) tonus-lectionis-solemnis tuautem \
	 benedicamus-solemnis-laud dominelabiamea inv-alleluiaspiritus \
	 tedecetlaus
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(TMP_DIR)/ps62-sinedox.tex
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3 nuncdimittis,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach B,$(sort $(foreach P,$(BENEDICTUS),$(MODUS-$(P)))),$(TMP_DIR)/benedictus-initium-$(B)-auto.gabc) \
		   $(foreach M,$(sort $(foreach P,$(MAGNIFICAT),$(MODUS-$(P)))),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) && cd $(TMP_DIR) || :; \
	     case "$(1)" in */ps118[ivx]*) cd .. && $(SED) -i -e 's/^( )/( )<v>\\hebinitial{'`$(AWK) -f hebletter.awk -v PSLM="$(1)"`'}<\/v>/' $(3);; esac || :
iter = $(patsubst %,iterator.mk,$(iter-left))
define iter-doit
$(TMP_DIR)/%-initium-$(i)-auto.gabc: $(PSALMS_DIR)/%.pslm $(PSALMTONES_DIR)/$(i)-auto.gabc; $(call GENINITIUM,$$<,$(i),$$@)
endef
iter-left := $(MODUSLIST)
include $(iter)
define iter-doit
$(TMP_DIR)/%.gtex: $(i)/%.gabc ; if $(GREP) -q ^nabc-lines: $$<; then $(SED) -e ':d;s/\(([^).]*\)\./\1/g;/([^)]*\./bd' $$<; else $(CAT) $$<; fi | $(SED) -e 's/<sp>\([AVR]\)\/<\/sp>\./<v>\\\1bardot{}<\/v>/g;s/†/ +/g;:d;s/\(([^)'\'']*\)'\''/\1/g;/([^)]*'\''/bd' | $(SED) -e ':d;s/\(\(^\|)\)[^(j]*\)j/\1i/g;s/\(\(^\|)\)[^(J]*\)J/\1I/g;td' | $(GREGORIO) -s -o $$@
endef
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) \
	     $(addprefix ../Epiphania/cantus/,arom12 grom61 cselecti57 triplex76) ../Pentecostes ../AscensioneDomini ../CorpusChristi ../PerAnnum
include $(iter)

PDF = pentecostes.pdf $(patsubst %,feria%-ope.pdf,ii iii iv v vi) sabbato-ope.pdf
all: $(PDF)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(BENEDICTUS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/benedictus.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex, magnificat nuncdimittis): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	case "$<" in */ps118[ivx]*) $(AWK) -f hebletter.awk -v PSLM="$<" -v TEX=$(if $(filter --skip-verses,$(PSALMOPTS)),1,2) $@ > $@.tmp; $(MV) -f $@.tmp $@;; esac || :
	$(SED) -i -e 'y/Jj/Ii/' $@
$(LAPSALMSEXTRA): $(TMP_DIR)/%.tex: $(PSALMS_DIR)/%.pslm
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
$(TMP_DIR)/magnificat-comb.tex: PSSKIP = 2
$(TMP_DIR)/ps62-sinedox.tex: $(TMP_DIR)/ps62.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(patsubst %,$(TMP_DIR)/ps%-comb.tex,90 118vii_viii 118ix_x 118xiii_xiv 118xv_xvi 118xix_xx 118xxi_xxii 133): PSSKIP = 0
$(TMP_DIR)/communio-versus-Exsurgat-comb.tex: $(patsubst %,communio-versus-Exsurgat%tex,. -boh.)
	$(GENPSCOMB)
$(PDF): %.pdf: %.tex octavapentecostes.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
