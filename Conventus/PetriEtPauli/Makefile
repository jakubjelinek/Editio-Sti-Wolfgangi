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
PSALMS = 18 33 44 46 60 62 63 74 92 96 98 99 109 112 115 116 138 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-18 = ii-D
MODUS-33 = vii-c2
MODUS-44 = viii-A
MODUS-46 = viii-G
MODUS-60 = viii-G
MODUS-62 = viii-G
MODUS-63 = viii-G
MODUS-74 = vi-F
MODUS-92 = viii-g
MODUS-96 = vi-F
MODUS-98 = iv-A
MODUS-99 = vii-c
MODUS-109 = viii-g
MODUS-112 = vii-d
# + iv-A
MODUS-115 = i-g
MODUS-116 = viii-g
MODUS-138 = viii-g
MODUS-145 = viii-A
MODUS-146 = viii-g
MODUS-147 = vii-c2
MODUS-148 = iv-A_
MODUS-149 = iv-A_
MODUS-150 = iv-A_
MODUS-dan3 = viii-G
MODUS-magnificat-I = viisoll-a
MODUS-magnificat-II = isoll-D_
MODUS-magnificat-III = i-D_
MODUS-benedictus-I = visoll-F
MODUS-benedictus-II = vi-F
MAGNIFICAT = $(foreach M,I II III,magnificat-$(M))
BENEDICTUS = $(foreach B,I II,benedictus-$(B))
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(MAGNIFICAT) dan3 $(BENEDICTUS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat dan3)
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMS)) $(MAGNIFICAT) $(BENEDICTUS) dan3)
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) dan3)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,salvanos-antiquo miserere salveregina-simplex subtuum \
			  argentumetaurum damascipraepositus dixitangelusadpetrum \
			  egoplantaviapollorigavit egoproterogavi gloriosiprincipes \
			  gratiadeiinme libentergloriabor mihivivere misitdominus petreamasme \
			  petrusetjoannes tervirgiscaesus tuespetrus vadeanania \
			  sanctepauleapostole hodiesimonpetrus \
			  anuntiaverunt-FKP clamaveruntiusti-FKP \
			  constitueseosprincipes-FKP custodiebant-FKP \
			  dedistihereditatem-FKP exaltabunturcornuaiusti-FKP \
			  inomnemterram-FKP luxortaestiustis-FKP principespopulorum-FKP) \
	 $(addprefix hym-,AureaLuce JamBonePastor ORomaFelix FelixPerOmnes \
			  ApostolorumPassio) \
	 $(addprefix resp-,inomnemterram) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(foreach M,viisoll-a isoll-D_ i-D_,magnificat-initium-$(M)) \
	 $(addprefix capitulum-,MisitHerodes) \
	 $(addprefix versus-,inomnem inomnem-communis annuntiaverunt \
			     nimis constitues annuntiaverunt-communis) \
	 oratio oratio2 supplicatiolitaniae oratiodominica oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,semiduplex-laud semiduplex-vesp duplexmajus-laudes minor) \
	 $(addprefix benedicamus-solemnism-,1vesp 2vesp laud) \
	 dominelabiamea inv-regemapostolorum benedicamus-solemnis-laud \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica quorum adsocietatem) \
	 $(addprefix resp-,tuespastorovium-CROCHU dominesitues-CROCHU \
			   egoproterogavi-CROCHU quemdicunthomines-CROCHU \
			   sidiligisme-CROCHU simonpetre-CROCHU surgepetre-CROCHU \
			   tuespetrus-CROCHU) \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) \
	 an_regina_caeli_simplex convertenosdeus \
	 jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 benedictio-noctemquietam an_salve_regina
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(foreach B,visoll-F vi-F,$(TMP_DIR)/benedictus-initium-$(B)-auto.gtex) \
	    $(TMP_DIR)/ps112-initium-iv-A-auto.gtex $(TMP_DIR)/ps112ivA.tex
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../PostPentecosten ../CorpusChristi
include $(iter)

PDF = petrietpauli.pdf $(patsubst %,die%-opp.pdf,ii iii v vi vii viii)
all: $(PDF)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps112ivA.tex: TONUS = 1 2 1 3
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(BENEDICTUS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/benedictus.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,dan3): \
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
$(TMP_DIR)/ps112ivA.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps112.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(PDF): %.pdf: %.tex petrusetpaulus.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
