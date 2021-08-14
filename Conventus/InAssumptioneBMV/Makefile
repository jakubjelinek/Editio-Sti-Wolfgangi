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
PSALMS = 8 18 23 33 44 45 46 60 62 63 74 86 92 95 96 97 98 99 109 112 115 116 121 126 138 145 146 147 148 149 150
include $(PSALMTONES_DIR)/tonus.mk
MODUS-8 = i-g ii_-B
MODUS-18 = ii-D ii_-B
MODUS-23 = iii-a2 ii_-B
MODUS-33 = vii-c2
MODUS-44 = iv-E vii-c 
MODUS-45 = v-a vii-c
MODUS-46 = viii-G
MODUS-60 = viii-G
MODUS-62 = ii_-a
MODUS-63 = viii-G
MODUS-74 = vi-F
MODUS-86 = vii-c viii-G2
MODUS-92 = vii-a
MODUS-95 = ii_-a vii-a
MODUS-96 = ii_-a vi-F
MODUS-97 = ii_-a vii-a
MODUS-98 = iv-A
MODUS-99 = viii-G
MODUS-109 = vii-a
MODUS-112 = i-g viii-G
MODUS-115 = i-g
MODUS-116 = viii-G viii-G6
MODUS-121 = ii_-a
MODUS-126 = i-g3
MODUS-138 = viii-g
MODUS-145 = i-g vii-a
MODUS-146 = i-f vii-a
MODUS-147 = i-f iv-E
MODUS-148 = i-g3
MODUS-149 = i-g3
MODUS-150 = i-g3
MODUS-dan3 = vii-c2
CANTICIS = dan3
MODUS-magnificat = isoll-g viiisoll-G2 viii-G2
MODUS-benedictus = isoll-g i-g
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
SCORES = $(addprefix ant-,animamealiquefacta assumptaestmaria benedictafilia comedifavum \
			  descendiinhortum eccetupulchra emissionestuae exaltataestgloriosa \
			  favusdistillans fonshortorum hodiemariavirgocaelos inodore \
			  mariavirgoassumptaest mulieramictasole osculeturme \
			  paradisiportaperevam pulchraesetdecora sicutlilium \
			  talisestdilectus totapulchraes veniinhortum virgoprudentissima \
			  quaeestista omniumrerumcreator adiuvabiteam dignaremelaudare \
			  benedictatu exaltataessanctadei gaudemariavirgo paradisiportae \
			  sicutlaetantiumomnium specietua supersalutemetomnempulchritudinem) \
	 $(addprefix hym-,AuroraVelut GaudiumMundi SolisOVirgo) \
	 $(addprefix resp-,hodiemariavirgo mariavirgoexaltataest vidispeciosam) \
	 $(addprefix deusinadiutorium-,solemnis alter communis) \
	 $(addprefix capitulum-,BenedixitTe InOmnibus GaudensGaudebo) \
	 $(addprefix versus-,elegit exaltata assumpta maria elegit-solemnis \
			     audifilia diffusa specie) \
	 oratio oratio2 supplicatiolitaniae oratiodominica oratiodominica-mat \
	 dominusvobiscum-solemnis domineexaudi domineexaudi-simplex \
	 $(addprefix benedicamus-,festis-bmv) \
	 dominelabiamea inv-cuiushodie inv-veniteassumpta benedicamus-solemnis-laud \
	 $(addprefix absolutio-,exaudi ipsius avinculis) \
	 $(addprefix benedictio-solemn-,benedictione unigenitus spiritus \
					deus christus ignem \
					evangelica quorum adsocietatem) \
	 $(addprefix resp-,vidispeciosam-sinedox beataesvirgomariadei beatammedicent \
			   diffusaestgratia istaestspeciosa ornataminmonilibus \
			   sicutcedrus supersalutem quaeestista-CROCHU-cumdox \
			   supersalutem-paradisi beatammedicent-sinedox \
			   diffusaestgratia-CROCHU ornataminmonilibus-cumdox \
			   istaestspeciosa-sinedox) \
	 $(patsubst %,tedeum-%-gn,solemnis romanum simplex) \
	 magnificat-initium-isoll-g4 ps112-initium-i-g4 ps62-initium-ii_-a \
	 ps8-initium-i-g4 ps23-initium-iii-a2 ps44-initium-iv-E ps45-initium-v-a \
	 ps95-initium-vii-a ps97-initium-vii-a ps145-initium-vii-a ps146-initium-vii-a \
	 ps147-initium-iv-E
OTHERSCORES = $(patsubst %,$(TMP_DIR)/%.gtex,$(SCORES))
OTHERDEPS = 
LAPSALMSINITGABC = $(foreach P,$(PSALMS),$(foreach M,$(MODUS-$(P)),$(TMP_DIR)/ps$(P)-initium-$(M)-auto.gabc)) \
		   $(foreach C,benedictus $(CANTICIS),$(foreach M,$(MODUS-$(C)),$(TMP_DIR)/$(C)-initium-$(M)-auto.gabc)) \
		   $(foreach M,$(MODUS-magnificat),$(TMP_DIR)/magnificat-initium-$(M).gabc)
LAPSALMSINITTEX = $(patsubst %.gabc,%.gtex,$(LAPSALMSINITGABC))
GENINITIUM = cd $(TMP_DIR) && $(RUBY_COMMAND) ../$(INITIUM_TOOL) ../$(1) ../$(PSALMTONES_DIR)/$(2)-auto.gabc; \
	     [ $(2) = "dir" ] && cd .. && $(SED) -i -e '/(::)$$$$/{/(,) (::)$$$$/!{s/<b>//g;s/<\/b>//g}}' $(3) || :
PDF = inassumptionebmv.pdf inassumptionebmv-mmxxi.pdf $(patsubst %,die%-abmv.pdf,iii iv v vi vii viii)
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
iter-left := . $(TMP_DIR) $(addprefix $(COMMON_CHANTS_DIR)/,kyriale76 amon33 arom12 lcantualis78) $(PSALMTONES_DIR) ../DominicaTemporePaschali ../OctavaPaschae ../Epiphania/cantus/grom61 ../Pentecostes ../AscensioneDomini ../PostPentecosten ../CorpusChristi ../InNativitateBMV ../PresentationeBMV ../PerAnnum
include $(iter)

$(LAPSALMSSINEDOX): $(TMP_DIR)/%-sinedox.tex: $(TMP_DIR)/%.tex
	sed -e '/^Gló.*ri.*a.*Pa.*tri.*et.*Fí.*li.*o/d;/^et.*Spi.*rí.*tu.*i.*Sanc.*to/d;/^Sicut.*erat.*in.*princí.*pi.*o,.*et.*nunc.*et.*sem.*per,/d;/^et.*in.*sǽcu.*la.*sæ.*cu.*ló.*rum.*A.*men/d' < $^ > $@
$(TMP_DIR)/%.tex: PSALMOPTS = $(APPENDGLORIAPATRI) $(LAPSALMOPTS)
$(TMP_DIR)/magnificat.tex: PSALMOPTS = $(APPENDGLORIAPATRI) --accents-style bold --flex-underline --skip-verses 2 $(LAPSALMOPTSACC)
$(PDF): %.pdf: %.tex assumptione.tex conventuscommune.tex translationes_cs.tex \
	       $(ALLLAPSALMS) $(LAPSALMSSINEDOX) $(LAPSALMSINITTEX) $(OTHERSCORES) $(OTHERDEPS)
	$(LUALATEX) -interaction=nonstopmode $<
	$(LUALATEX) -interaction=nonstopmode $<
clean:
	-rm -rf $(TMP_DIR) *~ *.aux *.gaux *.greaux *.log
.PHONY: clean
