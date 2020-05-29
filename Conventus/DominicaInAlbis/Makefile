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
PSALMS = 1 2 3 8 9ii_xi 9xii_xxi 9xxii_xxxii 9xxxiii_xxxix 10 62 92 99 109 110 111 112 144ii 145 146 147 148 149 150
include tonus.mk
MODUS-1 = v-a
MODUS-2 = v-a
MODUS-3 = v-a
MODUS-8 = v-a
MODUS-9ii_xi = v-a
MODUS-9xii_xxi = v-a
MODUS-9xxii_xxxii = v-a
MODUS-9xxxiii_xxxix = v-a
MODUS-10 = v-a
MODUS-62 = viii-g
MODUS-92 = viii-g
MODUS-99 = viii-g
MODUS-109 = vii-c2
MODUS-110 = vii-c2
MODUS-111 = vii-c2
MODUS-112 = vii-c2
MODUS-144ii = vii-c2
MODUS-145 = vii-c2
MODUS-146 = vii-c2
MODUS-147 = vii-c2
MODUS-148 = vi-F
MODUS-149 = vi-F
MODUS-150 = vi-F
MODUS-dan3 = vi-F
MODUS-magnificat-I = isoll-D
MODUS-magnificat-II = viiisoll-C
MODUS-magnificat-III = viiisoll-G2
MODUS-magnificat-IV = iiisoll-a
MODUS-magnificat-V = visoll-F
MODUS-magnificat-VI = viiisoll-G
MODUS-magnificat-VII = isoll-a2
MODUS-magnificat-VIII = isoll-g
MODUS-magnificat-IX = iisoll-D
MODUS-benedictus-I = isoll-D
MODUS-benedictus-II = viiisoll-G2
MODUS-benedictus-III = visoll-F
MODUS-benedictus-IV = isoll-a2
MODUS-benedictus-V = iisoll-D
MAGNIFICAT = $(foreach M,I II III IV V VI VII VIII IX,magnificat-$(M))
BENEDICTUS = $(foreach B,I II III IV V,benedictus-$(B))
MODUSLIST = $(sort $(foreach P,$(PSALMS) $(MAGNIFICAT) dan3 $(BENEDICTUS),$(MODUS-$(P))))
CZPSALMOPTS = --accents 0:0 --title-pattern " " --no-paragraph
CZPSALMS = $(patsubst %,$(TMP_DIR)/ps%-boh.tex,$(PSALMS))
ALLCZPSALMS = $(CZPSALMS) $(patsubst %,$(TMP_DIR)/%-boh.tex,magnificat dan3)
ALLCOMBPSALMS = $(patsubst %,$(TMP_DIR)/%-comb.tex,$(addprefix ps,$(PSALMS)) $(MAGNIFICAT) $(BENEDICTUS) dan3)
GENPSALM = $(RUBY_COMMAND) $(PSALM_PREPROCESSOR) --output $@ $(PSALMOPTS) $< \
	   && $(SED) -i -e 's/\*/\\grestar{}/g' $@
TONUS = $(TONUS-$(MODUS-$*))
GLORIAPATRI = $(PSALMS_DIR)/gloriapatri.pslm
APPENDGLORIAPATRI = --append "`cat $(GLORIAPATRI)`"
LAPSALMOPTS_COMMON = --accents-style bold --flex-underline --skip-verses 1
LAPSALMOPTSACC = --accents $(word 1,$(TONUS)):$(word 3,$(TONUS)) \
		 --preparatory-syllables $(word 2,$(TONUS)):$(word 4,$(TONUS))
LAPSALMOPTS = $(LAPSALMOPTS_COMMON) $(LAPSALMOPTSACC)
LAPSALMS = $(patsubst %,$(TMP_DIR)/ps%.tex,$(PSALMS))
LAPSALMSEXTRA = $(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT) $(BENEDICTUS) dan3)
ALLLAPSALMS = $(LAPSALMS) $(LAPSALMSEXTRA)
SCORES = $(addprefix ant-,alleluia1 alleluia2 alleluia3 alleluia4 cumesset \
			  postdiesocto surrexitchristus \
			  egosumpastorovium egosumpastorbonus \
			  modicumetnon amenamendico \
			  vadoadeumquimisitmeetnemo vadoadeumquimisitmesed \
			  usquemodo petiteetaccipietisutgaudium) \
	 $(addprefix hym-,AuroraLucis AdCoenam RexSempiterne) respbr-laud respbr-vesp \
	 $(addprefix deusinadiutorium-,solemnis alter) \
	 $(foreach M,viiisoll-C isoll-D viiisoll-G2 iiisoll-a visoll-F \
		     viiisoll-G isoll-a2 isoll-g iisoll-D,magnificat-initium-$(M)) \
	 $(addprefix capitulum-Carissimi,OmneQuod ChristusPassus Obsecro OmneDatum Estote) \
	 $(addprefix versus-,mane inresurrectione) \
	 oratio $(addprefix oratio,2 3 4 5) supplicatiolitaniae oratiodominica \
	 oratiodominica-mat dominusvobiscum-solemnis domineexaudi \
	 benedicamus-tempore-paschali an_regina_caeli_simplex \
	 dominelabiamea inv-surrexitdominusvere \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica divinum adsocietatem) \
	 $(addprefix resp-,angelusdominidescendit angelusdominilocutus \
			   dumtransisset mariamagdalene surrexitpastor \
			   virtutemagna deoreprudentis surgensjesus \
			   audivivocemincaeloangelorum-sinedox \
			   audivivocemincaelotamquam-cumdox \
			   decantabatpopulus-sinedox dignusesdomine-sinedox \
			   egosicutvitis-sinedox locutusestadmeunus-sinedox \
			   tristitiavestra-N450-cumdox veniensalibano-cumdox \
			   deuscanticumnovum-sinedox hymnumcantatenobis-cumdox \
			   inecclesiisbenedicitedeo-sinedox intotocordemeo-sinedox \
			   narrabonomentuum-cumdox videruntteaquaedeus-sinedox \
			   bonumestconfiteri-cumdox sioblitusfuerotui-sinedox) \
	 tedeum-solemnis \
	 $(addprefix ant-alleluia,lapis quem noli)
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = $(foreach B,isoll-D viiisoll-G2 visoll-F isoll-a2 iisoll-D,$(TMP_DIR)/benedictus-initium-$(B)-auto.gtex)
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(TMP_DIR)/ps$(P)-initium-$(MODUS-$(P))-auto.gabc) \
		   $(foreach P,dan3,$(TMP_DIR)/$(P)-initium-$(MODUS-$(P))-auto.gabc)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61
include $(iter)

DOMINICIS = inalbis $(addsuffix postpascha,ii iii iv v)
all: $(foreach D,$(DOMINICIS),dominica$(D).pdf)
define iter-doit
dominica$(i).tex: dominicatp.tex ; touch $$@
endef
iter-left := $(DOMINICIS)
include $(iter)
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(patsubst %,$(TMP_DIR)/%.tex,ps148 ps149 dan3): PSALMOPTS = $(LAPSALMOPTS)
$(TMP_DIR)/%-boh.tex: PSALMOPTS = $(CZPSALMOPTS)
$(CZPSALMS): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/%.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(BENEDICTUS)): $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/Hejcl1922/benedictus.pslm
	$(GENPSALM)
$(TMP_DIR)/dan3-boh.tex: $(CZECH_PSALMS_DIR)/Pavlik/dan3.pslm
	$(GENPSALM)
$(patsubst %,$(TMP_DIR)/%.tex,$(MAGNIFICAT)): PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(TMP_DIR)/magnificat-boh.tex: $(TMP_DIR)/%-boh.tex: $(CZECH_PSALMS_DIR)/DMC199x/%.pslm
	$(GENPSALM)
$(LAPSALMS): $(TMP_DIR)/ps%.tex: $(PSALMS_DIR)/ps%.pslm
	$(GENPSALM)
	$(SED) -i -e 'y/Jj/Ii/' $@
$(patsubst %,$(TMP_DIR)/%.tex,dan3): \
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
$(ALLCOMBPSALMS): $(TMP_DIR)/%-comb.tex: $(TMP_DIR)/%.tex $(TMP_DIR)/%-boh.tex
	$(GENPSCOMB)
$(patsubst %,$(TMP_DIR)/%-boh.tex,$(MAGNIFICAT)): $(TMP_DIR)/%-boh.tex: $(TMP_DIR)/magnificat-boh.tex
	$(CP) -a $< $@
$(patsubst %,$(TMP_DIR)/%-comb.tex,$(MAGNIFICAT)): PSSKIP = 2
$(foreach D,$(DOMINICIS),dominica$(D).pdf): \
%.pdf: %.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLCZPSALMS) $(ALLLAPSALMS) $(ALLCOMBPSALMS) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
