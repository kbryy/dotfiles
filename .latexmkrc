#!/usr/bin/env perl

#### PDF_MODE ####
#PDF_MODE0: $latexにより dviファイルを生成する。PDFを出力しない
#しない1: $pdflatexを使って、DVIファイルなどを経由せずに直接PDFを作成
#を2: $latexにより生成されたDVIファイルを$dvipsによりPSファイルに変換したあと，$ps2pdfによりPDFを作成
#を3: $latexにより dviファイルを生成し，$dvipdfによりPDFを作成
#を4: $lualatexにより直接PDFを作成
#を5: $xelatexによりDVIを生成後，$xdvipdfmxによりPDFを作成
##################

$pdf_mode         = 3;

## latex commands
$latex            = "platex -synctex=1 -halt-on-error";
$latex_silent     = "platex -synctex=1 -halt-on-error -interaction=batchmode";
$uplatex          = "uplatex -synctex=1 -halt-on-error";
$lualatex         = "lualatex -synctex=1 -halt-on-error";
$xelatex          = "xelatex -synctex=1 -halt-on-error";

$bibtex           = "pbibtex -kanji=utf8";
$dvipdf           = "dvipdfmx %O -o %D %S";
$makeindex        = "mendex %O -o %D %S";
$max_repeat       = 4;

## output directory
$aux_dir          = "out/";
$out_dir          = "out/";
