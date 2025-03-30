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
PSALMS = 1 2 3 4 5 6 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 11 17ii_vii 17viii_xx 17xxi_xxx 17xxxi_xxxv 17xxxvi_xlvi 17xlvii_li 18i 23 28 30i 30ii 30iii 32 34i 34ii 34iii 35 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38i 38ii 41 42 43i 43ii 43iii 46 47 49i_vi 49vii_xv 49xvi_xxiii 50 51 54i 54ii 54iii 56 62 64 65i 65ii 66 67i 67ii 67iii 68ii_xiii 68xiv_xxii 68iii 72i 72ii 72iii 76 77i_xvi 77iii 77xxxii_xxxix 77xl_li 77lii_lxiv 77lxv_lxxii 79 80 83 84 85 86 88ii_xix 88xx_xxx 88xxxi_xxxviii 88xxxix_xlvi 88xlvii_liii 89 90 91 92 95 96 97 98 99 100 101ii_xii 101xiii_xxiii 101iii 102i 102ii 102iii 103i 103ii 103iii 104i 104ii 104iii 105i 105ii 105iii 106i 106ii 106iii 107 109 110 111 112 113 114 115 116 117 118xix 128 129 130 131 131i 131ii 132 133 134 134i 135 135i 135ii 135iii 136 137 138i 138ii 139 140 141 142 143i 143i_x 143ii 144i 144ii 144x_xiii 144xiv_xxi 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = i-g i-d viii-G
MODUS-2 = i-a4 iii-a vii-a
MODUS-3 = vi-F vii-c viii-G5
MODUS-4 = viii-G
MODUS-5 = viii-A
MODUS-6 = iv-E
MODUS-8 = i-f i-g
MODUS-9ii_xi = viii-G
MODUS-9xii_xxi = i-g3
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e
MODUS-11 = viii-G
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g
MODUS-17xxi_xxx = iv_-e
MODUS-17xxxi_xxxv = viii-G
MODUS-17xxxvi_xlvi = vii-c
MODUS-17xlvii_li = vii-c2
MODUS-18i = ii-D viii-G
MODUS-23 = iv_-e viii-G
MODUS-28 = vii-a
MODUS-30i = viii-G
MODUS-30ii = e-a
MODUS-30iii = ii-D
MODUS-32 = iv-E
MODUS-34i = iv-g
MODUS-34ii = viii-G
MODUS-34iii = viii-G
MODUS-35 = ii-D
MODUS-36i_xi = vi-F
MODUS-36xii_xxix = ii-D
MODUS-36iii = vi-F
MODUS-37ii_v = viii-C dir
MODUS-37vi_xiii = ii_-a
MODUS-37xiv_xxiii = ii-A
MODUS-38i = iv-E
MODUS-38ii = vii-c
MODUS-41 = ii-D iv-E
MODUS-42 = vi-F vii-d2
MODUS-43i = viii-G
MODUS-43ii = ii_-a viii-C
MODUS-43iii = i-g3 ii-D
MODUS-46 = viii-c
MODUS-47 = iv-a
MODUS-49i_vi = i-g2 viii-A
MODUS-49vii_xv = viii-G e
MODUS-49xvi_xxiii = vii-c e
MODUS-50 = i-f i-a2 iii-a vi-F vii-a vii-c viii-G viii-G2
MODUS-51 = iv_-e
MODUS-54i = viii-c
MODUS-54ii = vii-c2
MODUS-54iii = viii-G
MODUS-56 = viii-g
MODUS-62 = i-f i-g ii_-B vii-a viii-G e
MODUS-64 = ii-D viii-A
MODUS-65i = vi-F
MODUS-65ii = ii_-a
MODUS-66 = e dir
MODUS-67i = vii-a
MODUS-67ii = i-f
MODUS-67iii = d-g2
MODUS-68ii_xiii = viii-c
MODUS-68xiv_xxii = viii-c
MODUS-68iii = viii-G
MODUS-72i = viii-c
MODUS-72ii = ii-D
MODUS-72iii = iii-b
MODUS-76 = vii-b viii-G
MODUS-77i_xvi = i-g3
MODUS-77iii = ii-D
MODUS-77xxxii_xxxix = viii-G
MODUS-77xl_li = iii-a
MODUS-77lii_lxiv = c-c2
MODUS-77lxv_lxxii = viii-G
MODUS-79 = ii_-B
MODUS-80 = i-g5
MODUS-83 = viii-G
MODUS-84 = vi-F viii-G
MODUS-85 = ii-D
MODUS-86 = i-g
MODUS-88ii_xix = viii-G
MODUS-88xx_xxx = viii-G
MODUS-88xxxi_xxxviii = viii-G
MODUS-88xxxix_xlvi = vii-a
MODUS-88xlvii_liii = vi-F
MODUS-89 = i-g vi-F
MODUS-90 = viii-G
MODUS-91 = viii-g e
MODUS-92 = i-g
MODUS-95 = ii-D
MODUS-96 = iii-a2 viii-G
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
MODUS-110 = iv-g
MODUS-111 = iv-a
MODUS-112 = vii-c
MODUS-113 = per
MODUS-114 = i-g2
MODUS-115 = viii-A
MODUS-116 = ii_-B viii-A e
MODUS-117 = ii-D vii-c viii-C viii-G
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
MODUS-142 = viii-G
MODUS-143i = vi-F
MODUS-143i_x = vi-F
MODUS-143ii = vi-F
MODUS-144i = viii-A viii-G
MODUS-144ii = vii-c2
MODUS-144x_xiii = vii-c
MODUS-144xiv_xxi = viii-a
MODUS-145 = iv-E iv_-e
MODUS-146 = viii-g viii-A
MODUS-147 = vi-F e
MODUS-148 = i-a i-g ii-D ii_-B vii-a
MODUS-149 = i-a i-g i-g3 i-g5 ii-D ii_-B vii-a
MODUS-150 = i-a i-g ii-D ii_-B vii-a e-e
MODUS-anna = ii-D iii-a
MODUS-david = i-f
MODUS-ecclesiastici = ii-D iii-a
MODUS-ecclesiasticus36 = i-f viii-G5 d-g
MODUS-ezechiae = ii_-B e
MODUS-ezechiae2 = i-d iv_-e
MODUS-habacuc = iv_-e
MODUS-isaiae = viii-G
MODUS-isaiae2 = v-a
MODUS-isaiae3 = vii-d
MODUS-isaiae4 = vii-c
MODUS-isaiae5 = iv-E iv_-e
MODUS-isaiae7 = d-g
MODUS-isaiae8 = viii-g d-g
MODUS-isaiae9 = ii-D
MODUS-isaiae10 = vi-F
MODUS-isaiae11 = viii-g
MODUS-iudith2 = ii_-d
MODUS-jeremiae2 = i-d viii-G
MODUS-jeremiae3 = iv_-e
MODUS-lamentatio = i-d
MODUS-moysis = e
MODUS-moysis1 = e
MODUS-moysis2i_xii = vi-F
MODUS-sapientia = v-a
MODUS-tobiae = vii-a
MODUS-tobiae2 = ii-D
MODUS-dan3 = i-a4 ii-D ii_-a iv-e2 viii-G
MODUS-dan32 = i-f
MODUS-dan33 = viii-G
MODUS-nuncdimittis = iii-a
MODUS-magnificat = isoll-f isoll-g i-f i-g i-g2 i-g4 i-a i-D2 ii-D ii_-B iisoll-D iii-a iiisoll-a iv-A iv-A_ iv-d v-a vii-b vii-c vii-c2 viisoll-b viii-G viii-G2 viiisoll-G viiisoll-g viiisoll-g5
MODUS-benedictus = i-a4 i-d i-f i-g i-g4 i-g5 i-D2 isoll-a5 isoll-d3 iisoll-A ii-D ii_-a ii_-d ii_-B iii-a iii-a4 iii-b iv-E iv_soll-e v-a vsoll-g vi-F vii-a vii-c vii-c2 vii-d2 viii-g viii-G viii-G2 viii-G5 viii-C2 viii-c viiisoll-G viiisoll-G5 viiisoll-c
CANTICIS = anna isaiae isaiae2 isaiae3 isaiae4 isaiae5 isaiae7 isaiae8 isaiae9 isaiae10 isaiae11 habacuc jeremiae2 jeremiae3 moysis moysis1 moysis2i_xii ecclesiastici ecclesiasticus36 ezechiae sapientia tobiae tobiae2 david nuncdimittis ezechiae2 lamentatio dan3 dan32 dan33 iudith2
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
LAPSALMSSINEDOX = $(foreach P,115 148 149,$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-$(M)-sinedox.tex)) \
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
			  principessacerdotum fulcitemefloribus dapacemdomine \
			  secundummultitudinem hymnumdiciteetsuperexaltate \
			  beneplacitumestdomino venitebenedictipatris quoduniexminimis \
			  dimittenobisdomine infirmamento dixitautemdominusadcultorem \
			  regnavitdominusdecorem siindigitodei incymbalisbenesonantibus \
			  deusmeusestu etmescitis liberanosdeus alligadomine \
			  deusdeusmeus quisequiturmenonambulat cumexaltaveritis \
			  desideriodesideravi inlegedominifuit similaboeum \
			  eccedeusnoster dicoautemvobis inhoccognoscentomnes \
			  praedicanspraeceptumdomini vocemeaaddominum aquaquamego \
			  rabbiquidpeccavit lazarusamicusnoster malosmaleperdetet \
			  eccequambonumet spiritusapientiae anxiatusest \
			  frameasuscitareadversus inundaveruntaquae pateriustemundus \
			  discernecausammeam oblatusest clarificamepater \
			  indietribulationis videbuntinquem traditorautem \
			  dominevimpatiorresponde regnavitdominus) \
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
			   erueaframea-feriale christefilideiquiattritus-tq) \
	 $(addprefix deusinadiutorium-,solemnis alter communis solemnis-tq alter-tq communis-tq \
				       solemnis-quad alter-quad communis-quad) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 oratiodominica-d deprecatio4 deprecatio4-propace \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv festis-bmv \
				  dominica-advequad feria-advequad) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria christummariaefilium \
			  hodiesivocem nonsitvobisvanum hodiesivocem-CROCHU hodiesivocem-CROCHU-sinedox \
			  christumdominum christumdominum-cumdox) \
	 dominelabiamea tonusprecum tonusprecumnovum dominusnosbenedicat dominusnosbenedicat-d \
	 $(addprefix capitulum-,tuautem BenedictusDeus AbInitio Hortamur InterVestibulum \
				FratresRogamus FratresEstote FratresScriptum FratresChristus \
				TuAutemDomineSabaoth) \
	 $(addprefix absolutio-,exaudi ipsius avinculis precibus) \
	 $(addprefix versus-,custodi gaude dirigatur diffusa-tq angelis eripe eripemede) \
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
			   formavitigiturdominus-CROCHU-cumdox tulitergodominus-CROCHU \
			   insudorevultustui-CROCHU-cumdox ubiestabelfratertuus-CROCHU \
			   ecceadamquasiunus-CROCHU inprincipiofecitdeus-CROCHU \
			   dixitdominusdeusnonest-CROCHU immisitdominussoporem-CROCHU-cumdox \
			   ecceadamquasiunus-CROCHU-cumdox inarticulodiei recordatusdominus \
			   quadragintadiesetnoctes-CROCHU-cumdox aedificavitnoealtare-CROCHU \
			   ponamarcummeuminnubibus-CROCHU permemetipsumiuravi-CROCHU-cumdox \
			   conceptiogloriosae-CROCHU conceptiotua-CROCHU-cumdox \
			   egressonoedearcha vocavitangelusdomini-CROCHU \
			   deusdominimeiabraham-CROCHU venihodieadfontemaquae-CROCHU-cumdox \
			   absconditeeleemosynam-CROCHU-cumdox absconditeeleemosynam-CROCHU \
			   eccenunctempus-CROCHU-cumdox eccenunctempus-CROCHU \
			   emendemusinmelius-CROCHU-cumdox emendemusinmelius-CROCHU \
			   paradisiportas-CROCHU-cumdox paradisiportas-CROCHU \
			   locutusestdominusadabraham-CROCHU dumstaretabrahamadradicem-CROCHU \
			   caecussedebatsecusviam-CROCHU-cumdox angelusdominivocavit-CROCHU-cumdox \
			   tentavitdeusabraham-CROCHU angelusdominivocavit-CROCHU \
			   vocavitangelusdomini-CROCHU-cumdox paradisiportas-CROCHU \
			   emendemusinmelius-CROCHU-cumdox inieiunioetfletu-CROCHU \
			   inomnibusexhibeamus-CROCHU angelissuismandavit-CROCHU-cumdox \
			   ductusestiesusindesertum-CROCHU-cumdox tribularersinescirem-CROCHU \
			   paterpeccaviincaelum-CROCHU-cumdox tollearmatua-CROCHU \
			   ecceodorfiliimei-CROCHU dettibideus-CROCHU-cumdox dumexiretiacob-CROCHU \
			   sidominusdeusmeus-CROCHU eritmihidominusindeum-CROCHU-cumdox \
			   vididominumfacieadfaciem-CROCHU-cumdox oravitiacobetdixit-CROCHU \
			   dixitangelusadiacob-CROCHU videntesiosephalonge-CROCHU \
			   dixitiudasfratribussuis-CROCHU vidensiacobvestimenta-CROCHU-cumdox \
			   iosephdumintraret-CROCHU mementomeidumbene-CROCHU \
			   tollitehincvobiscum-CROCHU-cumdox salusnostrainmanutuaest-CROCHU-cumdox \
			   isteestfrater-CROCHU dixitrubenfratribussuis-CROCHU \
			   meritohaecpatimur-CROCHU-cumdox dixitiosephundecim-CROCHU \
			   nuntiaveruntiacobdicentes-CROCHU tollitehincvobiscum-CROCHU \
			   isteestfrater-CROCHU-cumdox locutusestdominusadmoysen-CROCHU \
			   stetitmoysescoram-CROCHU cantemusdominogloriose-CROCHU-cumdox \
			   inmariviatua-CROCHU quipersequebanturpopulum-CROCHU \
			   moysesfamulusdomini-CROCHU-cumdox eccemittoangelummeum-CROCHU-cumdox \
			   splendidafactaestfacies-CROCHU attenditepopulemeus-CROCHU \
			   audiisraelpraecepta-CROCHU-cumdox vosquitransituriestis-CROCHU \
			   sicutfuicummoyse-CROCHU-cumdox adduxivosperdesertum-CROCHU \
			   populemeusquidfeci-CROCHU eccemittoangelummeum-CROCHU \
			   istisuntdies-CROCHU multiplicatisunt-CROCHU quicustodiebant-CROCHU \
			   deusmeusestune-CROCHU inteiactatussum-CROCHU inproximoest-CROCHU \
			   adiutoretsusceptormeus-CROCHU doceaminiquosviastuas-CROCHU \
			   neperdascumimpiis-CROCHU totadiecontristatus-CROCHU \
			   deusmeuseripeme-CROCHU neavertasfaciem-CROCHU \
			   erueaframeadeus-CROCHU principespersecutisuntme-CROCHU \
			   usquequoexaltabitur-CROCHU deoreleonisliberame-CROCHU \
			   pacificeloquebantur-CROCHU cantemusdominogloriose-CROCHU \
			   quipersequebanturpopulum-CROCHU-cumdox moysesfamulusdomini-CROCHU \
			   attenditepopulemeus-CROCHU-cumdox sicutfuicummoyse-CROCHU \
			   adduxivosperdesertum-CROCHU-cumdox quicustodiebant-CROCHU-cumdox \
			   inproximoest-CROCHU-cumdox adiutoretsusceptormeus-CROCHU-cumdox \
			   quadragintadiesetnoctes-CROCHU emisitnoecolumbam \
			   egressonoedearcha-sinedox movensigiturabram \
			   crediditabrahamdeo-cumdox factusestsermodomini \
			   venihodieadfontemaquae-CROCHU viriimpiidixerunt \
			   opprobriumfactussum insurrexeruntinme contumeliasetterrores \
			   deusisrael synagogapopulorum locutisunt dixeruntimpii \
			   circumdederuntme movensigiturabraham-CROCHU \
			   crediditabrahamdeo-CROCHU-cumdox factusestsermodomini-CROCHU) \
	 $(addprefix oratio,-visita bmv 1 2 3 4 5) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 $(addprefix ant-avereginacaelorum-,simplex solemnis) benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d ps17xxxvi_xlvi-initium-vii-c-trans ps116-initium-e \
	 ps131i-initium-e ps96-initium-iii-a2 ps147-initium-e ps91-initium-e ps66-initium-e \
	 isaiae3-initium-vii-d ps88xxxi_xxxviii-initium-viii-G_ ps97-initium-e ps98-initium-e \
	 jeremiae2-initium-viii-G ps99-initium-e ps72iii-initium-iii-b ps102iii-initium-iii-g \
	 ps103iii-initium-e ps47-initium-iv-a ps101ii_xii-initium-i-a ps62-initium-ii_-B \
	 jeremiae2-initium-i-d ps3-initium-vii-c-trans
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
FERIAE = ii iii iv v vi
HEBDOMADAE = postcinerum i ii iii iv v
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDF = $(PDFI) $(PDFII) $(PDFIII) completorium.pdf feriaiv-cinerum.pdf $(patsubst %,feria%-mh.pdf,ii iii iv)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../PostPentecosten ../PerAnnum ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../InAssumptioneBMV ../InConceptioneBMV ../OctavaNativitatis ../Septuagesimae ../Adventus ../HebdomadaSancta ../ChristiUniversorumRegis
include $(iter)
iter-left: $(LAPSALMSSINEDOX)
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
