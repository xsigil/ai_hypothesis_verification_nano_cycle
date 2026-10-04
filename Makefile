PROJECT = ai_hypothesis_verification_nano_cycle
TEX = lualatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1
OUT_DIR = build

.PHONY: all ja en clean

all: ja en

ja: $(OUT_DIR)/$(PROJECT)_ja.pdf
en: $(OUT_DIR)/$(PROJECT)_en.pdf

$(OUT_DIR)/$(PROJECT)_ja.pdf: src/$(PROJECT).tex
	@mkdir -p $(OUT_DIR)
	latexmk -pdf -pdflatex="$(TEX) %O -jobname=$(PROJECT)_ja '\newif\ifja\jatrue\input{%S}'" -jobname=$(PROJECT)_ja -outdir=$(OUT_DIR) $<

$(OUT_DIR)/$(PROJECT)_en.pdf: src/$(PROJECT).tex
	@mkdir -p $(OUT_DIR)
	latexmk -pdf -pdflatex="$(TEX) %O -jobname=$(PROJECT)_en '\newif\ifja\jafalse\input{%S}'" -jobname=$(PROJECT)_en -outdir=$(OUT_DIR) $<

clean:
	latexmk -C -outdir=$(OUT_DIR)
	rm -rf $(OUT_DIR)
	rm -f *.log *.aux *.fls *.fdb_latexmk *.synctex.gz