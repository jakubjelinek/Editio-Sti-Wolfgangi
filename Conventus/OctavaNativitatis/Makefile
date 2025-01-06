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
PSALMS = 2 8 9xxii_xxxii 9xxxiii_xxxix 10 11 16 17ii_vii 17viii_xx 17xlvii_li 17xxi_xxx 17xxxi_xxxv 17xxxvi_xlvi 18 18i 23 28 30i 30ii 30iii 32 32i 32ii 34i 34ii 34iii 35 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38i 38ii 41 42 44 45 46 47 50 51 56 62 63 64 65i 65ii 66 71 71i 71ii 76 84 86 88ii_xix 88xx_xxx 91 92 95 96 97 98 99 103i 103ii 103iii 104i 104ii 104iii 105i 105ii 105iii 109 110 111 112 113 114 115 116 117 118xix 121 126 128 129 130 131 132 144ii 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-2 = i-g i-d viii-c viii-C
MODUS-8 = i-g
MODUS-9xxii_xxxii = ii-D
MODUS-9xxxiii_xxxix = iv_-e
MODUS-10 = viii-G
MODUS-11 = viii-G
MODUS-16 = viii-c
MODUS-17ii_vii = vi-F
MODUS-17viii_xx = i-g
MODUS-17xlvii_li = vii-c2
MODUS-17xxi_xxx = iv_-e
MODUS-17xxxi_xxxv = viii-G
MODUS-17xxxvi_xlvi = vii-c
MODUS-18 = iii-b
MODUS-18i = ii-D iii-b v-a viii-G
MODUS-23 = iii-b iv_-e v-a
MODUS-28 = viii-G
MODUS-30i = viii-G
MODUS-30ii = viii-G e-a
MODUS-30iii = ii-D
MODUS-32 = iv-E
MODUS-32i = viii-G
MODUS-32ii = viii-G
MODUS-34i = iv-g
MODUS-34ii = viii-G
MODUS-34iii = viii-G
MODUS-35 = ii-D
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
MODUS-44 = i-g3
MODUS-45 = iii-a viii-G
MODUS-46 = viii-c
MODUS-47 = iv-a viii-G
MODUS-50 = vi-F vii-a
MODUS-51 = iv_-e
MODUS-56 = viii-g
MODUS-62 = i-d i-g ii-D iv-E vii-d viii-G
MODUS-63 = iii-b
MODUS-64 = viii-A
MODUS-65i = iv_-E
MODUS-65ii = iii-g
MODUS-66 = i-d
MODUS-71 = iii-b
MODUS-71i = iii-b
MODUS-71ii = ii_-a
MODUS-76 = viii-G
MODUS-84 = viii-a
MODUS-86 = iii-a vii-c
MODUS-88ii_xix = i-a2
MODUS-88xx_xxx = ii-D
MODUS-91 = e
MODUS-92 = i-g vi-F
MODUS-95 = ii_-a
MODUS-96 = iii-a2 vi-F viii-G
MODUS-97 = v-a v-d viii-C2 viii-G
MODUS-98 = i-g ii-D viii-G2
MODUS-99 = iii-a2 iv_-e viii-G
MODUS-103i = iii-a
MODUS-103ii = ii-D
MODUS-103iii = e
MODUS-104i = d-g
MODUS-104ii = viii-a
MODUS-104iii = iv-E
MODUS-105i = e
MODUS-105ii = viii-G
MODUS-105iii = vii-a
MODUS-109 = i-g ii-D vi-F viii-G 
MODUS-110 = i-g2 vii-a
MODUS-111 = i-g3 vii-d viii-G
MODUS-112 = i-g iii-a2 iv-E vi-F viii-G
MODUS-113 = vii-c2 per
MODUS-114 = i-g2
MODUS-115 = viii-A
MODUS-116 = iii-a2 viii-A e
MODUS-117 = i-g
MODUS-118xix = vii-a
MODUS-121 = iv-E viii-G2
MODUS-126 = i-g ii-D
MODUS-128 = ii-D
MODUS-129 = ii_-B viii-A
MODUS-130 = e
MODUS-131 = viii-G e
MODUS-132 = i-a
MODUS-144ii = viii-G
MODUS-145 = iv-E viii-G
MODUS-146 = ii-D viii-G2
MODUS-147 = ii-D e
MODUS-148 = i-f ii-D
MODUS-149 = i-f i-g ii-D ii_-B vii-d3 viii-G2
MODUS-150 = i-f ii-D
MODUS-dan3 = i-d i-g ii-D vi-F vii-a vii-d viii-a viii-G5
MODUS-dan33 = i-d
MODUS-isaiae2 = v-a
MODUS-isaiae3 = i-d iv-E viii-G
MODUS-isaiae5 = i-d iv-E viii-G
MODUS-isaiae6 = i-d iv-E viii-G
MODUS-ecclesiastici = iii-a
MODUS-ezechiae = e
MODUS-anna = ii-D
MODUS-habacuc = iv_-e
MODUS-moysis1 = e
MODUS-moysis2i_xii = vi-F
MODUS-tobiae = vii-a
MODUS-iudith2 = ii_-d
MODUS-jeremiae3 = iv_-e
MODUS-magnificat = isoll-g isoll-g2 isoll-a5 i-a4 i-g ii-D iisoll-A iiisoll-e iv-E vi-F visoll-F vii-a viiisoll-G viii-g viii-a
MODUS-benedictus = isoll-g ii-D iv-E vsoll-g vsoll-g2 visoll-F vii-a vii-b vii-c2 vii-d viisoll-a viiisoll-G viiisoll-G5 viii-G viii-G2
CANTICIS = dan3 isaiae2 isaiae3 isaiae5 isaiae6 ecclesiastici ezechiae anna habacuc moysis2i_xii tobiae iudith2 jeremiae3 moysis1 dan33
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
SCORES = $(addprefix ant-,angelusadpastores apuddominum benedicenturinipso defructuventris \
			  dominusvirtutum exortumest gaudeamusomnesfideles orieturdiebus \
			  parvulusfilius pastoresloquebantur quemvidistis redemptionemmisit \
			  tecumprincipium egoprimogenitum misericordiaetveritas glorificamuste \
			  natodomino veritasdeterra luxortaestiusto notumfecitdominus \
			  silvesterbeatissimus laetenturcaeli factaestcumangelo \
			  dominusdixitadme eccemariagenuit exsultabuntomnialigna \
			  germinavitradixiesse inprincipioetantesaecula insoleposuit \
			  magnumhereditatis mirabilemysterium natodominoangelorumchorus \
			  oadmirabile propternimiam quandonatuses rubumquemviderat elevamini \
			  laeteturcor domusiacob eduxitdeus visitanos dominusmihi cumtribularentur \
			  mariavirgosemper illuxitnobisdies natusestnobissalvator omnedatumoptimum \
			  quideterraest virgoverboconcepit inpraesepioiacebat luxortaest \
			  natusestnobisdeus nesciensmatervirgo populusgentium \
			  verbumcaro exsultemusindomino interrisnatusest confessionemetdecorem \
			  dominumdeumadoremus quammagnificatasunt vocabiturnomeneius \
			  diligitedominum faciemtuam christusdeusnoster salusaeterna intuaiustitia \
			  visitavitnos reveladomino iuniorfui speraindomino tamquamsponsus \
			  dominusdixitad diffusaestgratia suscepimusdeus inprincipioetante \
			  gloriainexcelsisdeo cumortusfueritsol levatecapitavestra magnificatusest \
			  rexpacificus scitotequiapropeest hodiechristusnatusest tollepuerum \
			  intrantesmagi accipienssimeonpuerum pueriesusproficiebat oregemcaeli \
			  etutperfecerunt erantioseph patefactaesunt ibantparentesiesu \
			  dixitdiscipulusille hicestdiscipulusille hicestdiscipulusmeus \
			  ioannesapostolusetevangelista isteestioannescuichristus \
			  isteestioannesquisupra verbumcarofactumest exiitsermointerfratres \
			  ambulabuntmecum auditaestvox dicuntinfantesdomino exoreinfantium \
			  hiemptisunt innocentesprochristo laetitiasempiternasupercapita \
			  quioditanimamsuam luxortaestiustoet nonenimvosestis homonatusestinea \
			  anteluciferumgenitus virgodeigenetrix genuitpuerpera benedictumnomengloriae \
			  illuminadomine operamanuumeius ostendenobisdomine sitivitanima \
			  hisuntquicummulieribus credidi inclinavitdominus nosquivivimus \
			  saepeexpugnaveruntme cunctisdiebus salutarevultusmei tedecet \
			  deusinsancto dominusregnavit exspectabonomentuum exsultavitcormeum \
			  nonsismihi utnondelinquam ampliuslavame confundantur domineaudivi \
			  laudaierusalem nederelinquasme neiniratua stellaista venitlumentuum \
			  aboriente videntesstellammagi infideetlenitate anteluciferum \
			  apertisthesauris mariaetflumina triasuntmunera datemagnitudinem \
			  quamadmirabileest baptizatmiles baptizaturchristus fontesaquarum \
			  omnisterra ordinesangelorum tequiinspiritu votameadomino voxdominisuperaquas \
			  omnesdesaba adhaesitanimameapostte-stephani cumautemessetstephanus \
			  eccevideocaelos lapidaverunt nemopoteratresistere stephanusvidit \
			  sepelieruntstephanum dapacemdomine quidoctifuerint deprofundis \
			  speretisrael etomnis eccequambonum diligamtedomine utquiddomine \
			  inaeternum tudomine innocensmanibus exaltateregem rectosdecet \
			  factusestadiutormeus retribuetmihi domineincaelo dominemagnuses \
			  rexomnisterrae dominusfirmamentum mesuscepit vivitdominus exsurgamdiluculo \
			  populusmeusait magnusdominus hicestdiscipulusille-FK \
			  expugnaimpugnantes iudicacausam liberame misereremei indominoiustificabitur \
			  iubilatedeo adtedeluce cantemusdomino laudatedominumomnes misereremeideus) \
	 $(addprefix capitulum-,Multifariam ApparuitGratia ApparuitBenignitas FratresQuanto \
				QuiTimet VidiSupra Surge StephanusAutem) \
	 $(addprefix hym-,ASolisOrtus ChristeRedemptor CandorAEternae CandorAEternae-simplex \
			  CordeNatus FitPorta RadixIesse ChristeSplendor DulceFit CohorsBeata \
			  VirginisVirgo HymnumCanentes SalveteFlores TyrannusAnxius \
			  MagiVidentes QuicumqueChristum HostisHerodes IesusRefulsit \
			  ImplenteMunus ChristusEst FestumCelebre DeusTuorum-stephani \
			  ExsultetCaelum-nativitatem) \
	 $(addprefix resp-,notumfecit verbumcaro-simplex verbumcaro hodiescietis notumfecit-solemnis \
			   christefilidei-familiae constitueseos exsultentiusti iustiautem christefilidei-nat \
			   omnesdesaba reges adorabunteum christefilidei-baptismate magnaestgloria \
			   posuistidomine) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(addprefix versus-,notumfecit-communis notumfecit tamquam verbumcaro crastinadie \
			     subthrono reges-communis) \
	 oratio oratiobmv oratiodomii supplicatiolitaniae oratiodominica oratiodominica-d \
	 oratiodominicaalt oratiodominica-mat \
	 orationativitas oratiodomi oratioioannes oratioinnocentium oratioepiphaniae oratiostephani \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex annuntiationativitatisdomini \
	 annuntiationativitatisdomini-solemnis genealogiadnic genealogiadnic-initium deprecatio4-propace \
	 $(addprefix benedicamus-,semiduplex-laud semiduplex-vesp duplexmajus-laudes minor festis-bmv \
				  feria-laudes feria-vesperae dominica-perannum tempore-nativitatis \
				  festis-laudes) \
	 $(addprefix benedicamus-solemnism-,1vesp 2vesp laud) \
	 dominelabiamea $(addprefix inv-,christusnatusest christusnatusest-simplex maternitatemvirginis \
					 christumdeifilium regemapostolorum-iv christumnatumquiinnocentes \
					 christusapparuit christumfiliumdilectum christumnatumquibeatumhodie) \
	 benedicamus-solemnis-laud \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica quorum divinum adsocietatem) \
	 $(addprefix benedictio-nativitate-,benedictione unigenitus spiritus \
					    deus christus ignem evangelica) \
	 $(addprefix indienativitatis-lectio,i ii iii iv v vi) tuautem-nativitatis tuautem-nativitatisii \
	 $(addprefix resp-,benedictusquivenit-CROCHU hodienobis-CROCHU hicquiadvenit-CROCHU-cumdox \
			   confirmatumest-CROCHU nesciensmatervirgo-CROCHU verbumcarofactumest-CROCHU-cumdox \
			   oregemcaeli-CROCHU ecceagnusdei-CROCHU hodienobiscaelorum-CROCHU-cumdox \
			   beatadeigenitrix-CROCHU beataviscera-CROCHU-cumdox continetingremio-CROCHU \
			   sanctaetimmaculata-CROCHU nesciensmatervirgo-CROCHU-cumdox verbumcarofactumest-CROCHU \
			   omagnummysterium-CROCHU descenditdecaelis-CROCHU-cumdox hodienobiscaelorum-CROCHU \
			   quemvidistis-CROCHU hicquiadvenit-CROCHU congratulaminiquiacum-CROCHU-cumdox \
			   isteestioannesquisuprapectus-CROCHU eccepuermeus-CROCHU-cumdox \
			   inmedioecclesiae-CROCHU subaltaredei-CROCHU cantabantsancti-CROCHU \
			   eccevidiagnum-CROCHU-cumdox ecceagnusdei-CROCHU-cumdox beataviscera-CROCHU \
			   confirmatumest-CROCHU-cumdox beataetvenerabilisvirgo-CROCHU \
			   sanctaetimmaculata-CROCHU-cumdox  diessanctificatusilluxit-CROCHU \
			   triasuntmunera-CROCHU videntesstellam-CROCHU-cumdox stellaquamviderunt-CROCHU \
			   incolumbaespecie-CROCHU hicestdiespraeclarus-CROCHU-cumdox \
			   diessanctificatusilluxit-CROCHU-cumdox hodiecaeliapertisunt \
			   hodieiniordane-CROCHU illuminare-CROCHU-cumdox incolumbaespecie-CROCHU-cumdox \
			   hesternadiedominusnatus-CROCHU-cumdox intuensincaelum-CROCHU lapidabantstephanum-CROCHU \
			   stephanusservusdei-CROCHU diligebatautemeumiesus-CROCHU-cumdox \
			   hicestdiscipulus-CROCHU valdehonorandusest-CROCHU subvenite-gn \
			   congratulaminiquiacum-CROCHU proptertestamentumdomini-CROCHU \
			   istisuntvirisancti hodiecaeliapertisunt-cumdox postquamimpletisunt-CROCHU \
			   videtemiraculum-CROCHU-cumdox stephanusautem-CROCHU \
			   beataesmariaquaeomnium-CROCHU-cumdox) \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 an_regina_caeli_simplex convertenosdeus dominusnosbenedicat \
	 jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita requiescant \
	 benedictio-noctemquietam an_salve_regina tonusprecum tonusprecumnovum \
	 ps88ii_xix-initium-i-a2 ps88xx_xxx-initium-ii-D benedictus-initium-viii-G2 \
	 ps97-initium-viii-d dan3-initium-i-g-trans ps126-initium-i-g-trans \
	 ps105i-initium-e ps103iii-initium-e magnificat-initium-isoll-a5 \
	 ps18-initium-iii-b-trans ps62-initium-i-g-trans ps96-initium-iii-a2 \
	 habacuc-initium-iv_-e ps147-initium-e ps91-initium-e benedictus-initium-vii-a-trans \
	 ps17xxxvi_xlvi-initium-vii-c-trans ps47-initium-iv-a ps116-initium-e dan3-initium-vii-a-trans
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../PostPentecosten ../CorpusChristi ../PetriEtPauli ../Adventus ../PerAnnum ../Ioseph ../Apostolorum ../SanctorumInnocentium ../Epiphania ../Epiphania/cantus/amon33 ../InBaptismateDomini ../Laurentii ../PerAnnum ../Defunctorum ../Iacobi ../Quadragesimae ../InPurificationeBMV
include $(iter)

PDF = indienativitatis.pdf sanctaefamiliae.pdf dievpostnativitatem.pdf dievipostnativitatem.pdf dieviipostnativitatem.pdf sdeigenetricismariae.pdf \
      iiianuarii.pdf iiiianuarii.pdf dominicaiipostnativitatem.pdf ivianuarii.pdf vianuarii.pdf sioannis.pdf sstephani.pdf sanctoruminnocentium.pdf \
      dieiiinfraoctavamepiphaniae.pdf dieiiiinfraoctavamepiphaniae.pdf inbaptismatedomini.pdf dievinfraoctavamepiphaniae.pdf
all: $(PDF)
$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(filter-out $(TMP_DIR)/magnificat%,$(ALLLAPSALMS)): PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-$(M).tex): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(PDF): %.pdf: %.tex feria.tex conventuscommune.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
