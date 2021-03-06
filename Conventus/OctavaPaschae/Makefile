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
PSALMS = 1 2 3 62 92 99 109 110 111 112 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = i-F
MODUS-2 = i-f
MODUS-3 = viii-c
MODUS-62 = viii-C
MODUS-92 = viii-G
MODUS-99 = vii-c
MODUS-109 = viii-G
MODUS-110 = vii-c
MODUS-111 = viii-C
MODUS-112 = viii-g
MODUS-148 = viii-g
MODUS-149 = viii-g
MODUS-150 = viii-g
MODUS-dan3 = vii-a
MODUS-magnificat = viii-G2
MODUS-benedictus = viii-G
MODUS-magnificat2 = vii-d
MODUS-benedictus2 = vii-c
MODUS-benedictus3 = i-f
MODUS-benedictus4 = vii-a
MODUSLIST = $(sort $(foreach P,$(PSALMS) magnificat benedictus magnificat2 benedictus2 benedictus3 benedictus4 dan3,$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat benedictus dan3)
ALLCOMBPSALMS = $(patsubst $(TMP_DIR)/%-boh.tex,$(TMP_DIR)/%-comb.tex,$(ALLCZPSALMS))
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,benedictus magnificat nuncdimittis dan3)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(patsubst %,ant-%,jesusjunxit quisunt stetitjesus videte mittite dixit \
			    maria tulerunt undecim dataest currebant \
			    angelusautemdomini respondensautemangelus \
			    etecceterraemotus eratautem praetimoreautem \
			    egosumquisum postulavi egodormivi) \
	 $(addprefix magnificat-initium-,viii-G viii-G2 viii-g vii-d) \
	 dominelabiamea inv-surrexitdominusvere \
	 $(patsubst %,absolutio-%,ipsius avinculis exaudi) \
	 $(patsubst %,resp-%,virtutemagna deoreprudentis eccevicitleo egosumvitisvera \
			     tulleruntdominum congratulamini surgensjesus expurgate \
			     christusresurgens istisuntagni mariamagdalene \
			     surrexitpastor) \
	 $(patsubst %,benedictio-solemn-%,evangelica divinum adsocietatem) \
	 tedeum-solemnis $(addprefix deusinadiutorium-,alter solemnis) \
	 $(addprefix respbr-,laud vesp) $(addprefix hym-,AuroraLucis AdCoenam) \
	 versus-haecdies $(addprefix oratio,2 3 4 5 6 7) benedicamus-octava-paschae \
	 capitulum-FratresExpurgate supplicatiolitaniae oratiodominica \
	 oratiodominica-mat dominusvobiscum-solemnis domineexaudi
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(TMP_DIR)/magnificat2-comb.tex \
	    $(TMP_DIR)/benedictus2-comb.tex \
	    $(TMP_DIR)/benedictus3-comb.tex \
	    $(TMP_DIR)/benedictus-initium-vii-c-auto.gtex \
	    $(TMP_DIR)/benedictus-initium-vii-a-auto.gtex \
	    $(TMP_DIR)/benedictus-initium-i-f-auto.gtex \
	    $(TMP_DIR)/magnificat-initium-vii-d.gtex
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,benedictus dan3,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) cantus/amon33 ../AdventusDominicaII/cantus/amon33 \
	     $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) \
	     $(addprefix ../Epiphania/cantus/,arom12 grom61 cselecti57 nrom02 triplex76) ../DominicaInAlbis \
	     ../DominicaTemporePaschali
include $(iter)

all: $(patsubst %,feria%-op.pdf,ii iii iv v vi) sabbato-op.pdf
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/magnificat.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/magnificat2.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(TMP_DIR)/benedictus-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex, magnificat): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(LAPSALMSEXTRA): $(TMP_DIR)/%.tex: $(PSALMS_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/magnificat2.tex: TONUS=$(TONUS-$(MODUS-magnificat2))
$(TMP_DIR)/magnificat2.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/benedictus2.tex: TONUS=$(TONUS-$(MODUS-benedictus2))
$(TMP_DIR)/benedictus2.tex: $(PSALMS_DIR)/benedictus.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/benedictus3.tex: TONUS=$(TONUS-$(MODUS-benedictus3))
$(TMP_DIR)/benedictus3.tex: $(PSALMS_DIR)/benedictus.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/magnificat-comb.tex: PSSKIP = 2
$(TMP_DIR)/magnificat2-comb.tex: $(TMP_DIR)/magnificat2.tex $(TMP_DIR)/magnificat-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/benedictus2-comb.tex: $(TMP_DIR)/benedictus2.tex $(TMP_DIR)/benedictus-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/benedictus3-comb.tex: $(TMP_DIR)/benedictus3.tex $(TMP_DIR)/benedictus-boh.tex
	$(GENPSCOMB)
$(patsubst %,feria%-op.pdf,ii iii iv v vi) sabbato-op.pdf: \
%.pdf: %.tex octavapaschae.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
