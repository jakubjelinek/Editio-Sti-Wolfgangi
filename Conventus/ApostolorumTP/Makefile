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
PSALMS = 62 92 99 109 112 115 138 148 149 150
include tonus.mk
MODUS-62-I = ii-D
MODUS-92-I = vii-a
MODUS-99-I = vii-a
MODUS-109-I = vii-a
MODUS-112-I = vii-a
MODUS-115-I = ii-D
MODUS-138-I = ii-D
MODUS-148-I = ii-D
MODUS-149-I = ii-D
MODUS-150-I = ii-D
MODUS-dan3-I = viii-G2
MODUS-benedictus-I = isoll-D2
MODUS-magnificat-I = viiisoll-G
MODUS-62-II = iii-a
MODUS-92-II = vii-c2
MODUS-99-II = vii-a
MODUS-109-II = vii-c2
MODUS-112-II = vii-a
MODUS-115-II = iii-a
MODUS-138-II = iii-a
MODUS-148-II = iii-a
MODUS-149-II = iii-a
MODUS-150-II = iii-a
MODUS-dan3-II = vii-a
MODUS-benedictus-II = viiisoll-A
MODUS-magnificat-II = viisoll-a
NUMS = I II
PSALMSALT = $(foreach V,$(NUMS),$(addsuffix -$(V),$(PSALMS)))
MAGNIFICAT = $(foreach M,$(NUMS),magnificat-$(M))
BENEDICTUS = $(foreach B,$(NUMS),benedictus-$(B))
DAN3 = $(foreach D,$(NUMS),dan3-$(D))
MODUSLIST = $(sort $(foreach P,$(PSALMSALT) $(BENEDICTUS) $(MAGNIFICAT) $(DAN3),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus magnificat dan3)
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMSALT)) $(MAGNIFICAT) \
						   $(DAN3) $(BENEDICTUS))
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) $(DAN3))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,fulgebuntjusti incaelestibusregnis invelamentoclamabant \
			  sanctietjusti sanctitui spiritusetanimae filiaejerusalem \
			  tantotempore simanseritis sidiligitisme \
			  sicognovissetisme philippequividetme \
			  nonturbeturcorvestrum egosumvia domineostende) \
	 $(addprefix hym-,ClaroPaschali TristesErant) \
	 deusinadiutorium-solemnis deusinadiutorium-communis \
	 supplicatiolitaniae oratiodominica respbr-laud respbr-vesp \
	 dominusvobiscum-solemnis domineexaudi benedicamus-tempore-paschali \
	 $(addprefix magnificat-initium-,viiisoll-G viisoll-a)
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach V,$(NUMS),$(TMP_DIR)/ps$(P)-initium-$(if $(MODUS-$(P)-$(V)),$(MODUS-$(P)-$(V)),ii-D)-auto.gabc)) \
		   $(foreach V,$(NUMS),$(TMP_DIR)/benedictus-initium-$(if $(MODUS-benedictus-$(V)),$(MODUS-benedictus-$(V)),ii-D)-auto.gabc) \
		   $(foreach V,$(NUMS),$(TMP_DIR)/dan3-initium-$(if $(MODUS-dan3-$(V)),$(MODUS-dan3-$(V)),ii-D)-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR)
include $(iter)
$(TMP_DIR)/%-I.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-II.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-I-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-II-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@

all: marcus.pdf philippusetiacobus.pdf
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach V,$(NUMS),$(patsubst %,$(TMP_DIR)/%-$(V).tex,ps148 ps149 dan3)): PSALMOPTS = $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(TMP_DIR)/benedictus-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex, magnificat): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	case "$<" in */ps118[ivx]*) $(AWK) -f hebletter.awk -v PSLM="$<" -v TEX=$(if $(filter --skip-verses,$(PSALMOPTS)),1,2) $@ > $@.tmp; $(MV) -f $@.tmp $@;; esac || :
	$(SED) -i -e 'y/Jj/Ii/' $@
$(LAPSALMSEXTRA): $(TMP_DIR)/%.tex: $(TMP_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
marcus.pdf philippusetiacobus.pdf: %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
