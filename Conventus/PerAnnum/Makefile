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
PSALMS = 8 17xxxi_xxxv 17xxxvi_xlvi 17xlvii_li 18i 30i 30ii 30iii 34i 34ii 34iii 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38i 38ii 41 42 47 50 51 56 64 66 67i 67ii 67iii 68ii_xiii 68xiv_xxii 68iii 72i 72ii 72iii 76 84 85 86 88ii_xix 88xx_xxx 88xxxi_xxxviii 88xxxix_xlvi 88xlvii_liii 89 91 96 97 98 99 106i 106ii 106iii 116 118xix 130 131i 131ii 134i 135i 135ii 135iii 147
include $(PSALMTONES_DIR)/tonus.mk
MODUS-8 = i-g
MODUS-17xxxi_xxxv = viii-G
MODUS-17xxxvi_xlvi = vii-c
MODUS-17xlvii_li = vii-c2
MODUS-18i = ii-D
MODUS-30i = viii-G
MODUS-30ii = e-a
MODUS-30iii = ii-D
MODUS-34i = iv-g
MODUS-34ii = viii-G
MODUS-34iii = viii-G
MODUS-36i_xi = vi-F
MODUS-36xii_xxix = ii-D
MODUS-36iii = vi-F
MODUS-37ii_v = viii-C
MODUS-37vi_xiii = ii_-a
MODUS-37xiv_xxiii = ii-A
MODUS-38i = iv-E
MODUS-38ii = vii-c
MODUS-41 = ii-D
MODUS-42 = vi-F
MODUS-47 = iv-a
MODUS-50 = vi-F vii-a viii-G2
MODUS-51 = iv_-e
MODUS-56 = viii-g
MODUS-64 = viii-A
MODUS-66 = e
MODUS-67i = vii-a
MODUS-67ii = i-f
MODUS-67iii = d-g2
MODUS-68ii_xiii = viii-c
MODUS-68xiv_xxii = viii-c
MODUS-68iii = viii-G
MODUS-72i = viii-c
MODUS-72ii = ii-D
MODUS-72iii = iii-b
MODUS-76 = viii-G
MODUS-84 = viii-G
MODUS-85 = ii-D
MODUS-86 = i-g
MODUS-88ii_xix = viii-G
MODUS-88xx_xxx = viii-G
MODUS-88xxxi_xxxviii = viii-G
MODUS-88xxxix_xlvi = vii-a
MODUS-88xlvii_liii = vi-F
MODUS-89 = i-g vi-F
MODUS-91 = e
MODUS-96 = iii-a2
MODUS-97 = e
MODUS-98 = e
MODUS-99 = iv_-e e
MODUS-106i = iv_-e
MODUS-106ii = c-c2
MODUS-106iii = iii-a2
MODUS-116 = ii_-B e
MODUS-118xix = vii-a e
MODUS-130 = e
MODUS-131i = e
MODUS-131ii = vii-c
MODUS-134i = i-a
MODUS-135i = iiir-g
MODUS-135ii = iiir-g
MODUS-135iii = c-c2
MODUS-147 = e
MODUS-anna = ii-D
MODUS-ecclesiastici = iii-a
MODUS-ezechiae = e
MODUS-habacuc = iv_-e
MODUS-isaiae2 = v-a
MODUS-isaiae3 = vii-d
MODUS-isaiae8 = viii-g
MODUS-isaiae9 = ii-D
MODUS-isaiae10 = vi-F
MODUS-jeremiae2 = viii-G
MODUS-jeremiae3 = iv_-e
MODUS-moysis = e
MODUS-moysis2i_xii = vi-F
MODUS-sapientia = v-a
MODUS-benedictus = i-d i-f i-g5 ii_-d iv-E v-a vi-F vii-a vii-d2 viii-G viii-G2
CANTICIS = anna isaiae2 isaiae3 isaiae8 isaiae9 isaiae10 habacuc jeremiae2 jeremiae3 moysis moysis2i_xii ecclesiastici ezechiae sapientia
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(CANTICIS) benedictus,$(MODUS-$(P))))
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
LAPSALMSEXTRA = $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M).tex))
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
			  serveboneetfidelisquia dominusfirmamentum mesuscepit exsurgamdiluculo \
			  populusmeusait iudicacausam liberame indominoiustificabitur \
			  iubilatedeo visitavitetfecit haecrequiesmea adtedeluce \
			  laudatedominumomnes diligitedominum operamanuumeius ostendenobisdomine \
			  benedictusdominus illuminadomine intuaiustitia sitivitanima \
			  iuniorfui speraindomino nonsismihi exspectabonomentuum deusinsancto \
			  exsultavitcormeum dominusregnavit liberatiserviamusdeo confundantur \
			  nederelinquasme laudaierusalem quammagnificatasunt \
			  confiteminidomino cumessemparvula deusnosterdeussalvos \
			  beatiquihabitant denoctespiritusmeus ecceegomitto \
			  beatiquiambulant deusquiglorificatur inclinadomineaurem \
			  memoraredominetestamenti potensinterra quiamirabiliafecit \
			  defructuventris optavietdatusest converteredomine \
			  eccedominusnosterbrachio iustusetsanctus omnesinimici \
			  benedictusdominusinaeternum fundamentaeius quaeritedominumet \
			  consolantemme nosnosderelinquas servitedominoinlaetitia \
			  inmatutinis mecumsitdomine veritasdomini subtuamprotectionem \
			  adhaereredeobonumest quambonusdeus benedicamdomino dominerefugium \
			  cantatedominocanticum laudatenomendomini) \
	 $(addprefix hym-TeLucis-,feria minor dominica major solemnis bmv) \
	 $(addprefix hym-,NoxAtra SolEcce TuTrinitatis AEternaCaeli QuemTerra-alt \
			  OGloriosaFemina IpsumNunc LucisLargitor NocteSurgentes \
			  AEterneLucis OSatorRerum FulgentisAuctor DeusQui GalliCantu \
			  OVirgoMater QuaeCaritatis SomnoRefectis SplendorPaternae-hiemalis \
			  RerumCreator NoxEtTenebrae AveMarisStella) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus clamaviintotocorde auditamfacmihi \
			   avemaria-alt exsultateiusti vocemmeamaudi clamaboaddeum \
			   benedictusdominus inmedioecclesiae sapientiamsanctorum) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv dominica-perannum) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria christummariaefilium) \
	 dominelabiamea tonusprecum dominusnosbenedicat \
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
			   emittedominesapientiam-CROCHU-sinedox benedicitedeum-CROCHU-cumdox \
			   benedicamdominum-CROCHU cumcecideritiustus-CROCHU \
			   auribuspercipedomine-CROCHU-cumdox inhymnisetconfessionibus-CROCHU-sinedox \
			   adiutormeustibipsallam-CROCHU-cumdox diligamtedomine-CROCHU \
			   gaudebuntlabiamea-CROCHU cogitavidiesantiquos-CROCHU \
			   diligamtedomine-CROCHU-cumdox confitebortibidomine-CROCHU \
			   misericordiatuadomine-CROCHU factusestmihidominus-CROCHU \
			   deusintesperavi-CROCHU-cumdox misericordiametiudicium-CROCHU \
			   adextrisestmihi-CROCHU devastavitvineam-CROCHU \
			   egodixidomine-CROCHU-cumdox dominedeuspropitius-CROCHU \
			   confitebortibidomine-CROCHU-cumdox gaudebuntlabiamea-CROCHU-cumdox \
			   domineexaudiorationem-CROCHU adtedominelevavi-CROCHU \
			   audiamdomine-CROCHU-cumdox afflictipropeccatisnostris-CROCHU \
			   velociterexaudime-CROCHU quammagnamultitudo-cumdox \
			   dumdeambularetdominus-CROCHU insudorevultustui-CROCHU \
			   formavitigiturdominus-CROCHU-cumdox) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 an_salve_regina ant-salveregina-simplex ant-salveregina-cisterciensis benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d ps17xxxvi_xlvi-initium-vii-c-trans ps116-initium-e \
	 ps131i-initium-e ps96-initium-iii-a2 ps147-initium-e ps91-initium-e ps66-initium-e \
	 isaiae3-initium-vii-d ps88xxxi_xxxviii-initium-viii-G_ ps97-initium-e ps98-initium-e \
	 jeremiae2-initium-viii-G ps99-initium-e ps72iii-initium-iii-b
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc))
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
FERIAE = ii iii iv v vi
HEBDOMADAE = i ii iii iv
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
#$(foreach C,ps148 ps149 dan3,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M).tex)): PSALMOPTS = $(LAPSALMOPTS)
$(PDF): %.pdf: %.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
