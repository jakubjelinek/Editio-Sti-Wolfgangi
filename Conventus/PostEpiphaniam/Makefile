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
PSALMS = 1 2 3 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 50 62 109 110 111 112 117 144ii 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = viii-G
MODUS-2 = vii-a
MODUS-3 = vi-F
MODUS-8 = i-g
MODUS-9ii_xi = viii-G
MODUS-9xii_xxi = i-g3
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e
MODUS-10 = iv-c
MODUS-50 = vi-F
MODUS-62 = vi-F
MODUS-109 = vii-c2
MODUS-110 = iv-g
MODUS-111 = iv-a
MODUS-112 = vii-c
MODUS-117 = vi-F
MODUS-144ii = vii-c2
MODUS-145 = iv-E
MODUS-146 = viii-A
MODUS-147 = e
MODUS-148 = viii-G
MODUS-149 = viii-G
MODUS-150 = viii-G
MODUS-dan3 = viii-G
MODUS-benedictus = viiisoll-g2
MODUS-magnificat = viisoll-a isoll-f
CANTICIS = dan3
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
			  quoniaminteconfidit regnumtuum respexitdominus saepeexpugnaveruntme \
			  salutarevultusmei sitnomendomini speretisrael spirituprincipali \
			  tedecet tibisoli trespueri salvanos-antiquo miserere subtuum \
			  brachiapeccatorum custodiinnocentiam expugnaimpugnantes \
			  exsurgedomine intendeinadjutorium neiniratua restitueanimam \
			  reveladomino utnondelinquam adjutorintribulationibus auribuspercipite \
			  deusdeorum eructavitcor immoladeo intellegite magnusdominus \
			  osmeumloquetur speciosusforma auditeomnes cantatedomino \
			  exsurgatdeus inecclesiis nonnedeo omnisterra quaeritedominum \
			  salvummefac zelusdomus aedificavitdeus angelorumesca elegitdominus\
			  exsultatedeo inclinateaurem propitiusesto redemiteos tuesdeus \
			  tusolus cumturbamulta misereorsuperturbam obsecrodomineaufer \
			  beatusvir exsurgedominenon exsurgedominesalvum inaeternum \
			  justusdominus quamadmirabileest sedistisuperthronum servitedomino \
			  utquiddomine diligamtedomine domineinvirtute dominusdecaelo \
			  exaltabote exaudiatte habitabit inclinadomine retribuetmihi \
			  vivitdominus attenditeafalsis nonpotestarborbona unxeruntsalomonem \
			  confiteanturdomino cumtribularentur denecessitatibus dominusmihi \
			  domusiacob eduxitdeus ipsividerunt laeteturcor visitanos \
			  aitdominusvillico exaudistidomineorationem quidfaciamquiadominus \
			  cumappropinquaretdominus sapientiaaedificavit scriptumestenimquia \
			  sanctaetimmaculata continuoiesus cumquevidisset egoinaltissimishabito \
			  dixitdominusmulierichananaeae egressusjesussecessit omnissapientia \
			  quemdicunthomines quodcumqueligaveris sapientiaclamitat \
			  ecceascendimus observafili quienimvoluerit cumaudissetjob \
			  dixitiesusdiscipulissi inomnibushis siduoexvobis \
			  dixitautemdominusservo nereminiscaris servenequam \
			  adonaidominedeus dixitpaterfamilias simileestenimpatrifamilias \
			  dominerexomnipotens multieruntpriminovissimi nonomnisquidicit \
			  adaperiatdominus malosmaleperdet novissimeautemmisit \
			  doctusdoctrinae intravitautemrex nuptiaequidemparataesunt \
			  refulsitsol lugebatautemjudam magisterscimus redditeergo \
			  diligamusnos exaudiatdominusorationes magisterquodest \
			  dumautemirent murotuo quimajor quinqueprudentes unusestenim \
			  vididominumsedentem dominequinquetalenta quicaelorumcontines \
			  serveboneetfidelisquia suscepitdeus) \
	 $(addprefix hym-TeLucis-,feria minor dominica major solemnis bmv) \
	 $(patsubst %,hym-%-aestivalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				       LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				       TellurisIngens) \
	 $(patsubst %,hym-%-hiemalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				     LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				     TellurisIngens) \
	 $(addprefix hym-,EcceJamNoctis AEterneRerum AveMarisStella OGloriosaDomina AdPrecesNostras \
			  ChristeLuxVera AmorisSensusErige AdestoChriste SalveDies \
			  VitaSanctorum QuemTerra OGloriosaFemina QuemTerra-alt) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv dominica-perannum) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria) \
	 $(addprefix capitulum-,OAltitudo Benedictio BenedictusDeus) \
	 $(addprefix versus-,vespertina) \
	 $(addprefix oratio,1 2) \
	 dominelabiamea \
	 $(addprefix absolutio-,exaudi ipsius avinculis precibus) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem ille \
					noscum ipsavirgo pervirginem) \
	 $(addprefix resp-,dominesiconversus-CROCHU egotetuli-CROCHU-cumdox \
			   factumestdumtolleret-CROCHU peccavisupernumerum-CROCHU \
			   exaudisti-CROCHU audidominehymnum-CROCHU-cumdox \
			   deusomniumexauditorest-sinedox dominusquieripuitme-cumdox \
			   praeparatecordavestra-sinedox montesgelboe percussitsaulmille2 \
			   duoseraphim-cumdox recordaredomine-CROCHU \
			   damihidominesedium-CROCHU dominepateretdeus-CROCHU \
			   emittedominesapientiam-CROCHU gyrumcaeli-CROCHU \
			   initiumsapientiae-CROCHU inprincipiodeusantequam-CROCHU \
			   verbuminiquum-CROCHU magnaenimsunt-CROCHU nederelinquasme-CROCHU \
			   quaesuntincorde-CROCHU praebefili-CROCHU quaredetraxistis-CROCHU \
			   utinamappenderentur-CROCHU versaestinluctum-CROCHU \
			   indutaestcaromea-CROCHU neabscondasame-CROCHU-cumdox \
			   paucitasdierummeorum-CROCHU quismihitribuat-CROCHU \
			   antequamcomedamsuspiro-CROCHU sibonasuscepimus-CROCHU \
			   adestodolori-CROCHU mementomei-CROCHU nocteosmeum-CROCHU \
			   numquiddominus-CROCHU quiconsolabatur-CROCHU \
			   desideriummeum-CROCHU inclinansfaciem-CROCHU nonnecognoscit-CROCHU \
			   audituauris-CROCHU sciodomine-CROCHU nonnecognoscit-CROCHU-sinedox \
			   benedicitedeum-CROCHU memorestofili-CROCHU-cumdox omnitempore-CROCHU \
			   petodomine-CROCHU sufficiebatnobis-CROCHU \
			   tempusestutrevertar-CROCHU-cumdox tribulationescivitatum-CROCHU \
			   adonai-CROCHU benedixittedominus-CROCHU-cumdox benedixittedominus-CROCHU \
			   confortamerexsanctorum-CROCHU dominatordomine-CROCHU \
			   dominedeusquiconteris-CROCHU-cumdox dominedeusquiconteris-CROCHU \
			   nosaliumdeumnescimus-CROCHU dominerexomnipotens-CROCHU \
			   mementomeideusinbono-CROCHU speminalionumquamhabui-CROCHU-cumdox \
			   adaperiatdominus-CROCHU congregataesuntgentes-CROCHU \
			   congregatisuntinimicinostri-CROCHU exaudiatdominus-CROCHU \
			   impetuminimicorum-CROCHU refulsitsolinclypeos-CROCHU tuaestpotentia-CROCHU \
			   congregatisuntinimicinostri-CROCHU-cumdox tuaestpotentia-CROCHU-cumdox \
			   dixitiudassimoni-CROCHU inhymnisetconfessionibus-CROCHU \
			   ornaveruntfaciemtempli-CROCHU apericaelostuosdomine-CROCHU-cumdox \
			   hicestfratrumamator-CROCHU tudomineuniversorum-CROCHU \
			   disrumpamvinculapopuli-CROCHU afaciefuroristui-CROCHU \
			   civitatemistamtucircumda-CROCHU gentipeccatrici-CROCHU-cumdox \
			   angustiaemihiundique-CROCHU aspicedominedesede-CROCHU \
			   aspicedominequiafactaest-CROCHU-cumdox indicabotibihomo-CROCHU \
			   misitdominusangelumsuum-CROCHU-cumdox vididominumsedentem-CROCHU-sinedox \
			   laudabilispopulus-CROCHU murotuoinexpugnabili-CROCHU \
			   supermurostuos-CROCHU sustinuimuspacemetnonvenit-CROCHU-cumdox \
			   fluctustuisuperme-CROCHU praecipitadomine-CROCHU \
			   quicaelorumcontinesthronos-CROCHU-cumdox redemitdominus-CROCHU \
			   inprincipiodeusantequam-CROCHU-cumdox supersalutem \
			   emittedominesapientiam-CROCHU-sinedox benedicitedeum-CROCHU-cumdox) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 an_salve_regina ant-salveregina-simplex ant-salveregina-cisterciensis benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
FERIAE = ii iii iv v vi
HEBDOMADAE = i ii
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDF = $(PDFI) $(PDFII) $(PDFIII)
all: $(PDF)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../PostPentecosten ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../InAssumptioneBMV
include $(iter)
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
$(TMP_DIR)/magnificat-%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTS)
$(foreach C,ps148 ps149 dan3,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M).tex)): PSALMOPTS = $(LAPSALMOPTS)
$(PDF): %.pdf: %.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
