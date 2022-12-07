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
PSALMS = 4 8 18 23 44 45 62 66 86 90 92 95 96 97 99 109 112 116 118v_vi 118vii_viii 118ix_x 118xi_xii 118xiii_xiv 118xv_xvi 118xvii_xviii 118xix_xx 118xxi_xxii 121 126 133 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-4 = viii-G
MODUS-8 = iv-A
MODUS-18 = iv-A
MODUS-23 = iv-A
MODUS-44 = vii-c
MODUS-45 = vii-c
MODUS-62 = iii-a2
MODUS-66 = dir
MODUS-86 = vii-c
MODUS-90 = viii-G
MODUS-92 = viii-G
MODUS-95 = iv-c
MODUS-96 = iv-c
MODUS-97 = iv-c
MODUS-99 = vii-c
MODUS-109 = i-g2
MODUS-112 = viii-G
MODUS-116 = viii-G
MODUS-118v_vi = vii-c
MODUS-118vii_viii = vii-c
MODUS-118ix_x = vii-c
MODUS-118xi_xii = vi-F
MODUS-118xiii_xiv = vi-F
MODUS-118xv_xvi = vi-F
MODUS-118xvii_xviii = vii-c
MODUS-118xix_xx = vii-c
MODUS-118xxi_xxii = vii-c
MODUS-121 = viii-c
MODUS-126 = iv-d
MODUS-133 = viii-G
MODUS-145 = vii-a
MODUS-146 = vii-a
MODUS-147 = iv-E
MODUS-148 = vii-c
MODUS-149 = iii-a
MODUS-150 = vii-c
MODUS-benedictus = iiisoll-a
MODUS-magnificat = isoll-D
MODUS-nuncdimittis = iii-a
MODUS-dan3 = vii-a
MODUSLIST = $(sort $(foreach P,$(PSALMS) benedictus magnificat nuncdimittis dan3,$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus magnificat nuncdimittis dan3)
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,benedictus magnificat nuncdimittis dan3)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant,1 2 3 4 5) ant-magn-vesp1 ant-magn-vesp2 ant-ben-laud \
	 $(addprefix versus-,nativitasest custodi orapronobis specie adjuvabit elegit immaculata) \
	 $(addprefix hym-,AveMarisStella OGloriosaDomina TeLucis NuncSancte RectorPotens RerumDeus QuemTerra \
			  BeataDeiGenetrix OSanctaMundiDomina AveMarisStella-iv AveMaris-praglia InPlausu \
			  TeDicimus) \
	 benedicamus-duplex-laudes benedicamus-duplex-vesperae benedicamus-festis-bmv \
	 $(addprefix deusinadiutorium-,communis solemnis alter) supplicatiolitaniae oratiodominica resp1v \
	 dominusvobiscum-solemnis domineexaudi $(addprefix magnificat-initium-,isoll-D isoll-f viiisoll-G) \
	 $(addprefix capitulum-,AbInitio tuautem EtSic InPlateis DominusPossedit) \
	 benedictio-noctemquietam jubedomnebenedicere lectiobrevis-fratressobrii \
	 convertenosdeus ant-miserere deusinadiutorium-communis \
	 resp-inmanus resp-deusomnipotens resp-inhoccognovi ant-salvanos-antiquo \
	 oratio-visita benedicamus-minor ant-salveregina-simplex \
	 oratio introitus-GaudeamusOmnes graduale-BenedictaEtVenerabilis \
	 alleluia-SolemnitasGloriosae offertorium-BeataEs \
	 communio-BeatamMeDicent communio-versus-Magnificat \
	 ix-agnusdei ix-gloria ix-kyrie ix-sanctus credo-iii \
	 oratiodominica-mat benedicamus-minor \
	 $(addprefix absolutio-,exaudi ipsius avinculis) dominelabiamea \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus deus christus ignem evangelica cujus-virgo-virginum adsocietatem) \
	 $(addprefix matant,1 2 3 4 5 6 7 8 9) $(addprefix matresp,1 2 3 4 5 6 7 8) \
	 $(addprefix ant-,adestnamquenativitas animamealiquefacta antethorum-FKP benedictatu descendiinhortum \
			  dignareme gaudemariavirgo omniumrerumcreator postpartum sanctamaria totapulchraes \
			  cordeetanimo nativitasgloriosae regaliexprogenie nativitatemhodiernam nativitastua \
			  beatammedicent aitdominusdeus benedictaestu trahenos vidispeciosam \
			  totapulchra vestimentumtuum tugloriajerusalem hodieegressaest odortuus) \
	 tedecetlaus tedecetlausii tonus-evangelii-b tonus-lectionis-solemnis tonusprecum \
	 inv-immaculatamconceptionem dominusnosbenedicat \
	 benedicamus-solemnis-laud tedeum-solemnis tedeum-solemnis-gn tuautem \
	 $(addprefix resp-,beatissimaevirginis-CROCHU gloriosaevirginis-CROCHU \
			   hodienataest-CROCHU nativitasgloriosae-CROCHU nativitastua-CROCHU \
			   beatammedicent-CROCHU felixnamquees-CROCHU \
			   conceptiogloriosae-CROCHU conceptiotua-CROCHU-cumdox hodieconceptaest-CROCHU \
			   felixnamquees-CROCHU-cumdox-conceptionem) \
	 $(patsubst %,ps%-initium-viii-G3,112 116) magnificat-initium-ivsoll-E3 \
	 $(patsubst %,ps%-initium-vii-a,145 146) ps147-initium-iv-E ps23-initium-iv-c \
	 $(patsubst %,ps%-initium-ii_-a,8 95 96 97) $(patsubst %,ps%-initium-vi-C,62 121)
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(addprefix ../InNativitateBMV/cantus/amon33/hym-,$(addsuffix -bohtext.tex,AveMarisStella OGloriosaDomina TeLucis NuncSancte RectorPotens RerumDeus)) \
	    ../InNativitateBMV/cantus/nrom02/hym-QuemTerra-bohtext.tex \
	    $(TMP_DIR)/ps112viiiG.tex $(TMP_DIR)/magnificativE.tex \
	    $(TMP_DIR)/magnificatviiiG.tex $(patsubst %,$(TMP_DIR)/ps%ii_a.tex,95 96 97)
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3 benedictus nuncdimittis,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) ../InNativitateBMV $(addprefix ../InNativitateBMV/cantus/,amon33 triplex76 nrom02) \
	     $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) \
	     $(addprefix ../Epiphania/cantus/,arom12 grom61 cselecti57 triplex76) ../CorpusChristi ../RosariiBMV ../Adventus ../PresentationeBMV
include $(iter)

all: conceptionebmv.pdf
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/magnificat.tex $(TMP_DIR)/magnificativE.tex $(TMP_DIR)/magnificatviiiG.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/ps90.tex: PSALMOPTS = --accents-style bold $(LAPSALMOPTSACC)
$(patsubst %,$(TMP_DIR)/ps%.tex,118vii_viii 118ix_x 118xiii_xiv 118xv_xvi 118xix_xx 118xxi_xxii 133): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold $(LAPSALMOPTSACC)
$(TMP_DIR)/ps112viiiG.tex: TONUS = 1 0 1 2
$(patsubst %,$(TMP_DIR)/ps%ii_a.tex,95 96 97): TONUS = 1 2 1 3
$(TMP_DIR)/magnificativE.tex: TONUS = 1 3 1 3
$(TMP_DIR)/magnificatviiiG.tex: TONUS = 1 0 1 2
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(TMP_DIR)/benedictus-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
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
$(TMP_DIR)/ps112viiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps112.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/magnificativE.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/magnificatviiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps95ii_a.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps95.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps96ii_a.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps96.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps97ii_a.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps97.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/magnificat-comb.tex: PSSKIP = 2
$(patsubst %,$(TMP_DIR)/ps%-comb.tex,90 118vii_viii 118ix_x 118xiii_xiv 118xv_xvi 118xix_xx 118xxi_xxii 133): PSSKIP = 0
#$(TMP_DIR)/communio-versus-Exsurgat-comb.tex: $(patsubst %,communio-versus-Exsurgat%tex,. -boh.)
#	$(GENPSCOMB)
conceptionebmv.pdf: %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
