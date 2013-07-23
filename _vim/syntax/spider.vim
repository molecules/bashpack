" Vim syntax file
" Language:      Spider
" Maintainer:    Christopher Bottoms <molecules@cpan.org>
" Homepage:      
" Bugs/requests: 
" Last Change:   2013-07-04

" Comments
syn match spiderComment /;.*/

" Control 
syn match spiderFlow /\c\<DO\>/
syn match spiderFlow /\c\<ELSE\>/
syn match spiderFlow /\c\<ELSEIF_THEN\>/
syn match spiderFlow /\c\<IF\>/
syn match spiderFlow /\c\<IF_GOTO\>/
syn match spiderFlow /\c\<IF_THEN\>/
syn match spiderFlow /\c\<ENDIF\>/
syn match spiderFlow /\c\<THEN\>/
syn match spiderFlow /\c\<lb\d\>/
syn match spiderFlow /\c\<ENDDO\>/

" Matches
syn match spiderVariable '\[[-a-zA-Z0-9_]*\]' 
syn match spiderVariable /\<x\d\d\>/
syn match spiderVariable /\<x\d\>/

" Commands
syn match spiderCommand /\c\<AC\>/
syn match spiderCommand /\c\<AC MS\>/
syn match spiderCommand /\c\<AC MSS\>/
syn match spiderCommand /\c\<AC N\>/
syn match spiderCommand /\c\<AC NS\>/
syn match spiderCommand /\c\<AC S\>/
syn match spiderCommand /\c\<AD S\>/
syn match spiderCommand /\c\<ADD\>/
syn match spiderCommand /\c\<ADD 2\>/
syn match spiderCommand /\c\<ADD F\>/
syn match spiderCommand /\c\<ADD R\>/
syn match spiderCommand /\c\<AP C\>/
syn match spiderCommand /\c\<AP I\>/
syn match spiderCommand /\c\<AP MS\>/
syn match spiderCommand /\c\<AP RA\>/
syn match spiderCommand /\c\<AP REF\>/
syn match spiderCommand /\c\<AP SA\>/
syn match spiderCommand /\c\<AP SCC\>/
syn match spiderCommand /\c\<AP SH\>/
syn match spiderCommand /\c\<AP SHC\>/
syn match spiderCommand /\c\<AP SR\>/
syn match spiderCommand /\c\<AP TOOL\>/
syn match spiderCommand /\c\<AR\>/
syn match spiderCommand /\c\<AR IF\>/
syn match spiderCommand /\c\<AR SCA\>/
syn match spiderCommand /\c\<AS F\>/
syn match spiderCommand /\c\<AS R\>/
syn match spiderCommand /\c\<AS S\>/
syn match spiderCommand /\c\<AT IT\>/
syn match spiderCommand /\c\<AT PK\>/
syn match spiderCommand /\c\<AT SA\>/
syn match spiderCommand /\c\<AT WN\>/
syn match spiderCommand /\c\<BC\>/
syn match spiderCommand /\c\<BL\>/
syn match spiderCommand /\c\<BP 32F\>/
syn match spiderCommand /\c\<BP 3D\>/
syn match spiderCommand /\c\<BP 3F\>/
syn match spiderCommand /\c\<BP 3F MERGE\>/
syn match spiderCommand /\c\<BP 3F PART\>/
syn match spiderCommand /\c\<BP 3G\>/
syn match spiderCommand /\c\<BP 3N\>/
syn match spiderCommand /\c\<BP CG\>/
syn match spiderCommand /\c\<BP CG 3\>/
syn match spiderCommand /\c\<BP R2\>/
syn match spiderCommand /\c\<BP RP\>/
syn match spiderCommand /\c\<BP RP 3\>/
syn match spiderCommand /\c\<BP S2\>/
syn match spiderCommand /\c\<BP W2\>/
syn match spiderCommand /\c\<CA NOISE\>/
syn match spiderCommand /\c\<CA S\>/
syn match spiderCommand /\c\<CA SM\>/
syn match spiderCommand /\c\<CA SMI\>/
syn match spiderCommand /\c\<CA SR\>/
syn match spiderCommand /\c\<CA SRA\>/
syn match spiderCommand /\c\<CA SRD\>/
syn match spiderCommand /\c\<CA SRE\>/
syn match spiderCommand /\c\<CA SRI\>/
syn match spiderCommand /\c\<CA VIS\>/
syn match spiderCommand /\c\<CC\>/
syn match spiderCommand /\c\<CC C\>/
syn match spiderCommand /\c\<CC H\>/
syn match spiderCommand /\c\<CC MS\>/
syn match spiderCommand /\c\<CC N\>/
syn match spiderCommand /\c\<CC P\>/
syn match spiderCommand /\c\<CE AD\>/
syn match spiderCommand /\c\<CE FIT\>/
syn match spiderCommand /\c\<CE FREI\>/
syn match spiderCommand /\c\<CE G\>/
syn match spiderCommand /\c\<CE GNC\>/
syn match spiderCommand /\c\<CE HARALICK\>/
syn match spiderCommand /\c\<CE HI\>/
syn match spiderCommand /\c\<CE HURST\>/
syn match spiderCommand /\c\<CE LAH\>/
syn match spiderCommand /\c\<CE LAP\>/
syn match spiderCommand /\c\<CE MAX\>/
syn match spiderCommand /\c\<CE MED\>/
syn match spiderCommand /\c\<CE MET\>/
syn match spiderCommand /\c\<CE MIN\>/
syn match spiderCommand /\c\<CE OD\>/
syn match spiderCommand /\c\<CE OR\>/
syn match spiderCommand /\c\<CE PREWITT\>/
syn match spiderCommand /\c\<CE RAN\>/
syn match spiderCommand /\c\<CE RIDGE\>/
syn match spiderCommand /\c\<CE SOBEL\>/
syn match spiderCommand /\c\<CE ST\>/
syn match spiderCommand /\c\<CE TOP\>/
syn match spiderCommand /\c\<CE VAR\>/
syn match spiderCommand /\c\<CE VS\>/
syn match spiderCommand /\c\<CE WATER\>/
syn match spiderCommand /\c\<CENT PH\>/
syn match spiderCommand /\c\<CENT ROD\>/
syn match spiderCommand /\c\<CG\>/
syn match spiderCommand /\c\<CG PH\>/
syn match spiderCommand /\c\<CG SYM\>/
syn match spiderCommand /\c\<CI\>/
syn match spiderCommand /\c\<CL CLA\>/
syn match spiderCommand /\c\<CL HC\>/
syn match spiderCommand /\c\<CL HD\>/
syn match spiderCommand /\c\<CL HE\>/
syn match spiderCommand /\c\<CL KM\>/
syn match spiderCommand /\c\<CN\>/
syn match spiderCommand /\c\<CN N\>/
syn match spiderCommand /\c\<CO\>/
syn match spiderCommand /\c\<CP\>/
syn match spiderCommand /\c\<CP FROM ASCII\>/
syn match spiderCommand /\c\<CP FROM EMI\>/
syn match spiderCommand /\c\<CP FROM MRC\>/
syn match spiderCommand /\c\<CP FROM NIKON\>/
syn match spiderCommand /\c\<CP FROM PDB\>/
syn match spiderCommand /\c\<CP FROM RAW\>/
syn match spiderCommand /\c\<CP FROM TERM\>/
syn match spiderCommand /\c\<CP FROM VAX\>/
syn match spiderCommand /\c\<CP FROM XP\>/
syn match spiderCommand /\c\<CP I\>/
syn match spiderCommand /\c\<CP TO ASCII\>/
syn match spiderCommand /\c\<CP TO BRIX\>/
syn match spiderCommand /\c\<CP TO JPG\>/
syn match spiderCommand /\c\<CP TO MRC\>/
syn match spiderCommand /\c\<CP TO OPEND\>/
syn match spiderCommand /\c\<CP TO POST\>/
syn match spiderCommand /\c\<CP TO RAW\>/
syn match spiderCommand /\c\<CP TO TIFF\>/
syn match spiderCommand /\c\<CP TO VOL\>/
syn match spiderCommand /\c\<CP TO XPLOR\>/
syn match spiderCommand /\c\<CTF ED\>/
syn match spiderCommand /\c\<CTF FIND\>/
syn match spiderCommand /\c\<CV REPL\>/
syn match spiderCommand /\c\<CYCLE\>/
syn match spiderCommand /\c\<DC\>/
syn match spiderCommand /\c\<DC S\>/
syn match spiderCommand /\c\<DE\>/
syn match spiderCommand /\c\<DE A\>/
syn match spiderCommand /\c\<DF\>/
syn match spiderCommand /\c\<DI\>/
syn match spiderCommand /\c\<DI NF\>/
syn match spiderCommand /\c\<DIV\>/
syn match spiderCommand /\c\<DIV 2\>/
syn match spiderCommand /\c\<DN AD\>/
syn match spiderCommand /\c\<DN MED\>/
syn match spiderCommand /\c\<DN MS\>/
syn match spiderCommand /\c\<DOC AND\>/
syn match spiderCommand /\c\<DOC BOOT\>/
syn match spiderCommand /\c\<DOC COMBINE\>/
syn match spiderCommand /\c\<DOC CREATE\>/
syn match spiderCommand /\c\<DOC KEY\>/
syn match spiderCommand /\c\<DOC MERGE\>/
syn match spiderCommand /\c\<DOC MIRROR\>/
syn match spiderCommand /\c\<DOC OLD\>/
syn match spiderCommand /\c\<DOC RAN\>/
syn match spiderCommand /\c\<DOC REN\>/
syn match spiderCommand /\c\<DOC SHUFFLE\>/
syn match spiderCommand /\c\<DOC SORT\>/
syn match spiderCommand /\c\<DOC SPLIT\>/
syn match spiderCommand /\c\<DOC STAT\>/
syn match spiderCommand /\c\<DOC SUBTRACT\>/
syn match spiderCommand /\c\<DR DIFF\>/
syn match spiderCommand /\c\<DR ERR\>/
syn match spiderCommand /\c\<DU\>/
syn match spiderCommand /\c\<DU V\>/
syn match spiderCommand /\c\<EC CL\>/
syn match spiderCommand /\c\<EC CLOSE\>/
syn match spiderCommand /\c\<EC FILTER\>/
syn match spiderCommand /\c\<EC SELECT\>/
syn match spiderCommand /\c\<EC STAT\>/
syn match spiderCommand /\c\<ED\>/
syn match spiderCommand /\c\<EN\>/
syn match spiderCommand /\c\<EN D\>/
syn match spiderCommand /\c\<EP\>/
syn match spiderCommand /\c\<EP TM\>/
syn match spiderCommand /\c\<EP TT\>/
syn match spiderCommand /\c\<ER\>/
syn match spiderCommand /\c\<ER DOC\>/
syn match spiderCommand /\c\<ER EDM\>/
syn match spiderCommand /\c\<ER SK\>/
syn match spiderCommand /\c\<ER WA\>/
syn match spiderCommand /\c\<EV\>/
syn match spiderCommand /\c\<EXIT\>/
syn match spiderCommand /\c\<FC\>/
syn match spiderCommand /\c\<FC E\>/
syn match spiderCommand /\c\<FD\>/
syn match spiderCommand /\c\<FF\>/
syn match spiderCommand /\c\<FF PLOT\>/
syn match spiderCommand /\c\<FI\>/
syn match spiderCommand /\c\<FI A\>/
syn match spiderCommand /\c\<FI H\>/
syn match spiderCommand /\c\<FI N\>/
syn match spiderCommand /\c\<FP\>/
syn match spiderCommand /\c\<FQ\>/
syn match spiderCommand /\c\<FQ NP\>/
syn match spiderCommand /\c\<FR\>/
syn match spiderCommand /\c\<FR F\>/
syn match spiderCommand /\c\<FR G\>/
syn match spiderCommand /\c\<FR GS\>/
syn match spiderCommand /\c\<FR L\>/
syn match spiderCommand /\c\<FR LS\>/
syn match spiderCommand /\c\<FR N\>/
syn match spiderCommand /\c\<FRC\>/
syn match spiderCommand /\c\<FS\>/
syn match spiderCommand /\c\<FS M\>/
syn match spiderCommand /\c\<FSC\>/
syn match spiderCommand /\c\<FT\>/
syn match spiderCommand /\c\<FT R\>/
syn match spiderCommand /\c\<FV\>/
syn match spiderCommand /\c\<GOTO\>/
syn match spiderCommand /\c\<GP\>/
syn match spiderCommand /\c\<GR\>/
syn match spiderCommand /\c\<GR T\>/
syn match spiderCommand /\c\<HD\>/
syn match spiderCommand /\c\<HD D\>/
syn match spiderCommand /\c\<HD R\>/
syn match spiderCommand /\c\<HI\>/
syn match spiderCommand /\c\<HI D\>/
syn match spiderCommand /\c\<HI DR\>/
syn match spiderCommand /\c\<HI E\>/
syn match spiderCommand /\c\<HI JOINT\>/
syn match spiderCommand /\c\<HI M\>/
syn match spiderCommand /\c\<HI R\>/
syn match spiderCommand /\c\<HI T\>/
syn match spiderCommand /\c\<HI TR\>/
syn match spiderCommand /\c\<IA\>/
syn match spiderCommand /\c\<IN\>/
syn match spiderCommand /\c\<IN S\>/
syn match spiderCommand /\c\<IP\>/
syn match spiderCommand /\c\<IP FS\>/
syn match spiderCommand /\c\<IP FT\>/
syn match spiderCommand /\c\<IP T\>/
syn match spiderCommand /\c\<IQ COMP\>/
syn match spiderCommand /\c\<IQ DIR\>/
syn match spiderCommand /\c\<IQ FI\>/
syn match spiderCommand /\c\<IQ GONE\>/
syn match spiderCommand /\c\<IQ PID\>/
syn match spiderCommand /\c\<IQ REG\>/
syn match spiderCommand /\c\<IQ SYNC\>/
syn match spiderCommand /\c\<IQ SYNC D\>/
syn match spiderCommand /\c\<IQ VER\>/
syn match spiderCommand /\c\<IQ WO\>/
syn match spiderCommand /\c\<LA\>/
syn match spiderCommand /\c\<LA L\>/
syn match spiderCommand /\c\<LB#\>/
syn match spiderCommand /\c\<LI\>/
syn match spiderCommand /\c\<LI D\>/
syn match spiderCommand /\c\<LI T\>/
syn match spiderCommand /\c\<LI X\>/
syn match spiderCommand /\c\<LO\>/
syn match spiderCommand /\c\<LO I\>/
syn match spiderCommand /\c\<LO LSD\>/
syn match spiderCommand /\c\<MA\>/
syn match spiderCommand /\c\<MA L\>/
syn match spiderCommand /\c\<MA SOFT\>/
syn match spiderCommand /\c\<MA X\>/
syn match spiderCommand /\c\<MA Y\>/
syn match spiderCommand /\c\<MA Z\>/
syn match spiderCommand /\c\<MD\>/
syn match spiderCommand /\c\<MK\>/
syn match spiderCommand /\c\<MK 3\>/
syn match spiderCommand /\c\<MM\>/
syn match spiderCommand /\c\<MM C\>/
syn match spiderCommand /\c\<MN\>/
syn match spiderCommand /\c\<MN S\>/
syn match spiderCommand /\c\<MO\>/
syn match spiderCommand /\c\<MO 3\>/
syn match spiderCommand /\c\<MR\>/
syn match spiderCommand /\c\<MS\>/
syn match spiderCommand /\c\<MS 3\>/
syn match spiderCommand /\c\<MS F\>/
syn match spiderCommand /\c\<MS I\>/
syn match spiderCommand /\c\<MS IF\>/
syn match spiderCommand /\c\<MUL\>/
syn match spiderCommand /\c\<MUL 2\>/
syn match spiderCommand /\c\<MUL M\>/
syn match spiderCommand /\c\<MUL O\>/
syn match spiderCommand /\c\<MX\>/
syn match spiderCommand /\c\<MY\>/
syn match spiderCommand /\c\<MY FL\>/
syn match spiderCommand /\c\<NC\>/
syn match spiderCommand /\c\<NEG\>/
syn match spiderCommand /\c\<NEG A\>/
syn match spiderCommand /\c\<NORM\>/
syn match spiderCommand /\c\<OD\>/
syn match spiderCommand /\c\<OP\>/
syn match spiderCommand /\c\<OR 3A\>/
syn match spiderCommand /\c\<OR 3Q\>/
syn match spiderCommand /\c\<OR A\>/
syn match spiderCommand /\c\<OR MAP\>/
syn match spiderCommand /\c\<OR Q\>/
syn match spiderCommand /\c\<OR R\>/
syn match spiderCommand /\c\<OR SH\>/
syn match spiderCommand /\c\<PA\>/
syn match spiderCommand /\c\<PD\>/
syn match spiderCommand /\c\<PDB CG3\>/
syn match spiderCommand /\c\<PDB IF\>/
syn match spiderCommand /\c\<PDB PTS\>/
syn match spiderCommand /\c\<PDB RT3\>/
syn match spiderCommand /\c\<PDB RT3A\>/
syn match spiderCommand /\c\<PDB RT3L\>/
syn match spiderCommand /\c\<PDB SH\>/
syn match spiderCommand /\c\<PDB STP\>/
syn match spiderCommand /\c\<PF\>/
syn match spiderCommand /\c\<PI REG\>/
syn match spiderCommand /\c\<PJ 3\>/
syn match spiderCommand /\c\<PJ 3F\>/
syn match spiderCommand /\c\<PJ 3G\>/
syn match spiderCommand /\c\<PJ 3Q\>/
syn match spiderCommand /\c\<PJ 3Q RR\>/
syn match spiderCommand /\c\<PJ AT\>/
syn match spiderCommand /\c\<PJ COL\>/
syn match spiderCommand /\c\<PJ CYL\>/
syn match spiderCommand /\c\<PJ SHAD\>/
syn match spiderCommand /\c\<PJ ST\>/
syn match spiderCommand /\c\<PK\>/
syn match spiderCommand /\c\<PK 3D\>/
syn match spiderCommand /\c\<PK 3R\>/
syn match spiderCommand /\c\<PK D\>/
syn match spiderCommand /\c\<PK DR\>/
syn match spiderCommand /\c\<PK M\>/
syn match spiderCommand /\c\<PL\>/
syn match spiderCommand /\c\<PL FIT\>/
syn match spiderCommand /\c\<PL HI\>/
syn match spiderCommand /\c\<PO\>/
syn match spiderCommand /\c\<PP\>/
syn match spiderCommand /\c\<PP L\>/
syn match spiderCommand /\c\<PP LL\>/
syn match spiderCommand /\c\<PP P\>/
syn match spiderCommand /\c\<PP V\>/
syn match spiderCommand /\c\<PS\>/
syn match spiderCommand /\c\<PS A\>/
syn match spiderCommand /\c\<PS X\>/
syn match spiderCommand /\c\<PS Z\>/
syn match spiderCommand /\c\<PT\>/
syn match spiderCommand /\c\<PW\>/
syn match spiderCommand /\c\<PW L\>/
syn match spiderCommand /\c\<RA\>/
syn match spiderCommand /\c\<RB 32F\>/
syn match spiderCommand /\c\<RB 3F\>/
syn match spiderCommand /\c\<RC\>/
syn match spiderCommand /\c\<RE\>/
syn match spiderCommand /\c\<RF\>/
syn match spiderCommand /\c\<RF 3\>/
syn match spiderCommand /\c\<RF 3SN\>/
syn match spiderCommand /\c\<RF SN\>/
syn match spiderCommand /\c\<RM\>/
syn match spiderCommand /\c\<RM 2DN\>/
syn match spiderCommand /\c\<RM 3DN\>/
syn match spiderCommand /\c\<RM COMPLN\>/
syn match spiderCommand /\c\<RM FILTER\>/
syn match spiderCommand /\c\<RM FTINVN\>/
syn match spiderCommand /\c\<RM FTN\>/
syn match spiderCommand /\c\<RM INV2N\>/
syn match spiderCommand /\c\<RM INV3N\>/
syn match spiderCommand /\c\<RM MAKE3\>/
syn match spiderCommand /\c\<RM RESET\>/
syn match spiderCommand /\c\<RM SUM3N\>/
syn match spiderCommand /\c\<RO I\>/
syn match spiderCommand /\c\<RO SD\>/
syn match spiderCommand /\c\<ROT\>/
syn match spiderCommand /\c\<ROT A\>/
syn match spiderCommand /\c\<ROT L\>/
syn match spiderCommand /\c\<RP\>/
syn match spiderCommand /\c\<RR\>/
syn match spiderCommand /\c\<RR C\>/
syn match spiderCommand /\c\<RR G\>/
syn match spiderCommand /\c\<RR S\>/
syn match spiderCommand /\c\<RT 90\>/
syn match spiderCommand /\c\<RT SF\>/
syn match spiderCommand /\c\<RT SF M\>/
syn match spiderCommand /\c\<RT SQ\>/
syn match spiderCommand /\c\<SA\>/
syn match spiderCommand /\c\<SA 3\>/
syn match spiderCommand /\c\<SA E\>/
syn match spiderCommand /\c\<SA P\>/
syn match spiderCommand /\c\<SD\>/
syn match spiderCommand /\c\<SD C\>/
syn match spiderCommand /\c\<SD E\>/
syn match spiderCommand /\c\<SD IC\>/
syn match spiderCommand /\c\<SD IC COPY\>/
syn match spiderCommand /\c\<SD IC NEW\>/
syn match spiderCommand /\c\<SD ICE\>/
syn match spiderCommand /\c\<SE\>/
syn match spiderCommand /\c\<SH\>/
syn match spiderCommand /\c\<SH F\>/
syn match spiderCommand /\c\<SK\>/
syn match spiderCommand /\c\<SK R\>/
syn match spiderCommand /\c\<SL\>/
syn match spiderCommand /\c\<SN RB\>/
syn match spiderCommand /\c\<SN RF\>/
syn match spiderCommand /\c\<SO\>/
syn match spiderCommand /\c\<SO C\>/
syn match spiderCommand /\c\<SP\>/
syn match spiderCommand /\c\<SQ\>/
syn match spiderCommand /\c\<SQRT\>/
syn match spiderCommand /\c\<ST\>/
syn match spiderCommand /\c\<ST H\>/
syn match spiderCommand /\c\<SUB\>/
syn match spiderCommand /\c\<SUB 2\>/
syn match spiderCommand /\c\<SY DOC\>/
syn match spiderCommand /\c\<SYS\>/
syn match spiderCommand /\c\<SZ\>/
syn match spiderCommand /\c\<TF\>/
syn match spiderCommand /\c\<TF C\>/
syn match spiderCommand /\c\<TF C3\>/
syn match spiderCommand /\c\<TF COR\>/
syn match spiderCommand /\c\<TF CRF\>/
syn match spiderCommand /\c\<TF CT\>/
syn match spiderCommand /\c\<TF CT3\>/
syn match spiderCommand /\c\<TF CTS\>/
syn match spiderCommand /\c\<TF D\>/
syn match spiderCommand /\c\<TF DDF\>/
syn match spiderCommand /\c\<TF DEV\>/
syn match spiderCommand /\c\<TF DNS\>/
syn match spiderCommand /\c\<TF ED\>/
syn match spiderCommand /\c\<TF L\>/
syn match spiderCommand /\c\<TF LM4\>/
syn match spiderCommand /\c\<TF RCTF\>/
syn match spiderCommand /\c\<TF SIM\>/
syn match spiderCommand /\c\<TF SNR\>/
syn match spiderCommand /\c\<TH\>/
syn match spiderCommand /\c\<TH C\>/
syn match spiderCommand /\c\<TH F\>/
syn match spiderCommand /\c\<TH M\>/
syn match spiderCommand /\c\<TM\>/
syn match spiderCommand /\c\<TP\>/
syn match spiderCommand /\c\<TT\>/
syn match spiderCommand /\c\<TT COPY\>/
syn match spiderCommand /\c\<UD\>/
syn match spiderCommand /\c\<UD E\>/
syn match spiderCommand /\c\<UD FIND\>/
syn match spiderCommand /\c\<UD FIND E\>/
syn match spiderCommand /\c\<UD IC\>/
syn match spiderCommand /\c\<UD ICE\>/
syn match spiderCommand /\c\<UD MAX\>/
syn match spiderCommand /\c\<UD N\>/
syn match spiderCommand /\c\<UD NEXT\>/
syn match spiderCommand /\c\<UD NEXT E\>/
syn match spiderCommand /\c\<UD S\>/
syn match spiderCommand /\c\<VA 3Q\>/
syn match spiderCommand /\c\<VA 3R\>/
syn match spiderCommand /\c\<VA F\>/
syn match spiderCommand /\c\<VAR\>/
syn match spiderCommand /\c\<VM\>/
syn match spiderCommand /\c\<VO EA\>/
syn match spiderCommand /\c\<VO EPT\>/
syn match spiderCommand /\c\<VO IA\>/
syn match spiderCommand /\c\<VO MD\>/
syn match spiderCommand /\c\<VO MQ\>/
syn match spiderCommand /\c\<VO NEA\>/
syn match spiderCommand /\c\<VO RA\>/
syn match spiderCommand /\c\<VO RAS\>/
syn match spiderCommand /\c\<WA\>/
syn match spiderCommand /\c\<WI\>/
syn match spiderCommand /\c\<WI B\>/
syn match spiderCommand /\c\<WV\>/
syn match spiderCommand /\c\<WV P\>/
syn match spiderCommand /\c\<WV S\>/
syn match spiderCommand /\c\<XM MA\>/
syn match spiderCommand /\c\<XM S2D\>/

"END
