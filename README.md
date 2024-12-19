# Nonprofit Regulation Project (Legal Compendium) 

A repository for the CNP/NCCS Nonprofit Regulatory Environment project. 


## Data Files 

The code here focuses on using hand-collected data produced by research collaborators and entered into Excel sheets, which are then read into R to clean and restructure. 

The raw files that were provided by the research team at in **data-raw/tidy-states**. 

## Data Preparation Files 

The [**Digitized Legal Compendium**](https://urbaninstitute.github.io/nccs-regulation/dlc-research-guide.html) file is the primary data wrangling file for the first stages. It also suggests some standards for how to structure the file and format legal citations moving forward to scale teh work in the next phase. 

The semi-clean file called **02-data-inter/ALL-STATES-FORMATTED.CSV** is here: <a href="https://raw.githubusercontent.com/UrbanInstitute/nccs-regulation/refs/heads/main/02-data-inter/ALL-STATES-FORMATTED.CSV" download="ALL-STATES-FORMATTED.CSV">DOWNLOAD</a>

The big changes that were made: 

- Variables were renamed for consistency and Legal Compendium descriptive labels were added. 
- IDs were inconsistent in the raw files (state names were incorrect leading to duplicate IDs, other ID names were inconsistent throughout the individual state files) 
- Text encoding from copied HTML was causing problems, so text fields were put through text sanitizers to remove any exotic encodings and ensure text is clean and consistent when stored in CSV files. 
- Section numbering fields, which consist of numbers and punctuation, were being interpretted as dates or getting corrupted in the usual excel ways. To preserve the integrity a text tag needs to be added to the start of each text field. For example, the section fields now start with {SS}:
- The Section Symbol (§) is non-unicode and thus was getting muddled, so it should be used sparingly. 

Outstanding issues: 

- [ ] The section fields need to be cleaned and reconciled. 
- [ ] The Regulation Indicator field (**reg_indicator**) was inconsistent and it's unclear if it is accurate.  
- [ ] Please review variable names to see if we can make them intuitive. 

Currently we group the regulations as: 

- reg_type (the high level column group in the legal compendium) 
- reg_rule (each column of the LC) 
- reg_body (which body is responsible for administering the regulation: AG, Other, and I added "Not Specified" for cases that were blank) 
- reg_action (describes what type of regulation it is - requirement, exemption, remedy, etc.) 

I debated instead using "reg_group and reg_type instead of reg_type and reg_rule). Open to suggestions. 

## Demo Reports

I played with descriptive stats but could not find a lot that was interesting or insightful beyond the basic coverage for specific types of laws and variance in the extensiveness of the regulatory environments across states. 

Otherwise I think people might want to query the statutes: 

1. By a regulatory type to see how laws vary across geographies 
2. By a geograph to see what laws exist 
3. By a combination of type and geography to look up a specific law

These report templates were an attempt to render the text data in a way that makes it easy to digest. It also highlights the data integrity issues that need to be fixed. 

I can still add the user interface but I need some feedback on what is actually useful. 

We can create tables that look similar to the original LC Excel file with YES/NO in the cells and hyperlinks to the notes and text on each section. 

|        |  REG1  |  REG2  |
|--------|--------|--------|
| STATE1 |  link  |  link  |
| STATE2 |  link  |  link  |

Just really wasn't sure what people want for an interface. 


## State-Level Reports

Report templates that summarize nonprofit statutes covered within each state. 

- [Alabama State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AL.html)  
- [Alaska State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AK.html)  
- [Arizona State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AZ.html)  
- [Arkansas State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/AR.html)  
- [California State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/CA.html)  
- [Colorado State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/CO.html)  
- [Connecticut State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/CT.html)  
- [Delaware State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/DE.html)  
- [Florida State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/FL.html)  
- [Georgia State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/GA.html)  
- [Hawaii State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/HI.html)  
- [Idaho State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/ID.html)  
- [Illinois State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/IL.html)  
- [Indiana State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/IN.html)  
- [Iowa State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/IA.html)  
- [Kansas State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/KS.html)  
- [Kentucky State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/KY.html)  
- [Louisiana State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/LA.html)  
- [Maine State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/ME.html)  
- [Maryland State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MD.html)  
- [Massachusetts State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MA.html)  
- [Michigan State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MI.html)  
- [Minnesota State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MN.html)  
- [Mississippi State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MS.html)  
- [Missouri State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MO.html)  
- [Montana State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/MT.html)  
- [Nebraska State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NE.html)  
- [Nevada State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NV.html)  
- [New Hampshire State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NH.html)  
- [New Jersey State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NJ.html)  
- [New Mexico State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NM.html)  
- [New York State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NY.html)  
- [North Carolina State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/NC.html)  
- [North Dakota State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/ND.html)  
- [Ohio State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/OH.html)  
- [Oklahoma State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/OK.html)  
- [Oregon State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/OR.html)  
- [Pennsylvania State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/PA.html)  
- [Rhode Island State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/RI.html)  
- [South Carolina State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/SC.html)  
- [South Dakota State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/SD.html)  
- [Tennessee State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/TN.html)  
- [Texas State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/TX.html)  
- [Utah State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/UT.html)  
- [Vermont State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/VT.html)  
- [Virginia State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/VA.html)  
- [Washington State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WA.html)  
- [Washington, D.C. State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/DC.html)  
- [West Virginia State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WV.html)  
- [Wisconsin State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WI.html)  
- [Wyoming State Report](https://urbaninstitute.github.io/nccs-regulation/reports/STATES/WY.html)  

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

