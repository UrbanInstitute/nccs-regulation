library( dplyr )
library( kableExtra )

wd <- "C:/Users/jdlec/Dropbox (Personal)/00 - URBAN/legal-compendium/LC_Text_Data_Merge/legal-compendium"
setwd( wd )

d <- read.csv("ALL-STATES.CSV")
summary(d)


d$section_code_re
d$section1
d$first_element


stt
structure(list(reg_rule_abbr = c("AD", "AT", "BF", "CA", "CT", 
"DS", "CC", "FF", "RG", "AF", "BO", "CF", "FC", "SD", "NT", "EI", 
"FD", "FS", "FM", "GO", "HS", "HO", "JD", "MG", "NS", "OT", "PT", 
"PO", "RL", "RE", "RO", "RM", "RC", "RA", "RF", "NO", "SA", "SO", 
"VO", "VD"), reg_type = c("DISSOLV", "AUDITFI", "BIFRGRP", "REPORTS", 
"ORGTYPE", "REMEDYT", "FNDRAZE", "FNDRAZE", "REPORTS", "FNDRAZE", 
"FNDRAZE", "FNDRAZE", "FNDRAZE", "FNDRAZE", "FNDRAZE", "ORGTYPE", 
"ORGTYPE", "ORGTYPE", "ORGTYPE", "ORGTYPE", "HOSPCON", "ORGTYPE", 
"DISSOLV", "REPORTS", "ORGTYPE", "ORGTYPE", "ORGTYPE", "ORGTYPE", 
"REGILAW", "BIFRGRP", "ORGTYPE", "REMEDYT", "ORGTYPE", "AUDITFI", 
"HOSPCON", "HOSPCON", "REPORTS", "ORGTYPE", "ORGTYPE", "DISSOLV"
), reg_type_label = c("Notice or Action for Dissolutions", "Audits", 
"Bifurcation of charitable regulatory body", "Notice, Filing or Review of Transactions", 
"Exemptions from Registering for Specific Organization Types", 
"Defined remedies", "Oversight of professional fundraisers", 
"Oversight of professional fundraisers", "Notice, Filing or Review of Transactions", 
"Oversight of professional fundraisers", "Oversight of professional fundraisers", 
"Oversight of professional fundraisers", "Oversight of professional fundraisers", 
"Oversight of professional fundraisers", "Oversight of professional fundraisers", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Notice, Oversight or Filing of Hospital Conversions", "Exemptions from Registering for Specific Organization Types", 
"Notice or Action for Dissolutions", "Notice, Filing or Review of Transactions", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Registration Law", "Bifurcation of charitable regulatory body", 
"Exemptions from Registering for Specific Organization Types", 
"Defined remedies", "Exemptions from Registering for Specific Organization Types", 
"Audits", "Notice, Oversight or Filing of Hospital Conversions", 
"Notice, Oversight or Filing of Hospital Conversions", "Notice, Filing or Review of Transactions", 
"Exemptions from Registering for Specific Organization Types", 
"Exemptions from Registering for Specific Organization Types", 
"Notice or Action for Dissolutions"), reg_rule = c("ADMINI", 
"THRESH", "BIFURC", "AMMEND", "CTRUST", "DISSOL", "VENTUR", "CNTRCT", 
"FINANC", "ANNUAL", "BONDNG", "COMREG", "COUNSL", "DDONOR", "NOTICE", 
"EDUCAT", "FNDYES", "FNDNOS", "MEMFRA", "GOVMNT", "STATUT", "HOSPIT", 
"JUDICI", "MERGER", "NONSOL", "OTHTYP", "PTOEDU", "POLITI", "REGIST", 
"REGIOF", "RELIGI", "BRDRMV", "CONGRE", "AUDITS", "FILING", "OVERSI", 
"ASSETS", "SMALLO", "VETERA", "VOLUNT"), reg_rule_label = c("Administrative Dissolutions", 
"Audit Threshold", "Bifurcated Regulatory Structure", "Certificate of Amendments", 
"Charitable Trusts", "Dissolution", "Does the state oversee commercial-coventuring (e.g. by requiring that the co-venture be registered or by requiring that the charitable organization files the co-venture contract)?", 
"Does the state require a copy of any contract between a charitable organization and a commercial fundraiser or fundraising counsel be filed with the regulator?", 
"Does the state require annual financial reporting by charitable organizations in addition to filing a copy of the 990 with the regulator (if filing 990 is required)?", 
"Does the state require annual financial reporting by commercial fundraisers?", 
"Does the state require bonding of professional fundraisers?", 
"Does the state require registration by commercial fundraisers?", 
"Does the state require registration by fundraising counsel?", 
"Does the state require specified disclosures to donors?", "Does the state require the fundraisers to provide notice to the regulator before any solicitation campaign (in addition to annual registration and/or filing the contract)?", 
"Educational Institutions", "Foundations", "Foundations that don't solicit contributions", 
"Fraternal/ Membership", "Governmental Organizations", "Has Statute", 
"Hospitals", "Judicial Dissolutions", "Mergers", "Non-soliciting", 
"Other", "Parent-Teacher Organizations", "Political Orgs", "Registration Law", 
"Registration Office", "Religious Organizations", "Removal of Board Members", 
"Reports to congress", "Requires Audit", "Requires Filing", "Requires Notice or Oversight", 
"Sale of Assets", "Small organizations", "Veterans organizations", 
"Voluntary Dissolutions"), reg_action = c("REQMNT", "REQMNT", 
"REQMNT", "REQMNT", "EXMPTN", "REMEDY", "REQMNT", "REQMNT", "REQMNT", 
"REQMNT", "REQMNT", "REQMNT", "REQMNT", "REQMNT", "REQMNT", "EXMPTN", 
"EXMPTN", "EXMPTN", "EXMPTN", "EXMPTN", "REQMNT", "EXMPTN", "REQMNT", 
"REQMNT", "EXMPTN", "EXMPTN", "EXMPTN", "EXMPTN", "EXMPTN", "REQMNT", 
"EXMPTN", "REMEDY", "EXMPTN", "REQMNT", "REQMNT", "REQMNT", "REQMNT", 
"EXMPTN", "EXMPTN", "REQMNT"), reg_action_label = c("requirement", 
"requirement", "requirement", "requirement", "exemption", "remedy", 
"requirement", "requirement", "requirement", "requirement", "requirement", 
"requirement", "requirement", "requirement", "requirement", "exemption", 
"exemption", "exemption", "exemption", "exemption", "requirement", 
"exemption", "requirement", "requirement", "exemption", "exemption", 
"exemption", "exemption", "exemption", "requirement", "exemption", 
"remedy", "exemption", "requirement", "requirement", "requirement", 
"requirement", "exemption", "exemption", "requirement")), class = c("tbl_df", 
"tbl", "data.frame"), row.names = c(NA, -40L))



|reg_type_abbr |reg_type |reg_type_label                                              |reg_rule |reg_rule_label                                                                                                                                                                      |reg_action |reg_action_label |
|:-------------|:--------|:-----------------------------------------------------------|:--------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------|:----------------|
|AD            |DISSOLV  |Notice or Action for Dissolutions                           |ADMINI   |Administrative Dissolutions                                                                                                                                                         |REQMNT     |requirement      |
|AT            |AUDITFI  |Audits                                                      |THRESH   |Audit Threshold                                                                                                                                                                     |REQMNT     |requirement      |
|BF            |BIFRGRP  |Bifurcation of charitable regulatory body                   |BIFURC   |Bifurcated Regulatory Structure                                                                                                                                                     |REQMNT     |requirement      |
|CA            |REPORTS  |Notice, Filing or Review of Transactions                    |AMMEND   |Certificate of Amendments                                                                                                                                                           |REQMNT     |requirement      |
|CT            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |CTRUST   |Charitable Trusts                                                                                                                                                                   |EXMPTN     |exemption        |
|DS            |REMEDYT  |Defined remedies                                            |DISSOL   |Dissolution                                                                                                                                                                         |REMEDY     |remedy           |
|CC            |FNDRAZE  |Oversight of professional fundraisers                       |VENTUR   |Does the state oversee commercial-coventuring (e.g. by requiring that the co-venture be registered or by requiring that the charitable organization files the co-venture contract)? |REQMNT     |requirement      |
|FF            |FNDRAZE  |Oversight of professional fundraisers                       |CNTRCT   |Does the state require a copy of any contract between a charitable organization and a commercial fundraiser or fundraising counsel be filed with the regulator?                     |REQMNT     |requirement      |
|RG            |REPORTS  |Notice, Filing or Review of Transactions                    |FINANC   |Does the state require annual financial reporting by charitable organizations in addition to filing a copy of the 990 with the regulator (if filing 990 is required)?               |REQMNT     |requirement      |
|AF            |FNDRAZE  |Oversight of professional fundraisers                       |ANNUAL   |Does the state require annual financial reporting by commercial fundraisers?                                                                                                        |REQMNT     |requirement      |
|BO            |FNDRAZE  |Oversight of professional fundraisers                       |BONDNG   |Does the state require bonding of professional fundraisers?                                                                                                                         |REQMNT     |requirement      |
|CF            |FNDRAZE  |Oversight of professional fundraisers                       |COMREG   |Does the state require registration by commercial fundraisers?                                                                                                                      |REQMNT     |requirement      |
|FC            |FNDRAZE  |Oversight of professional fundraisers                       |COUNSL   |Does the state require registration by fundraising counsel?                                                                                                                         |REQMNT     |requirement      |
|SD            |FNDRAZE  |Oversight of professional fundraisers                       |DDONOR   |Does the state require specified disclosures to donors?                                                                                                                             |REQMNT     |requirement      |
|NT            |FNDRAZE  |Oversight of professional fundraisers                       |NOTICE   |Does the state require the fundraisers to provide notice to the regulator before any solicitation campaign (in addition to annual registration and/or filing the contract)?         |REQMNT     |requirement      |
|EI            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |EDUCAT   |Educational Institutions                                                                                                                                                            |EXMPTN     |exemption        |
|FD            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |FNDYES   |Foundations                                                                                                                                                                         |EXMPTN     |exemption        |
|FS            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |FNDNOS   |Foundations that don't solicit contributions                                                                                                                                        |EXMPTN     |exemption        |
|FM            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |MEMFRA   |Fraternal/ Membership                                                                                                                                                               |EXMPTN     |exemption        |
|GO            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |GOVMNT   |Governmental Organizations                                                                                                                                                          |EXMPTN     |exemption        |
|HS            |HOSPCON  |Notice, Oversight or Filing of Hospital Conversions         |STATUT   |Has Statute                                                                                                                                                                         |REQMNT     |requirement      |
|HO            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |HOSPIT   |Hospitals                                                                                                                                                                           |EXMPTN     |exemption        |
|JD            |DISSOLV  |Notice or Action for Dissolutions                           |JUDICI   |Judicial Dissolutions                                                                                                                                                               |REQMNT     |requirement      |
|MG            |REPORTS  |Notice, Filing or Review of Transactions                    |MERGER   |Mergers                                                                                                                                                                             |REQMNT     |requirement      |
|NS            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |NONSOL   |Non-soliciting                                                                                                                                                                      |EXMPTN     |exemption        |
|OT            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |OTHTYP   |Other                                                                                                                                                                               |EXMPTN     |exemption        |
|PT            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |PTOEDU   |Parent-Teacher Organizations                                                                                                                                                        |EXMPTN     |exemption        |
|PO            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |POLITI   |Political Orgs                                                                                                                                                                      |EXMPTN     |exemption        |
|RL            |REGILAW  |Registration Law                                            |REGIST   |Registration Law                                                                                                                                                                    |EXMPTN     |exemption        |
|RE            |BIFRGRP  |Bifurcation of charitable regulatory body                   |REGIOF   |Registration Office                                                                                                                                                                 |REQMNT     |requirement      |
|RO            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |RELIGI   |Religious Organizations                                                                                                                                                             |EXMPTN     |exemption        |
|RM            |REMEDYT  |Defined remedies                                            |BRDRMV   |Removal of Board Members                                                                                                                                                            |REMEDY     |remedy           |
|RC            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |CONGRE   |Reports to congress                                                                                                                                                                 |EXMPTN     |exemption        |
|RA            |AUDITFI  |Audits                                                      |AUDITS   |Requires Audit                                                                                                                                                                      |REQMNT     |requirement      |
|RF            |HOSPCON  |Notice, Oversight or Filing of Hospital Conversions         |FILING   |Requires Filing                                                                                                                                                                     |REQMNT     |requirement      |
|NO            |HOSPCON  |Notice, Oversight or Filing of Hospital Conversions         |OVERSI   |Requires Notice or Oversight                                                                                                                                                        |REQMNT     |requirement      |
|SA            |REPORTS  |Notice, Filing or Review of Transactions                    |ASSETS   |Sale of Assets                                                                                                                                                                      |REQMNT     |requirement      |
|SO            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |SMALLO   |Small organizations                                                                                                                                                                 |EXMPTN     |exemption        |
|VO            |ORGTYPE  |Exemptions from Registering for Specific Organization Types |VETERA   |Veterans organizations                                                                                                                                                              |EXMPTN     |exemption        |
|VD            |DISSOLV  |Notice or Action for Dissolutions                           |VOLUNT   |Voluntary Dissolutions                                                                                                                                                              |REQMNT     |requirement      |






L <- lapply( rr, function(x){ strsplit(x,"\t") |> unlist() } )
nm <- L[[1]]
nmx <- function(x){ 
  names(x) <- nm 
  return(x) }
L[[1]] <- NULL
L <- lapply( L, nmx  )

dd <- dplyr::bind_rows(L)
as.data.frame(dd)

nrow(d)
d <- merge( d, dd, by="reg_type_abbr", all.x=T, sort=F )
nrow(d)

d <- dplyr::arrange( d, state, id.state )
head(d)





# Standardize State Names

ST <- read.csv("https://raw.githubusercontent.com/jasonong/List-of-US-States/refs/heads/master/states.csv")
names(ST) <- c("state","state_abbr")

setdiff( unique( d$state ), ST$State ) 

nrow(d)
d <- merge( d, ST, by="state", all.x=T )
nrow(d)




# Standardize Statue Citation


Statutes are published in books called codes, which present laws for a particular jurisdiction arranged by subject.


Statute citations have a volume (federal) or state/municipality (local), the name of the cited code, a section, and a date:

Example: 42 U.S.C. § 7706(a) (1994).
42 = Volume that contains the statue
U.S.C. = Abbreviation for the code
7706(a) = Section of the code being cited
1994 = Year the code volume was published


- Code State
- Code Type 
- Year 
- Section1
- Section2 
- Source/Annotation 

- IA CODE (YEAR) § 602.1614 
- IA CODE (YEAR) § 602.1614 - 602.1615
- IA CODE (YEAR) § 602.1614 (Westlaw current through P.L. 116-193)


##  Local Ordinance Citations [ BB | ALWD ]
##    2-350 Examples
##
##    - Cincinnati, Ohio, Municipal Code § 302-5.
##    - Des Moines, Iowa, Municipal Code § 6.3.
## 
##  Principle 2: The core of a citation to a codified state statutory provision consists of the same basic elements in a slightly different order. Unlike citations to the U.S. Code which begin with a title number, references to most state codes lead off with the name of the state code (abbreviated):
##  
##    Element (a) - The name of code (abbreviated) followed by a space
##    - Iowa Code § 602.1614.
##    - Cal. Prob. Code § 141.
##
##    Element (b) - The number of the section or part, using the division identifiers of the jurisdiction's code (In some states major divisions of the code are designated by name rather than by number.)
##    - Iowa Code § 602.1614.
##    - Cal. Prob. Code § 141.
##
##    Element (c) - Date
##    If the provision being cited is currently in effect and has not been the subject of recent change, no date element need be included. However, if the provision being cited has, by the time of writing, been repealed or amended or if it has only recently been enacted or revised, the date of a compilation that contains the language cited should be provided in parentheses. Unless the citation's context furnishes the information, a parenthical note identifying the amending legislation and clarifying whether the citation refers to the version in effect before or after the change may be called for. The precise form this information takes will be governed by the form in which the compilation relied upon presents its "as of" date.
##    - Iowa Code § 602.1614.
##    - Iowa Code § 1606(1)(a) (2020).
##    - Iowa Code § 1606(1)(a) (2012) (prior to 2013 amendment).
##    - Cal. Prob. Code § 13100 (2020).
##    - Cal. Prob. Code § 13100 (2010)(prior to 2011 amendment).






df %>% 
    group_by(u, v) %>% 
    mutate(label = cur_group_id())


body <- d$reg_body
body[ body == "Other" ] <- "OT"
body[ body == "" ] <- "RG"
d$body <- body


table( body, useNA="ifany" )         

d$reg_type.y[ d$reg_type.y == "BIFRGRP" ]  <- "BIFURCD"
d$ID <- paste0( "ID-", d$state_abbr, "-", d$reg_type.y, "-", d$reg_rule, "-", d$body  )
head( unique( d$ID ), 25 )


d3 <- d[ d$reg_type_body != "STATE", ]
nrow(d3)
nrow(d)

d3 <- 
    d3 %>% 
    group_by( ID ) %>% 
    mutate( id3 = row_number(),
            n_statute_id=n() )

id_xxx <- str_pad( d3$id3, side="left", pad="0", width=3 )
d3$ID2 <- paste0( d3$ID, "-", id_xxx )

d3$reg_x <- ifelse( d3$notes == "", 0, 1 )

d3 <- 
    d3 %>% 
    group_by( state_abbr, reg_type.y, reg_rule, ) %>% 
    mutate( n_statute_rule=sum(reg_x) )

d3 <- 
    d3 %>% 
    group_by( state_abbr, reg_type.y ) %>% 
    mutate( n_statute_type=sum(reg_x) )


d3 <- 
    d3 %>% 
    group_by( state_abbr ) %>% 
    mutate( n_statute_state=sum(reg_x) )


write.csv( d3, "ALL-STATES-FORMATTED.CSV", row.names=F, na="" )



as.data.frame(d3) |> head()

library( stringr )


ids2 <- substr( ids, 6, 9 )

id.state2 <- paste0( "ID-", d3$state_abbr, ids2 )
head( id.state2 )

length( unique( id.state2 ) )








BIFRGRP
BIFURCD
BIFURC


