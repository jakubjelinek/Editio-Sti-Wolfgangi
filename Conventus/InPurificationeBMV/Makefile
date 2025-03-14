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
COMMON_CHANTS_DIR = $(EDITIO_ROOTDIR)/cantuscommunes
PSALM_PREPROCESSOR = $(TOOLS_DIR)/psalmpreprocessor.rb
INITIUM_TOOL = $(TOOLS_DIR)/initiumpsalmi.rb
PSSKIP = 1
PSALMS = 2 18i 44 62 109 112 116 121 126 145 146 147 149
include $(PSALMTONES_DIR)/tonus.mk
MODUS-2 = viii-G
MODUS-18i = ii_-B
MODUS-44 = vi-F
MODUS-62 = iii-b
MODUS-109 = iii-b
MODUS-112 = vi-F vii-a
MODUS-116 = iii-a2
MODUS-121 = iii-b
MODUS-126 = viii-a
MODUS-145 = iv-E
MODUS-146 = ii-D
MODUS-147 = viii-G
MODUS-149 = viii-a
MODUS-dan3 = iii-b
MODUS-isaiae5 = i-g
MODUS-isaiae17 = i-g
MODUS-isaiae18 = i-g
MODUS-benedictus = isoll-f
MODUS-magnificat = isoll-f viiisoll-g2
CANTICIS = dan3 isaiae5 isaiae17 isaiae18
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(CANTICIS) benedictus magnificat,$(MODUS-$(P))))
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
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,oadmirabile quandonatuses rubumquemviderat eccemariagenuit \
			  senexpuerumportabat eccemariagenuit-tq accipienssimeon \
			  hodiebeatavirgomaria lumenadrevelationem obtuleruntproeo \
			  responsumaccepit simeoniustus cuminducerentpuerum \
			  adornathalamumtuum superteierusalem gaudeetlaetarenova \
			  dapacemdomine gaudeetlaetarefiliasion) \
	 $(addprefix hym-,AveMarisStella-iv QuodChorus AdornaSion LegisSacratae) \
	 $(addprefix resp-,avemaria-alt notumfecitdominus adoratedominum) \
	 $(addprefix deusinadiutorium-,solemnis alter communis solemnis-tq alter-tq communis-tq) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,festis-bmv solemnitatibus-bmv) \
	 $(addprefix inv-,eccevenitadtemplum) \
	 $(addprefix capitulum-,EcceEgo) $(addprefix versus-,responsum) \
	 dominelabiamea tonusprecum tonusprecumnovum dominusnosbenedicat \
	 $(addprefix absolutio-,exaudi ipsius avinculis precibus) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem ille \
					noscum ipsavirgo pervirginem) \
	 $(addprefix resp-,gaudemariavirgo-CROCHU-cumdox \
			   adornathalamum-CROCHU cuminducerentpuerum-CROCHU-cumdox \
			   senexpuerumportabat-CROCHU postquamimpletisunt-CROCHU \
			   suscipiensiesuminulnas-CROCHU videtemiraculum-CROCHU-cumdox \
			   responsumacceperatsimeon-CROCHU-cumdox simeoniustusettimoratus-CROCHU-cumdox) oratio \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 ps109-initium-iii-b-trans ps121-initium-iii-b-trans \
	 ps62-initium-iii-b-trans dan3-initium-iii-b-trans
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
all: inpurificationebmv.pdf
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../OctavaNativitatis ../PostPentecosten ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../PerAnnum ../InNativitateBMV ../Adventus
include $(iter)
$(filter-out $(TMP_DIR)/dan3% $(TMP_DIR)/magnificat%,$(ALLLAPSALMS)): PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-$(M).tex): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(foreach C,dan3,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M).tex)): PSALMOPTS = $(LAPSALMOPTS)
inpurificationebmv.pdf: inpurificationebmv.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
