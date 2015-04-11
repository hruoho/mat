" ATP project vim script: la huhti 04, 2015 at 12:32  +0300.

let b:atp_MainFile = 'korkolaskenta-tehtavat.tex'
let g:atp_mapNn = 0
let b:atp_autex = 1
let b:atp_TexCompiler = 'pdflatex'
let b:atp_TexOptions = '-synctex=1'
let b:atp_TexFlavor = 'tex'
let b:atp_auruns = '1'
let b:atp_ReloadOnError = '1'
let b:atp_OutDir = '/home/hruoho/Documents/Ekonomivalmennus/Korot'
let b:atp_OpenViewer = '1'
let b:atp_XpdfServer = 'korkolaskenta-tehtavat'
let b:atp_Viewer = 'okular'
let b:TreeOfFiles = {}
let b:ListOfFiles = ['../../_texPartials/ekonomityylitLuentotehtavat.sty.tex']
let b:TypeDict = {'../../_texPartials/ekonomityylitLuentotehtavat.sty.tex': 'preambule'}
let b:LevelDict = {'../../_texPartials/ekonomityylitLuentotehtavat.sty.tex': 1}
let b:atp_BibCompiler = 'bibtex'
let b:atp_StarEnvDefault = ''
let b:atp_StarMathEnvDefault = ''
let b:atp_updatetime_insert = 4000
let b:atp_updatetime_normal = 2000
let b:atp_LocalCommands = ['\maxwidth', '\hlnum{', '\hlstr{', '\hlcom{', '\hlopt{', '\hlstd{', '\hlkwa{', '\hlkwb{', '\hlkwc{', '\hlkwd{', '\at@end@of@kframe', '\at@end@of@kframe', '\FrameCommand']
let b:atp_LocalEnvironments = ['kframe', 'knitrout']
let b:atp_LocalColors = ['fgcolor', 'shadecolor', 'messagecolor', 'warningcolor', 'errorcolor']
