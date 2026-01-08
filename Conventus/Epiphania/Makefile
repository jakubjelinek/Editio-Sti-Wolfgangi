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
PSALMS = 4 5 6 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 11 17ii_vii 17viii_xx 17xxi_xxx 23 28 32 35 37ii_v 37vi_xiii 37xiv_xxiii 43i 43ii 43iii 45 46 50 62 65 71 79 80 85 90 91 92 95 96 99 105i 105ii 105iii 109 110 111 112 113 116 118v_vi 118vii_viii 118ix_x 118xi_xii 118xiii_xiv 118xv_xvi 118xvii_xviii 118xix_xx 118xxi_xxii 133 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-4 = viii-G
MODUS-5 = viii-A
MODUS-6 = iv-E
MODUS-8 = i-g
MODUS-9ii_xi = viii-G
MODUS-9xii_xxi = i-g3
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e
MODUS-11 = viii-G
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g
MODUS-17xxi_xxx = iv_-e
MODUS-23 = iv_-e
MODUS-28 = vii-a
MODUS-32 = iv-E
MODUS-35 = ii-D
MODUS-37ii_v = viii-C
MODUS-37vi_xiii = ii_-a
MODUS-37xiv_xxiii = ii-A
MODUS-43i = viii-G
MODUS-43ii = ii_-a
MODUS-43iii = ii-D
MODUS-45 = vi-F
MODUS-46 = i-f
MODUS-50 = vii-a
MODUS-62 = i-g3
MODUS-65 = iv-E
MODUS-71 = i-a2
MODUS-79 = ii_-B
MODUS-80 = i-g5
MODUS-85 = iv-e
MODUS-90 = viii-G
MODUS-91 = e
MODUS-92 = ii-D
MODUS-95 = vi-F
MODUS-96 = vi-F
MODUS-99 = i-g2
MODUS-109 = ii-D
MODUS-105i = e
MODUS-105ii = viii-G
MODUS-105iii = vii-a
MODUS-110 = i-g2
MODUS-111 = i-g3
MODUS-112 = iv-E
MODUS-113 = vii-c2
MODUS-116 = vii-c2
MODUS-118v_vi = i-g2
MODUS-118vii_viii = i-g2
MODUS-118ix_x = i-g2
MODUS-118xi_xii = i-g3
MODUS-118xiii_xiv = i-g3
MODUS-118xv_xvi = i-g3
MODUS-118xvii_xviii = vii-c2
MODUS-118xix_xx = vii-c2
MODUS-118xxi_xxii = vii-c2
MODUS-133 = viii-G
MODUS-147 = e
MODUS-148 = vii-c2
MODUS-149 = vii-c2
MODUS-150 = vii-c2
MODUS-benedictus-I = viiisoll-G2
MODUS-benedictus-II = viii-G
MODUS-benedictus-III = iv-E
MODUS-benedictus-IV = iv-e2
MODUS-benedictus-V = vi-F
MODUS-benedictus-VI = vii-a
MODUS-magnificat-I = viiisoll-G2
MODUS-magnificat-II = vii-a
MODUS-magnificat-III = viii-C
MODUS-magnificat-IV = i-f
MODUS-nuncdimittis = iii-a
MODUS-dan3 = iv-E
MODUS-isaiae = viii-G
MODUS-habacuc = iv_-e
MODUS-moysis2i_xii = vi-F
MODUS-david = i-f
MODUS-tobiae = vii-a
MODUS-iudith2 = ii_-d
MAGNIFICAT = $(foreach M,I II III IV,magnificat-$(M))
BENEDICTUS = $(foreach B,I II III IV V VI,benedictus-$(B))
CANTICIS = isaiae habacuc moysis2i_xii david tobiae iudith2
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(BENEDICTUS) $(MAGNIFICAT) nuncdimittis dan3 $(CANTICIS),$(MODUS-$(P)))) iv_-E viii-c
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,dan3 $(BENEDICTUS) $(MAGNIFICAT) nuncdimittis $(CANTICIS))
ALLCOMBPSALMS = $(patsubst $(TMP_DIR)/%-boh.tex,$(TMP_DIR)/%-comb.tex,$(ALLCZPSALMS)) $(TMP_DIR)/ps94-comb.tex
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
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,nuncdimittis dan3 $(CANTICIS))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA) $(patsubst %,$(TMP_DIR)/%.tex,$(BENEDICTUS) $(MAGNIFICAT))
SCORES = alleluia-VidimusStellam ant1 ant2 ant3 ant4 ant5 ant-ben-laud ant-magn-vesp1 \
	 ant-magn-vesp2 communio-VidimusStellam communio-versus-DeusJudicium-initium \
	 deusinadiutorium-communis domineexaudi dominusvobiscum-solemnis \
	 graduale-OmnesDeSaba hym-HostisHerodes hym-OSolaMagnarum hym-CrudelisHerodes credo-i \
	 introitus-EcceAdvenit ii-agnusdei ii-gloria ii-kyrie ii-sanctus \
	 $(addprefix magnificat-initium-,isoll-D_ viiisoll-G2 vii-a viii-C i-f viii-G) offertorium-RegesTharsis \
	 oratiodominica oratio oratio2 resp1v respl supplicatiolitaniae tuautem \
	 $(addprefix matant,1 2 3 4 5 6 7 8 9) $(addprefix matresp,1 2 3 4 5 6 7 8) \
	 ps94-initium-viii-G tedeum-solemnis tedeum-solemnis-gn annuntiatio christus_apparuit_nobis \
	 $(addprefix hym-,RerumDeus RectorPotens NuncSancte TeLucis QuicumqueChristum MagiVidentes \
			  SplendorPaternae-hiemalis SomnoRefectis ConsorsPaterni PergrataMundo \
			  RerumCreator NoxEtTenebrae) \
	 benedictio-noctemquietam jubedomnebenedicere lectiobrevis-fratressobrii \
	 convertenosdeus ant-miserere deusinadiutorium-solemnis \
	 capitulum-tuautem resp-inmanus resp-omnesdesaba ant-salvanos-antiquo versus-custodi \
	 oratio-visita benedicamus-minor an_alma_redemptoris_mater \
	 versus-omnis versus-adorate-mat oratiodominica-mat \
	 absolutio-exaudi absolutio-ipsius absolutio-avinculis \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus deus christus ignem evangelica divinum perevangelica) \
	 $(addprefix benedicamus-solemnis-,laud 1vesp 2vesp) \
	 $(addprefix benedicamus-,solemnism-laud feria-laudes feria-vesperae) \
	 $(addprefix versus-,adorate adorate-simplex reges reges-simplex omnes reges-communis omnis-simplex venientadte) \
	 $(addprefix capitulum-,Surge Leva Omnes) tedecetlaus tonus-evangelii-b \
	 tonus-lectionis-solemnis \
	 $(addprefix resp-,benedictusdominus deusmeusadiutormeus inclinacormeum) \
	 $(addprefix resp-,hodieiniordane-CROCHU illuminare-CROCHU incolumbaespecie-CROCHU \
			   magiveniunt-CROCHU-cumdox omnesdesaba-CROCHU stellaquamviderunt-CROCHU \
			   videntesstellam-CROCHU-cumdox illuminare-CROCHU-cumdox \
			   diessanctificatusilluxit-CROCHU-cumdox diessanctificatusilluxit-CROCHU \
			   hicestdiespraeclarus-CROCHU-cumdox hicestdiespraeclarus-CROCHU \
			   interrogabatmagosherodes-CROCHU-cumdox interrogabatmagosherodes-CROCHU \
			   triasuntmunera-CROCHU-cumdox triasuntmunera-CROCHU \
			   hodieiniordane-CROCHU-cumdox videntesstellam-CROCHU \
			   emittedominesapientiam-CROCHU-sinedox initiumsapientiae-CROCHU \
			   quisdeusmagnus-CROCHU-cumdox sibonasuscepimus-CROCHU sicutcedrus \
			   istaestspeciosa inprincipiodeusantequam-CROCHU gyrumcaeli-CROCHU \
			   damihidominesedium-CROCHU-cumdox stellaquamviderunt-CROCHU-cumdox \
			   incolumbaespecie-CROCHU-cumdox magiveniunt-CROCHU) \
	 $(addprefix ant-,anteluciferum stellaista venitlumentuum magividentes \
			  tribusmiraculis fluminisimpetus psallitedeo hodiecaelestisponso \
			  omnisterra omnesgentes aboriente confundanturqui conversusestfuror \
			  exsultatedeo extendedomine mementodomine tuamdomineexcita \
			  videntesstellammagi neiniratua confundantur nederelinquasme \
			  luxdeluce triasuntmunera ampliuslavame domineaudivi laudaierusalem \
			  vidimusstellamejus visitanos dominusmihi cumtribularentur \
			  quammagnificatasunt datemagnitudinem quamadmirabileest \
			  admonitimagi confitebortibi intellegeclamorem laudamusnomentuum \
			  misereremihi exsurgedominenon benedictusdeusisrael \
			  affertedomino utquiddomine inaeternum tudomine innocensmanibus \
			  exaltateregem rectosdecet erexitnobisdominus dominemagnuses \
			  factusestadiutormeus domineincaelo rexomnisterrae \
			  memoraredominetestamenti nonenimvosestis diligamtedomine \
			  retribuetmihi interrogabatmagos) \
	  $(addprefix inv-,christusapparuit jubilemusdeo regemmagnum dominumquifecit) \
	  dominelabiamea tonusprecum oratiodominicaalt \
	  dominusnosbenedicat habacuc-initium-iv_-e ps147-initium-e ps105i-initium-e \
	  ps91-initium-e
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(patsubst %,cantus/amon33/hym-%-bohtext.tex,HostisHerodes OSolaMagnarum NuncSancte RerumDeus RectorPotens TeLucis) \
	    cantus/nrom02/ps94.tex $(TMP_DIR)/communio-versus-DeusJudicium-comb.tex \
	    cantus/arom12/hym-CrudelisHerodes-bohtext.tex $(TMP_DIR)/ps65iv_E.tex $(TMP_DIR)/ps85iv_E.tex \
	    $(TMP_DIR)/ps65-initium-iv_-E-auto.gtex $(TMP_DIR)/ps85-initium-iv_-E-auto.gtex \
	    $(TMP_DIR)/ps46-initium-viii-c-auto.gtex $(TMP_DIR)/ps46viiic.tex
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3 nuncdimittis $(CANTICIS),$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,$(BENEDICTUS),$(TMP_DIR)/benedictus-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix cantus/,amon33 nrom02 grom61 triplex76 otriplex85 arom12 cselecti57) \
	     $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../CorpusChristi ../Adventus ../PostPentecosten ../InAssumptioneBMV
include $(iter)

FERIAPDF = dieiiinfraoctavamepiphaniae.pdf dieiiiinfraoctavamepiphaniae.pdf dieivinfraoctavamepiphaniae.pdf dieviinfraoctavamepiphaniae.pdf dieviiinfraoctavamepiphaniae.pdf octavaepiphaniae.pdf
PDF = epiphania.pdf epiphania-breviori.pdf $(FERIAPDF)
all: $(PDF)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps4 ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/ps90.tex: PSALMOPTS = --accents-style bold $(LAPSALMOPTSACC)
$(patsubst %,$(TMP_DIR)/ps%.tex,118vii_viii 118ix_x 118xiii_xiv 118xv_xvi 118xix_xx 118xxi_xxii 133): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold $(LAPSALMOPTSACC)
$(TMP_DIR)/ps65iv_E.tex: TONUS = 1 2 2 0
$(TMP_DIR)/ps85iv_E.tex: TONUS = 1 2 2 0
$(TMP_DIR)/ps46viiic.tex: TONUS = 1 0 1 2
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(BENEDICTUS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/benedictus.pslm
	$(GENPSALM)
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,$(CANTICIS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/ps94-boh.tex: cantus/nrom02/ps94.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex, magnificat nuncdimittis): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(TMP_DIR)/ps94.tex: cantus/nrom02/ps94.tex
	$(SED) -e 'y/Jj/Ii/' $< > $@
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	case "$<" in */ps118[ivx]*) $(AWK) -f hebletter.awk -v PSLM="$<" -v TEX=$(if $(filter --skip-verses,$(PSALMOPTS)),1,2) $@ > $@.tmp; $(MV) -f $@.tmp $@;; esac || :
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(BENEDICTUS)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/benedictus.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(LAPSALMSEXTRA): $(TMP_DIR)/%.tex: $(PSALMS_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps65iv_E.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps65.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps85iv_E.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps85.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/ps46viiic.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/ps46.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(patsubst %,$(TMP_DIR)/ps%-comb.tex,90 118vii_viii 118ix_x 118xiii_xiv 118xv_xvi 118xix_xx 118xxi_xxii 133): PSSKIP = 0
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(TMP_DIR)/communio-versus-DeusJudicium-comb.tex: $(patsubst %,cantus/triplex76/communio-versus-DeusJudicium%tex,. -boh.)
	$(GENPSCOMB)
$(PDF): %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
$(FERIAPDF): feria.tex
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
