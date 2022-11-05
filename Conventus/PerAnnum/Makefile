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
PSALMS = 1 2 3 5 6 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 11 14 15 16 17ii_vii 17viii_xx 17xxi_xxx 17xxxi_xxxv 17xxxvi_xlvi 17xlvii_li 18 18i 20 23 28 30i 30ii 30iii 32 34i 34ii 34iii 35 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38i 38ii 39 39i 39ii 40 41 42 43i 43ii 43iii 44i 44ii 45 46 47 49i_vi 49vii_xv 49xvi_xxiii 50 51 54i 54ii 54iii 56 62 63 64 65i 65ii 66 67i 67ii 67iii 68ii_xiii 68xiv_xxii 68iii 71i 71ii 72i 72ii 72iii 76 79 80 83 84 85 86 88ii_xix 88xx_xxx 88xxxi_xxxviii 88xxxix_xlvi 88xlvii_liii 89 91 91i 91ii 92 95 96 97 98 99 100 101ii_xii 101xiii_xxiii 101iii 102i 102ii 102iii 102i_xiv 102xiv_xxii 103i 103ii 103iii 106i 106ii 106iii 107 116 117 118xix 130 131i 131ii 134i 135i 135ii 135iii 142 143i_x 144i 144x_xiii 144xiv_xxi 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = i-g i-d ii-D viii-G
MODUS-2 = i-a4 i-f iii-a iii-g vii-a viii-G viii-G5
MODUS-3 = vi-F vii-c viii-G5
MODUS-5 = viii-A
MODUS-6 = iv-E viii-G
MODUS-8 = i-f i-g ii_-a vi-F viii-G viii-G2
MODUS-9ii_xi = viii-G
MODUS-9xii_xxi = i-g3
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e
MODUS-10 = i-d ii_-f viii-G viii-G5
MODUS-11 = viii-G
MODUS-14 = vi-F
MODUS-15 = iv_-e
MODUS-16 = iv-e2 vii-c viii-G6
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g
MODUS-17xxi_xxx = iv_-e
MODUS-17xxxi_xxxv = viii-G
MODUS-17xxxvi_xlvi = vii-c
MODUS-17xlvii_li = vii-c2
MODUS-18 = i-D_ ii-D iii-a iv-A
MODUS-18i = ii-D
MODUS-20 = vii-a viii-G viii-C
MODUS-23 = iii-a iv-c iv_-e v-a vii-c vii-d2 viii-G
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
MODUS-39 = vii-c2
MODUS-39i = vii-c2
MODUS-39ii = ii-D
MODUS-40 = ii-D
MODUS-41 = ii-D
MODUS-42 = vi-F
MODUS-43i = viii-G
MODUS-43ii = ii_-a viii-C
MODUS-43iii = i-g3 ii-D
MODUS-44i = iv-d iv-e2 vii-d
MODUS-44ii = ii_-B iv-E vii-d
MODUS-45 = ii-D vi-C
MODUS-46 = i-a viii-c
MODUS-47 = iv-a
MODUS-49i_vi = i-g2 viii-A
MODUS-49vii_xv = viii-G e
MODUS-49xvi_xxiii = vii-c e
MODUS-50 = i-a2 i-g vi-F vii-a viii-G2
MODUS-51 = iv_-e
MODUS-54i = viii-c
MODUS-54ii = vii-c2
MODUS-54iii = viii-G
MODUS-56 = viii-g
MODUS-62 = i-d i-d3 i-f i-g ii-D iii-e iv-d iv-E iv-e2 vii-a vii-c vii-c2 viii-c viii-g viii-G viii-G5 viii-g5 viii-G6 viii-g6 viii-C2
MODUS-63 = viii-G
MODUS-64 = viii-A
MODUS-65i = vi-F
MODUS-65ii = ii_-a
MODUS-66 = e
MODUS-67i = vii-a
MODUS-67ii = i-f
MODUS-67iii = d-g2
MODUS-68ii_xiii = viii-c
MODUS-68xiv_xxii = viii-c
MODUS-68iii = viii-G
MODUS-71i = viii-G6
MODUS-71ii = ii_-a
MODUS-72i = viii-c
MODUS-72ii = ii-D
MODUS-72iii = iii-b
MODUS-76 = viii-G
MODUS-79 = ii_-B
MODUS-80 = i-g5
MODUS-83 = i-g3 vii-c viii-G
MODUS-84 = vi-F viii-G
MODUS-85 = ii-D
MODUS-86 = i-g iv-A vii-a viii-G viii-C2
MODUS-88ii_xix = viii-G
MODUS-88xx_xxx = viii-G
MODUS-88xxxi_xxxviii = viii-G
MODUS-88xxxix_xlvi = vii-a
MODUS-88xlvii_liii = vi-F
MODUS-89 = i-g vi-F
MODUS-91 = viii-g e
MODUS-91i = i-g vii-a viii-G2
MODUS-91ii = iii-a vii-c vii-c2
MODUS-92 = i-g
MODUS-95 = i-d ii-D
MODUS-96 = iii-a2 vi-F viii-g
MODUS-97 = e
MODUS-98 = iv-e2 e
MODUS-99 = iv_-e e
MODUS-100 = viii-G
MODUS-101ii_xii = i-a i-a6
MODUS-101xiii_xxiii = viii-G
MODUS-101iii = i-g
MODUS-102i = viii-C
MODUS-102ii = i-d
MODUS-102iii = iii-g
MODUS-102i_xiv = vii-a
MODUS-102xiv_xxii = viii-G
MODUS-103i = iii-a
MODUS-103ii = ii-D
MODUS-103iii = e
MODUS-106i = iv_-e
MODUS-106ii = c-c2
MODUS-106iii = iii-a2
MODUS-107 = viii-G
MODUS-116 = ii_-B e
MODUS-117 = viii-G viii-G2 viii-G5 viii-C
MODUS-118xix = vii-a e
MODUS-130 = e
MODUS-131i = e
MODUS-131ii = vii-c
MODUS-134i = i-a
MODUS-135i = iiir-g iii-g
MODUS-135ii = iiir-g iii-g
MODUS-135iii = c-c2
MODUS-142 = viii-G
MODUS-143i_x = vi-F
MODUS-144i = viii-G
MODUS-144x_xiii = vii-c
MODUS-144xiv_xxi = viii-a
MODUS-145 = iv-E iv_-e
MODUS-146 = viii-g
MODUS-147 = vi-F e
MODUS-148 = i-a v-g
MODUS-149 = i-a4 i-f i-g i-d ii-D ii_-f iii-a iii-e iv-c iv_-e v-a vi-F vii-a vii-c viii-G viii-G5 viii-g
MODUS-150 = i-f viii-G
MODUS-anna = ii-D
MODUS-david = i-f viii-G6 viii-g2
MODUS-ecclesiastici = iii-a
MODUS-ecclesiasticus36 = i-f d-g
MODUS-ezechiae = ii-D e
MODUS-ezechiae2 = iv_-e
MODUS-habacuc = iv_-e
MODUS-habacuc2 = iv_-e
MODUS-isaiae = viii-G viii-G6 viii-g2
MODUS-isaiae2 = v-a
MODUS-isaiae3 = vii-d
MODUS-isaiae4 = vii-c viii-G6 viii-g2
MODUS-isaiae5 = iv-E iv_-e
MODUS-isaiae7 = i-f d-g
MODUS-isaiae8 = i-f viii-g d-g
MODUS-isaiae9 = ii-D
MODUS-isaiae10 = vi-F
MODUS-isaiae11 = viii-g
MODUS-iudith2 = ii_-d
MODUS-jeremiae2 = viii-G
MODUS-jeremiae3 = iv_-e
MODUS-moysis = e
MODUS-moysis1 = e
MODUS-moysis2i_xii = vi-F
MODUS-sapientia = v-a
MODUS-tobiae = vii-a viii-g
MODUS-tobiae2 = ii-D
MODUS-tobiae_xi_xv = viii-g
MODUS-tobiae_xvii_xxiii = viii-g
MODUS-dan3 = i-d i-f i-g i-a2 ii-D ii_-a iii-a iii-b iii-e iiir-b iv-E iv-e2 v-a v-g vii-a vii-c vii-c2 vii-d2 viii-G viii-G5 viii-c per
MODUS-dan32 = i-f
MODUS-dan33 = i-g i-a2 iv-E viii-G
MODUS-benedictus = i-a i-a4 i-a5 i-d i-f i-g i-g5 i-D_ isoll-D isoll-D_ isoll-D2 isoll-f isoll-g isoll-g4 isoll-d3 isoll-a ii-D iisoll-D ii_-d ii_-B ii_soll-c ii_soll-a iii-a iii-b iiisoll-a iiisoll-a4 iiisoll-e iiisoll-g iv-d iv-E iv-e iv-e2 ivsoll-E ivsoll-e2 v-a vsoll-g vsoll-a vsoll-a2 vi-F vi-C visoll-F vii-a vii-c vii-c2 vii-d2 vii-d3 viisoll-a viisoll-b viisoll-c viii-g viii-C viii-G viii-G2 viii-G5 viiisoll-G viiisoll-G5 viiisoll-g
CANTICIS = anna isaiae isaiae2 isaiae3 isaiae4 isaiae5 isaiae7 isaiae8 isaiae9 isaiae10 isaiae11 habacuc habacuc2 jeremiae2 jeremiae3 moysis moysis1 moysis2i_xii ecclesiastici ezechiae ezechiae2 sapientia tobiae tobiae2 david dan3 dan32 dan33 iudith2 ecclesiasticus36 tobiae_xi_xv tobiae_xvii_xxiii
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
			  praeclarasalutisaurora extollensquaedam factusestadiutormeus \
			  dominemagnuses rexomnisterrae extendedomine confundanturqui mementodomine \
			  tuamdomineexcita conversusestfuror veniteascendamus dixiiniquis \
			  cantatedominoetbenedicite benedixistidomine cantaboetpsalmum sacrificiumdeo \
			  benedictusdominusdeusmeus clamormeus1 respicehumilitatem iusticonfitebuntur1 \
			  beatusilleservus exsultabuntsanctiingloria iustuscorsuum sacerdotesdeibenedicite \
			  serveboneetfidelis vosestisluxhuiusmundi quicumquevoluerit caritasdeidiffusaest \
			  semenceciditaliud beataesmariaquaecredisti exquofactaestvox exsurgensmaria \
			  intravitmaria utaudivitsalutationem antethorum-FKP benedictatu \
			  beatusiustinus sanguissanctorummartyrum dumfortisarmatus \
			  spiritusomnis confessionemetdecorem dominumdeumadoremus \
			  eccedeusnoster tresexunoore mariaautemconservabat \
			  benediciteomniaopera regnavitdominusdecorem semencecidit \
			  eccedeusmeus regnumtuumdomine inaeternumet trespueriiussuregis \
			  confitebortibidominequoniam ascendenteiesuinnaviculam \
			  dominiestterra benedicitegentes introiboindomumtuam \
			  beatimundocorde siculmenveri exsultabuntsancti dicebatenimintrase \
			  inlegedomini praedicanspraeceptum tuesgloriamea hymnumdicamus \
			  quimeconfessusfuerit hisuntquivenerunt mittemanumtuam \
			  quiavidistime stetitiesus thomasquidicitur inomnemterram-FKP \
			  anuntiaverunt-FKP luxortaestiustis-FKP etdicebantunde \
			  deditiesusvirtutem scimusquoniam spiritusapientiae \
			  caputtuumutcarmelus abiitiesustransmare incendit tuleruntdominummeum \
			  dicitjesusmariaconversa dumtransissetsabbatum ardensestcormeum \
			  inclinavitsemaria surgensjesusmaneprima dilexistiiustitiam dumessetrex \
			  laevaeius trahemepostte egochristumconfiteor inventabonamargarita \
			  iamhiemstransiit cumsublevassetoculos indomodavidpuerisui \
			  intrantemiesum infideetlenitate ignemvenimittere operamininoncibum \
			  eccesacerdosmagnus hicestfratrumamator mentesnostrascastifica \
			  dominebonumest adhuceoloquente voxdecaelissonuit hodiedominusiesus \
			  hodietransfigurato lexpermoysen eteccevoxdenube nemopotestvenire \
			  existimoomnia martyresdomini nosautemgloriari siquisperseveraverit \
			  fratresexistimoenim tamquamauruminfornace quiameliorest quivicerit \
			  ignemeexaminasti nonmederelinquepater beatuslaurentiusclamavit \
			  adhaesitanimameapostte misitdominus beatuslaurentiusorabat \
			  incraticula oblatapergregorium excelsiservus corverbissapientiae \
			  sicutsorore honoratchristi laudanslaudare novumsydusemicuit \
			  majoremcaritatem istecognovitiustitiam replevitsanctumsuum \
			  sacerdosetpontifex verbaquaelocutussum eccevereisraelita \
			  hocestpraeceptum vosamicimei petiteetdabitur \
			  istesanctusdumprocolligendis dumtransiretdominus \
			  cordeetanimo cumiucunditate nativitasesthodie nativitasgloriosae \
			  nativitastua quandonataest regaliexprogenie quiperdideritanimam \
			  sicutmyrrha quidoctifuerint eccecrucem propterlignum ocruxbenedicta \
			  crucemsanctam cruxbenedictanitet cruxalmafulget superomnia \
			  adhaesitanimamea aquaemultae attenditeuniversi fasciculusmyrrhae \
			  mortuussum tuamipsiusanimam mihivivere astiteruntiusti \
			  tradeturenim vosquisecutiestisme sanctusmauritius sanctalegio \
			  sanctorumcorpora flagrabatinbeatissimis quienimnonest \
			  absconditeeleemosynam laudemotus morbidisrefugium \
			  laudantdominum hicdives concussumest descenditangelus-praglia \
			  tempusestutrevertar laudemusdominum angelidomini angeliarchangelilaudate \
			  factumest cibaviteumdominus nisiefficiaminisicutparvuli \
			  omnessuntadministratorii angelietomnesvirtutes angelissuisdeus \
			  benedictusdeusquimisit auditeetintelligite sanctusfranciscus \
			  omartyrdesiderii laudanslaudare doctusdoctrinaegratia \
			  vosquireliquistisomnia exaltataestvirgomaria infloremater \
			  sanctamariasuccurre magisterbonequidfaciam quisequiturmenonambulat \
			  obeataanima sedereautemmecum istisuntvirisanctiet \
			  collaudabuntmultisapientiam sapientiadominievangelii supermontemexcelsum \
			  complaceattibi egosumresurrectio deterraplasmastime exsultabuntdomino \
			  aportainferi misereremeifilidavid dumsteteritis magisterquodestmandatummagnum \
			  sanctisquiinterrasunteius dominequioperatisunt admirabileestnomentuum \
			  tegloriosusapostolorum incaelestibusregnis sanctidomini \
			  hymnusomnibus sigloriamdignitatum tolliteportas nonesthic \
			  viditjacobscalam domusmea benefundataest lapidespretiosi \
			  manesurgensjacob martinusadhuc beatusmartinus egosignocrucis \
			  dixeruntdiscipuli oculisacmanibus martinusabrahae obeatumvirum \
			  abarboreautemfici adiurovosfiliae frangeesurientipanem \
			  petrusapostolusetpaulus egoautemconstitutussum adorabunteum \
			  benediceturinipso tuaestpotentia gloriaethonore elevamini \
			  psallitedeo ecceviroriens magnificabitur deditei fecitnos \
			  caeciliafamulatua cantantibusorganis domineiesuchriste \
			  estsecretumvaleriane expansismanibusorabat triduanasadomino \
			  dumauroranocti volopaterutubiegosum desponsatasumchristo \
			  nonenimvosestis deficientevino hicvirdespiciens armisdivinis \
			  regressusiesus dabovobispastores simileestregnumnegotiatori \
			  mirabanturomnes praebefilicortuum hicestvir-certaminis \
			  agathalaetissime ascendensiesusinnavim deusdeusmeus \
			  confitebortibidomine benedictusesinfirmamento beatipauperesspiritu \
			  fulgebuntiusti-inregno insanctitateetiustitia eccequambonumet \
			  estoteergomisericordesalleluia secundummagnammisericordiam \
			  dapacemdomine deusmeusestu hymnumdicite eiceprimumhypocrita \
			  paradisiportaperevam erantomnes dilectideo christusnobisdicit \
			  quimihiministrat mittensdominus homoquidamdescendebat \
			  fuitvir abipso relictadomo gloriosusconfessor eratvirdominibenedictus \
			  immensiregissignifer sanctissimeconfessorbenedicte satagentecirca \
			  amicecommoda thesaurizatevobis nonestinventus nolitetimerepusillus \
			  instabatenim intrateperangustam beatamateretinnupta \
			  abstergetdeus cumvocatusfuerisadnuptias auditoeo metuebatherodes \
			  arguebatherodemioannes misitdominusmanum-FKP quioditanimamsuam \
			  quisexvobishomo unguentumeffusum cruxbenedictanitetdominus \
			  propterlignumservi superomnialigna dixitdominusvilico \
			  sanctalegioagaunensium sanctorumcorporasacri sanctusmauritiuslegionem \
			  homoquidameratdives sanctorumprecibus inlegedominifuit \
			  praedicanspraeceptumdomini vocemeaaddominum augeinnobis \
			  dumintraretiesus omnisquipetit illumquaero ignatiusrogabat \
			  stansalonge zachaeefestinans benedicitedominumomneselecti \
			  inresurrectioneautem) \
	 $(addprefix hym-TeLucis-,feria minor dominica major solemnis bmv) \
	 $(addprefix hym-,NoxAtra SolEcce TuTrinitatis AEternaCaeli QuemTerra-alt \
			  OGloriosaFemina IpsumNunc LucisLargitor NocteSurgentes \
			  AEterneLucis OSatorRerum FulgentisAuctor DeusQui GalliCantu \
			  OVirgoMater QuaeCaritatis SomnoRefectis SplendorPaternae-hiemalis \
			  RerumCreator NoxEtTenebrae AveMarisStella IamLucis AlesDiei \
			  ConsorsPaterni PergrataMundo LaetiColentes ORedemptorisPietas \
			  AEternaLux-MMMA AdestoChriste-MMMA AdestoRerum AuctorPerennis-MMMA \
			  ChristePrecamur-MMMA RerumCreator-MMMA VeniPraecelsa VeniensMater \
			  BeateMartyr MartyrDei ScientiarumDomino-MMMA EcceIam EcceIam-praglia \
			  SalveDies VitaSanctorum-kempten LucisLargitor-hk AdPrecesNostras-kempten \
			  AEterneLucis-hk AmorisSensusErige-kn IamLucis-hk DiesAEtasque-kempten \
			  AEterneRerum AEternaLux-kempten OSacrosanctaTrinitas-kempten \
			  PergrataMundo-einsiedeln SplendorPaternae-einsiedeln \
			  NoxEtTenebrae-einsiedeln ScientiarumDomino-kempten \
			  ChristePrecamur-kempten SolEcce-einsiedeln DieiLuce-hk \
			  AEternaCaeli-einsiedeln AdestoChriste-kempten ChristeLuxVera \
			  DiesAEtasque-zist AEternaChristi RexGloriose ExsultetCaelum QuiLuce \
			  ChristeLuxVera-kempten AdestoRerum-kn DeusQui-hk \
			  IesuCorona IesuRedemptor VitaSanctorum AdPrecesNostras \
			  MagdalaeSidus AuroraSurgit IubiloCordis DumTuas NoctiSuccedit \
			  FlagransAmore QuasTibi ChristePastorum InclitusPastor \
			  ChristePastorum-presbytero InclitusRector-presbytero \
			  CaelestisFormam DulcisIesuMemoria OChristeFlos OCastitatis \
			  MartyrisChristi InMartyrisLaurentii OClaraLuce GeneratVirgo \
			  AuctorPerennis-kempten AuroraIamSpargit AmorisSensusErige \
			  ArcanaSacrae BernhardusDoctor ChristePastorum-papa SplendorPaternae \
			  OSempiternaeCuriae RelucensInter HaecFemina FulgentisAuctor-hk \
			  AnglorumIam FulgetInCaelis BeataDeiGenetrix OSanctaMundiDomina \
			  LaudeTeCives AEterneSol SalveCruxSancta SignumCrucis \
			  StabatMater EiaMater PraeclaraQua MartyrumRector AlmaChristi \
			  DeusTuorum DiesVenit FestivaVos TibiChriste FestivaCanimus \
			  DulciDepromat AptataVirgo AEterneRerumConditor OrbisPatrator \
			  AEterneRerum-plh InCaelestiCollegio PlaudeTurba ConsorsPaterni-MMMA \
			  IesuCorona-praglia TeGestientem RegisSuperni IamNunc-Luca OVirBeate \
			  ChristeRex QuiVivis MediaeNoctis CommuneVos ChristeCaelorum IesuSalvator \
			  QuiVivis-pluribus UrbsBeata UrbsJerusalem AngularisFundamentum \
			  InclitusPastor-doctorum IsteConfessorColentes MartinePar \
			  PrimoDierum-kempten AdSacrosVirgo MiraNocturnis NobilemChristi \
			  IamBone IesuRex AEternaImago OCastitatisSignifer DiesIrae QuidSum \
			  IesuCoronaCaelitum SalveteCedri DiesAEtasque InclitusRector-episcopo \
			  ChristePrecamur DoctorAEternus PrimoDierum DumSacerdotum HiSacerdotes \
			  AEternaLux AdestoChriste BarnabaeClarum VitaSanctorum-ver \
			  NocteSurgentes-ver OSatorRerum-ver QuidquidAntiqui InterAEternas \
			  NoxAtra-kempten AdPrecesNostras-ver ChristeLuxVera-ver NovusAthleta \
			  QuemTerra-simplex RerumSupremo OQuamGlorifica PraecessorAlmus \
			  ONimisFelix IesuCorona-cart ServeDei PrimoDierum-worcester \
			  RerumCreator-worcester NoxAtra-worcester TuTrinitatis-worcester \
			  OSacrosanctaTrinitas) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus clamaviintotocorde auditamfacmihi \
			   avemaria-alt exsultateiusti vocemmeamaudi clamaboaddeum \
			   benedictusdominus inmedioecclesiae sapientiamsanctorum \
			   inmatutinis deusmeusadiutormeus amaviteum elegiteamdeus \
			   fortitudomea confitebimurtibi iustiautem constitueseos \
			   tibidixitcormeum marianoliiamflere adiuvabiteam christefilidei \
			   laetaminidomino mirabilisdeus gloriaethonore fortitudomeaetlausmea \
			   exsultabuntlabiamea adoramustechriste pertesalutem \
			   laetabiturjustus stetitangelus inconspectuangelorum \
			   narraveruntlaudes exaltabotedomine laetaminiindomino \
			   superteierusalem domumtuam sanctitui lexdeiejus diffusaest \
			   vosmisistis) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat \
	 oratiodominica-d deprecatio4 deprecatio4-propace \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-laudes feria-vesperae minor officium-bmv festis-bmv \
				  dominica-perannum duplex-laudes solemnism-laud \
				  adlaudes-festis duplexmajus-laudes festis-sanctorum \
				  feria-advequad memoria-laudes festis-laudes) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria christummariaefilium \
			  mirabileminsanctis visitationemvirginis regemmartyrumsimplex \
			  regemapostolorum stellam fontemsapientiae christumpastorumprincipem \
			  summumregem regemmartyrum regiquicarneminduit regemapostolorum-iv \
			  nativitatemvirginis christumregem salvatoremmundi regemangelorum \
			  regemvirginum dominumloquenteminevangelio regemcuiomnia \
			  deumquiglorificatur domumdeidecet regemconfessorum iesumchristum \
			  laudemusdeumnostrum laudemusdeumnostruminfestivitate \
			  christumregemquisuam agnumdeiquemioannem regiquaefecitopera) \
	 $(addprefix versus-,memorfui medianocte praevenerunt aporta-alt misericordiaetuae \
			     dataest-communis afferte adorabunt) \
	 dominelabiamea dominelabiamea-praglia tonusprecum tonusprecumnovum dominusnosbenedicat \
	 dominusnosbenedicat-d \
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
			   dumstaretabrahamadradicem-CROCHU-cumdox amaviteumdominus-CROCHU \
			   eugeservebone-CROCHU invenidavidservum-CROCHU \
			   eugeservebone-CROCHU-cumdox dominusquielegit-CROCHU iamnondicam-cumdox \
			   nonvosrelinquam-CROCHU-cumdox disciplinametsapientiam-sinedox \
			   spiritussanctusprocedens-sinedox deuscanticumnovum-CROCHU \
			   dicantnuncquiredempti-CROCHU nonvosrelinquam-CROCHU \
			   quaeestista-CROCHU beatammedicent-CROCHU diffusaestgratia-CROCHU \
			   magnusdominus-sinedox gloriapatri-CROCHU tedeumpatremingenitum-CROCHU-cumdox \
			   benedicamuspatrietfilio quisdeusmagnus-sinedox honorvirtus-CROCHU-cumdox \
			   benedictusdominusdeus-sinedox quammagnamultitudo-sinedox respexitelias \
			   gaudeteiusti-CROCHU benedictaetvenerabilis-CROCHU \
			   quaeestista-CROCHU-cumdox egosumpanisvitae deducmeinsemitam-CROCHU-cumdox \
			   sicutfuicummoyse-CROCHU tristitiavestra-CROCHU luxperpetualucebit-CROCHU-cumdox \
			   adiutormeustibipsallam-CROCHU cibavitillum-CROCHU-cumdox \
			   deducmeinsemitam-CROCHU audivivocemincaelotamquam-CROCHU \
			   audiisraelpraecepta-CROCHU sanctaetimmaculata-CROCHU-cumdox \
			   peccatamea-CROCHU fiatmanustua-CROCHU domineneiniratua-CROCHU \
			   peccatamea-CROCHU-cumdox fiatmanustua-CROCHU-cumdox \
			   narrabonomentuum-CROCHU-cumdox adduxivosperdesertum-CROCHU \
			   inconspectuangelorum-CROCHU tudomineuniversorum-CROCHU-cumdox \
			   deusintesperavi-CROCHU quimanducat-E611-cumdox tupuerpropheta-CROCHU \
			   obsecrodomine-CROCHU adaperiatdominus-CROCHU-cumdox \
			   totadiecontristatus-CROCHU quicustodiebant-CROCHU tempusest-CROCHU-cumdox \
			   dominusquieripuitme-sinedox invenidavidservum-CROCHU-cumdox \
			   orantesanctoclemente-CROCHU-cumdox egotetuli-CROCHU gyrumcaeli-CROCHU-cumdox \
			   recordaredomine-CROCHU-cumdox dominesiconversus-CROCHU-cumdox \
			   istecognovit-CROCHU gloriaethonore-CROCHU gloriaethonore-CROCHU-cumdox \
			   certamenmagnum-CROCHU certamenmagnum-CROCHU-cumdox \
			   dumexiretiacob-CROCHU-cumdox suscipeverbum-CROCHU-cumdox \
			   ecceegomittovos tollite dumsteteritis gloriapatri-CROCHU-cumdox \
			   praebefili-CROCHU-cumdox neperdiderisme-CROCHU \
			   dominiestterra-CROCHU-cumdox doceaminiquosviastuas-CROCHU \
			   respexitelias-sinedox egosumpanisvitae-E611-cumdox \
			   praecursordomini-FKP splendidafactaestfacies-CROCHU \
			   factumestdumtolleret-CROCHU-cumdox priusquamteformarem-FKP \
			   emissitnoecolumbam-cumdox vineamea-cumdox speminalionumquamhabui-CROCHU \
			   indiequainvocavi descenditdecaelis-CROCHU-cumdox tollite-cumdox \
			   misericordiatuadomine-CROCHU-cumdox adtedominelevavi-CROCHU-cumdox \
			   deusquisedes-CROCHU notasmihifecisti-CROCHU proptertestamentumdomini-CROCHU \
			   delectareindomino-CROCHU statuitdominussupra-CROCHU-cumdox \
			   ecceodorfiliimei-CROCHU expurgate-CROCHU proptertestamentumdomini-CROCHU-cumdox \
			   mariamagdalena-CROCHU mariaplorans congratulamini-CROCHU-cumdox caelestis \
			   venielectamea-CROCHU diffusaestgratia-CROCHU-cumdox \
			   statuitdominussupra-CROCHU nativitasgloriosae-CROCHU-cumdox \
			   eramquasiagnus-cumdox eramquasiagnus-sinedox tentavitdeusabraham-CROCHU \
			   locutusestdominusadmoysen-CROCHU iteinorbemuniversum-CROCHU \
			   locutusestdominusadabraham-CROCHU cibavitillum-CROCHU \
			   dominusquielegit-CROCHU-cumdox audifilimihidisciplinam-CROCHU \
			   aversioparvulorum-CROCHU aversioparvulorum-CROCHU-cumdox \
			   damihidominesedium-CROCHU-cumdox filinolideficere-CROCHU \
			   magnaenimsunt-CROCHU-cumdox elegittedominus-CROCHU \
			   elegittedominus-CROCHU-cumdox sanctaetimmaculata-CROCHU \
			   congratulaminiquiacum-CROCHU-cumdox splendidafactaest \
			   assumensiesus-sinedox videnspetrusmoysen-cumdox \
			   verbuminiquum-CROCHU-sinedox nesciensmatervirgo-CROCHU-cumdox \
			   quaesuntincorde-CROCHU-sinedox filinolideficere-CROCHU-cumdox \
			   desideriumanimaeeius-CROCHU ocruxgloriosa-CROCHU \
			   beatuslaurentiusoravitetdixit-CROCHU levitalaurentius-CROCHU \
			   puermeusnolitimere-CROCHU beatuslaurentiusoravitetdixit-CROCHU-cumdox \
			   haecpaupertatistitulo francisciprimaplantula vivensinmundo \
			   redemitdominus-CROCHU-cumdox dixeruntimpii supersalutem-CROCHU \
			   supersalutem-CROCHU-cumdox dumsteteritis-sinedox beatieritis-cumdox \
			   beatipauperesspiritu-CROCHU acceptabaptismigratia \
			   nocteosmeum-CROCHU-sinedox sciodomine-CROCHU-cumdox \
			   mementomeideusquiaventus-CROCHU quaredetraxistis-CROCHU-sinedox \
			   beatissimuspontifex-CROCHU-cumdox hicinannis-CROCHU \
			   neabscondasame-CROCHU quismihitribuat-CROCHU-cumdox \
			   quiconsolabatur-CROCHU-sinedox desideriummeum-CROCHU-cumdox \
			   inclinansfaciem-CROCHU-cumdox gloriosaevirginis-CROCHU-sinedox \
			   hodienataest-CROCHU nativitastua-CROCHU audituauris-CROCHU-sinedox \
			   isteestquiantedeum-CROCHU-cumdox ocruxbenedicta-CROCHU cruxfidelis-CROCHU \
			   ovosomnes caligaverunt-cumdox tradideruntcorpora-CROCHU \
			   beatiquipersecutionem-CROCHU-cumdox vosquitransituriestis-CROCHU \
			   adonai-CROCHU-cumdox nosaliumdeumnescimus-CROCHU-cumdox \
			   laudatedominumdeumnostrum-CROCHU vosquiinturribus-CROCHU \
			   dominatordomine-CROCHU-cumdox istisuntvirisancti istisunttriumphatores \
			   vosquiinturribus-CROCHU-cumdox mementomeideusinbono-CROCHU-cumdox \
			   confortamerexsanctorum-CROCHU-cumdox danobisdominelocum-CROCHU \
			   misereredominepopulotuo-CROCHU-cumdox recordaremeidomine-CROCHU \
			   wencezlausduxgratiae noctesurgensagrum factumest-CROCHU \
			   annuntiatumest-CROCHU ipsisumdesponsata-CROCHU-cumdox \
			   misereredominepopulotuo-CROCHU inconspectugentium-CROCHU \
			   angelissuismandavit-CROCHU-cumdox asolisortu-CROCHU-cumdox \
			   adextrisestmihi-CROCHU-cumdox franciscusutinpublicum \
			   paratumcormeum-CROCHU ornataminmonilibus-cumdox \
			   audiisraelpraecepta-CROCHU-cumdox velociterexaudime-CROCHU-cumdox \
			   benedicdominedomum-CROCHU absconditamquam-CROCHU \
			   germinaveruntcampi-CROCHU votameadomino-CROCHU \
			   inillodiesuscipiam-CROCHU-cumdox istisuntduaeolivae-CROCHU \
			   incircuitutuodomine-CROCHU-cumdox docebitnos-CROCHU \
			   jerusalemcito-CROCHU laetenturcaeli-CROCHU-cumdox \
			   gentipeccatrici-CROCHU asolisortu-CROCHU \
			   absconditamquam-CROCHU-cumdox vidiconjunctos \
			   sustinuimuspacemetnonvenit-CROCHU populemeusquidfeci-CROCHU-cumdox \
			   repleaturosmeum-CROCHU-cumdox aspicedominequiafactaest-CROCHU \
			   indicabotibihomo-CROCHU-cumdox credoquod-GN quilazarum-GN \
			   liberamedominedemorte-CROCHU duoseraphim-sinedox \
			   clamainfortitudine-CROCHU-cumdox adjutormeusesto-CROCHU \
			   eccevirgoconcipiet-CROCHU ecceradixjesse-CROCHU-cumdox \
			   docebitnos-CROCHU-cumdox cogitavidiesantiquos-CROCHU-cumdox \
			   egodixidomine-CROCHU attenditepopulemeus-CROCHU \
			   civitatemistamtucircumda-CROCHU-cumdox sicutmater-CROCHU \
			   impetuminimicorum-CROCHU-cumdox sanctimei-CROCHU-sinedox \
			   beatiquipersecutionem-CROCHU hicestfratrumamator-CROCHU-cumdox \
			   exaudiatdominus-CROCHU-cumdox disciplinametsapientiam \
			   deusquisedes-CROCHU-cumdox docebotequaeventurasunt-CROCHU \
			   quicaelorumcontinesthronos-CROCHU-sinedox aspicedominedesede-CROCHU-cumdox \
			   indedicationetempli-CROCHU fundataest-CROCHU numquidscis-CROCHU-sinedox \
			   verefamulusdei-CROCHU-cumdox hicestmartinus-CROCHU \
			   dominesiadhuc-CROCHU martinusabrahae-CROCHU venitmichael-CROCHU-cumdox \
			   intemporeillo-CROCHU-sinedox misitdominusangelumsuum-CROCHU \
			   aspiciebam-CROCHU-cumdox supermurostuos-CROCHU-cumdox \
			   induitmedominus-CROCHU-cumdox dilexistiiustitiametodisti-CROCHU \
			   propterveritatemetmansuetudinem-CROCHU-cumdox \
			   oiudaquidereliquisti-CROCHU dumauroranocti-CROCHU-cumdox \
			   beatacaeciliadixittiburtino-CROCHU caeciliamintra-CROCHU \
			   orantesanctoclemente-CROCHU orapronobisbeateclemens-CROCHU-cumdox \
			   laudabilispopulus-CROCHU-cumdox quisdeusmagnus-CROCHU-cumdox \
			   egosicutvitis-CROCHU descendetdominus-CROCHU-cumdox \
			   notasmihifecisti-CROCHU-cumdox audiamdomine-CROCHU \
			   populemeusquidfeci-CROCHU inmariviatua-CROCHU \
			   eccemittoangelummeum-CROCHU christoquotidiesedulum-CROCHU \
			   elegitdominusvirum-CROCHU-cumdox annuntiatumest-CROCHU-cumdox \
			   sicutfuicummoyse-CROCHU-cumdox posuiadiutorium-CROCHU \
			   bonumcertamencertavi-CROCHU cumessempuella-CROCHU-cumdox \
			   dominiestterra-CROCHU auribuspercipedomine-CROCHU \
			   istehomoperfecit-CROCHU-cumdox septiesindielaudem-CROCHU \
			   misericordiametiudicium-CROCHU-cumdox gaudeamusomnes-CROCHU-cumdox \
			   egoautemadjuvata-CROCHU velociterexaudime-CROCHU \
			   gratiadeisumidquodsum-CROCHU quioperatusestpetro-CROCHU \
			   audistisenim-CROCHU incircuitutuodomine-CROCHU \
			   sanctituidomine-CROCHU-cumdox dixitdominusadnoe noeviriustus \
			   egressonoedearcha-cumdox emisitnoecolumbam quadragintadiesetnoctes-CROCHU \
			   locutusestdominusadabraham-CROCHU dumstaretabrahamadradicem-CROCHU \
			   tentavitdeusabraham-CROCHU-cumdox angelusdominivocavit-CROCHU \
			   vocavitangelusdomini-CROCHU deusdominimeiabraham-CROCHU-cumdox \
			   sicutcedrus vidispeciosam bonumestconfiteri-CROCHU \
			   paratumcormeum-CROCHU-cumdox ecceegomittovos-cumdox \
			   fuitvirvitae beatusbenedictusdum beatusbenedictuscum \
			   inmariviatua-CROCHU-cumdox caecussedebatsecusviam-CROCHU-cumdox \
			   benedictusdominusdeus-cumdox delectareindomino-CROCHU-cumdox \
			   quimanducat-E611-cumdoxalt apparueruntapostolis-cumdox \
			   ecceradixjesse-CROCHU egredieturvirga-CROCHU radixjesse-CROCHU-cumdox \
			   amaviteumdominus-CROCHU-cumdox revelabuntcaeli-CROCHU \
			   priusquamteformarem-FKP-IER mementomei-CROCHU-cumdox \
			   accedentesdiscipuli-CROCHU-cumdox metuebatherodes-CROCHU \
			   septiesindielaudem-CROCHU-cumdox abstergetdeus-CROCHU \
			   virisancti-CROCHU-cumdox dulcelignum-CROCHU dulcelignum-CROCHU-sinedox \
			   agnusdeichristus-CROCHU exaudideusdeprecationem-CROCHU \
			   stetitangelus-CROCHU-cumdox exaudideusdeprecationem-CROCHU-cumdox \
			   auditinevangelio virgogloriosa-CROCHU-cumdox virgogloriosa-CROCHU \
			   eccevenietdominus-CROCHU hicquiadvenit-CROCHU \
			   hicestvirquinonestderelictus-CROCHU-cumdox \
			   laudatedominumdeumnostrum-CROCHU-cumdox \
			   congregataesuntgentes-CROCHU-cumdox apericaelostuosdomine-CROCHU) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 an_salve_regina ant-salveregina-simplex ant-salveregina-cisterciensis benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d ps17xxxvi_xlvi-initium-vii-c-trans ps116-initium-e \
	 ps131i-initium-e ps96-initium-iii-a2 ps147-initium-e ps91-initium-e ps66-initium-e \
	 isaiae3-initium-vii-d ps88xxxi_xxxviii-initium-viii-G_ ps97-initium-e ps98-initium-e \
	 jeremiae2-initium-viii-G ps99-initium-e ps72iii-initium-iii-b ps102iii-initium-iii-g \
	 ps47-initium-iv-a ps101ii_xii-initium-i-a ps86-initium-iv-c ps149-initium-ii_-f \
	 ps103iii-initium-e ps117-initium-viii-G5 ps150-initium-viii-g4 ps149-initium-iv_-E \
	 benedictus-initium-viisoll-a ps62-initium-iv-E ps44i-initium-iv-d \
	 benedictus-initium-vii-a-trans dan3-initium-iv-E benedictus-initium-visoll-F \
	 ps62-initium-i-g ps102xiv_xxii-initium-viii-G4 ps62-initium-ii-D dan3-initium-v-g \
	 benedictus-initium-ivsoll-E ps91ii-initium-vii-c2 ps46-initium-i-a ps3-initium-vii-c-trans
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc))
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
FERIAE = ii iii iv v vi
HEBDOMADAE = i ii iii iv v vi vii viii ix x xi xii xiii xiv xv xvi xvii xviii xix xx xxi xxii xxiii xxiv xxv xxvi xxvii xxviii xxix xxx xxxi xxxii xxxiii xxxiv
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDF = $(PDFI) $(PDFII) $(PDFIII) bmvdelourdes.pdf
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../PostPentecosten ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../InAssumptioneBMV ../InConceptioneBMV ../OctavaPentecostes ../PresentationeBMV ../InNativitateBMV ../Trinitatis ../Paschae ../Quadragesimae ../Adventus ../Septuagesimae ../Apostolorum ../CordisIesu ../NativitateIoannisBaptistae ../OctavaNativitatis ../MariaeMagdalenae ../Transfiguratio ../Catharinae ../ExaltatioCrucis ../Laurentii ../Clarae ../Iacobi ../OmniumSanctorum ../ChristiUniversorumRegis ../Mauritii ../Wenceslai ../MichaelisArchangelis ../Agnetis ../Scholasticae ../DedicationisEcclesiae ../Defunctorum ../Martini ../Epiphania ../Ioseph ../PostEpiphaniam ../ConversionePauli ../DominicaPerAnnum ../Benedicti
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
$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(PDF): %.pdf: %.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
