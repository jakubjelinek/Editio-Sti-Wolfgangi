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
PSALMS = 23 45 47 62 83 86 87 92 99 109 121 126 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-23 = iii-a
MODUS-45 = ii_-B
MODUS-47 = vi-F
MODUS-62 = i-D i-d
MODUS-83 = vii-c
MODUS-86 = vii-a
MODUS-87 = vi-F
MODUS-92 = vii-a
MODUS-99 = i-f
MODUS-109 = vii-a
MODUS-121 = i-f
MODUS-126 = i-D i-d
MODUS-147 = i-g
MODUS-148 = i-g
MODUS-149 = i-g viii-G
MODUS-150 = i-g
MODUS-benedictus = ivsoll-E viiisoll-G5
MODUS-magnificat = isoll-g viiisoll-G2
MODUS-dan3 = viii-c viii-G
CANTICIS = dan3
MODUSLIST = $(sort $(foreach P,$(PSALMS) benedictus magnificat $(CANTICIS),$(MODUS-$(P))))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
EMPTY :=
SPACE := $(EMPTY) $(EMPTY)
TONUS-WORDS = $(subst -, ,$(basename $(notdir $*)))
TONUS = $(TONUS-$(subst $(SPACE),-,$(filter-out $(firstword $(TONUS-WORDS)),$(TONUS-WORDS))))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --flex-underline --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-$(M).tex))
LAPSALMSEXTRA = $(foreach C,benedictus magnificat $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M).tex))
LAPSALMSSINEDOX = $(foreach P,62 115 148 149,$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-$(M)-sinedox.tex)) \
		  $(foreach C,dan3,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M)-sinedox.tex))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix versus-,domumtuam domumtuam-communis haecest) \
	 $(addprefix hym-,AngularisFundamentum UrbsBeata UrbsJerusalem IamBone) \
	 $(addprefix benedicamus-solemnism-,1vesp 2vesp laud) \
	 $(addprefix benedicamus-duplexmajus-,laudes vesperae) \
	 $(addprefix deusinadiutorium-,communis solemnis alter) supplicatiolitaniae oratiodominica \
	 oratiodominicaalt dominusnosbenedicat \
	 dominusvobiscum-solemnis domineexaudi $(addprefix magnificat-initium-,viiisoll-G2) \
	 $(addprefix capitulum-,VidiCivitatem) \
	 oratio oratio2 oratiodominica-mat benedicamus-minor \
	 $(addprefix absolutio-,exaudi ipsius avinculis) dominelabiamea \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus deus christus ignem evangelica divinum perevangelica) \
	 $(addprefix ant-,aedificavitmoyses benefundataest domumtuam domusmea eritmihi \
			  haecestdomus lapidespretiosi manesurgensjacob nonesthic \
			  respicedomine tolliteportas viditjacobscalam zachaeefestinans \
			  benedictusesintemplo-tp domusmea-tp lausdeiinecclesia nonesthic-tp \
			  sanctificavitdominus viditjacobscalam-tp tolliteportas-tp \
			  domumtuam-tp haecestdomus-tp lapidespretiosi-tp) \
	 $(addprefix resp-,domumtuam magnusdominus-tp domumtuam-tp) \
	 $(addprefix inv-,exsultemusdomino christumdominumquidilexit-tp) tonus-lectionis-solemnis \
	 benedicamus-solemnis-laud benedicamus-tempore-paschali \
	 tedeum-solemnis-gn tedeum-romanum-gn tuautem \
	 $(addprefix resp-,benedicdominedomum-CROCHU fundataest-CROCHU \
			   indedicationetempli-CROCHU dumexiretiacob-CROCHU \
			   exaudisti-CROCHU-cumdox sidominusdeusmeus-CROCHU \
			   sidominusdeusmeus-CROCHU-tp dumexiretiacob-CROCHU-tp \
			   exaudisti-CROCHU-cumdox-tp) \
	 tonusprecum benedictus-initium-ivsoll-E
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) && cd $(TMP_DIR) || :; \
	     case "$(1)" in */ps118[ivx]*) cd .. && $(SED) -i -e 's/^( )/( )<v>\\hebinitial{'`$(AWK) -f hebletter.awk -v PSLM="$(1)"`'}<\/v>/' $(3);; esac || :
all: indedicationearchbasilicaesssalvatoris.pdf indedicationebasilicarumssapostolorumpetrietpauli.pdf
iter = $(patsubst %,iterator.mk,$(iter-left))
define iter-doit
$(TMP_DIR)/%-initium-$(i)-auto.gabc: $(PSALMS_DIR)/%.pslm $(PSALMTONES_DIR)/$(i)-auto.gabc; $(call GENINITIUM,$$<,$(i),$$@)
endef
iter-left := $(MODUSLIST)
include $(iter)
define iter-doit
$(i): $(PSALMS_DIR)/$(firstword $(subst -, ,$(basename $(notdir $(i))))).pslm; $$(GENPSALM) && $$(SED) -i -e 'y/Jj/Ii/' $$@
endef
iter-left := $(ALLLAPSALMS)
include $(iter)
define iter-doit
$(TMP_DIR)/%.gtex: $(i)/%.gabc ; if $(GREP) -q ^nabc-lines: $$<; then $(SED) -e ':d;s/\(([^).]*\)\./\1/g;/([^)]*\./bd' $$<; else $(CAT) $$<; fi | $(SED) -e 's/<sp>\([AVR]\)\/<\/sp>\./<v>\\\1bardot{}<\/v>/g;s/†/ +/g;:d;s/\(([^)'\'']*\)'\''/\1/g;/([^)]*'\''/bd' | $(SED) -e ':d;s/\(\(^\|)\)[^(j]*\)j/\1i/g;s/\(\(^\|)\)[^(J]*\)J/\1I/g;td' | $(GREGORIO) -s -o $$@
endef
iter-left := . $(TMP_DIR) $(addprefix ../InNativitateBMV/cantus/,amon33 triplex76 nrom02) \
	     $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) \
	     $(addprefix ../Epiphania/cantus/,arom12 grom61 cselecti57 triplex76) ../CorpusChristi ../InNativitateBMV ../MichaelisArchangelis
include $(iter)
$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(TMP_DIR)/magnificat.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
indedicationearchbasilicaesssalvatoris.pdf \
indedicationebasilicarumssapostolorumpetrietpauli.pdf \
dedicationisecclesiae-tp.pdf: %.pdf: %.tex dedicationisecclesiae.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
