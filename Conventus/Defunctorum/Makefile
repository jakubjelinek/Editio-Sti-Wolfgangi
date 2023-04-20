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
PSALMS = 5 6 7 22 24 26 26iv_e 37i 37ii 39 40 41 50 55 62 64 69 84 85 101i 101ii 101iii 114 119 120 122 129 129d 137 141 142 145 148 149 150
include tonus.mk
include $(PSALMTONES_DIR)/tonus.mk
MODUS-5 = vii-c
MODUS-6 = viii-G
MODUS-7 = viii-G
MODUS-22 = viii-G
MODUS-24 = viii-G
MODUS-26 = iv-E
MODUS-26iv_e = iv_-e
MODUS-37i = defunct
MODUS-37ii = defunct
MODUS-39 = ii-D
MODUS-40 = ii-D
MODUS-41 = ii-D
MODUS-50 = i-f
MODUS-55 = defunct
MODUS-62 = vii-C
MODUS-64 = viii-G
MODUS-69 = defunct
MODUS-84 = defunct
MODUS-85 = defunct
MODUS-101i = defunct
MODUS-101ii = defunct
MODUS-101iii = defunct
MODUS-114 = iii-b
MODUS-119 = ii-D
MODUS-120 = viii-G2
MODUS-122 = defunct
MODUS-129 = viii-G
MODUS-129d = dir
MODUS-137 = ii-D
MODUS-141 = defunct
MODUS-142 = defunct
MODUS-145 = dir
MODUS-148 = vii-a
MODUS-149 = vii-a
MODUS-150 = vii-a
MODUS-benedictus = iisoll-D
MODUS-magnificat = viisoll-c
MODUS-nuncdimittis = defunct
MODUS-ezechiae = ii-D
MODUSLIST = $(sort $(foreach P,$(PSALMS) benedictus magnificat nuncdimittis ezechiae,$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(filter-out 26iv_e 129d,$(PSALMS)))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus magnificat nuncdimittis ezechiae ps129d ps26iv_e)
ALLCOMBPSALMS = $(patsubst $(TMP_DIR)/%-boh.tex,$(TMP_DIR)/%-comb.tex,$(ALLCZPSALMS))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
REQUIEMAETERNAM = requiemaeternam.pslm
APPENDREQUIEMAETERNAM = --append "`cat $(REQUIEMAETERNAM)`"
LAPSALMOPTS_COMMON = --accents-style bold --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(filter-out 26iv_e 129d,$(PSALMS)))
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,benedictus magnificat nuncdimittis ezechiae)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA) $(patsubst %,$(TMP_DIR)/%.tex,ps129d) \
	      $(patsubst %,$(TMP_DIR)/%.tex,ps26iv_e)
SCORES = $(addprefix vesp-ant,1 2 3 4 5) vesp-ant-magn \
	 $(addprefix laud-ant,1 2 3 4 5) laud-ant-ben \
	 $(addprefix ant-,dirigedomine converteredomine nequandorapiat \
			  complaceat sitivitanima exsultabunt mesuscepit \
			  delictaiuventutis egosum dominuscustodit egosum \
			  heume omnequoddat operamanuum placebo \
			  egosumresurrectio-tp) \
	 $(addprefix versus-,audivi aporta collocet netradas \
			     aporta-alt collocet-alt netradas-alt) \
	 benedicamus-duplex-laudes benedicamus-duplex-vesperae \
	 deusinadiutorium-communis supplicatiolitaniae oratiodominica \
	 dominusvobiscum-solemnis domineexaudi magnificat-initium-viisoll-c magnificat-initium-vii-c \
	 benedictio-noctemquietam jubedomnebenedicere lectiobrevis-fratressobrii \
	 convertenosdeus deusinadiutorium-communis \
	 oratio-visita benedicamus-minor ant-salveregina-simplex \
	 oratiodominica-mat oratio oratio-compl oratio-fidelium oratio2 requiescant benedicamus-minor \
	 $(addprefix absolutio-,exaudi ipsius avinculis) dominelabiamea \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus inunitate deus christus ignem acunctis \
					evangelica ille cujus-ipse adsocietatem) \
	 $(addprefix matant,1 2 3 4 5 6 7 8 9) $(addprefix matresp,1 2 3 4 5 6 7 8 9 10) \
	 tedecetlaus tonus-evangelii-b tonus-lectionis-prophetiae inv-regemcui inv-regemcuiomnia-tp \
	 $(addprefix venite6,a b c d e f) $(addprefix matinv-RegemCu,i i3) \
	 benedicamus-solemnis-laud ps26-initium-iv-E ps26-initium-iv_-e seq-DiesIrae \
	 $(addprefix resp-,credoquod-GN quilazarum-GN dominequando-CROCHU \
			   mementomei-CROCHU heumihi-CROCHU nerecorderis-CROCHU \
			   peccantemme-CROCHU dominesecundum-CROCHU liberamedominedemorte-CROCHU \
			   subvenite-gn exaltabotedomine-tp)
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = seq-DiesIrae-bohtext.tex $(TMP_DIR)/magnificatviic.tex $(TMP_DIR)/benedictus-initium-ii-D-auto.gtex \
	    $(TMP_DIR)/benedictusiiD.tex
LAPSALMSINITGABC = $(foreach P,$(filter-out 26iv_e 129d 118vi 118vii 118ix 118x 118xii 118xiii,$(PSALMS)),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,benedictus nuncdimittis ezechiae,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(TMP_DIR)/ps129-initium-$(MODUS-129d)-auto.gabc \
		   $(TMP_DIR)/ps26-initium-$(MODUS-26iv_e)-auto.gabc
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

all: defunctorum.pdf omniumdefunctorum.pdf defunctorum-breviori.pdf
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDREQUIEMAETERNAM) $(LAPSALMOPTS)
$(TMP_DIR)/magnificat.tex $(TMP_DIR)/magnificatviic.tex: PSALMOPTS = $(APPENDREQUIEMAETERNAM) --accents-style bold --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/magnificatviic.tex: TONUS = 2 0 2 0
$(TMP_DIR)/benedictusiiD.tex: TONUS = 1 0 1 1
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(TMP_DIR)/ps129d-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/ps129.pslm
	$(GENPSALM)
$(TMP_DIR)/ps26iv_e-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/ps26.pslm
	$(GENPSALM)
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus ezechiae): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
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
$(TMP_DIR)/ps129d.pslm: $(PSALMS_DIR)/ps129.pslm
	$(CP) -a $< $@
$(TMP_DIR)/ps26iv_e.pslm: $(PSALMS_DIR)/ps26.pslm
	$(CP) -a $< $@
$(TMP_DIR)/ps129d.tex: $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps26iv_e.tex: $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/magnificatviic.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/benedictusiiD.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/benedictus.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/magnificat-comb.tex: PSSKIP = 2
defunctorum.pdf omniumdefunctorum.pdf defunctorum-breviori.pdf: %.pdf: %.tex conventuscommune.tex translationes_cs.tex defunctorum.png torcello.jpg \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
