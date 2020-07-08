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
PSALMS = 4 5 34i 34ii 34iii 35 36i 36ii 36iii 37i 37ii 38 42 44i 44ii 45 47 48i 48ii 49i_vi 49vii_xv 49xvi_xxiii 50 56 62 63 64 75 87 89 90 91 109 110 111 112 113 114 115 116 117 128 129 130 131 132 133 134 135 136 137 138i 138ii 139 140 141 142 143i 143ii 144i 144ii 145 146 147 148 149 150
include tonus.mk
MODUS-50-I = vi-F
MODUS-117-I = vi-F
MODUS-62-I = vi-F
MODUS-dan3 = viii-G
MODUS-148-I = viii-G
MODUS-149-I = viii-G
MODUS-150-I = viii-G
MODUS-109-I = vii-c2
MODUS-110-I = iv-g
MODUS-111-I = iv-a
MODUS-112-I = vii-c
MODUS-4-I = viii-G
MODUS-90-I = viii-G
MODUS-133-I = viii-G
MODUS-nuncdimittis = iii-a
MODUS-50-II = vi-F
MODUS-5-II = viii-A
MODUS-35-II = viii-A
MODUS-isaiae = viii-G
MODUS-148-II = i-a
MODUS-149-II = i-a
MODUS-150-II = i-a
MODUS-benedictus-II = vi-F
MODUS-113-II = per
MODUS-114-II = i-g2
MODUS-115-II = viii-a
MODUS-116-II = viii-a
MODUS-128-II = ii-D
MODUS-magnificat-II = viii-G
MODUS-34i-III = iv-g
MODUS-34ii-III = i-g
MODUS-34iii-III = ii-D
MODUS-36i-III = vi-F
MODUS-36ii-III = iv-A_
MODUS-36iii-III = viii-g
MODUS-37i-III = viii-C
MODUS-37ii-III = ii-D
MODUS-38-III = iv-E
MODUS-50-III = iv-E
MODUS-42-III = vi-F
MODUS-56-III = viii-G2
MODUS-ezechiae = irreg
MODUS-148-III = v-g
MODUS-149-III = v-g
MODUS-150-III = v-g
MODUS-benedictus-III = vii-a
MODUS-129-III = viii-A
MODUS-130-III = irreg
MODUS-131-III = irreg
MODUS-132-III = i-a
MODUS-magnificat-III = v-a
MODUS-44i-IV = vi-F
MODUS-44ii-IV = i-g
MODUS-45-IV = e
MODUS-47-IV = iv-a
MODUS-48i-IV = vii-c
MODUS-48ii-IV = e
MODUS-49i_vi-IV = viii-A
MODUS-49vii_xv-IV = e
MODUS-49xvi_xxiii-IV = viii-c
MODUS-50-IV = vii-a
MODUS-63-IV = ii-D
MODUS-64-IV = viii-A
MODUS-anna = i-g2
MODUS-148-IV = ii-D
MODUS-149-IV = ii-D
MODUS-150-IV = ii-D
MODUS-benedictus-IV = i-g5
MODUS-134-IV = iii-g
MODUS-135-IV = iii-g
MODUS-136-IV = viii-G
MODUS-137-IV = v-a
MODUS-magnificat-IV = viii-G2
MODUS-50-V = viii-G2
MODUS-87-V = v-a
MODUS-89-V = vi-F
MODUS-moysis = irreg
MODUS-148-V = vi-F
MODUS-149-V = vi-F
MODUS-150-V = vi-F
MODUS-benedictus-V = vii-a
MODUS-138i-V = iii-g
MODUS-138ii-V = iii-g
MODUS-139-V = iv-g
MODUS-140-V = viii-A
MODUS-magnificat-V = vii-c
MODUS-50-VI = i-a2
MODUS-75-VI = viii-A
MODUS-91-VI = viii-A
MODUS-habacuc = iv-E
MODUS-148-VI = i-f
MODUS-149-VI = i-f
MODUS-150-VI = i-f
MODUS-benedictus-VI = viii-G
MODUS-141-VI = viii-A
MODUS-143i-VI = vi-F
MODUS-143ii-VI = vi-F
MODUS-144i-VI = viii-A
MODUS-magnificat-VI = ii-D
MODUS-50-VII = iv-E
MODUS-142-VII = viii-G
MODUS-moysis2i = vi-F
MODUS-moysis2ii = vi-F
MODUS-148-VII = iv-E
MODUS-149-VII = iv-E
MODUS-150-VII = iv-E
MODUS-benedictus-VII = viii-G
MODUS-144ii-VII = vii-c2
MODUS-145-VII = iv-E
MODUS-146-VII = viii-A
MODUS-147-VII = e
CANTICIS = isaiae ezechiae anna moysis habacuc moysis2i moysis2ii nuncdimittis dan3
NUMSI = I II III IV V VI VII
NUMSII = II III IV V VI VII
NUMSIII = II III IV V VI
PSALMSALT = $(foreach V,$(NUMSI),$(addsuffix -$(V),$(PSALMS)))
BENEDICTUS = $(foreach B,$(NUMSII),benedictus-$(B))
MAGNIFICAT = $(foreach M,$(NUMSIII),magnificat-$(M))
MODUSLIST = $(sort $(foreach P,$(PSALMSALT) $(MAGNIFICAT) $(CANTICIS) $(BENEDICTUS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat benedictus $(CANTICIS))
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMSALT)) $(MAGNIFICAT) \
						   $(CANTICIS) $(BENEDICTUS))
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) $(CANTICIS))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,alleluia1 alleluia2 ampliuslavame atimore aviroiniquo \
			  beatadeigenitrix beatamater benedictusdeusisrael benedictusdominus \
			  benignefac bonumestconfiteri caelicaelorum cantemusdomino conversusest \
			  credidi cunctisdiebus datemagnitudinem deledomine demanuomnium deonostro \
			  deprofundis dixitdominus domineaudivi domineclamaviadte domineincaelo \
			  domineprobastime dominerefugium dominusjudicabit eccequambonum \
			  erexitnobisdominus etomnis exsultetspiritusmeus facdeuspotentiam \
			  fideliaomnia hymnumcantate inclinavitdominus inconspectuangelorum \
			  incymbalis inisraelmagnum inmandatis insanctisejus insanctitate \
			  intelligeclamorem intretoratio intympanoetchoro inveritatetua \
			  laudabodeum laudajerusalem laudatedominum magnificat misereremeideus \
			  nosquivivimus omnesangeliejus omniaquaecumque persingulosdies \
			  pervisceramisericordiae portiomeadomine quoniaminaeternum \
			  quoniaminteconfidit regnumtuum respexitdominus saepeexpungaveruntme \
			  salutarevultusmei sitnomendomini speretisrael spirituprincipali \
			  tedecet tibisoli trespueri salvanos-antiquo miserere subtuum \
			  brachiapeccatorum custodiinnocentiam expugnaimpugnantes \
			  exsurgedomine intendeinadjutorium neiniratua restitueanimam \
			  reveladomino utnondelinquam adjutorintribulationibus auribuspercipite \
			  deusdeorum eructavitcor immoladeo intellegite magnusdominus \
			  osmeumloquetur speciosusforma) \
	 $(addprefix hym-TeLucis-,feria minor dominica major solemnis bmv) \
	 $(patsubst %,hym-%-aestivalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				       LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				       TellurisIngens) \
	 $(addprefix hym-,EcceJamNoctis AveMarisStella OGloriosaDomina AdPrecesNostras \
			  ChristeLuxVera AmorisSensusErige) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(addprefix capitulum-,Benedictio BenedictusDeus NoxPraecessit OAltitudo AbInitio \
				tuautem) \
	 $(addprefix versus-,custodi gaude dirigatur dominusregnavit repleti vespertina \
			     diffusa) \
	 $(addprefix oratio,5 bmv) \
	 supplicatiolitaniae oratiodominica oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv dominica-perannum) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum) \
	 dominelabiamea \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem ille) \
	 $(addprefix resp-,dominesiconversus-CROCHU egotetuli-CROCHU-cumdox \
			   factumestdumtolleret-CROCHU peccavisupernumerum-CROCHU \
			   exaudisti-CROCHU audidominehymnum-CROCHU-cumdox) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) \
	 an_salve_regina ant-salveregina-simplex benedictio-noctemquietam \
	 $(addsuffix -initium-irreg,ezechiae moysis ps130 ps131) \
	 habacuc-initium-iv-E ps48ii-initium-e
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3 nuncdimittis,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach V,$(NUMSI),$(TMP_DIR)/ps$(P)-initium-$(if $(MODUS-$(P)-$(V)),$(MODUS-$(P)-$(V)),ii-D)-auto.gabc)) \
		   $(foreach V,$(NUMSII),$(TMP_DIR)/benedictus-initium-$(if $(MODUS-benedictus-$(V)),$(MODUS-benedictus-$(V)),ii-D)-auto.gabc) \
		   $(foreach V,$(NUMSIII),$(TMP_DIR)/magnificat-initium-$(if $(MODUS-magnificat-$(V)),$(MODUS-magnificat-$(V)),ii-D).gabc) \
		   $(foreach P,$(CANTICIS),$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi
include $(iter)
$(TMP_DIR)/%-I.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-II.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-III.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-IV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-V.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-IX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-X.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-I-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-II-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-III-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-IV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-V-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-IX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-X-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@

FERIAE = ii iii iv v vi
HEBDOMADAE = v
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDF = completorium.pdf $(PDFI) $(PDFII) $(PDFIII)
all: $(PDF)
define iter-doit
$(patsubst %.pdf,%.tex,$(i)): feria$(word 1,$(subst -, ,$(patsubst feria%.pdf,%,$(i)))).tex hebdomada$(word 2,$(subst -, ,$(patsubst feria%.pdf,%,$(i)))).tex ; touch $$@
endef
iter-left := $(PDFI)
include $(iter)
define iter-doit
$(patsubst %.pdf,%.tex,$(i)): sabbato.tex hebdomada$(patsubst sabbato-%.pdf,%,$(i)).tex ; touch $$@
endef
iter-left := $(PDFII)
include $(iter)
define iter-doit
$(patsubst %.pdf,%.tex,$(i)): dominica.tex hebdomada$(patsubst dominica-%.pdf,%,$(i)).tex ; touch $$@
endef
iter-left := $(PDFIII)
include $(iter)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach V,$(NUMSI),$(patsubst %,$(TMP_DIR)/%-$(V).tex,ps115 ps148 ps149)): PSALMOPTS = $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus $(filter-out dan3 nuncdimittis,$(CANTICIS))): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/nuncdimittis-boh.tex $(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(CANTICIS)): \
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
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(PDF): %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
