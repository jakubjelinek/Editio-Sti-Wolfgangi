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
PSALMS = 2 18i 23 45 62 66 71i 71ii 84 88ii_xix 88xx_xxx 92 95 96 97 98 99 104i 104ii 104iii 105i 105ii 105iii 109 110 111 112 116 121 126 129 131 144ii 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-2 = viii-C
MODUS-18i = v-a
MODUS-23 = v-a
MODUS-45 = viii-G
MODUS-62 = ii-D
MODUS-66 = i-d
MODUS-71i = iii-b
MODUS-71ii = ii_-a
MODUS-84 = viii-a
MODUS-88ii_xix = i-a2
MODUS-88xx_xxx = ii-D
MODUS-92 = vi-F
MODUS-95 = ii_-a
MODUS-96 = viii-G
MODUS-97 = viii-G
MODUS-98 = viii-G2
MODUS-99 = iii-a2
MODUS-104i = d-g
MODUS-104ii = viii-a
MODUS-104iii = iv-E
MODUS-105i = e
MODUS-105ii = viii-G
MODUS-105iii = vii-a
MODUS-109 = i-g
MODUS-110 = vii-a
MODUS-111 = vii-d
MODUS-112 = vi-F
MODUS-116 = iii-a2
MODUS-121 = iv-E
MODUS-126 = i-g
MODUS-129 = ii_-B
MODUS-131 = viii-G
MODUS-144ii = viii-G
MODUS-145 = iv-E
MODUS-146 = ii-D
MODUS-147 = ii-D
MODUS-148 = ii-D
MODUS-149 = viii-G2
MODUS-150 = ii-D
MODUS-dan3 = vii-d
MODUS-magnificat-I = vi-F
MODUS-magnificat-II = iv-E
MODUS-magnificat-III = viiisoll-G
MODUS-magnificat-IV = iisoll-A
MODUS-magnificat-V = iiisoll-e
MODUS-magnificat-VI = isoll-a3
MODUS-benedictus-I = vii-d
MODUS-benedictus-II = viii-G2
MODUS-benedictus-III = viiisoll-G
MODUS-benedictus-IV = vii-b
MAGNIFICAT = $(foreach M,I II III IV V VI,magnificat-$(M))
BENEDICTUS = $(foreach B,I II III IV,benedictus-$(B))
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(MAGNIFICAT) dan3 $(BENEDICTUS),$(MODUS-$(P)))) i-f
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
SCORES = $(addprefix ant-,angelusadpastores apuddominum benedicenturinipso defructuventris \
			  dominusvirtutum exortumest gaudeamusomnesfideles orieturindiebus \
			  parvulusfilius pastoresloquebantur quemvidistis redemptionemmisit \
			  tecumprincipium egoprimogenitum misericordiaetveritas glorificamuste \
			  natodomino veritasdeterra luxortaestiusto notumfecitdominus \
			  silvesterbeatissimus laetenturcaeli factaestcumangelo \
			  dominusdixitadme eccemariagenuit exsultabuntomnialigna \
			  germinavitradixiesse inprincipioetantesaecula insoleposuit \
			  magnumhereditatis mirabilemysterium natodominoangelorumchorus \
			  oadmirabile propternimiam quandonatuses rubumquemviderat elevamini \
			  laeteturcor domusiacob eduxitdeus visitanos dominusmihi cumtribularentur \
			  mariavirgosemper illuxitnobisdies natusestnobissalvator omnedatumoptimum \
			  quideterraest virgoverboconcepit inpraesepioiacebat luxortaest \
			  natusestnobisdeus nesciensmatervirgo populusgentium \
			  verbumcaro exsultemusindomino interrisnatusest) \
	 $(addprefix capitulum-,Multifariam ApparuitGratia) \
	 $(addprefix hym-,ASolisOrtus ChristeRedemptor CandorAEternae CandorAEternae-simplex \
			  CordeNatus FitPorta RadixIesse) \
	 $(addprefix resp-,notumfecit verbumcaro-simplex verbumcaro) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(foreach M,vi-F iv-E viiisoll-G iisoll-A iiisoll-e isoll-a3,magnificat-initium-$(M)) \
	 $(addprefix versus-,notumfecit-communis tamquam verbumcaro) \
	 oratio oratiobmv oratiodomii supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,semiduplex-laud semiduplex-vesp duplexmajus-laudes minor festis-bmv \
				  feria-laudes feria-vesperae dominica-perannum) \
	 $(addprefix benedicamus-solemnism-,1vesp 2vesp laud) \
	 dominelabiamea inv-christusnatusest inv-christusnatusest-simplex inv-maternitatemvirginis \
	 benedicamus-solemnis-laud \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica quorum divinum adsocietatem) \
	 $(addprefix resp-,benedictusquivenit-CROCHU hodienobis-CROCHU hicquiadvenit-CROCHU-cumdox \
			   confirmatumest-CROCHU nesciensmatervirgo-CROCHU verbumcarofactumest-CROCHU-cumdox \
			   oregemcaeli-CROCHU ecceagnusdei-CROCHU hodienobiscaelorum-CROCHU-cumdox \
			   beatadeigenitrix-CROCHU beataviscera-CROCHU-cumdox continetingremio-CROCHU \
			   sanctaetimmaculata-CROCHU nesciensmatervirgo-CROCHU-cumdox) \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) \
	 an_regina_caeli_simplex convertenosdeus dominusnosbenedicat \
	 jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 benedictio-noctemquietam an_salve_regina tonusprecum \
	 ps88ii_xix-initium-i-a2 ps88xx_xxx-initium-ii-D benedictus-initium-viii-G2 \
	 ps97-initium-viii-d dan3-initium-i-g-trans ps126-initium-i-g-trans \
	 ps105i-initium-e
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(foreach B,vii-d viii-G2 viiisoll-G vii-b,$(TMP_DIR)/benedictus-initium-$(B)-auto.gtex) \
	    $(TMP_DIR)/ps149gp.tex $(TMP_DIR)/ps97-initium-v-a-auto.gtex $(TMP_DIR)/ps97va.tex \
	    $(TMP_DIR)/ps62-initium-iv-E-auto.gtex $(TMP_DIR)/ps62ivE.tex \
	    $(TMP_DIR)/dan3-initium-i-g-auto.gtex $(TMP_DIR)/dan3ig.tex \
	    $(TMP_DIR)/ps149-initium-ii-D-auto.gtex $(TMP_DIR)/ps149iiD.tex \
	    $(TMP_DIR)/ps109-initium-vi-F-auto.gtex $(TMP_DIR)/ps109viF.tex \
	    $(TMP_DIR)/ps112-initium-iii-a2-auto.gtex $(TMP_DIR)/ps112iiia2.tex \
	    $(TMP_DIR)/ps145-initium-viii-G-auto.gtex $(TMP_DIR)/ps145viiiG.tex \
	    $(TMP_DIR)/ps146-initium-viii-G2-auto.gtex $(TMP_DIR)/ps146viiiG2.tex \
	    $(TMP_DIR)/ps92-initium-i-g-auto.gtex $(TMP_DIR)/ps92ig.tex \
	    $(TMP_DIR)/ps99-initium-viii-G-auto.gtex $(TMP_DIR)/ps99viiiG.tex \
	    $(TMP_DIR)/ps62-initium-viii-G-auto.gtex $(TMP_DIR)/ps62viiiG.tex \
	    $(TMP_DIR)/dan3-initium-vi-F-auto.gtex $(TMP_DIR)/dan3viF.tex \
	    $(TMP_DIR)/ps148-initium-i-f-auto.gtex $(TMP_DIR)/ps148if.tex \
	    $(TMP_DIR)/ps149-initium-i-f-auto.gtex $(TMP_DIR)/ps149if.tex \
	    $(TMP_DIR)/ps150-initium-i-f-auto.gtex $(TMP_DIR)/ps150if.tex \
	    $(TMP_DIR)/ps109-initium-viii-G-auto.gtex $(TMP_DIR)/ps109viiiG.tex \
	    $(TMP_DIR)/ps112-initium-viii-G-auto.gtex $(TMP_DIR)/ps112viiiG.tex \
	    $(TMP_DIR)/ps121-initium-viii-G2-auto.gtex $(TMP_DIR)/ps121viiiG2.tex \
	    $(TMP_DIR)/ps126-initium-ii-D-auto.gtex $(TMP_DIR)/ps126iiD.tex
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../PostPentecosten ../CorpusChristi ../PetriEtPauli ../Adventus
include $(iter)

PDF = dievpostnativitatem.pdf dievipostnativitatem.pdf dieviipostnativitatem.pdf sdeigenetricismariae.pdf \
      iiianuarii.pdf dominicaiipostnativitatem.pdf
all: $(PDF)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps149gp.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(TMP_DIR)/ps149gp.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps88xx_xxx.tex: TONUS = 1 0 1 0
$(TMP_DIR)/ps97va.tex: TONUS = 1 0 2 0
$(TMP_DIR)/ps62ivE.tex: TONUS = 1 2 1 3
$(TMP_DIR)/dan3ig.tex: TONUS = 2 0 1 2
$(TMP_DIR)/dan3ig.tex: PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps149iiD.tex: TONUS = 1 0 1 1
$(TMP_DIR)/ps149iiD.tex: PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps109viF.tex: TONUS = 1 1 1 2
$(TMP_DIR)/ps112viF.tex: TONUS = 2 0 2 0
$(TMP_DIR)/ps145viiiG.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps146viiiG2.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps92ig.tex: TONUS = 2 0 1 2
$(TMP_DIR)/ps99viiiG.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps62viiiG.tex: TONUS = 1 0 1 2
$(TMP_DIR)/dan3viF.tex: TONUS = 1 1 1 2
$(TMP_DIR)/dan3viF.tex: PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps109viiiG.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps112viiiG.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps121viiiG2.tex: TONUS = 1 0 1 2
$(TMP_DIR)/ps126iiD.tex: TONUS = 1 0 1 1
$(TMP_DIR)/ps148if.tex: TONUS = 2 0 1 2
$(TMP_DIR)/ps148if.tex: PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps149if.tex: TONUS = 2 0 1 2
$(TMP_DIR)/ps149if.tex: PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/ps150if.tex: TONUS = 2 0 1 2
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
$(TMP_DIR)/ps149gp.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps149.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps149iiD.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps149.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps97va.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps97.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps62ivE.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps62.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/dan3ig.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/dan3.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps109viF.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps109.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps112iiia2.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps112.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps145viiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps145.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps146viiiG2.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps146.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps92ig.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps92.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps99viiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps99.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps62viiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps62.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/dan3viF.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/dan3.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps109viiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps109.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps112viiiG.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps112.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps121viiiG2.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps121.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps126iiD.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps126.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps148if.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps148.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps149if.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps149.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps150if.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps150.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(PDF): %.pdf: %.tex feria.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
