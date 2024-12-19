# Nonprofit Regulation Project (Legal Compendium) 

A repository for the CNP/NCCS Nonprofit Regulatory Environment project. 


## Data Files 

The code here focuses on using hand-collected data produced by research collaborators and entered into Excel sheets, which are then read into R to clean and restructure. 

The raw files that were provided by the research team at in **data-raw/tidy-states**. 

## Data Preparation Files 

The [**Digitized Legal Compendium**](https://urbaninstitute.github.io/nccs-regulation/dlc-research-guide.html) file is the primary data wrangling file for the first stages. It also suggests some standards for how to structure the file and format legal citations moving forward to scale teh work in the next phase. 




## State-Level Reports

Report templates that summarize nonprofit statutes covered within each state. 

- [AlabamaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AL.html)
- [AlaskaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AK.html)
- [ArizonaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AZ.html)
- [ArkansasState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AR.html)
- [CaliforniaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/CA.html)
- [ColoradoState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/CO.html)
- [ConnecticutState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/CT.html)
- [DelawareState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/DE.html)
- [FloridaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/FL.html)
- [GeorgiaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/GA.html)
- [HawaiiState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/HI.html)
- [IdahoState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/ID.html)
- [IllinoisState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/IL.html)
- [IndianaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/IN.html)
- [IowaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/IA.html)
- [KansasState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/KS.html)
- [KentuckyState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/KY.html)
- [LouisianaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/LA.html)
- [MaineState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/ME.html)
- [MarylandState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MD.html)
- [MassachusettsState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MA.html)
- [MichiganState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MI.html)
- [MinnesotaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MN.html)
- [MississippiState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MS.html)
- [MissouriState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MO.html)
- [MontanaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MT.html)
- [NebraskaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NE.html)
- [NevadaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NV.html)
- [New HampshireState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NH.html)
- [New JerseyState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NJ.html)
- [New MexicoState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NM.html)
- [New YorkState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NY.html)
- [North CarolinaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NC.html)
- [North DakotaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/ND.html)
- [OhioState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/OH.html)
- [OklahomaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/OK.html)
- [OregonState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/OR.html)
- [PennsylvaniaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/PA.html)
- [Rhode IslandState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/RI.html)
- [South CarolinaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/SC.html)
- [South DakotaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/SD.html)
- [TennesseeState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/TN.html)
- [TexasState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/TX.html)
- [UtahState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/UT.html)
- [VermontState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/VT.html)
- [VirginiaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/VA.html)
- [WashingtonState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WA.html)
- [Washington, D.C. Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/DC.html)
- [West VirginiaState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WV.html)
- [WisconsinState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WI.html)
- [WyomingState Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WY.html)

See the **STATE-REPORT-TEMPLATE.QMD** file for details on replicating. 

```r
###
###  RENDER ALL REPORTS 
 
wd       <- "file/path/here/REPORTS/STATE/"
fn       <- "ALL-STATES-FORMATTED.CSV"
TEMPLATE <- "STATE-REPORT-TEMPLATE.qmd"

setwd( wd )

render_state_report <- function( STATE ){
  outfn <- paste0( STATE, ".html" )
  quarto::quarto_render(
    input = paste0( wd, "/", TEMPLATE ),
    output_file = outfn,
    execute_params = list(
      state  = STATE ) )
}

STATE <-
c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", 
"HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", 
"MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", 
"NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", 
"UT", "VT", "VA", "WA", "DC", "WV", "WI", "WY")

# ONE AT A TIME
render_state_report( STATE="WY" )

# ALL TOGETHER
purrr::walk( STATE, render_state_report )
```


## Regulation Type Reports

Reports that summarize existing legislation on each individual regulatory type across all states. 

- [BIFURC Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/BIFURC.html): Bifurcated Regulatory Structure
- [REGIOF Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/REGIOF.html): Registration Office
- [ASSETS Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/ASSETS.html): Sale of Assets
- [MERGER Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/MERGER.html): Mergers
- [AMMEND Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/AMMEND.html): Certificate of Amendments
- [VOLUNT Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/VOLUNT.html): Voluntary Dissolutions
- [JUDICI Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/JUDICI.html): Judicial Dissolutions
- [ADMINI Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/ADMINI.html): Administrative Dissolutions
- [STATUT Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/STATUT.html): Has Statute
- [OVERSI Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/OVERSI.html): Requires Notice or Oversight
- [FILING Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/FILING.html): Requires Filing
- [AUDITS Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/AUDITS.html): Requires Audit
- [THRESH Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/THRESH.html): Audit Threshold
- [REGIST Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/REGIST.html): Registration Law
- [RELIGI Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/RELIGI.html): Religious Organizations
- [SMALLO Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/SMALLO.html): Small organizations
- [EDUCAT Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/EDUCAT.html): Educational Institutions
- [GOVMNT Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/GOVMNT.html): Governmental Organizations
- [HOSPIT Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/HOSPIT.html): Hospitals
- [VETERA Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/VETERA.html): Veterans organizations
- [FNDYES Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/FNDYES.html): Foundations
- [FNDNOS Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/FNDNOS.html): Foundations that don't solicit contributions
- [CTRUST Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/CTRUST.html): Charitable Trusts
- [PTOEDU Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/PTOEDU.html): Parent-Teacher Organizations
- [CONGRE Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/CONGRE.html): Reports to congress
- [NONSOL Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/NONSOL.html): Non-soliciting
- [MEMFRA Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/MEMFRA.html): Fraternal/ Membership
- [POLITI Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/POLITI.html): Political Orgs
- [OTHTYP Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/OTHTYP.html): Other
- [DISSOL Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/DISSOL.html): Dissolution
- [BRDRMV Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/BRDRMV.html): Removal of Board Members
- [COMREG Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/COMREG.html): Does the state require registration by commercial fundraisers?
- [COUNSL Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/COUNSL.html): Does the state require registration by fundraising counsel?
- [VENTUR Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/VENTUR.html): Does the state oversee commercial-coventuring (e.g. by requiring that the co-venture be registered or by requiring that the charitable organization files the co-venture contract)?
- [NOTICE Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/NOTICE.html): Does the state require the fundraisers to provide notice to the regulator before any solicitation campaign (in addition to annual registration and/or filing the contract)?
- [DDONOR Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/DDONOR.html): Does the state require specified disclosures to donors?
- [CNTRCT Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/CNTRCT.html): Does the state require a copy of any contract between a charitable organization and a commercial fundraiser or fundraising counsel be filed with the regulator?
- [ANNUAL Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/ANNUAL.html): Does the state require annual financial reporting by commercial fundraisers?
- [FINANC Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/FINANC.html): Does the state require annual financial reporting by charitable organizations in addition to filing a copy of the 990 with the regulator (if filing 990 is required)?
- [BONDNG Report](https://urbaninstitute.github.io/nccs-regulation/reports/RULES/BONDNG.html): Does the state require bonding of professional fundraisers?


See **RULE-REPORT-TEMPLATE.QMD** for the replication template.

```r
###
###  RENDER REPORTS 
### 

wd <- "your/file/path/REPORTS/RULES"
setwd( wd )

TEMPLATE <- "RULE-REPORT-TEMPLATE.QMD*"

render_rule_report <- function( RULE ){
  outfn <- paste0( RULE, ".html" )
  quarto::quarto_render(
  input = paste0( wd, "/", TEMPLATE ),
  output_file = outfn,
  execute_params = list(
    rule  = RULE,
    fpath = fpath ) )
}

rules <-
c("BIFURC", "REGIOF", "ASSETS", "MERGER", "AMMEND", "VOLUNT", 
"JUDICI", "ADMINI", "STATUT", "OVERSI", "FILING", "AUDITS", "THRESH", 
"REGIST", "RELIGI", "SMALLO", "EDUCAT", "GOVMNT", "HOSPIT", "VETERA", 
"FNDYES", "FNDNOS", "CTRUST", "PTOEDU", "CONGRE", "NONSOL", "MEMFRA", 
"POLITI", "OTHTYP", "DISSOL", "BRDRMV", "COMREG", "COUNSL", "VENTUR", 
"NOTICE", "DDONOR", "CNTRCT", "ANNUAL", "FINANC", "BONDNG")

# ONE AT A TIME
render_rule_report( RULE = "BIFURC" )

# ALL TOGETHER
purrr::walk( rules, make_links2 )
```