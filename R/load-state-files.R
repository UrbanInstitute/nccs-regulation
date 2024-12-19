library( dplyr )

wd <- "C:/Users/jdlec/Dropbox (Personal)/00 - URBAN/legal-compendium/LC_Text_Data_Merge/legal-compendium"
setwd( wd )




files <- (dir())[-1]

files <- 
c("alabama.xlsx", "alaska.xlsx", "arizona.xlsx", 
"arkansas.xlsx", "california.xlsx", "colorado.xlsx", "connecticut.xlsx", 
"delaware.xlsx", "district-of-columbia.xlsx", "florida.xlsx", 
"georgia.xlsx", "hawaii.xlsx", "idaho.xlsx", "illinois.xlsx", 
"indiana.xlsx", "iowa.xlsx", "kansas.xlsx", "kentucky.xlsx", 
"louisiana.xlsx", "maine.xlsx", "maryland.xlsx", 
"massachusetts.xlsx", "michigan.xlsx", "minnesota.xlsx", "mississippi.xlsx", 
"missouri.xlsx", "montana.xlsx", "nebraska.xlsx", "nevada.xlsx", 
"new-hampshire.xlsx", "new-jersey.xlsx", "new-mexico.xlsx", "new-york.xlsx", 
"north-carolina.xlsx", "north dakota.xlsx", "ohio.xlsx", "oklahoma.xlsx", 
"oregon.xlsx", "pennsylvania.xlsx", "rhode-island.xlsx", "south-carolina.xlsx", 
"south-dakota.xlsx", "tennessee.xlsx", "texas.xlsx", "utah.xlsx", 
"vermont.xlsx", "virginia.xlsx", "washington.xlsx", "west-virginia.xlsx", 
"wisconsin.xlsx", "wyoming.xlsx")
length(files)


f <- function( x ){
  d <- readxl::read_excel( x, col_types="text" )
  return(d)
}


L <- purrr::map( files, f )

dd <- dplyr::bind_rows( L )

dd <- as.data.frame(dd)


write.csv( dd, "ALL-STATES.CSV", row.names=F, na="" )



c("Unnamed: 0.1", "Unnamed: 0", "STATE", "Regulatory Type", "Regulatory Type Full", 
"Regulatory Body", "Regulation Indicator", "Notes", "Year legislation originally enacted", 
"Year legislation changed", "Type of Change", "Section Code", 
"State", "division", "section", "text", "ID-State", "ID", "Regulatory Type Abbr", 
"section original", "0", "1", "Section Code Re", "section1", 
"first_element")

d <- read.csv( "ALL-STATES.CSV" )

rt.labels <- d[ c("reg_type_abbr","reg_type") ] |> unique()
rt.labels |> knitr::kable()

tt <- table( d$reg_type_abbr ) |> as.data.frame()

tt <- merge( tt, rt.labels, by.x="Var1", by.y="reg_type_abbr" )



dput(names(d))

c("id1", "id2", "state", "reg_type", "reg_body", "reg_type_body", 
"reg_indicator", "notes", "year_enacted", "year_changed", "type_of_change", 
"statute_code", "state.1", "division", "section", "text", "id.state", 
"id", "reg_type_abbr", "section_original", "v0", "v1", "section_code_re", 
"section1", "first_element")




|V1               |V2                                  |
|:----------------|:-----------------------------------|
|id1              |Unnamed: 0.1                        |
|id2              |Unnamed: 0                          |
|state            |STATE                               |
|reg_type         |Regulatory Type                     |
|reg_body         |Regulatory Type Full                |
|reg_type_body    |Regulatory Body                     |
|reg_indicator    |Regulation Indicator                |
|notes            |Notes                               |
|year_enacted     |Year legislation originally enacted |
|year_changed     |Year legislation changed            |
|type_of_change   |Type of Change                      |
|statute_code     |Section Code                        |
|state.1          |State                               |
|division         |division                            |
|section          |section                             |
|text             |text                                |
|id.state         |ID-State                            |
|id               |ID                                  |
|reg_type_abbr    |Regulatory Type Abbr                |
|section_original |section original                    |
|v0               |0                                   |
|v1               |1                                   |
|section_code_re  |Section Code Re                     |
|section1         |section1                            |
|first_element    |first_element                       |




