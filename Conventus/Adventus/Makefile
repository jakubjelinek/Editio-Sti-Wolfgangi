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
PSALMS = 1 2 3 4 5 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 11 13 14 16 17i 17ii 17iii 19 20 23 29 32 34i 34ii 34iii 35 36i_xi 36xii_xxix 36iii 37ii_v 37vi_xiii 37xiv_xxiii 38 42 44i 44ii 45 47 48i 48ii 49i_vi 49vii_xv 49xvi_xxiii 50 56 61 62 63 64 65i 65ii 66 67i 67ii 67iii 68i 68ii 68iii 77i_xvi 77iii 77xxxii_xxxix 87 89 90 91 92 99 104i 104ii 104iii 105i 105ii 105iii 106i 106ii 106iii 109 110 111 112 113 114 115 116 117 128 129 130 131 132 133 134 135 136 137 138i 138ii 139 140 141 142 143i 143ii 144i 144ii 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-1-I = i-g
MODUS-2-I = ii-D
MODUS-3-I = iii-a
MODUS-8-I = iv-E
MODUS-9ii_xi-I = v-a
MODUS-9xii_xxi-I = vi-F
MODUS-9xxii_xxxii-I = vii-d
MODUS-9xxxiii_xxxix-I = viii-g
MODUS-10-I = iv-E
MODUS-92-I = viii-G
MODUS-99-I = viii-G2
MODUS-62-I = v-a
MODUS-66-I = i-g
MODUS-dan3 = vii-c
MODUS-148-I = iv-A
MODUS-149-I = iv-A
MODUS-150-I = iv-A
MODUS-109-I = viii-G
MODUS-110-I = viii-G2
MODUS-111-I = v-a
MODUS-112-I = iv-A
MODUS-4-I = viii-G
MODUS-90-I = viii-G
MODUS-133-I = viii-G
MODUS-nuncdimittis = iii-a
MODUS-13-II = ii-D
MODUS-14-II = iv_-e
MODUS-16-II = vii-c
MODUS-17i-II = vi-F
MODUS-17ii-II = iv_-e
MODUS-17iii-II = vii-c2
MODUS-19-II = viii-G
MODUS-20-II = viii-G
MODUS-29-II = viii-G
MODUS-50-II = vi-F
MODUS-5-II = viii-A
MODUS-35-II = viii-A
MODUS-isaiae = viii-G
MODUS-148-II = i-a
MODUS-149-II = i-a
MODUS-150-II = i-a
MODUS-benedictus-II = vi-F
MODUS-113-II = per
MODUS-114-II = i-g2
MODUS-115-II = viii-A
MODUS-116-II = viii-A
MODUS-128-II = ii-D
MODUS-magnificat-II = viii-G
MODUS-9xxii_xxxii-III = ii-D
MODUS-9xxxiii_xxxix-III = iv_-e
MODUS-11-III = viii-G
MODUS-36i_xi-III = vi-F
MODUS-36xii_xxix-III = ii-D
MODUS-36iii-III = vi-F
MODUS-23-III = iv_-e
MODUS-ezechiae = vii-a
MODUS-tobiae = vii-a
MODUS-32-III = iv-E
MODUS-benedictus-III = vii-a
MODUS-129-III = viii-A
MODUS-130-III = e
MODUS-131-III = e
MODUS-132-III = i-a
MODUS-magnificat-III = v-a
MODUS-44i-IV = vi-F
MODUS-44ii-IV = i-g
MODUS-45-IV = e
MODUS-47-IV = iv-a
MODUS-48i-IV = vii-c
MODUS-48ii-IV = e
MODUS-49i_vi-IV = viii-A
MODUS-49vii_xv-IV = e
MODUS-49xvi_xxiii-IV = viii-c
MODUS-50-IV = vii-a
MODUS-63-IV = ii-D
MODUS-64-IV = viii-A
MODUS-anna = i-g2
MODUS-148-IV = ii-D
MODUS-149-IV = ii-D
MODUS-150-IV = ii-D
MODUS-benedictus-IV = i-g5
MODUS-134-IV = iii-g
MODUS-135-IV = iii-g
MODUS-136-IV = viii-G
MODUS-137-IV = v-a
MODUS-magnificat-IV = viii-G2
MODUS-61-V = iii-g
MODUS-65i-V = e
MODUS-65ii-V = i-g
MODUS-67i-V = vii-a
MODUS-67ii-V = ii-D
MODUS-67iii-V = d-g2
MODUS-68i-V = viii-c
MODUS-68ii-V = viii-c
MODUS-68iii-V = viii-G
MODUS-50-V = viii-G2
MODUS-87-V = v-a
MODUS-89-V = vi-F
MODUS-moysis = e
MODUS-148-V = vi-F
MODUS-149-V = vi-F
MODUS-150-V = vi-F
MODUS-benedictus-V = vii-a
MODUS-138i-V = iii-g
MODUS-138ii-V = iii-g
MODUS-139-V = iv-g
MODUS-140-V = viii-A
MODUS-magnificat-V = vii-c
MODUS-34i-VI = iv-g
MODUS-34ii-VI = viii-G
MODUS-34iii-VI = viii-G
MODUS-37ii_v-VI = viii-C
MODUS-37vi_xiii-VI = ii_-a
MODUS-37xiv_xxiii-VI = ii-A
MODUS-50-VI = viii-G
MODUS-isaiae2 = v-a
MODUS-habacuc = iv_-e
MODUS-99-VI = iv_-e
MODUS-benedictus-VI = viii-G
MODUS-141-VI = viii-A
MODUS-143i-VI = vi-F
MODUS-143ii-VI = vi-F
MODUS-144i-VI = viii-A
MODUS-magnificat-VI = ii-D
MODUS-77i_xvi-VI = i-g3
MODUS-77iii-VI = ii-D
MODUS-77xxxii_xxxix-VI = viii-G
MODUS-147-VI = e
MODUS-104i-VII = d-g
MODUS-104ii-VII = viii-a
MODUS-104iii-VII = iv-E
MODUS-105i-VII = e
MODUS-105ii-VII = viii-G
MODUS-105iii-VII = vii-a
MODUS-106i-VII = iv_-e
MODUS-106ii-VII = c-c2
MODUS-106iii-VII = iii-a2
MODUS-50-VII = iv-E
MODUS-142-VII = viii-G
MODUS-moysis2i = vi-F
MODUS-moysis2ii = vi-F
MODUS-148-VII = iv-E
MODUS-149-VII = iv-E
MODUS-150-VII = iv-E
MODUS-benedictus-VII = viii-G
MODUS-144ii-VII = viii-G
MODUS-145-VII = viii-G2
MODUS-146-VII = v-a
MODUS-147-VII = iv-A
MODUS-91-VII = e
MODUS-moysis2i_xii = vi-F
MODUS-8-VII = i-g
MODUS-144ii-VIII = i-g
MODUS-145-VIII = vii-d
MODUS-146-VIII = vii-a
MODUS-147-VIII = iii-a
MODUS-92-VIII = i-g
MODUS-99-VIII = vii-d
MODUS-62-VIII = vii-a
MODUS-66-VIII = vi-F
MODUS-148-VIII = iii-a
MODUS-149-VIII = iii-a
MODUS-150-VIII = iii-a
MODUS-109-VIII = i-g
MODUS-110-VIII = vii-d
MODUS-111-VIII = vii-a
MODUS-112-VIII = iii-a
MODUS-144ii-IX = i-a
MODUS-145-IX = vii-a
MODUS-146-IX = viii-G
MODUS-147-IX = ii-D
MODUS-92-IX = i-a
MODUS-99-IX = vii-a
MODUS-62-IX = viii-G
MODUS-66-IX = vii-b
MODUS-148-IX = ii-D
MODUS-149-IX = ii-D
MODUS-150-IX = ii-D
MODUS-109-IX = i-a
MODUS-110-IX = vii-a
MODUS-111-IX = viii-G
MODUS-112-IX = ii-D
MODUS-benedictus-VIII = viiisoll-G
MODUS-benedictus-IX = isoll-f
MODUS-benedictus-X = isoll-g
MODUS-benedictus-XI = iisoll-D
MODUS-benedictus-XII = isoll-D
MODUS-benedictus-XIII = ivsoll-E
MODUS-benedictus-XIV = viisoll-a
MODUS-benedictus-XV = isoll-D_
MODUS-benedictus-XVI = viisoll-d
MODUS-benedictus-XVII = visoll-C
MODUS-benedictus-XVIII = i-f
MODUS-benedictus-XIX = viii-g
MODUS-benedictus-XX = ii_-B
MODUS-benedictus-XXI = i-a2
MODUS-benedictus-XXII = iv-D
MODUS-benedictus-XXIII = i-D
MODUS-benedictus-XXIV = viii-G2
MODUS-benedictus-XXV = i-g
MODUS-benedictus-XXVI = vii-b
MODUS-benedictus-XXVII = ii-D
MODUS-magnificat-VIII = isoll-f
MODUS-magnificat-IX = viisoll-d
MODUS-magnificat-X = viiisoll-G
MODUS-magnificat-XI = isoll-D
MODUS-magnificat-XII = viisoll-a
MODUS-magnificat-XIII = ivsoll-E2
MODUS-magnificat-XIV = viiisoll-G2
MODUS-magnificat-XV = viiisoll-C
MODUS-magnificat-XVI = visoll-F
MODUS-magnificat-XVII = isoll-g
MODUS-magnificat-XVIII = ivsoll-d
MODUS-magnificat-XIX = visoll-C
MODUS-magnificat-XX = isoll-D2
MODUS-magnificat-XXI = viiisoll-g
MODUS-magnificat-XXII = iiisoll-a
MODUS-magnificat-XXIII = isoll-a
MODUS-magnificat-XXIV = ivsoll-E
MODUS-magnificat-XXV = iv-A
MODUS-magnificat-XXVI = ii_-B
MODUS-magnificat-XXVII = ii_-c
MODUS-magnificat-XXVIII = iv-D
MODUS-magnificat-XXIX = vii-b
MODUS-magnificat-XXX = ii_soll-f
MODUS-magnificat-XXXI = i-f
CANTICIS = isaiae ezechiae tobiae anna moysis habacuc moysis2i moysis2ii moysis2i_xii nuncdimittis dan3 isaiae2
NUMSI = I II III IV V VI VII VIII IX
NUMSII = II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI XVII XVIII XIX XX XXI XXII XXIII XXIV XXV XXVI XXVII
NUMSIII = II III IV V VI VIII IX X XI XII XIII XIV XV XVI XVII XVIII XIX XX XXI XXII XXIII XXIV XXV XXVI XXVII XXVIII XXIX XXX XXXI
PSALMSALT = $(foreach V,$(NUMSI),$(addsuffix -$(V),$(PSALMS)))
BENEDICTUS = $(foreach B,$(NUMSII),benedictus-$(B))
MAGNIFICAT = $(foreach M,$(NUMSIII),magnificat-$(M))
MODUSLIST = $(sort $(foreach P,$(PSALMSALT) $(MAGNIFICAT) $(CANTICIS) $(BENEDICTUS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat benedictus $(CANTICIS))
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMSALT)) $(MAGNIFICAT) \
						   $(CANTICIS) $(BENEDICTUS))
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --flex-underline --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(PSALMSALT))
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) $(CANTICIS))
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
			  antequamconvenirent elevareelevare beatammedicent decaeloveniet) \
	 $(addprefix hym-TeLucis-,adventus) \
	 $(patsubst %,hym-%-hiemalis,AEternaCaeli AlesDiei CaeliDeus ImmenseCaeli LucisCreator \
				     LuxEcce MagnaeDeus NoxEtTenebrae OLuxBeata SplendorPaternae \
				     TellurisIngens) \
	 $(addprefix hym-,EcceJamNoctis AEterneRerum AveMarisStella OGloriosaDomina AdPrecesNostras \
			  ChristeLuxVera AmorisSensusErige AdestoChriste \
			  VitaSanctorum QuemTerra OGloriosaFemina QuemTerra-alt \
			  ConditorAlme VerbumSupernum VoxClara AmbrosiDoctor) \
	 $(addprefix resp-,benedicamdominum inclinacormeum magnusdominusnoster quammagnificata \
			   sanaanimammeam avemaria inmanus ostendenobis veni superte \
			   christe) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(addprefix capitulum-,Benedictio BenedictusDeus NoxPraecessit OAltitudo AbInitio \
				tuautem FratresHora GaudeteInDomino HoraEst IpseDeus \
				NosAuferetur FratresQuaecumque FratresGaudete) \
	 $(addprefix versus-,custodi gaude dirigatur dominusregnavit repleti vespertina \
			     diffusa cognoscantquia deusnesileas exaltentdominum laudabonomen \
			     medianocte memorfui praevenerunt psallitedomino sacrificiumlaudis \
			     benedictatu \
			     egredietur emitte exsion rorate voxclamantis voxclamantis-simplex) \
	 $(addprefix oratio,1 1vo 2vo 3vo bmv) \
	 supplicatiolitaniae oratiodominica oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,feria-advequad minor officium-bmv dominica-advequad) \
	 $(addprefix inv-,alleluiachristumdominum regemmagnum dominumquifecit adoremusdominum \
			  dominumdeum veniteexsultemus jubilemusdeo avemaria regemventurum \
			  regemventurumsimplex) \
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
			   ecceradixjesse-CROCHU-cumdox ecceradixjesse-CROCHU) \
	 convertenosdeus jubedomnebenedicere lectiobrevis-fratressobrii oratio-visita \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) tedeum-monasticum-am34 \
	 an_alma_redemptoris_mater an_alma_redemptoris_mater-simplex benedictio-noctemquietam \
	 habacuc-initium-iv_-e $(addsuffix -initium-e,ps48ii ps65i ps105i) ps10-initium-ii_-f \
	 benedictus-initium-viisoll-d tonusprecum dominusnosbenedicat ps147-initium-e \
	 ps91-initium-e
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(TMP_DIR)/dan3if.tex $(TMP_DIR)/dan3va.tex $(TMP_DIR)/dan3-initium-i-f-auto.gtex \
	    $(TMP_DIR)/dan3-initium-v-a-auto.gtex
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach V,$(NUMSI),$(if $(MODUS-$(P)-$(V)),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P)-$(V))-auto.gabc))) \
		   $(foreach V,$(NUMSII),$(if $(MODUS-benedictus-$(V)),$(TMP_DIR)/benedictus-initium-$(MODUS-benedictus-$(V))-auto.gabc)) \
		   $(foreach V,$(NUMSIII),$(if $(MODUS-magnificat-$(V)),$(TMP_DIR)/magnificat-initium-$(MODUS-magnificat-$(V)).gabc)) \
		   $(foreach P,$(CANTICIS),$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
$(TMP_DIR)/%.gtex: $(i)/%.gabc ; if $(GREP) -q ^nabc-lines: $$<; then $(SED) -e ':d;s/\(([^).]*\)\./\1/g;/([^)]*\./bd' $$<; else $(CAT) $$<; fi | $(SED) -e 's/<sp>\([AVR]\)\/<\/sp>\./<v>\\\1bardot{}<\/v>/g;s/†/ +/g;:d;s/\(([^)'\'']*\)'\''/\1/g;/([^)]*'\''/bd' | $(SED) -e ':d;s/\(\(^\|)\)[^(j]*\)j/\1i/g;s/\(\(^\|)\)[^(J]*\)J/\1I/g;td' | $(GREGORIO) -s -o $$@
endef
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../InNativitateBMV/cantus/amon33 ../CorpusChristi ../InNativitateBMV/cantus/nrom02 ../PostPentecosten
include $(iter)
$(TMP_DIR)/%-I.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-II.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-III.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-IV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-V.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-VIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-IX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-X.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XIV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XVI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XVII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XVIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XIX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXIV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXVI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXVII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXVIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXIX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXIV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXV.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXVI.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXVII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXVIII.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXIX.pslm: $(PSALMS_DIR)/%.pslm ; $(CP) -a $< $@
$(TMP_DIR)/%-I-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-II-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-III-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-IV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-V-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-VIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-IX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-X-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XIV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XVI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XVII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XVIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XIX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXIV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXVI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXVII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXVIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXIX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXIV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXV-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXVI-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXVII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXVIII-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@
$(TMP_DIR)/%-XXXIX-boh.tex: $(TMP_DIR)/%-boh.tex ; $(CP) -a $< $@

FERIAE = ii iii iv v vi
HEBDOMADAE = i ii iii iv
PDFI = $(foreach H,$(HEBDOMADAE),$(patsubst %,feria%-$(H).pdf,$(FERIAE)))
PDFII = $(foreach H,$(HEBDOMADAE),sabbato-$(H).pdf)
PDFIII = $(foreach H,$(HEBDOMADAE),dominica-$(H).pdf)
PDF = completorium.pdf $(PDFI) $(PDFII) $(PDFIII)
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
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(foreach V,$(NUMSI),$(patsubst %,$(TMP_DIR)/%-$(V).tex,ps115 ps148 ps149)): PSALMOPTS = $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,dan3 dan3if dan3va): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(TMP_DIR)/dan3if.tex: TONUS = 2 0 1 2
$(TMP_DIR)/dan3va.tex: TONUS = 1 0 2 0
$(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,benedictus $(filter-out dan3 nuncdimittis,$(CANTICIS))): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/nuncdimittis-boh.tex $(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(TMP_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(CANTICIS)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/magnificat.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,$(BENEDICTUS)): \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/benedictus.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(TMP_DIR)/dan3if.tex $(TMP_DIR)/dan3va.tex: \
$(TMP_DIR)/%.tex: $(PSALMS_DIR)/dan3.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(PDF): %.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
