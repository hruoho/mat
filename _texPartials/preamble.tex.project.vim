" ATP project vim script: la huhti 04, 2015 at 12:34  +0300.

let b:atp_MainFile = 'preamble.tex'
let g:atp_mapNn = 0
let b:atp_autex = 1
let b:atp_TexCompiler = 'pdflatex'
let b:atp_TexOptions = '-synctex=1'
let b:atp_TexFlavor = 'tex'
let b:atp_auruns = '1'
let b:atp_ReloadOnError = '1'
let b:atp_OutDir = '/home/hruoho/Documents/Ekonomivalmennus/_texPartials'
let b:atp_OpenViewer = '1'
let b:atp_XpdfServer = 'preamble'
let b:atp_Viewer = 'okular'
let b:TreeOfFiles = {}
let b:ListOfFiles = []
let b:TypeDict = {}
let b:LevelDict = {}
let b:atp_BibCompiler = 'bibtex'
let b:atp_StarEnvDefault = ''
let b:atp_StarMathEnvDefault = ''
let b:atp_updatetime_insert = 4000
let b:atp_updatetime_normal = 2000
let b:atp_LocalCommands = ['\numeroi', '\vaihto', '\R', '\N', '\Z', '\Q', '\C', '\abs{', '\va', '\vb', '\vw', '\vv', '\BibTeX', '\bino{', '\set{']
let b:atp_LocalEnvironments = ['lause', 'huom', 'trma', 'prop', 'harj', 'esim', 'ratkaisu']
let b:atp_LocalColors = []
