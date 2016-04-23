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
PSALMS = 1 2 3 4 5 8 14 20 23 50 62 64 66 74 90 91 109 110 111 112 117 118v 118vi 118vii 118viii 118ix 118x 118xi 118xii 118xiii 144ii 133 145 146 147 148 149 150
include tonus.mk
MODUS-1 = i-D_
MODUS-2 = ii-D
MODUS-3 = vii-a
MODUS-4 = viii-G2
MODUS-5 = iv-E
MODUS-8 = viii-G
MODUS-14 = vi-F
MODUS-20 = iii-b
MODUS-23 = viii-G2
MODUS-50 = vi-F
MODUS-62 = i-g
MODUS-64 = viii-G
MODUS-66 = dir
MODUS-74 = i-g
MODUS-90 = dir
MODUS-91 = iii-a
MODUS-109 = vi-F
MODUS-110 = vii-a
MODUS-111 = i-g
MODUS-112 = iii-a
MODUS-117 = vii-a
MODUS-118v = iv-E
MODUS-118vi = iv-E
MODUS-118vii = iv-E
MODUS-118viii = i-g
MODUS-118ix = i-g
MODUS-118x = i-g
MODUS-118xi = iii-a
MODUS-118xii = iii-a
MODUS-118xiii = iii-a
MODUS-133 = dir
MODUS-144ii = vi-F
MODUS-145 = vii-a
MODUS-146 = i-g
MODUS-147 = iii-a
MODUS-148 = i-g
MODUS-149 = i-g
MODUS-150 = i-g
MODUS-benedictus = viiisoll-G
MODUS-magnificat = viiisoll-G
MODUS-dan3 = iii-a
MODUS-beatitudosapientis = i-g
MODUS-jeremiae = i-g
MODUS-ecclesiasticus31 = i-g
MODUS-ps4dir = dir
MODUSLIST = $(sort $(foreach P,$(PSALMS) benedictus magnificat dan3 beatitudosapientis jeremiae ecclesiasticus31 ps4dir,$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus magnificat dan3 beatitudosapientis jeremiae ecclesiasticus31)
ALLCOMBPSALMS = $(patsubst $(TMP_DIR)/%-boh.tex,$(TMP_DIR)/%-comb.tex,$(ALLCZPSALMS))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(PSALMS))
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,benedictus magnificat dan3 beatitudosapientis jeremiae ecclesiasticus31)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant,1 2 3 4 5) ant-magn-vesp1 ant-magn-vesp2 ant-ben-laud terant \
	 $(addprefix versus-,amavit justum magna os custodi orapronobis amavit-simplex os-simplex lex) \
	 $(addprefix hym-,IsteConfessor VitaSanctorum TeLucis NuncSancte RectorPotens RerumDeus) \
	 benedicamus-duplex-laudes benedicamus-duplex-vesperae \
	 deusinadiutorium-communis supplicatiolitaniae oratiodominica respl respv \
	 dominusvobiscum-solemnis domineexaudi magnificat-initium-viii-G \
	 $(addprefix capitulum-,DilectusDeo tuautem JustusCor JustumDeduxit) \
	 benedictio-noctemquietam jubedomnebenedicere lectiobrevis-fratressobrii \
	 convertenosdeus deusinadiutorium-communis \
	 oratio-visita benedicamus-minor ant-salveregina-simplex \
	 magnificat-initium-i-D oratio introitus-OsJusti graduale-OsJusti \
	 offertorium-DesideriumAnimae communio-AmenDico \
	 viii-agnusdei viii-gloria viii-kyrie viii-sanctus credo-i \
	 oratiodominica-mat benedicamus-minor \
	 $(addprefix absolutio-,exaudi ipsius avinculis) dominelabiamea \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus inunitate deus christus ignem acunctis \
					evangelica ille cujus adsocietatem) \
	 $(addprefix matant,1 2 3 4 5 6 7 8 9 10 11 12 13) $(addprefix matresp,1 2 3 4 5 6 7 8 9 10 11 12) \
	 tedecetlaus tonus-evangelii-b tonus-lectionis-solemnis \
	 $(addprefix venite3,a b c d e f) matinv-RegemConfessorum \
	 benedicamus-solemnis-laud tedeum-solemnis tuautem \
	 communio-versus-Exaudi-initium
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(TMP_DIR)/ps4dir-comb.tex $(TMP_DIR)/ps4-initium-dir-auto.gtex \
	    $(addprefix hym-,$(addsuffix -bohtext.tex,TeLucis NuncSancte RectorPotens RerumDeus)) \
	    $(TMP_DIR)/communio-versus-Exaudi-comb.tex
LAPSALMSINITGABC = $(foreach P,$(filter-out 118vi 118vii 118ix 118x 118xii 118xiii,$(PSALMS)),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3 benedictus beatitudosapientis jeremiae ecclesiasticus31,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix cantus/,amon33 triplex76 nrom02) \
	     $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) \
	     $(addprefix ../Epiphania/cantus/,arom12 grom61 cselecti57 triplex76)
include $(iter)

all: galli.pdf
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 dan3 ps4dir): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/magnificat.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --skip-verses 2 $(LAPSALMOPTSACC)
$(patsubst %,$(TMP_DIR)/ps%.tex,90 149): PSALMOPTS = --accents-style bold $(LAPSALMOPTSACC)
$(patsubst %,$(TMP_DIR)/%.tex,$(addprefix ps,118vi 118vii 118ix 118x 118xii 118xiii 133 150) jeremiae ecclesiasticus31): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold $(LAPSALMOPTSACC)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus beatitudosapientis jeremiae ecclesiasticus31): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex, magnificat): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	case "$<" in */ps118[ivx]*) $(AWK) -f hebletter.awk -v PSLM="$<" -v TEX=$(if $(filter --skip-verses,$(PSALMOPTS)),1,2) $@ > $@.tmp; $(MV) -f $@.tmp $@;; esac || :
	$(SED) -i -e 'y/Jj/Ii/' $@
$(LAPSALMSEXTRA): $(TMP_DIR)/%.tex: $(PSALMS_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps4dir.tex: $(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps4.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/ps4dir-comb.tex: $(TMP_DIR)/ps4dir.tex $(TMP_DIR)/ps4-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/magnificat-comb.tex: PSSKIP = 2
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,90 118vi 118vii 118ix 118x 118xii 118xiii 133 149 150) jeremiae ecclesiasticus31): PSSKIP = 0
$(TMP_DIR)/communio-versus-Exaudi-comb.tex: $(patsubst %,communio-versus-Exaudi%tex,. -boh.)
	$(GENPSCOMB)
galli.pdf: galli.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
