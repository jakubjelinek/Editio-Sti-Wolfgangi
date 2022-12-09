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
PSALMS = 1 2 3 4 5 6 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 11 13 14 15 16 17i 17ii 17iii 17ii_vii 17viii_xx 17xxi_xxx 17xxxi_xxxv 17xxxvi_xlvi 17xlvii_li 18 18i 19 20 23 28 29 30i 30ii 30iii 32 34i 34ii 34iii 35 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38 38i 38ii 39 39i 39ii 40 41 42 43i 43ii 43iii 44 44i 44ii 45 46 47 48i 48ii 49i_vi 49vii_xv 49xvi_xxiii 50 51 54i 54ii 54iii 56 61 62 63 64 65i 65ii 66 67i 67ii 67iii 68i 68ii 68iii 68ii_xiii 68xiv_xxii 71i 71ii 72i 72ii 72iii 76 77i_xvi 77iii 77xxxii_xxxix 79 80 83 84 85 86 87 88ii_xix 88xx_xxx 88xxxi_xxxviii 88xxxix_xlvi 88xlvii_liii 89 90 91 91i 91ii 92 95 96 97 98 99 100 101ii_xii 101xiii_xxiii 101iii 102i 102ii 102iii 102i_xiv 102xiv_xxii 103i 103ii 103iii 104i 104ii 104iii 105i 105ii 105iii 106i 106ii 106iii 107 109 110 111 112 113 114 115 116 117 118xix 120 121 122 128 129 130 131 131i 131ii 132 134 134i 135 135i 135ii 135iii 136 137 138i 138ii 139 140 141 142 143i 143ii 143i_x 144i 144ii 144x_xiii 144xiv_xxi 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1 = i-g ii-D viii-G
MODUS-2 = i-a4 i-f ii-D iii-g iv-E vii-a viii-G viii-G5
MODUS-3 = iii-a iv-E vi-F viii-G5
MODUS-4 = viii-G
MODUS-5 = viii-A viii-C
MODUS-6 = iv-E viii-G
MODUS-8 = i-f i-g ii_-a iv-E vi-F viii-G viii-G2
MODUS-9ii_xi = v-a viii-G
MODUS-9xii_xxi = i-g3 vi-F
MODUS-9xxii_xxxii = ii-D vii-d
MODUS-9xxxiii_xxxix = iv_-e viii-g
MODUS-10 = i-d ii_-f iv-E viii-G viii-G5
MODUS-11 = viii-G
MODUS-13 = ii-D
MODUS-14 = iv_-e vi-F
MODUS-15 = iv_-e
MODUS-16 = iv-e2 vii-c viii-G6
MODUS-17i = vi-F
MODUS-17ii = iv_-e
MODUS-17iii = vii-c2
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g
MODUS-17xxi_xxx = iv_-e
MODUS-17xxxi_xxxv = viii-G
MODUS-17xxxvi_xlvi = vii-c
MODUS-17xlvii_li = vii-c2
MODUS-18 = i-D_ ii-D iii-a iv-A vii-c
MODUS-18i = ii-D
MODUS-19 = viii-G
MODUS-20 = vii-a viii-G
MODUS-23 = i-f i-g iii-a iv-c iv_-e v-a vii-c vii-d2 viii-G
MODUS-28 = vii-a
MODUS-29 = viii-G
MODUS-30i = viii-G
MODUS-30ii = e-a
MODUS-30iii = ii-D
MODUS-32 = iv-E
MODUS-34i = iv-g
MODUS-34ii = viii-G
MODUS-34iii = viii-G
MODUS-35 = ii-D viii-A viii-G
MODUS-36i_xi = vi-F
MODUS-36xii_xxix = ii-D
MODUS-36iii = vi-F
MODUS-37ii_v = viii-C
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
MODUS-43ii = ii_-a viii-a viii-C
MODUS-43iii = i-g3 ii-D ii_-a
MODUS-44 = i-g
MODUS-44i = iv-d iv-e2 vi-F vii-d
MODUS-44ii = i-g ii_-B iv-E vii-d
MODUS-45 = ii-D v-a vi-C e
MODUS-46 = i-a viii-c
MODUS-47 = iv-a
MODUS-48i = vii-c
MODUS-48ii = e
MODUS-49i_vi = i-g2 viii-A
MODUS-49vii_xv = viii-G e
MODUS-49xvi_xxiii = vii-c viii-c e
MODUS-50 = i-a2 i-f i-g i-g3 ii_-B ii_-a iii-a iv-E vi-F vii-a viii-G viii-G2
MODUS-51 = iv_-e
MODUS-54i = viii-c
MODUS-54ii = vii-c2
MODUS-54iii = viii-G
MODUS-56 = viii-g
MODUS-61 = iii-g
MODUS-62 = i-d i-d3 i-f i-g ii-D iii-a2 iii-a4 iii-e iv-d iv-E iv-e2 v-a vii-a vii-c2 vii-d viii-c viii-g viii-G viii-G5 viii-g5 viii-G6 viii-g6 viii-C2
MODUS-63 = ii-D vii-c viii-G
MODUS-64 = viii-A
MODUS-65i = i-a4 vi-F e
MODUS-65ii = i-f i-g ii_-a
MODUS-66 = i-g ii-D ii_-B vi-F vii-b e
MODUS-67i = vii-a
MODUS-67ii = i-f ii-D
MODUS-67iii = d-g2
MODUS-68i = viii-c
MODUS-68ii = viii-c
MODUS-68ii_xiii = viii-c
MODUS-68xiv_xxii = viii-c
MODUS-68iii = viii-G
MODUS-71i = viii-G6
MODUS-71ii = ii_-a
MODUS-72i = viii-c
MODUS-72ii = ii-D
MODUS-72iii = iii-b
MODUS-76 = viii-G
MODUS-77iii = ii-D viii-a
MODUS-77i_xvi = i-g3 viii-G
MODUS-77xxxii_xxxix = ii_-B viii-G
MODUS-79 = ii_-B
MODUS-80 = i-g5
MODUS-83 = i-g3 vii-c viii-G
MODUS-84 = vi-F viii-G
MODUS-85 = ii-D
MODUS-86 = i-g iv-A vi-F vii-a viii-G viii-C2
MODUS-87 = i-g3 v-a
MODUS-88ii_xix = viii-G
MODUS-88xx_xxx = viii-G
MODUS-88xxxi_xxxviii = viii-G
MODUS-88xxxix_xlvi = vii-a
MODUS-88xlvii_liii = vi-F
MODUS-89 = i-g ii_-B vi-F
MODUS-90 = viii-G
MODUS-91 = viii-g e
MODUS-91i = vii-a viii-G2
MODUS-91ii = iii-a vii-c2
MODUS-92 = i-g i-a viii-G
MODUS-95 = i-d ii-D
MODUS-96 = iii-a2 vi-F viii-g
MODUS-97 = e
MODUS-98 = iv-e2 e
MODUS-99 = i-f ii_-B iv_-e vii-a vii-d viii-G2 e
MODUS-100 = ii_-a viii-G
MODUS-101ii_xii = i-a
MODUS-101xiii_xxiii = viii-G
MODUS-101iii = i-g
MODUS-102i = viii-C viii-G5
MODUS-102ii = i-d v-a
MODUS-102iii = iii-g vii-c
MODUS-102i_xiv = vii-a
MODUS-102xiv_xxii = viii-G
MODUS-103i = i-g iii-a
MODUS-103ii = i-f ii-D
MODUS-103iii = vii-a e
MODUS-104i = d-g
MODUS-104ii = viii-a
MODUS-104iii = iv-E
MODUS-105i = e
MODUS-105ii = viii-G
MODUS-105iii = vii-a
MODUS-106i = iv_-e
MODUS-106ii = c-c2
MODUS-106iii = iii-a2
MODUS-107 = i-g3 viii-G
MODUS-109 = i-a i-g viii-G
MODUS-110 = i-f vii-a vii-d viii-G2
MODUS-111 = i-g v-a vii-a viii-G
MODUS-112 = ii-D iii-a iv-A
MODUS-113 = ii_-B per
MODUS-114 = i-g2 viii-C
MODUS-115 = viii-A viii-G
MODUS-116 = ii-D ii_-B viii-A viii-G e
MODUS-117 = i-g vii-d viii-G viii-G5
MODUS-118xix = i-g vii-a e
MODUS-120 = vii-b
MODUS-121 = v-g
MODUS-122 = ii_-B
MODUS-128 = ii_-a ii-D
MODUS-129 = ii_-a viii-A
MODUS-130 = viii-g e
MODUS-131 = ii_-a e
MODUS-131i = e
MODUS-131ii = vii-c
MODUS-132 = i-a i-g
MODUS-133 = viii-G
MODUS-134 = i-g3 iii-g
MODUS-134i = i-a viii-C viii-C2
MODUS-135 = ii-D iii-g
MODUS-135i = iiir-g
MODUS-135ii = iiir-g
MODUS-135iii = c-c2
MODUS-136 = ii_-B viii-G
MODUS-137 = v-a
MODUS-138i = i-f iii-g
MODUS-138ii = i-g3 iii-g
MODUS-139 = ii_-B iv-g
MODUS-140 = i-g3 viii-A
MODUS-141 = ii-D viii-A
MODUS-142 = ii_-c iii-a viii-G
MODUS-143i = ii_-c vi-F
MODUS-143ii = ii_-B vi-F
MODUS-143i_x = ii_-a vi-F
MODUS-144i = ii_-B vii-b viii-A viii-G
MODUS-144ii = i-a i-g viii-G
MODUS-144x_xiii = ii-D vii-c
MODUS-144xiv_xxi = viii-a viii-G5
MODUS-145 = i-f ii-D iv-E iv_-e vii-a vii-d viii-G2
MODUS-146 = i-g v-a vii-a viii-c viii-g viii-G
MODUS-147 = ii-D iii-a iv-A vi-F viii-c e
MODUS-148 = i-a i-g3 ii-D ii_-a iii-a iv-A iv-E vi-F viii-G
MODUS-149 = i-a i-a4 i-f i-g i-g3 i-d ii-D ii_-a ii_-f ii_-B iii-a iii-e iv-c iv-A iv-E iv_-e v-a vi-F vii-a vii-c viii-G viii-G5 viii-g
MODUS-150 = i-a i-g3 ii-D ii_-a iii-a iv-A iv-E vi-F viii-G
MODUS-anna = i-g2 ii-D
MODUS-david = i-f viii-G6 viii-g2
MODUS-ecclesiastici = iii-a
MODUS-ecclesiasticus36 = d-g
MODUS-ecclesiasticus39 = vii-a
MODUS-ezechiae = ii-D vii-a e
MODUS-habacuc = iv_-e
MODUS-habacuc2 = iv_-e
MODUS-isaiae = viii-G viii-G6 viii-g2
MODUS-isaiae2 = v-a
MODUS-isaiae3 = vii-d
MODUS-isaiae4 = ii_-B vii-a vii-c viii-G6 viii-g2
MODUS-isaiae5 = i-g ii_-B iv-E iv_-e
MODUS-isaiae7 = d-g
MODUS-isaiae8 = viii-g d-g
MODUS-isaiae9 = i-g ii-D
MODUS-isaiae10 = i-g vi-F vii-b
MODUS-isaiae11 = viii-g
MODUS-isaiae13 = i-g
MODUS-isaiae14 = vii-a
MODUS-isaiae15 = vii-a
MODUS-iudith2 = ii_-d
MODUS-jeremiae2 = ii-D viii-G
MODUS-jeremiae3 = iv_-e
MODUS-moysis = v-g e
MODUS-moysis1 = v-g e
MODUS-moysis2i = vi-F viii-G
MODUS-moysis2ii = ii_-B vi-F
MODUS-moysis2i_xii = vi-F
MODUS-sapientia = ii_-a v-a
MODUS-tobiae = vii-a
MODUS-tobiae2 = i-g ii-D
MODUS-dan3 = i-d i-f i-g ii_-a iii-a iii-e iv-E iv-e2 v-a v-g vii-a vii-c vii-c2 vii-d2 viii-g viii-G viii-G5 viii-c per
MODUS-dan32 = i-f vii-d vii-d3
MODUS-dan33 = i-f i-g vii-c viii-G
MODUS-benedictus = i-a i-a2 i-a4 i-a5 i-d i-f i-g i-g5 i-D i-D2 i-D_ isoll-D isoll-D_ isoll-f isoll-g isoll-d3 isoll-a isoll-a5 ii-D iisoll-D ii_-B ii_-d ii_soll-c ii_soll-f iii-a iii-b iii-e iiisoll-a iiisoll-a4 iv-d iv-D iv-E iv-e iv-e2 ivsoll-E ivsoll-e2 v-a vsoll-g vsoll-a vsoll-a2 vi-F vi-C visoll-C visoll-F vii-a vii-b vii-c vii-c2 vii-d2 vii-d3 viisoll-a viisoll-c viisoll-d viii-c viii-g viii-C viii-G viii-G2 viii-G5 viiisoll-G viiisoll-G5 viiisoll-g viiisoll-g5
MODUS-magnificat = i-f i-g i-a4 isoll-a isoll-D isoll-D2 isoll-f isoll-g ii-D iisoll-D ii_-B ii_-c ii_soll-f iiisoll-a iv-A iv-D ivsoll-d ivsoll-E ivsoll-E2 v-a v-g visoll-C visoll-F vii-b vii-c viisoll-a viisoll-d viii-G viii-G2 viiisoll-C viiisoll-g viiisoll-G viiisoll-G2 
MODUS-nuncdimittis = iii-a
CANTICIS = anna isaiae isaiae2 isaiae3 isaiae4 isaiae5 isaiae7 isaiae8 isaiae9 isaiae10 isaiae11 isaiae13 isaiae14 isaiae15 habacuc habacuc2 jeremiae2 jeremiae3 moysis moysis1 moysis2i moysis2ii moysis2i_xii ecclesiastici ezechiae sapientia tobiae tobiae2 david dan3 dan32 dan33 iudith2 ecclesiasticus36 ecclesiasticus39 nuncdimittis
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
SCORES = $(addprefix ant-,almaredemptoris-dominican almaredemptoris-solesmes \
			  alleluia1 alleluia2 ampliuslavame atimore aviroiniquo \
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
			  confortatemanus eccedominusveniet eccenomen eccevenietpropheta ecceveniocito \
			  gabrielangelus gaudeetlaetare gaudeteomnes inadventusummi inilladie \
			  jucundarefilia mariadixit netimeasmaria omnessitientes rexnosteradveniet \
			  veniteeccerex gaudeetlaetaresion spiritussanctus \
			  egredieturvirga exaltateregem innocensmanibus iuniorfui quaeritedominum \
			  rectosdecet speraindomino tudomine benedictatu desionexibit \
			  exspectabodominum laetabiturdeserta confundantur eccevenietdeus exaegypto \
			  indominoiustificabitur iubilatedeo iudicacausam liberame nederelinquasme \
			  tuammagnificentiam sionnolitimere ecceapparebit eccedominusnoster \
			  ecceinnubibus joannesautem montesetcolles tuesquiventurus \
			  urbsfortitudinis venidominevisitare gaudeetlaetarenova \
			  amaviteum eccerexveniet supersolium sionrenovaberis \
			  quipostmevenit cantatedomino dicitepusillanimes laudaierusalem \
			  levabitdominus quammagnificatasunt antemenonest beataesmaria \
			  daboinsion jerusalemgaude justeetpie montesetomnescolles \
			  venietdominus erumpantmontes consolaminiconsolamini \
			  antequamconvenirent elevareelevare beatammedicent decaeloveniet \
			  beatiquihabitant denoctespiritusmeus deusnosterdeussalvos \
			  illuminadomine oadonai oclavis oemmanuel ooriens oradix orex osapientia \
			  nonauferetursceptrum afinibusterrae desionveniet damercedemdomine \
			  haurietisaquas venietdiesdomini adtedominelevavi consolantemme \
			  constantesestote egoautemaddominum quaeritedominumet \
			  venidomineetnoli vigilateanimo eccedeusmeus exspectetur \
			  orietursicutsol paratusesto roratecaeli canitetuba dominusveniet \
			  eccevenietdesideratus eruntprava omnipotenssermotuus avemaria \
			  eccevenietdominus dumvenerit eccedeusnoster ponaminsion \
			  egredieturdominus emitteagnum convertere utcognoscamus \
			  desionvenietdominus spiritusdomini proptersion \
			  scitotequiapropeest eccecompletasunt nolitetimere \
			  clamormeus1 iusticonfitebuntur1 respicehumilitatem deusiudicii \
			  benedicanimamea benedicitedomino exspectabonomentuum nonsismihi \
			  supertimentesdominum ponentdomino completisunt crastinaerit \
			  hodiescietis iudaeaetierusalem levatecapita tubethlehem \
			  venietdominusinpotestate inadventusummiregis eccedominusvenietet \
			  iucundarefilia omnessitientesvenite gaudeetlaetarefiliasion \
			  inilladiestillabunt montesetcollescantabunt sicutfulgur \
			  eccevenietprophetamagnus adhaereredeobonumest affertedomino \
			  benedicamdomino cantatedominocanticum cantatedominoetbenedicite \
			  confitebortibi diligitedominum dixiiniquis intellegeclamorem \
			  intuaiustitia laudamusnomentuum laudatenomendomini misereremihi \
			  operamanuumeius ostendenobisdomine quambonusdeus sitivitanima \
			  veniteascendamus levaierusalemoculos benedictusdominusdeusmeus \
			  benedixistidomine cantaboetpsalmum sacrificiumdeo \
			  dignumsibi egosipatibulum beatusandreas unusexduobus \
			  dilexitandream dixitandreas salvecruxpretiosa quaeritedominum \
			  beatiquiambulant defructuventris deusinsancto deusquiglorificatur \
			  dominemagnuses exsultavitcormeum factusestadiutormeus \
			  inclinadomineaurem induitmedominus paratumcormeum potensinterra \
			  quiamirabiliafecit rexomnisterrae ierusalemrespice \
			  benedictusdominusinaeternum confundanturqui conversusestfuror \
			  converteredomine declinabitdominus deonostroiucunda \
			  dominusfirmamentum eccedominusnosterbrachio exsurgamdiluculo \
			  extendedomine fundamentaeius iustusetsanctus mementodomine \
			  mesuscepit omnesinimici populusmeusait quantaaudivimus \
			  recordaremei tuamdomineexcita aedificansierusalem \
			  avertanturretrorsum benedixitfiliistuis cogitaveruntimpii \
			  cormundumcrea iustusnonconturbabitur nosnosderelinquas \
			  servitedominoinlaetitia euntesinmundumdoceteomnes \
			  adtedeluce attenditepopulemeus confiteminidomino \
			  dabovobiscor exoreinfantium haecrequiesmea inmatutinis \
			  laudatedominumomnes mecumsitdomine veritasdomini \
			  laushonorbenedictiobarbaram ecceapparebitdominus \
			  eccedominusnostercum ecceinnubibuscaeli urbsfortitudinisnostrae \
			  factumestverbum statuitilli dicitdominuspaenitentiam \
			  odoctoroptime voxclamantisindeserto inconceptionesua \
			  adiuviteam gloriosadictasunt virgomarianonesttibisimilis \
			  vidispeciosam benedictaestu trahenos aitdominusdeus \
			  beatimundocorde dabosanctismeis iusteetpie ierusalemgaude \
			  horaestiam venietdominuset montesetomnescolleshumiliabuntur \
			  daboinsionsalutem gaudeteindominosemper egohumilisancilla \
			  quivultvenire consurgeconsurgeinduere laetaminicumjerusalem \
			  deusalibanoveniet canitetubainsion dominusvenietoccurite \
			  exquofactaestvox missusestgabriel quidoctifuerint inhoccognoscentomnes \
			  dapacemdomine diesdominisicutfur egovoxclamantis sacerdosetpontifex \
			  dominusregnavit sanctadeigenetrixvirgo) \
	 $(addprefix hym-TeLucis-,adventus) \
	 $(patsubst %,hym-%-hiemalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				     LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				     TellurisIngens) \
	 $(addprefix hym-,EcceJamNoctis AEterneRerum AveMarisStella OGloriosaDomina AdPrecesNostras \
			  ChristeLuxVera AmorisSensusErige AdestoChriste \
			  VitaSanctorum QuemTerra OGloriosaFemina QuemTerra-alt \
			  ConditorAlme VerbumSupernum VoxClara AmbrosiDoctor \
			  MagnisProphetae VeniRedemptor VerbumSalutis VoxClara-aromi \
			  OSempiternaeCuriae CaptatorOlim BarbaraVirgo FortemPiumque \
			  TeDicimus InPlausuGrati OChristeFlos OCastitatisSignifer \
			  AEterneSol DoctorAEternus ChristePastorum-presbytero \
			  InclitusRector-presbytero ChristePastorum InclitusPastor \
			  QuemTerra-simplex) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus ostendenobis veni superte \
			   christe crastinadie christefilideivivi-advdom constitueseos \
			   fortitudomeaetlausmea sapientiamsanctorum deusomnipotens \
			   superteierusalem diffusaest) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(addprefix capitulum-,Benedictio BenedictusDeus NoxPraecessit OAltitudo AbInitio \
				tuautem FratresHora GaudeteInDomino HoraEst IpseDeus \
				NosAuferetur FratresQuaecumque FratresGaudete FratresSic) \
	 $(addprefix versus-,custodi gaude dirigatur dominusregnavit repleti vespertina \
			     diffusa cognoscantquia deusnesileas exaltentdominum laudabonomen \
			     medianocte memorfui praevenerunt psallitedomino sacrificiumlaudis \
			     benedictatu \
			     egredietur emitte exsion rorate voxclamantis voxclamantis-simplex) \
	 $(addprefix oratio,1 1vo 2vo 3vo 4vo bmv) \
	 supplicatiolitaniae oratiodominica oratiodominicaalt oratiodominica-mat oratiodominica-d \
	 deprecatio4-propace \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-advequad minor officium-bmv dominica-advequad \
				  solemnism-laud festis-bmv solemnitatibus-bmv memoria-laudes) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria regemventurum \
			  regemventurumsimplex propeestiam propeestiamsimplex hodiescietis \
			  regemapostolorum-iv fontemsapientiae immaculatamconceptionem \
			  regemvirginum christumpastorumprincipem christummariaefilium) \
	 dominelabiamea \
	 $(addprefix absolutio-,exaudi ipsius avinculis precibus) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem ille \
					noscum ipsavirgo pervirginem) \
	 $(addprefix resp-,aspiciebam-CROCHU-cumdox aspiciebam-CROCHU aspiciensalonge-CROCHU \
			   missusestgabriel-CROCHU-cumdox obsecrodomine-CROCHU-cumdox \
			   salvatoremexspectamus-CROCHU-cumdox salvatoremexspectamus-CROCHU \
			   avemaria-CROCHU-cumdox avemaria-CROCHU obsecrodomine-CROCHU \
			   eccediesvenient-CROCHU-cumdox eccediesvenient-CROCHU \
			   eccevirgoconcipiet-CROCHU-cumdox eccevirgoconcipiet-CROCHU \
			   laetenturcaeli-CROCHU-cumdox laetenturcaeli-CROCHU \
			   auditeverbumdomini-CROCHU-cumdox auditeverbumdomini-CROCHU \
			   civitasjerusalem-CROCHU-cumdox eccedominusveniet-CROCHU \
			   eccedominusveniet-cumdox eccevenietdominus-CROCHU \
			   egredieturdominus-CROCHU festinanetardaveris \
			   jerusalemcito-CROCHU jerusalemplantabis-CROCHU-cumdox \
			   sicutmater-CROCHU jerusalemsurge-CROCHU-cumdox \
			   jerusalemsurge-CROCHU rexnosteradveniet-CROCHU-cumdox \
			   rexnosteradveniet-CROCHU aegyptenoliflere-CROCHU-cumdox \
			   aegyptenoliflere-CROCHU bethleemcivitas-CROCHU-cumdox \
			   bethleemcivitas-CROCHU descendetdominus-CROCHU-cumdox \
			   descendetdominus-CROCHU docebitnos-CROCHU-cumdox docebitnos-CROCHU \
			   ecceapparebit-CROCHU-cumdox ecceapparebit-CROCHU \
			   propeestutveniat-CROCHU-cumdox propeestutveniat-CROCHU \
			   quiventurusest-CROCHU-cumdox quiventurusest-CROCHU \
			   suscipeverbum-CROCHU-cumdox suscipeverbum-CROCHU \
			   venidomine-CROCHU-cumdox venidomine-CROCHU \
			   ecceradixjesse-CROCHU-cumdox ecceradixjesse-CROCHU \
			   emitteagnumdomine-CROCHU-cumdox emitteagnumdomine-CROCHU \
			   festina-CROCHU-cumdox festina-CROCHU roratecaeli-CROCHU-cumdox \
			   roratecaeli-CROCHU clamainfortitudine-CROCHU-cumdox \
			   clamainfortitudine-CROCHU egredieturdominusetpraeliabitur-CROCHU-cumdox \
			   egredieturdominusetpraeliabitur-CROCHU modoveniet-CROCHU-cumdox \
			   modoveniet-CROCHU egredieturvirga-CROCHU-cumdox egredieturvirga-CROCHU \
			   germinaveruntcampi-CROCHU-cumdox germinaveruntcampi-CROCHU \
			   radixjesse-CROCHU-cumdox radixjesse-CROCHU canitetuba-CROCHU-cumdox \
			   canitetuba-CROCHU ecceiamveniet-CROCHU-cumdox ecceiamveniet-CROCHU \
			   intueminiquantus-CROCHU-cumdox intueminiquantus-CROCHU \
			   meoportetminui-CROCHU-cumdox meoportetminui-CROCHU \
			   nasceturnobisparvulus-CROCHU-cumdox nasceturnobisparvulus-CROCHU \
			   nonauferetursceptrumdeiuda-CROCHU-cumdox nonauferetursceptrumdeiuda-CROCHU \
			   nondiscedimusate-CROCHU-cumdox nondiscedimusate-CROCHU \
			   vigesimaquarta-CROCHU-cumdox vigesimaquarta-CROCHU \
			   virgoisrael-CROCHU-cumdox virgoisrael-CROCHU \
			   orieturstella-CROCHU-cumdox orieturstella-CROCHU \
			   praecursorpronobis-CROCHU-cumdox praecursorpronobis-CROCHU \
			   videbuntgentesiustumtuum-CROCHU-cumdox videbuntgentesiustumtuum-CROCHU \
			   annuntiatumest-CROCHU-cumdox deillaocculta-CROCHU-cumdox \
			   sanctificaminifilii-CROCHU sanctificaminihodie-CROCHU \
			   doctorbonusetamicusdei-CROCHU obonacrux-CROCHU salvecrux-CROCHU-cumdox \
			   civitasjerusalem-CROCHU sicutmater-CROCHU-cumdox \
			   iuravitdominus-CROCHU-cumdox hodieconceptaest-CROCHU \
			   conceptiogloriosae-CROCHU conceptiotua-CROCHU-cumdox \
			   gloriosaevirginisconceptione-CROCHU-cumdox  gratafactaest-CROCHU-cumdox \
			   luciavirgo-CROCHU amaviteumdominus-CROCHU-cumdox annuntiatumest-CROCHU \
			   constantesestote-CROCHU posuiadiutorium-CROCHU \
			   eccesacerdosmagnus-CROCHU istehomoabadolescentia-CROCHU-cumdox \
			   famulomeo-CROCHU isteestquiantedeum-CROCHU-cumdox) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 an_alma_redemptoris_mater an_alma_redemptoris_mater-simplex benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps97 ps98 ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d tonusprecum tonusprecumnovum dominusnosbenedicat ps147-initium-e \
	 ps91-initium-e ps66-initium-e isaiae3-initium-vii-d benedictus-initium-iv-e \
	 ps101ii_xii-initium-i-a ps102iii-initium-iii-g ps17xxxvi_xlvi-initium-vii-c-trans \
	 ps47-initium-iv-a ps116-initium-e ps144i-initium-vii-b-trans ps96-initium-iii-a2 \
	 ps88xxxi_xxxviii-initium-viii-G_ benedictus-initium-ii_soll-f ps72iii-initium-iii-b
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../PostPentecosten ../PerAnnum ../Andreae ../Paschae ../InConceptioneBMV ../Catharinae ../Scholasticae ../InAnnuntiationeBMV ../Quadragesimae ../OctavaNativitatis ../PresentationeBMV
include $(iter)

FERIAE = ii iii iv v vi
HEBDOMADAE = i ii iii iv
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDF = completorium.pdf $(PDFI) $(PDFII) $(PDFIII) vigilianativitatis.pdf
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
