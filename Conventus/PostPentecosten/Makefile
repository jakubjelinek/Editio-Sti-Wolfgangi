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
PSALMS = 1 2 3 4 5 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 13 14 16 17i 17ii 17iii 19 20 29 34i 34ii 34iii 35 36i 36ii 36iii 37i 37ii 38 42 44i 44ii 45 47 48i 48ii 49i_vi 49vii_xv 49xvi_xxiii 50 56 61 62 63 64 65i 65ii 67i 67ii 67iii 68i 68ii 68iii 75 77i 77ii 77iii 77iv 77v 77vi 78 80 82 87 89 90 91 104i 104ii 104iii 105i 105ii 105iii 106i 106ii 106iii 109 110 111 112 113 114 115 116 117 128 129 130 131 132 133 134 135 136 137 138i 138ii 139 140 141 142 143i 143ii 144i 144ii 145 146 147 148 149 150
MODUS-1 = viii-G
MODUS-2 = vii-a
MODUS-3 = vi-F
MODUS-4 = viii-G
MODUS-5 = viii-A
MODUS-8 = i-g
MODUS-9ii_xi = viii-G
MODUS-9xii_xxi = i-g3
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e
MODUS-10 = iv-c
MODUS-13 = ii-D
MODUS-14 = iv_-e
MODUS-16 = vii-c
MODUS-17i = vi-F
MODUS-17ii = iv_-e
MODUS-17iii = vii-c2
MODUS-19 = viii-G
MODUS-20 = viii-G
MODUS-29 = viii-G
MODUS-34i = iv-g
MODUS-34ii = i-g
MODUS-34iii = ii-D
MODUS-35 = viii-A
MODUS-36ii = iv-A_
MODUS-36iii = viii-g
MODUS-36i = vi-F
MODUS-37i = viii-C
MODUS-37ii = ii-D
MODUS-38 = iv-E
MODUS-42 = vi-F
MODUS-44i = vi-F
MODUS-44ii = i-g
MODUS-45 = e
MODUS-47 = iv-a
MODUS-48i = vii-c
MODUS-48ii = e
MODUS-49i_vi = viii-A
MODUS-49vii_xv = e
MODUS-49xvi_xxiii = viii-c
MODUS-50 = i-a2 iv-E vi-F vii-a viii-G2
MODUS-56 = viii-G2
MODUS-61 = iii-g
MODUS-62 = vi-F
MODUS-63 = ii-D
MODUS-64 = viii-A
MODUS-65i = e
MODUS-65ii = i-g
MODUS-67i = vii-a
MODUS-67ii = ii-D
MODUS-67iii = d-g2
MODUS-68i = viii-c
MODUS-68ii = viii-c
MODUS-68iii = viii-G
MODUS-75 = viii-A
MODUS-77i = i-g3
MODUS-77ii = c-c2
MODUS-77iii = ii-D
MODUS-77iv = viii-G
MODUS-77v = iii-a
MODUS-77vi = i-g
MODUS-78 = viii-c
MODUS-80 = i-g5
MODUS-82 = vi-F
MODUS-87 = v-a
MODUS-89 = vi-F
MODUS-90 = viii-G
MODUS-91 = viii-A
MODUS-104i = d-g
MODUS-104ii = viii-a
MODUS-104iii = iv-E
MODUS-105i = e
MODUS-105ii = viii-G
MODUS-105iii = vii-a
MODUS-106i = iv_-e
MODUS-106ii = c-c2
MODUS-106iii = iii-a2
MODUS-109 = vii-c2
MODUS-110 = iv-g
MODUS-111 = iv-a
MODUS-112 = vii-c
MODUS-113 = per
MODUS-114 = i-g2
MODUS-115 = viii-A
MODUS-116 = viii-A
MODUS-117 = vi-F
MODUS-128 = ii-D
MODUS-129 = viii-A
MODUS-130 = e
MODUS-131 = e
MODUS-132 = i-a
MODUS-133 = viii-G
MODUS-134 = iii-g
MODUS-135 = iii-g
MODUS-136 = viii-G
MODUS-137 = v-a
MODUS-138i = iii-g
MODUS-138ii = iii-g
MODUS-139 = iv-g
MODUS-140 = viii-A
MODUS-141 = viii-A
MODUS-142 = viii-G
MODUS-143i = vi-F
MODUS-143ii = vi-F
MODUS-144i = viii-A
MODUS-144ii = vii-c2
MODUS-145 = iv-E
MODUS-146 = viii-A
MODUS-147 = e
MODUS-148 = i-a i-f ii-D iv-E v-g vi-F viii-G
MODUS-149 = i-a i-f ii-D iv-E v-g vi-F viii-G
MODUS-150 = i-a i-f ii-D iv-E v-g vi-F viii-G
MODUS-anna = i-g2
MODUS-dan3 = viii-G
MODUS-ezechiae = e
MODUS-habacuc = iv_-e
MODUS-isaiae = viii-G
MODUS-moysis2ii = vi-F
MODUS-moysis2i = vi-F
MODUS-moysis = e
MODUS-nuncdimittis = iii-a
MODUS-benedictus = i-g5 isoll-D isoll-D_ isoll-f isoll-g iisoll-D ivsoll-E vi-F visoll-C vii-a viisoll-a viisoll-d viii-G viiisoll-G 
MODUS-magnificat = isoll-a isoll-D isoll-D2 isoll-f isoll-g ii-D iiisoll-a ivsoll-A ivsoll-d ivsoll-E ivsoll-E2 v-a vsoll-g vii-c visoll-C visoll-F viisoll-a viisoll-d viii-G viii-G2 viiisoll-C viiisoll-g viiisoll-G viiisoll-G2
include $(PSALMTONES_DIR)/tonus.mk
CANTICIS = isaiae ezechiae anna moysis habacuc moysis2i moysis2ii nuncdimittis dan3
MODUSLIST = $(sort $(foreach P,$(PSALMS) benedictus magnificat $(CANTICIS),$(MODUS-$(P))))
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
LAPSALMSSINEDOX = $(foreach P,62 115 148 149,$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-$(M)-sinedox.tex)) \
		  $(foreach C,dan3,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M)-sinedox.tex))
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
			  serveboneetfidelisquia praeceptorpertotamnoctem praevaluitdavid \
			  montesgelboe sioffersmunus dumtolleretdominus beneomniafecit \
			  unusautemexillis quaeriteprimum prophetamagnus cumvocatusfueris \
			  quidvobisvidetur dixitdominusparalytico diciteinvitatis \
			  cognovitautempater atjesusconversus colligiteprimum \
			  simileestregnumcaelorumgrano supermurostuos amendicovobisquianon \
			  nonenimvosestis) \
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
	 $(addprefix capitulum-,Benedictio BenedictusDeus NoxPraecessit OAltitudo AbInitio \
				tuautem) \
	 $(addprefix versus-,custodi gaude dirigatur dominusregnavit repleti vespertina \
			     diffusa cognoscantquia deusnesileas exaltentdominum laudabonomen \
			     medianocte memorfui praevenerunt psallitedomino sacrificiumlaudis \
			     benedictatu) \
	 $(addprefix oratio,1 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 5pe 6pe 24 bmv -franciscus) \
	 supplicatiolitaniae oratiodominica oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv dominica-perannum) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria) \
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
			   quicaelorumcontinesthronos-CROCHU-cumdox redemitdominus-CROCHU) \
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02
include $(iter)

FERIAE = ii iii iv v vi
HEBDOMADAE = i iv v vi vii viii ix x xi xii xiii xiv xv xvi xvii xviii xix xx xxi xxii xxiii vpe vipe xxiv
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDFIV = $(foreach H,$(HEBDOMADAE),$(patsubst %,vferia%-$(H).pdf,$(FERIAE)))
PDFV = $(foreach H,$(HEBDOMADAE),vdominica-$(H).pdf)
PDF = completorium.pdf $(PDFI) $(PDFII) $(PDFIII) $(PDFIV) $(PDFV)
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
define iter-doit
$(patsubst %.pdf,%.tex,$(i)): vferia$(word 1,$(subst -, ,$(patsubst vferia%.pdf,%,$(i)))).tex hebdomada$(word 2,$(subst -, ,$(patsubst vferia%.pdf,%,$(i)))).tex ; touch $$@
endef
iter-left := $(PDFIV)
include $(iter)
define iter-doit
$(patsubst %.pdf,%.tex,$(i)): vdominica.tex hebdomada$(patsubst vdominica-%.pdf,%,$(i)).tex ; touch $$@
endef
iter-left := $(PDFV)
include $(iter)
$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(filter-out $(TMP_DIR)/magnificat%,$(ALLLAPSALMS)): PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-$(M).tex): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(PDF): %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
