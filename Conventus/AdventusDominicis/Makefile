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
DOMINICIS = I II III IV
PSALMS = 109 110 111 112 113
include tonus.mk
MODUS-109-I = viii-G
MODUS-110-I = viii-G2
MODUS-111-I = v-a
MODUS-112-I = vii-c
MODUS-113-I = iv-A
MODUS-magnificat-I = viiisoll-G
MODUS-109-II = i-g
MODUS-110-II = vii-d
MODUS-111-II = vii-a
MODUS-112-II = i-f
MODUS-113-II = iii-a
MODUS-magnificat-II = viiisoll-G2
MODUS-109-III = i-a
MODUS-110-III = vii-a
MODUS-111-III = viii-G
MODUS-112-III = v-a
MODUS-113-III = ii-D
MODUS-magnificat-III = viiisoll-G
MODUS-109-IV = i-g
MODUS-110-IV = i-f
MODUS-111-IV = i-g
MODUS-112-IV = i-f
MODUS-113-IV = ii-D
MODUS-magnificat-IV = iisoll-D
MODUSLIST = $(sort $(foreach P,$(PSALMS) magnificat,$(foreach D,$(DOMINICIS),$(MODUS-$(P)-$(D)))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat)
ALLCOMBPSALMS = $(foreach D,$(DOMINICIS),$(patsubst $(TMP_DIR)/%-boh.tex,$(TMP_DIR)/%-$(D)-comb.tex,$(ALLCZPSALMS)))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(foreach D,$(DOMINICIS),$(patsubst %,$(TMP_DIR)/ps%-$(D).tex,$(PSALMS)))
LAPSALMSEXTRA = $(foreach D,$(DOMINICIS),$(patsubst %,$(TMP_DIR)/%.tex,magnificat-$(D)))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(filter-out antIV-magn-vesp2,$(foreach D,$(DOMINICIS),$(addprefix ant$(D),1 2 3 4 5 -magn-vesp2))) \
	 $(addprefix ant-magn-o-,sapientia adonai radix clavis oriens rex emmanuel) \
	 versus-rorate hym-ConditorAlme hym-ConditorAlme-1 benedicamus-dominica-advequad \
	 deusinadiutorium-alter supplicatiolitaniae oratiodominica resp-vesp \
	 dominusvobiscum-solemnis domineexaudi $(addprefix oratio,$(DOMINICIS)) \
	 $(addprefix capitulum-Fratres,Hora Quaecumque Gaudete Sic) \
	 magnificat-initium-viii-G magnificat-initium-viii-G2 magnificat-initium-ii-D \
	 an_alma_redemptoris_mater ant-rorate resp-vesp-1
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = ../AdventusDominicaII/cantus/amon33/hym-ConditorAlme-bohtext.tex hym-ConditorAlme-latext.tex
LAPSALMSINITGABC = $(foreach D,$(DOMINICIS),$(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P)-$(D))-auto.gabc))
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
iter-left := . $(TMP_DIR) $(foreach D,$(DOMINICIS),../AdventusDominica$(D)/cantus/amon33) \
	     $(addprefix $(COMMON_CHANTS_DIR)/,amon33 arom12 lcantualis78) $(PSALMTONES_DIR)
include $(iter)
define iter-doit
$(TMP_DIR)/ant$(i)%.gabc: ../AdventusDominica$(i)/cantus/amon33/ant%.gabc ; $(CP) -a $$< $$@
endef
iter-left := $(DOMINICIS)
include $(iter)
define iter-doit
$(TMP_DIR)/%-$(i).pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $$< $$@
endef
iter-left := $(DOMINICIS)
include $(iter)
define iter-doit
$(TMP_DIR)/%-$(i)-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $$< $$@
endef
iter-left := $(DOMINICIS)
include $(iter)
$(TMP_DIR)/oratio%.gabc: ../AdventusDominica%/cantus/amon33/oratio.gabc ; $(CP) -a $< $@

all: adventusdominicis.pdf adventusdominicaivesp.pdf
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach D,$(DOMINICIS),$(TMP_DIR)/magnificat-$(D).tex): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(LAPSALMSEXTRA): $(TMP_DIR)/%.tex: $(TMP_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(foreach D,$(DOMINICIS),$(TMP_DIR)/magnificat-$(D)-comb.tex): PSSKIP = 2
adventusdominicis.pdf: adventusdominicis.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS) \
	       ../AdventusDominicaII/imagines/imago_Sion.jpg ../AdventusDominicaII/imagines/angelus.jpg
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
adventusdominica%vesp.pdf: adventusdominica%vesp.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
