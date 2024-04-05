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
PSALMS = 1 2 3 4 5 6 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 11 13 14 15 16 17i 17ii 17iii 17ii_vii 17viii_xx 17xxi_xxx 17xxxi_xxxv 17xxxvi_xlvi 17xlvii_li 18i 19 20 21 23 26 28 29 30i 30ii 30iii 32 34i 34ii 34iii 35 36i 36ii 36i_xi 36xii_xxix 36iii 37 37i 37ii 37ii_v 37vi_xiii 37xiv_xxiii 38 38i 38ii 39 41 42 43i 43ii 43iii 44i 44ii 45 46 47 48i 48ii 49i_vi 49vii_xv 49xvi_xxiii 50 51 53 54i 54ii 54iii 56 58 62 63 64 65i 65ii 66 67i 67ii 67iii 68 68ii_xiii 68xiv_xxii 68iii 69 70 71 72 72i 72ii 72iii 73 74 75 76 77i_xvi 77iii 77xxxii_xxxix 77xl_li 77lii_lxiv 77lxv_lxxii 79 80 83 84 85 86 87 88ii_xix 88xx_xxx 88xxxi_xxxviii 88xxxix_xlvi 88xlvii_liii 89 90 91 93 95 96 97 98 99 100 101ii_xii 101xiii_xxiii 101iii 102i 102ii 102iii 103i 103ii 103iii 104i 104ii 104iii 105i 105ii 105iii 106i 106ii 106iii 107 109 110 111 112 113 114 115 116 117 118xix 128 129 130 131 131i 131ii 132 133 134 134i 135 135i 135ii 135iii 136 137 138i 138ii 139 140 141 142 143i 143i_x 143ii 144i 144ii 144x_xiii 144xiv_xxi 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = i-g viii-G
MODUS-2 = i-a4 vii-a viii-G
MODUS-3 = vi-F viii-G5
MODUS-4 = viii-G
MODUS-5 = ii-D viii-A
MODUS-6 = iv-E
MODUS-8 = i-f i-g
MODUS-9ii_xi = viii-G
MODUS-9xii_xxi = i-g i-g3
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e v-a
MODUS-10 = i-g ii_-f
MODUS-11 = viii-G
MODUS-13 = ii-D
MODUS-14 = iv-E
MODUS-15 = vii-c
MODUS-16 = vii-c
MODUS-17i = vi-F
MODUS-17ii = iv-E
MODUS-17iii = vii-c2
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g
MODUS-17xxi_xxx = iv_-e
MODUS-17xxxi_xxxv = viii-G
MODUS-17xxxvi_xlvi = vii-c
MODUS-17xlvii_li = vii-c2
MODUS-18i = ii-D
MODUS-19 = viii-G
MODUS-20 = viii-G
MODUS-21 = viii-G
MODUS-23 = iv_-e v-a viii-G
MODUS-26 = iv-E viii-G
MODUS-28 = vii-a
MODUS-29 = viii-G
MODUS-30i = viii-G
MODUS-30ii = e-a
MODUS-30iii = ii-D
MODUS-32 = iv-E
MODUS-34i = iv-g
MODUS-34ii = i-g viii-G
MODUS-34iii = ii-D viii-G
MODUS-35 = ii-D iv-E viii-G
MODUS-36i = vi-F vii-c
MODUS-36ii = iv-A_
MODUS-36i_xi = vi-F
MODUS-36xii_xxix = ii-D
MODUS-36iii = vi-F viii-g viii-G
MODUS-37 = viii-G
MODUS-37i = vi-F viii-C
MODUS-37ii = ii-D
MODUS-37ii_v = viii-C
MODUS-37vi_xiii = ii_-a
MODUS-37xiv_xxiii = ii-A
MODUS-38 = iv-E viii-c
MODUS-38i = iv-E
MODUS-38ii = vii-c
MODUS-39 = iv-A_
MODUS-41 = ii-D
MODUS-42 = vi-F vii-d
MODUS-43i = viii-G
MODUS-43ii = ii_-a viii-C
MODUS-43iii = i-g3 ii-D
MODUS-44i = i-g vi-F
MODUS-44ii = i-g vi-F
MODUS-45 = iv-g e
MODUS-46 = viii-c
MODUS-47 = iv-a iv-E
MODUS-48i = vii-c
MODUS-48ii = viii-G e
MODUS-49i_vi = i-g2 viii-A viii-c viii-C
MODUS-49vii_xv = i-g4 viii-G e
MODUS-49xvi_xxiii = vii-c viii-c e
MODUS-50 = i-a2 ii-D iii-a iv-A iv-D vi-F vii-a vii-c vii-c2 viii-G viii-G2
MODUS-51 = iv_-e
MODUS-53 = iv-A_ viii-G
MODUS-54i = viii-c
MODUS-54ii = vii-c2
MODUS-54iii = viii-G
MODUS-56 = vii-a viii-g
MODUS-58 = i-f
MODUS-62 = i-g ii_-B vii-a viii-G e
MODUS-63 = vii-d viii-a viii-A
MODUS-64 = ii-D viii-A
MODUS-65i = vi-F
MODUS-65ii = ii_-a
MODUS-66 = e dir
MODUS-67i = vii-a
MODUS-67ii = i-f
MODUS-67iii = d-g2
MODUS-68 = viii-c
MODUS-68ii_xiii = viii-c
MODUS-68xiv_xxii = viii-c
MODUS-68iii = viii-G
MODUS-69 = viii-c
MODUS-70 = viii-c
MODUS-71 = vii-c
MODUS-72 = viii-c
MODUS-72i = viii-c
MODUS-72ii = ii-D
MODUS-72iii = iii-b
MODUS-73 = i-g
MODUS-74 = vii-c
MODUS-75 = vii-a viii-c
MODUS-76 = vii-a viii-G
MODUS-77i_xvi = i-g3
MODUS-77iii = ii-D
MODUS-77xxxii_xxxix = viii-G
MODUS-77xl_li = iii-a
MODUS-77lii_lxiv = c-c2
MODUS-77lxv_lxxii = viii-G
MODUS-79 = ii_-B
MODUS-80 = i-g5
MODUS-83 = viii-G
MODUS-84 = i-f vi-F viii-G
MODUS-85 = ii-D
MODUS-86 = i-g
MODUS-87 = iv-d iv-D viii-G
MODUS-88ii_xix = viii-G
MODUS-88xx_xxx = viii-G
MODUS-88xxxi_xxxviii = viii-G
MODUS-88xxxix_xlvi = vii-a
MODUS-88xlvii_liii = vi-F
MODUS-89 = i-g ii-D vi-F
MODUS-90 = viii-G
MODUS-91 = iv-A_ viii-g e
MODUS-93 = viii-G
MODUS-95 = ii-D
MODUS-96 = iii-a2
MODUS-97 = e
MODUS-98 = e
MODUS-99 = iv_-e e
MODUS-100 = viii-G
MODUS-101ii_xii = i-a
MODUS-101xiii_xxiii = viii-G
MODUS-101iii = i-g
MODUS-102i = viii-C
MODUS-102ii = i-d
MODUS-102iii = iii-g
MODUS-103i = iii-a
MODUS-103ii = ii-D
MODUS-103iii = e
MODUS-104i = d-g
MODUS-104ii = viii-a
MODUS-104iii = iv-E
MODUS-105i = e
MODUS-105ii = viii-G
MODUS-105iii = vii-a
MODUS-106i = iv_-e
MODUS-106ii = c-c2
MODUS-106iii = iii-a2
MODUS-107 = viii-G
MODUS-109 = vii-c2
MODUS-110 = iiir-b iv-g
MODUS-111 = iv-a iv-g
MODUS-112 = vii-c
MODUS-113 = per
MODUS-114 = i-g2
MODUS-115 = viii-A
MODUS-116 = ii_-B viii-A e
MODUS-117 = i-a2 ii-D vii-c viii-C viii-G
MODUS-118xix = vii-a e
MODUS-128 = ii-D
MODUS-129 = viii-A
MODUS-130 = e
MODUS-131 = e
MODUS-131i = e
MODUS-131ii = vii-c
MODUS-132 = i-a
MODUS-133 = viii-G
MODUS-134 = iii-g
MODUS-134i = i-a
MODUS-135 = iii-g
MODUS-135i = iiir-g
MODUS-135ii = iiir-g
MODUS-135iii = c-c2
MODUS-136 = viii-G
MODUS-137 = v-a
MODUS-138i = iii-g
MODUS-138ii = iii-g
MODUS-139 = iv-g
MODUS-140 = viii-A
MODUS-141 = viii-A
MODUS-142 = iv-E viii-G
MODUS-143i = vi-F
MODUS-143i_x = vi-F
MODUS-143ii = vi-F
MODUS-144i = viii-A viii-G
MODUS-144ii = vii-c2
MODUS-144x_xiii = vii-c
MODUS-144xiv_xxi = viii-a
MODUS-145 = iv-E iv_-e
MODUS-146 = ii-D viii-g viii-A
MODUS-147 = vi-F viii-G e
MODUS-148 = i-a i-g i-g2 ii-D ii_-B iv-A_ vii-a viii-G
MODUS-149 = i-a i-g i-g2 ii-D ii_-B iv-A_ vii-a viii-G
MODUS-150 = i-a i-g i-g2 ii-D ii_-B iv-A_ vii-a viii-a viii-G viii-A
MODUS-anna = ii-D vii-a
MODUS-david = i-f
MODUS-ecclesiastici = iii-a
MODUS-ezechiae = ii-D iii-a e
MODUS-ezechiae2 = i-d
MODUS-habacuc = i-f iv_-e
MODUS-isaiae = viii-G
MODUS-isaiae2 = v-a
MODUS-isaiae3 = vii-d
MODUS-isaiae4 = vii-c
MODUS-isaiae5 = iv-E iv_-e
MODUS-isaiae8 = viii-g
MODUS-isaiae9 = ii-D
MODUS-isaiae10 = vi-F
MODUS-isaiae11 = viii-g
MODUS-iudith2 = ii_-d
MODUS-jeremiae2 = i-d viii-G
MODUS-jeremiae3 = iv_-e
MODUS-lamentatio = i-d
MODUS-moysis = iv-A_ e
MODUS-moysis2i_xii = vi-F
MODUS-sapientia = v-a
MODUS-tobiae = vii-a
MODUS-tobiae2 = ii-D
MODUS-dan3 = i-a4 ii-D ii_-a vii-a viii-G
MODUS-dan32 = i-f
MODUS-nuncdimittis = iii-a
MODUS-magnificat = isoll-f isoll-g i-f i-g i-g2 i-g4 i-a i-D2 ii-D ii_-B iisoll-D iii-a iiisoll-a iv-A iv-A_ iv-d ivsoll-E v-a vii-b vii-c vii-c2 viisoll-b viii-G viii-G2 viiisoll-G viiisoll-G2 viiisoll-g viiisoll-g5
MODUS-benedictus = i-a4 i-d i-f i-g i-g4 i-g5 isoll-a5 isoll-g isoll-d3 iisoll-A ii_-a ii_-d ii_-B iii-a4 iii-b iv-E ivsoll-E v-a vsoll-g vi-F vii-a vii-c2 vii-d2 viii-g viii-G viii-G2 viii-G5 viii-C2 viiisoll-G
CANTICIS = anna isaiae isaiae2 isaiae3 isaiae4 isaiae5 isaiae8 isaiae9 isaiae10 isaiae11 habacuc jeremiae2 jeremiae3 moysis moysis2i_xii ecclesiastici ezechiae sapientia tobiae tobiae2 david nuncdimittis ezechiae2 lamentatio dan3 dan32 iudith2
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
LAPSALMSSINEDOX = $(foreach P,2 4 14 15 21 23 26 29 35 37 39 50 53 58 63 68 69 70 71 72 73 74 75 76 84 87 89 91 93 115 142 146 147 148 149 150,$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-$(M)-sinedox.tex)) \
		  $(foreach C,dan3 moysis habacuc ezechiae benedictus,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M)-sinedox.tex))
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
			  cantatedominocanticum laudatenomendomini induitmedominus paratumcormeum \
			  benedicanimamea supertimentesdominum benedicitedomino \
			  declinabitdominus quantaaudivimus deonostroiucunda inveritatetua \
			  recordaremei dascientiamplebituae iustusnonconturbabitur \
			  aedificansierusalem stansbeataagatha cogitaveruntimpii \
			  benedixitfiliistuis avertanturretrorsum cormundumcrea \
			  attenditepopulemeus bonumestconfiteri dabovobiscor \
			  exoreinfantium nigrasumsedformosa misereremihi \
			  confitebortibi intellegeclamorem laudamusnomentuum affertedomino \
			  tudomine innocensmanibus exaltateregem rectosdecet \
			  praeclarasalutisaurora extollensquaedam cumieiunatis \
			  thesaurizatevobis dominenonsumdignus quivultvenire \
			  cumviderisnudum deusadiuvatme favusdistillans tuncinvocabis \
			  eccenunctempus praedicanspraeceptum tuesgloriamea \
			  confessionemetdecorem dominumdeumadoremus sustinuimuspacem \
			  inlegedomini odominesalvummefac sicbenedicamte \
			  inspirituhumilitatis laudatedeum ductusestiesus \
			  exaudiatdominusorationes tamquamauruminfornace \
			  generatiohaec sicutfuitionas factusestadiutormeus \
			  dominemagnuses rexomnisterrae siergovos omuliermagnaest \
			  amendicovobis oratepropersequentibus visionemquamvidistis \
			  assumpsit dexteradomini dominelabiamea factusestadiutor \
			  statuiteainaeternum triumpuerorum estoteergomisericordes \
			  quimemisitmecumest unusestenim omnesenimvos quicumquevoluerit \
			  tradeturenim extendedomine confundanturqui mementodomine \
			  tuamdomineexcita conversusestfuror divesille paterabraham \
			  malosmaleperdet quaerenteseumtenere totapulchraes vadamadpatremmeum \
			  dixitautempateradservos eccedeusmeus regnumtuumdomine inaeternumet \
			  labiamealaudabunt intravitiesus facbenigne vimvirtutissuae soletluna \
			  veniteascendamus dixiiniquis cantatedominoetbenedicite \
			  amendicovobisquianemo iesusautemtransiens ubiduoveltres \
			  nondicotibi benedixistidomine siquisfecerit lexpermoysendata \
			  nonlotismanibus etcumeiecisset omnesquihabebantinfirmos \
			  domineutvideo magisterquodestmandatum istaestspeciosa stansalonge \
			  nemotecondemnavit subiitergoinmontem bonumestsperare \
			  tuncacceptabis potensesdomine sicutmoyses regesterrae dominiestterra \
			  benedicitegentes introiboindomumtuam eratquidamregulus \
			  solvitetemplumhoc cantaboetpsalmum sacrificiumdeo \
			  benedictusdominusdeusmeus nemoineummisit quimesanumfecit \
			  clamormeus1 respicehumilitatem iusticonfitebuntur1 \
			  quiverbummeumaudit euntesdoceteomnes illehomoquidicituriesus \
			  prophetamagnus egononabhomine quidoctifuerint iamhiemstransiit \
			  quidamenimiudaei egosumquitestimonium abrahampatervester \
			  nisigranumfrumenti intribulatione iudicastidomine \
			  numquidredditurprobono populemeusquidfeci videdomineafflictionem \
			  siquissitit inclinavitseiesus egoprincipiumquietloquor \
			  vosascenditeaddiem sivosmanseritis multabonaopera \
			  principessacerdotum fulcitemefloribus beatusvir-cgp \
			  exsurgedominedeus-cgp exsurgedominesalvum-cgp quamadmirabileest-cgp \
			  diligamtedomine-cgp domineinvirtute dominusdecaelo-cgp exaltabote-cgp \
			  exaudiatte inclinadomine-cgp quioperatur-cgp retribuetmihi-cgp vivitdominus \
			  pateriuste dominusdeus circumdantescircumdederunt cumangelis \
			  turbamulta magnaopera quitimet scriptumestenim \
			  appenderunt clarificame faciemmeam frameasuscitare inundaverunt \
			  labiainsurgentium nonhaberes amovedomine custodiinnocentiam-cgp \
			  expugnaimpugnantes-cgp exsurgedomine-cgp neiniratua-cgp noliaemulari \
			  restitueanimam-cgp antediemfestum discernecausam dixeruntimpii \
			  dominevimpatior dumtribularer potestatemhabeo videdomine \
			  adjutorintribulationibus-cgp confitebunturtibi-cgp immoladeo-cgp \
			  magnusdominus-cgp netimueris-cgp osmeumloquetur-cgp speciosusforma-cgp \
			  alligadomine-cgp ancilladixitpetro-cgp contumelias-cgp ipsivero-cgp \
			  liberame-cgp omnesinimici-cgp simondormis-cgp avertanturretrorsum-cgp \
			  cogitaveruntimpii-cgp deusmeuseripeme-cgp dixiiniquis-cgp \
			  exsurgedomineetjudica-cgp indietribulationis-cgp liberavitdominus-cgp \
			  terratremuit-cgp zelusdomus-cgp contritumest-cgp dominustamquamovis-cgp \
			  exhortatuses-cgp justificerisdomine-cgp oblatusest-cgp traditorautem-cgp \
			  abinsurgentibus-cgp alieniinsurrexerunt-cgp astiteruntreges-cgp \
			  captabuntinanimam-cgp diviseruntsibi-cgp insurrexeruntinme-cgp \
			  longefecisti-cgp vimfaciebant-cgp aitlatroadlatronem-cgp anxiatusest-cgp \
			  dumconturbata-cgp mementomei-cgp posueruntsupercaput-cgp propriofilio-cgp \
			  caromea-cgp credovidere-cgp domineabstraxisti-cgp factussum-cgp \
			  habitabitintabernaculo-cgp inpacefactusest-cgp inpaceinidipsum-cgp \
			  elevamini attenditeuniversi-cgp mulieressedentes-cgp omors-cgp ovosomnes-cgp \
			  plangenteum-cgp aportainferi) \
	 $(addprefix hym-TeLucis-,feria minor dominica major solemnis bmv) \
	 $(patsubst %,hym-%-aestivalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				       LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				       TellurisIngens) \
	 $(patsubst %,hym-%-hiemalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				     LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				     TellurisIngens) \
	 $(addprefix hym-,NoxAtra SolEcce TuTrinitatis AEternaCaeli QuemTerra-alt \
			  OGloriosaFemina IpsumNunc LucisLargitor NocteSurgentes \
			  AEterneLucis OSatorRerum FulgentisAuctor DeusQui GalliCantu \
			  OVirgoMater QuaeCaritatis SomnoRefectis SplendorPaternae-hiemalis \
			  RerumCreator NoxEtTenebrae AveMarisStella IamLucis AlesDiei \
			  ConsorsPaterni PergrataMundo TeLucis-quadragesimae \
			  IamChriste NuncTempus EcceJamNoctis AEterneRerum OGloriosaDomina \
			  AdPrecesNostras ChristeLuxVera AmorisSensusErige AdestoChriste SalveDies \
			  VitaSanctorum QuemTerra AudiBenigne ExMore PrecemurOmnes \
			  VexillaRegis PangeLingua HicAccetum) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus clamaviintotocorde auditamfacmihi \
			   avemaria-alt exsultateiusti vocemmeamaudi clamaboaddeum \
			   benedictusdominus inmedioecclesiae sapientiamsanctorum \
			   inmatutinis deusmeusadiutormeus ipseliberavitme scapulissuis \
			   christefilidei-tq deoreleonis deoreleonis-feriale erueaframea \
			   erueaframea-feriale) \
	 $(addprefix deusinadiutorium-,solemnis alter communis solemnis-tq alter-tq communis-tq \
				       solemnis-quad alter-quad communis-quad) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv festis-bmv \
				  dominica-advequad feria-advequad solemnism-1vesp \
				  solemnism-laud solemnism-2vesp) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria christummariaefilium \
			  hodiesivocem nonsitvobisvanum hodiesivocem-CROCHU hodiesivocem-CROCHU-sinedox \
			  christumdominum) \
	 dominelabiamea tonusprecum dominusnosbenedicat \
	 $(addprefix capitulum-,tuautem BenedictusDeus AbInitio Hortamur InterVestibulum \
				FratresRogamus FratresEstote FratresScriptum FratresChristus \
				TuAutemDomineSabaoth FratresHoc VeniteMittamus) \
	 $(addprefix absolutio-,exaudi ipsius avinculis precibus) \
	 $(addprefix versus-,custodi gaude dirigatur diffusa-tq angelis eripe eripemede \
			     avertantur deusmeus exsurge homopacis \
			     diviserunt insurrexerunt locuti collocavitme \
			     caromea inpace inpacefactus tuautem) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem ille \
					noscum ipsavirgo pervirginem) \
	 $(addprefix resp-,attendedomine circumdederuntme conclusitviasmeas \
			   dixeruntimpii dominusmecumesttamquam fratresmei \
			   indiequainvocavi noliessemihi salvummefac \
			   insurrexeruntinme opprobriumfactussum viriimpiidixerunt \
			   contumeliasetterrores deusisrael synagogapopulorum \
			   locutisunt amicusmeus eccevidimus eramquasiagnus \
			   inmonteoliveti judasmercator seniorespopuli tristisest \
			   unahora unusexdiscipulis animammeam caligaveruntoculi \
			   jesumtradidit omnesamicimei tamquamadlatronem \
			   tenebraefactesunt tradideruntme velumtempli vineamea \
			   eccequomodo jerusalemsurge ovosomnes plangequasivirgo \
			   recessitpastor sicutovis aestimatussum astiteruntreges \
			   sepultodomino) \
	 gr-christusfactus $(addprefix gr-christusfactus-feria,v vi) \
	 oratio $(addprefix oratio,2 2v 3 3v 4 4v) \
	 $(addprefix lam,1_1 1_2 1_3 1_4 1_5 1_6 2_1 2_2 2_3 2_4 2_5 3_1 3_2 3_3 \
			 4_1 4_2 4_3 5_1 5_2 5_3 6_1 6_2 6_3 7_1 7_2 7_3 8_1 8_2 8_3 8_4 \
			 9_1 9_2 9_3 9_4) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 $(addprefix ant-avereginacaelorum-,simplex solemnis) benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d ps17xxxvi_xlvi-initium-vii-c-trans ps116-initium-e \
	 ps131i-initium-e ps96-initium-iii-a2 ps147-initium-e ps91-initium-e ps66-initium-e \
	 isaiae3-initium-vii-d ps88xxxi_xxxviii-initium-viii-G_ ps97-initium-e ps98-initium-e \
	 jeremiae2-initium-viii-G ps99-initium-e ps72iii-initium-iii-b ps102iii-initium-iii-g \
	 ps103iii-initium-e ps47-initium-iv-a ps101ii_xii-initium-i-a ps62-initium-ii_-B \
	 ps71-initium-vii-c-trans ps50-initium-vii-c-trans habacuc-initium-i-f \
	 ps15-initium-vii-c-trans ps26-initium-iv-E ps26-initium-viii-G
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
FERIAE = ii iii iv
PDFI = $(patsubst %,feria%-mh.pdf,$(FERIAE))
PDFII = feriavincoenadomini.pdf feriavidemortedomini.pdf sabbatosancto.pdf
PDFIII = dominicainpalmis.pdf
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../Quadragesimae ../PostPentecosten ../PerAnnum ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../InAssumptioneBMV ../InConceptioneBMV ../OctavaNativitatis
include $(iter)
$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ | head --lines=-3 > $@
	tail -n 1 $^ >>  $@
$(filter-out $(TMP_DIR)/magnificat%,$(ALLLAPSALMS)): PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-$(M).tex): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(PDF): %.pdf: %.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
