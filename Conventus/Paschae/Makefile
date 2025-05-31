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
PSALMS = 1 2 3 4 5 6 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 11 13 14 16 17i 17ii 17iii 17ii_vii 17viii_xx 17xxi_xxx 17xxxi_xxxv 17xxxvi_xlvi 17xlvii_li 18 18i 19 20 23 28 29 30i 30ii 30iii 32 34i 34ii 34iii 35 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38i 38ii 39i 39ii 41 42 43i 43ii 43iii 44i 44ii 45 46 47 49i_vi 49vii_xv 49xvi_xxiii 50 51 54i 54ii 54iii 56 62 63 64 65i 65ii 66 67i 67ii 67iii 68ii_xiii 68xiv_xxii 68iii 72i 72ii 72iii 76 77i_xvi 77iii 77xxxii_xxxix 77xl_li 77lii_lxiv 77lxv_lxxii 79 80 83 84 85 86 88ii_xix 88xx_xxx 88xxxi_xxxviii 88xxxix_xlvi 88xlvii_liii 89 90 91 92 95 96 97 98 99 100 101ii_xii 101xiii_xxiii 101iii 102i 102ii 102iii 103i 103ii 103iii 104i 104ii 104iii 105i 105ii 105iii 106i 106ii 106iii 107 109 110 111 112 113 114 115 116 117 117i 117ii 117iii 118xix 128 129 130 131 131i 131ii 132 133 134 134i 135 135i 135ii 135iii 136 137 138i 138ii 139 140 141 142 143i 143i_x 143ii 144i 144ii 144x_xiii 144xiv_xxi 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = i-F i-g ii-D viii-G
MODUS-2 = i-f i-a4 vii-a viii-c
MODUS-3 = vi-F viii-G5 viii-c viii-G2
MODUS-4 = viii-G
MODUS-5 = viii-A viii-G
MODUS-6 = iv-E viii-G2
MODUS-8 = i-a2 i-a4 i-f i-g
MODUS-9ii_xi = viii-G viii-G2
MODUS-9xii_xxi = i-g i-g3 viii-G2
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = ii-D iv_-e v-a
MODUS-10 = i-g ii_-f
MODUS-11 = ii-D viii-G
MODUS-13 = ii-D
MODUS-14 = iv-E
MODUS-16 = vii-c
MODUS-17i = vi-F
MODUS-17ii = iv-E
MODUS-17iii = vii-c2
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g vi-F
MODUS-17xxi_xxx = iv_-e vi-F
MODUS-17xxxi_xxxv = vii-d2 viii-G
MODUS-17xxxvi_xlvi = vii-c vii-d2
MODUS-17xlvii_li = vii-c2 vii-d2
MODUS-18 = i-a
MODUS-18i = i-a ii-D ii_-a iii-a
MODUS-19 = viii-G
MODUS-20 = viii-G
MODUS-23 = iv_-e vii-a viii-G
MODUS-28 = ii-D vii-a
MODUS-29 = viii-G
MODUS-30i = viii-G
MODUS-30ii = viii-G e-a
MODUS-30iii = ii-D viii-G
MODUS-32 = iv-E e
MODUS-34i = i-a5 iv-g
MODUS-34ii = i-a5 viii-G
MODUS-34iii = i-a5 viii-G
MODUS-35 = ii-D
MODUS-36i_xi = vi-F
MODUS-36xii_xxix = ii-D vi-F
MODUS-36iii = vi-F
MODUS-37ii_v = i-a4 viii-C d-g
MODUS-37vi_xiii = i-a4 ii_-a d-g
MODUS-37xiv_xxiii = i-a4 ii-A d-g
MODUS-38i = iv-E iv_-e
MODUS-38ii = iv_-e vii-c
MODUS-39i = vii-c2
MODUS-39ii = ii-D
MODUS-41 = ii-D
MODUS-42 = vi-F e-e
MODUS-43i = iv-e viii-G viii-C
MODUS-43ii = ii_-a iv-e viii-C
MODUS-43iii = i-g3 ii-D iv-e viii-C
MODUS-44i = viii-G5
MODUS-44ii = ii_-B
MODUS-45 = ii-D
MODUS-46 = viii-c viii-G5
MODUS-47 = ii_-a iv-a
MODUS-49i_vi = i-g2 viii-A viii-G2
MODUS-49vii_xv = viii-G viii-G2 e
MODUS-49xvi_xxiii = vii-c viii-G2 e
MODUS-50 = i-a2 i-f i-g iii-a vi-F vii-a vii-c viii-G viii-G2 viii-G5
MODUS-51 = iv_-e
MODUS-54i = i-a4 viii-c
MODUS-54ii = i-a4 vii-c2
MODUS-54iii = i-a4 viii-G
MODUS-56 = viii-g viii-G
MODUS-62 = i-g ii_-B ii_-a iii-e iv-e2 iv-d vii-a vii-c2 viii-G viii-C viii-g viii-c viii-g6 e
MODUS-63 = i-d
MODUS-64 = i-d viii-A viii-C
MODUS-65i = vi-F vii-c viii-G5
MODUS-65ii = ii_-a vii-a viii-g
MODUS-66 = viii-g e dir
MODUS-67i = i-g vii-a
MODUS-67ii = i-f i-g
MODUS-67iii = i-g d-g2
MODUS-68ii_xiii = i-g i-d viii-c
MODUS-68xiv_xxii = i-g i-d viii-c
MODUS-68iii = i-g i-d viii-G
MODUS-72i = vi-F viii-c
MODUS-72ii = ii-D vi-F
MODUS-72iii = iii-b vi-F
MODUS-76 = viii-G
MODUS-77i_xvi = i-a4 i-g3
MODUS-77iii = i-a4 ii-D
MODUS-77xxxii_xxxix = i-a4 viii-G
MODUS-77xl_li = iii-a iii-g
MODUS-77lii_lxiv = iii-g c-c2
MODUS-77lxv_lxxii = iii-g viii-G
MODUS-79 = ii_-B ii_-a
MODUS-80 = i-a2 i-g5
MODUS-83 = viii-G
MODUS-84 = vi-F viii-G
MODUS-85 = ii-D
MODUS-86 = i-g i-a4 vii-b
MODUS-88ii_xix = iv-e viii-G
MODUS-88xx_xxx = iv-e viii-G
MODUS-88xxxi_xxxviii = iv-e viii-G
MODUS-88xxxix_xlvi = vii-a viii-G5
MODUS-88xlvii_liii = vi-F viii-G5
MODUS-89 = i-g vi-F viii-G5 c-c2
MODUS-90 = viii-G
MODUS-91 = viii-g viii-G5 e
MODUS-92 = iii-a viii-G viii-g
MODUS-95 = ii-D
MODUS-96 = iii-a iii-a2 viii-G5
MODUS-97 = e
MODUS-98 = iv_-e e
MODUS-99 = iv_-e vii-c viii-g e
MODUS-100 = viii-G
MODUS-101ii_xii = i-a i-d3
MODUS-101xiii_xxiii = i-d3 viii-G
MODUS-101iii = i-d3 i-g
MODUS-102i = vi-F vii-a viii-C viii-G5
MODUS-102ii = i-d vi-F viii-G5
MODUS-102iii = iii-g vi-F vii-a viii-G5
MODUS-103i = iii-a vii-a viii-G
MODUS-103ii = ii-D viii-G5 viii-C
MODUS-103iii = vii-a viii-G e
MODUS-104i = viii-g d-g
MODUS-104ii = viii-a viii-g
MODUS-104iii = iv-E viii-g
MODUS-105i = d-g e per
MODUS-105ii = viii-G d-g per
MODUS-105iii = vii-a d-g per
MODUS-106i = iv-e iv_-e iv-e2
MODUS-106ii = iv-e iv-e2 c-c2
MODUS-106iii = iii-a2 iv-e iv-e2
MODUS-107 = viii-G viii-g
MODUS-109 = vii-c2 viii-G
MODUS-110 = iv-g vii-c
MODUS-111 = iv-a viii-C
MODUS-112 = vii-c viii-g
MODUS-113 = per
MODUS-114 = i-g2
MODUS-115 = viii-A
MODUS-116 = ii_-a ii_-B viii-A e
MODUS-117 = i-f ii-D vii-c viii-C viii-G viii-c
MODUS-117i = iv-e2
MODUS-117ii = viii-G
MODUS-117iii = iii-a
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
MODUS-134i = i-a i-a2
MODUS-135 = iii-g
MODUS-135i = iiir-g viii-G d-g
MODUS-135ii = iiir-g viii-G d-g
MODUS-135iii = vii-c c-c2 d-g
MODUS-136 = viii-G
MODUS-137 = v-a
MODUS-138i = iii-g
MODUS-138ii = iii-g
MODUS-139 = iv-g
MODUS-140 = viii-A
MODUS-141 = viii-A
MODUS-142 = viii-G viii-g
MODUS-143i = vi-F
MODUS-143i_x = vi-F
MODUS-143ii = vi-F
MODUS-144i = vii-a viii-A viii-G
MODUS-144ii = vii-c2
MODUS-144x_xiii = iii-a4 vii-c viii-G viii-G5
MODUS-144xiv_xxi = i-f vii-a viii-a viii-G5
MODUS-145 = iv-E iv_-e
MODUS-146 = viii-g viii-A
MODUS-147 = vi-F e
MODUS-148 = i-a i-g i-d ii-D ii_-B vi-F vii-a viii-g
MODUS-149 = i-a i-a2 i-g ii-D ii_-B ii_-f iii-a iv-c vi-F vii-a viii-g viii-G5
MODUS-150 = i-a i-a2 i-g ii-D ii_-B vi-F vii-a viii-g viii-G
MODUS-anna = i-g6 ii-D vii-c
MODUS-david = i-f vii-a
MODUS-ecclesiastici = iii-a vii-a
MODUS-ezechiae = i-g ii-D v-a e
MODUS-ezechiae2 = i-d ii-D
MODUS-habacuc = iv_-e viii-G
MODUS-isaiae = viii-G viii-g
MODUS-isaiae2 = v-a viii-G
MODUS-isaiae3 = vii-d
MODUS-isaiae4 = vii-c
MODUS-isaiae5 = iv-E iv_-e vii-c
MODUS-isaiae8 = vii-c viii-g viii-G5
MODUS-isaiae9 = ii-D vii-c2
MODUS-isaiae10 = vi-F vii-b
MODUS-isaiae11 = vii-a viii-g viii-g5
MODUS-isaiae12 = iii-b iv-E
MODUS-iudith2 = ii_-d vii-c
MODUS-jeremiae2 = i-d viii-G
MODUS-jeremiae3 = iv_-e vii-c2
MODUS-lamentatio = i-d
MODUS-moysis = iv-e2 viii-G5 e
MODUS-moysis1 = iv-e2 viii-G5 e
MODUS-moysis2i_xii = i-d vi-F vii-c2
MODUS-sapientia = v-a viii-G5
MODUS-tobiae = vii-a viii-g
MODUS-tobiae2 = ii-D viii-G
MODUS-dan3 = i-a4 i-g ii-D ii_-a iii-a vi-F vii-a vii-b vii-c viii-G viii-G5
MODUS-dan32 = i-f
MODUS-dan33 = i-a2 viii-c2
MODUS-oseae = iii-b iv-E
MODUS-sophoniae = iii-b iv-E
MODUS-nuncdimittis = iii-a
MODUS-magnificat = isoll-f isoll-g i-f i-g i-g2 i-g4 i-a i-D2 ii-D ii_-B iisoll-D iii-a iiisoll-a iv-A iv-A_ iv-d v-a vii-b vii-c vii-c2 viisoll-b viisoll-d viii-G viii-G2 viiisoll-G viiisoll-G2 viiisoll-g viiisoll-g5
MODUS-benedictus = i-a4 i-d i-f i-g i-g4 i-g5 isoll-g isoll-a5 isoll-D isoll-d3 isoll-f iisoll-A ii-D ii_-a ii_-d ii_-B iii-a4 iii-b iiisoll-a iiisoll-b iv-E iv-e2 ivsoll-e2 iv_-e v-a v-g vsoll-g vi-F visoll-F vii-a viisoll-a vii-b viisoll-b viisoll-c vii-c2 vii-d2 viii-g viii-G viii-G2 viii-G5 viii-C viii-C2 viii-c viiisoll-G viiisoll-G5
CANTICIS = anna isaiae isaiae2 isaiae3 isaiae4 isaiae5 isaiae8 isaiae9 isaiae10 isaiae11 isaiae12 habacuc jeremiae2 jeremiae3 moysis moysis1 moysis2i_xii ecclesiastici ezechiae sapientia tobiae tobiae2 david nuncdimittis ezechiae2 lamentatio dan3 dan32 dan33 iudith2 oseae sophoniae
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
LAPSALMSSINEDOX = $(foreach P,62 115 148 149,$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-$(M)-sinedox.tex)) \
		  $(foreach C,dan3,$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-$(M)-sinedox.tex))
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,alleluia1 alleluia2 alleluia3 ampliuslavame atimore aviroiniquo \
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
			  principessacerdotum fulcitemefloribus \
			  angelusautemdomini etecceterraemotus eratautem praetimoreautem \
			  respondensautemangelus angelusautemdomini etecceterraemotus \
			  eratautem respondensautemangelus etrespicientes etvaldemane \
			  egosumquisum postulavi egodormivi surrexitenimsicutdixit quisunt \
			  mariastabatadmonumentum videte jesusjunxit stetitjesus \
			  alleluia-completorium salvanos-antiquo-tp reginacaeli-monasticum \
			  mittite dixit haecdiesquamfecit maria tulerunt undecim dataest \
			  currebant gavisisuntdiscipuli veniteomnesadoremus paxvobis \
			  cognoveruntdominum mittemanum surrexitchristus \
			  alleluia-praglia-e alleluia-turco16 alleluia-turco6 \
			  fulgebuntiusti ierusalemluce nonmirerisquiadixi eruistidomine-tp \
			  alleluia-turco11 alleluia-turco12 alleluia-turco25 \
			  dominusiudicabit-tp sicdeusdilexitmundum alleluia-turco15 \
			  alleluia-turco18 alleluia-turco22 paterdiligitfilium haurietisaquas \
			  alleluia-turco2 alleluia-turco29 alleluia-turco4 accepitergoiesus \
			  domineaudivi-tp alleluia-praglia-e2 alleluia-turco23 alleluia-turco3 \
			  alleluiapaxvobis effrondeteingratia oculituisanctadeigenetrix \
			  alleluia-bv21-n1 alleluia-bv21-n2 alleluia-bv21-n3 marianoliiamflere \
			  alleluialapisrevolutus spirituscarnemetossa venitmarianuntians \
			  alleluia-auglx1 alleluia-bv21-n4 alleluia-bv21-n5 alleluia-turco8 \
			  operamininoncibum veniteascendamus-tp alleluia-auglx2 alleluia-turco5 \
			  amenamendicononmoyses denoctespiritusmeus-tp alleluia-auglx3 \
			  alleluia-turco7 beatiquiambulant-tp dixitdominusiesusegosumpanis \
			  inmedioecclesiae alleluia-auglx4 alleluia-turco10 alleluia-turco21 \
			  eccedominusnoster-tp nemopotestvenire alleluia-turco13 alleluia-auglx5 \
			  beatusgeorgius nonnosderelinquas-tp alleluia-fo2 mecumsitdomine-tp \
			  sanctadeigenetrix verbaquaelocutussum egosumpastorovium \
			  alleluia-turco1 amenamendicovobisquinon cantatedominocanticum-tp \
			  alleluia-auglx6 ovesmeae sacrificiumdeo-tp alleluia-auglx7 \
			  alleluia-turco14 egosumluxmundi induitmedominus-tp vincentidaboei \
			  nonestdiscipulus alleluia-turco19 alleluia-turco17 alleluia-auglx8 \
			  adiurovosfiliae alleluia-turco20 alleluia-turco24 beatiquilavantstolas \
			  eccesacerdosmagnus-tp vadopararevobis alleluia-turco26 etdicebantunde \
			  iesuschristusheriethodie sicognovissetisme egosumvitisvera \
			  domineostende egosumvia intabernaculisiustorum nonturbeturcor \
			  sanctituidomine sidiligitisme tantotemporevobiscum \
			  voxlaetitiaeintabernaculis pacemrelinquovobis benedicitedominumomneselecti \
			  alleluia-turco9 alleluia-praglia-viii alleluiaegosumvitisvera \
			  dominemagnusestu-tp maneteindilectionemea populusmeusait-tp alleluia-turco31 \
			  indominoiustificabitur-tp hocestpraeceptummeum egovoselegidemundo \
			  fortitudomeaetlausmea vosautemdixiamicos dumveneritparaclitus ostendenobis-tp \
			  vadoadeumquimisit adhucmultahabeo dumsteteritis-tp maioremcaritatem-tp \
			  sanctietiusti-tp vosamicimei-tp amenamendicovobissiquid reginacaeli-praglia \
			  christodatusest dataestmihi laetenturetexultentomnes patersancte \
			  eccenuncpalam usquemodononpetistis patersancteservaeos gaudeteetexsultate-tp \
			  cognoviteumdominus-tp euntesinmundumdoceteomnes petiteetaccipietis \
			  ultimofestivitatis dapacemdomine crucifixusresurrexit redemptornoster \
			  surrexitchristusetilluxit collaudabuntmultisapientiam-tp \
			  euntesinmundumuniversum istisuntvirisanctiet-tp sapientiadominievangelii-tp \
			  caritasnonquaerit-tp dilexistiiustitiam-tp dumessetrex-tp egochristumconfiteor-tp \
			  iamhiemstransiit-tp laevaeius-tp trahemepostte-tp benedicatterradomino \
			  deresurrectionetuachriste mittiteindexteram regnavitdominuspraecinctus \
			  attenditeafalsisprophetis nonturbeturcorvestrumneque caromeavereestcibus \
			  dixitsimonpetrus nonmoriarsedvivam benedictumnomengloriae redemptiadomino \
			  siquisintroierit exsultabuntsancti-tp mandatumnovum quisititveniat-tp \
			  tresinfornace egosumalpha quiautemdiligitme desubpedeagni vincentidaboeiedere \
			  iterumautemvidebovos benedictusesinfirmamento-tp gloriaethonoretbenedictio \
			  intabernaculisiustorumvox siquisdiligitmesermonem sicvenietquemadmodum \
			  iterumvidebovos nonprohisrogo benedictatu-tp exsurgensmaria-tp \
			  intravitmaria-tp utaudivitsalutationem-tp exquofactaestvox \
			  beataesmariaquaecredisti vespereautemsabbati eratautemaspectus \
			  iesumquicrucifixusest etincipiensamoyseet dumtransissetsabbatum \
			  etdicebantadinvicem etrespicientesviderunt introeuntesinmonumentum \
			  noliteexpavescere ingalilaeaiesum hociamtertio etrecordataesunt \
			  iesumquemquaeritis surgensjesusmaneprimasabbati deterraplasmastime \
			  complaceattibi exsultabuntdomino aportainferi omnisspiritus \
			  egosumresurrectio-tp tusolusperegrinuses istesanctusprolege \
			  quamspeciosi quidoctifuerint-tp invelamentoclamabantsancti \
			  favusdistillanslabia rogabopatremmeum sublevatisoculis \
			  accinxitfortitudine-tp beatusvirquiinventusest \
			  caritasdeidiffusaest hicestveremartyr semenceciditaliud \
			  sanguissanctorummartyrum) \
	 $(addprefix hym-TeLucis-,feria minor dominica major solemnis bmv tp solemnis-tp) \
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
			  VexillaRegis PangeLingua HicAccetum AuroraLucis AdCoenam \
			  AuroraLucis-alt HicEstDies ChorusNovae ChorusNovae-praglia \
			  LaetareCaelum TeCatharina ClaroPaschali MatthiaSacratissimo PhilippeSummae \
			  OptatusVotis AEterneRex IesuNostraRedemptio IamNunc-Marcus OVirBeate \
			  VirgoPrudentum ChristePastorum InclitusPastor-doctorum VeniPraecelsa  \
			  VeniensMater QuiVivis ChristeRex LaetiColentes ORedemptorisPietas) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus-tp clamaviintotocorde auditamfacmihi \
			   avemaria-alt exsultateiusti vocemmeamaudi clamaboaddeum \
			   benedictusdominus inmedioecclesiae sapientiamsanctorum \
			   inmatutinis deusmeusadiutormeus ipseliberavitme scapulissuis \
			   christefilidei-tq deoreleonis deoreleonis-feriale erueaframea \
			   erueaframea-feriale surrexitdominusdesepulcro surrexitdominusvere \
			   surrexitdominusvere-solemnis christefilideivivi-tp audifilia-tp \
			   constitueseosprincipes-tp ascendenschristus narraveruntlaudes-tp \
			   diffusaestgratia-tp exaltabotedomine-tp) \
	 $(addprefix deusinadiutorium-,solemnis alter communis solemnis-tq alter-tq communis-tq \
				       solemnis-quad alter-quad communis-quad) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 oratiodominica-d deprecatio4-propace \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv festis-bmv \
				  dominica-advequad feria-advequad octava-paschae tempore-paschali \
				  festis-laudes) \
	 $(addprefix inv-,surrexitdominusvere regemapostolorum-tp christumdominumquisanctum \
			  dominumloquentem-tp fontemsapientiae-tp visitationemvirginis-tp \
			  regemcuiomnia-tp mirabileminsanctis-tp) \
	 dominelabiamea tonusprecum tonusprecumnovum dominusnosbenedicat dominusnosbenedicat-d \
	 tonus-lectionis-prophetiae \
	 $(addprefix capitulum-,tuautem BenedictusDeus AbInitio Hortamur InterVestibulum \
				FratresRogamus FratresEstote FratresScriptum FratresChristus \
				TuAutemDomineSabaoth FratresExpurgate) \
	 $(addprefix absolutio-,exaudi ipsius avinculis precibus) \
	 $(addprefix versus-,custodi gaude dirigatur diffusa-tq angelis eripe eripemede haecdies \
			     haecdies-communis inresurrectione ascenditdeus-communis \
			     misericordiaetuae) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem ille \
					noscum ipsavirgo pervirginem) \
	 $(addprefix resp-,angelusdominidescendit-CROCHU angelusdominilocutus-CROCHU \
			   dumtransisset-CROCHU-cumdox mariamagdalena-CROCHU \
			   surgensjesus-CROCHU congratulamini-CROCHU-cumdox \
			   virtutemagna-CROCHU tuleruntdominum-CROCHU expurgate-CROCHU-cumdox \
			   eccevicitleo-CROCHU istisuntagninovelli-CROCHU \
			   deoreprudentis-CROCHU-cumdox surrexitpastor-CROCHU-cumdox \
			   surrexitpastor-CROCHU virtutemagna-CROCHU-cumdox \
			   surgensjesus-CROCHU-cumdox eccevicitleo-CROCHU-cumdox \
			   christusresurgensexmortuis paschanostrum \
			   christusresurgensexmortuis-cumdox deoreprudentis-CROCHU \
			   beatusvir-CROCHU pretiosa-CROCHU tristitiavestra-CROCHU \
			   pretiosa-CROCHU-cumdox audivivocemincaeloangelorum-CROCHU \
			   audivivocemincaelotamquam-CROCHU-cumdox dignusesdomine-CROCHU \
			   egosicutvitis-CROCHU locutusestadmeunus-CROCHU \
			   decantabatpopulus-CROCHU-cumdox indiademate-CROCHU-cumdox \
			   ostenditmihiangelus-CROCHU-cumdox plateaetuaeierusalem-CROCHU \
			   veniensalibano-CROCHU vidijerusalemdescendentem-CROCHU \
			   vidiportamcivitatis-CROCHU audivivocemincaeloangelorum-CROCHU-cumdox \
			   ostenditmihiangelus-CROCHU veniensalibano-CROCHU-cumdox \
			   indiademate-CROCHU decantabatpopulus-CROCHU \
			   vidiportamcivitatis-CROCHU-cumdox audivivocemincaelotamquam-CROCHU \
			   vidijerusalemdescendentem-CROCHU-cumdox haecestierusalem-CROCHU-cumdox \
			   egosicutvitis-CROCHU-cumdox filiaeierusalem-CROCHU-cumdox \
			   docetefiliosvestros-CROCHU docetefiliosvestros-CROCHU-cumdox \
			   deuscanticumnovum-CROCHU-cumdox hymnumcantatenobis-CROCHU-cumdox \
			   inecclesiisbenedicite-CROCHU intotocordemeo-CROCHU \
			   narrabonomentuum-CROCHU-cumdox sioblitusfuero-CROCHU \
			   videruntteaquae-CROCHU alleluiaaudivimusea-CROCHU \
			   bonumestconfiteri-CROCHU-cumdox cantatedeoalleluia-CROCHU-cumdox \
			   dicantnuncquiredempti-CROCHU deducmeinsemitam-CROCHU \
			   alleluiaaudivimusea-CROCHU-cumdox alleluiadelectatiobona-CROCHU \
			   alleluiaiudicaiudicium-CROCHU-cumdox bonumestconfiteri-CROCHU \
			   cantatedeoalleluia-CROCHU luxperpetualucebit-CROCHU laetabituriustus-CROCHU \
			   laetabituriustus-CROCHU-cumdox patercumessem-CROCHU-cumdox \
			   psallitedomino-CROCHU iteinorbemuniversum-CROCHU tempusest-CROCHU \
			   tempusest-CROCHU-cumdox ponitnubem-CROCHU-cumdox nonconturbetur-CROCHU \
			   iteinorbemuniversum-CROCHU-cumdox exaltaredomine-CROCHU-cumdox \
			   ascendensinaltum-CROCHU-cumdox ascendensinaltum-CROCHU \
			   postpassionemsuam-CROCHU omnispulchritudodomini-CROCHU \
			   eduxitdominusiesus-CROCHU nonconturbeturetmittam-CROCHU \
			   pacemmeamdovobis-CROCHU nonconturbeturetmittam-CROCHU-cumdox \
			   nonconturbetur-CROCHU-cumdox exaltaredomine-CROCHU \
			   disciplinametsapientiam-sinedox spiritussanctusprocedens-sinedox \
			   iamnondicam-cumdox egosumvitisvera-CROCHU-cumdox egosumvitisvera-CROCHU \
			   expurgate-CROCHU cibavitillam-CROCHU-tp-cumdox gaudeteiusti-CROCHU \
			   inservissuis-CROCHU narrabonomentuum-CROCHU intotocordemeo-CROCHU-cumdox \
			   alleluiaiudicaiudicium-CROCHU haecestierusalem-CROCHU \
			   deducmeinsemitam-CROCHU-cumdox inecclesiisbenedicite-CROCHU-cumdox \
			   deuscanticumnovum-CROCHU pacemmeamdovobis-CROCHU-cumdox \
			   nonvosrelinquam-CROCHU-cumdox iamnondicam-cumdox tempusest-CROCHU-cumdox \
			   ponitnubem-CROCHU beatammedicent-CROCHU-tp-cumdox \
			   benedictaetvenerabilis-CROCHU-tp quaeestista-CROCHU-tp \
			   nonvosrelinquam-CROCHU credoquod-GN quilazarum-GN \
			   liberamedominedemorte-CROCHU mementomeideusquiaventus-CROCHU \
			   istisunttriumphatores-sinedox egosumvitisveraet-CROCHU \
			   egosumvitisveraet-CROCHU-cumdox christusresurgens \
			   duoseraphim-sinedox cruxbenedictanitet-CROCHU-sinedox \
			   stetitangelus-CROCHU-tp) \
	 oratio $(addprefix oratio,2 3 4 5 6 7 -visita d2 d3 d4 d5 d6 d7) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii an_regina_caeli_simplex \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 $(addprefix ant-avereginacaelorum-,simplex solemnis) benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d ps17xxxvi_xlvi-initium-vii-c-trans ps116-initium-e \
	 ps131i-initium-e ps96-initium-iii-a2 ps147-initium-e ps91-initium-e ps66-initium-e \
	 isaiae3-initium-vii-d ps88xxxi_xxxviii-initium-viii-G_ ps97-initium-e ps98-initium-e \
	 jeremiae2-initium-viii-G ps99-initium-e ps72iii-initium-iii-b ps102iii-initium-iii-g \
	 ps103iii-initium-e ps47-initium-iv-a ps101ii_xii-initium-i-a ps62-initium-ii_-B \
	 ps1-initium-ii-D ps3-initium-viii-G3 ps49i_vi-initium-viii-G3 \
	 ps49vii_xv-initium-viii-G3 ps49xvi_xxiii-initium-viii-G3 \
	 ps67i-initium-i-g5 ps67ii-initium-i-g5 ps67iii-initium-i-g5 \
	 ps88ii_xix-initium-iv-e ps88xx_xxx-initium-iv-e ps88xxxi_xxxviii-initium-iv-e \
	 ps88xxxix_xlvi-initium-viii-G5 ps88xlvii_liii-initium-viii-G5 ps89-initium-viii-G5 \
	 ps68ii_xiii-initium-i-d2 ps68xiv_xxii-initium-i-d2 ps68iii-initium-i-d2 \
	 ps106i-initium-iv-e ps106ii-initium-iv-e ps106iii-initium-iv-e \
	 ps102i-initium-viii-G5 ps102ii-initium-viii-G5 ps102iii-initium-viii-G5 \
	 ps43i-initium-iv-e ps43ii-initium-iv-e ps43iii-initium-iv-e \
	 benedictus-initium-vii-a-trans dan3-initium-iii-a-trans ps46-initium-viii-G5 \
	 ps104i-initium-viii-g5 ps104ii-initium-viii-g5 ps104iii-initium-viii-g5 \
	 ps30i-initium-viii-G5 ps30ii-initium-viii-G5 ps30iii-initium-viii-G5 \
	 dan3-initium-iii-a-trans2 ps149-initium-iv_-E ps62-initium-ii_-a \
	 ps6-initium-viii-G3 ps9ii_xi-initium-viii-G3 ps9xii_xxi-initium-viii-G3 \
	 habacuc-initium-viii-G ps149-initium-ii_-f
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
FERIAE = ii iii iv v vi
HEBDOMADAE = ii iii iv v vi vii
PDFI = $(foreach H,op $(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE))) $(patsubst %,sabbato-%.pdf,op $(HEBDOMADAE))
PDFII = 
PDFIII = dominicaresurrectionis.pdf dominicainalbis.pdf $(patsubst %,dominica%postpascha.pdf,$(HEBDOMADAE)) defunctorum-breviori-tp.pdf
PDF = $(PDFI) $(PDFII) $(PDFIII) completorium.pdf
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../OctavaPaschae ../DominicaInAlbis ../FeriaTemporePaschali ../Quadragesimae ../PostPentecosten ../PerAnnum ../DominicaTemporePaschali ../OctavaPaschae ../OctavaPentecostes ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../InAssumptioneBMV ../InConceptioneBMV ../OctavaNativitatis ../MariaeMagdalenae ../Defunctorum ../Iacobi ../ExaltatioCrucis
include $(iter)
$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(filter-out $(TMP_DIR)/magnificat%,$(ALLLAPSALMS)): PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-$(M).tex): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(PDF): %.pdf: %.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
