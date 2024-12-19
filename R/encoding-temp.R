invalid_utf8_ <- function(x){

  !is.na(x) & is.na(iconv(x, "UTF-8", "UTF-8"))

}

detect_invalid_utf8 <- function(string, seperator){

  stringSplit <- unlist(strsplit(string, seperator))

  invalidIndex <- unlist(lapply(stringSplit, invalid_utf8_))

  data.frame(
    word = stringSplit[invalidIndex],
    stringIndex = which(invalidIndex == TRUE)
  )

}


stringi::stri_unescape_unicode(x)

stringi::stri_unescape_unicode( "\\\\\\u009d" )

stri_unescape_unicode( "\\u009D" )

\u009d

detect_invalid_utf8( x, " " )


Encoding(x) <- 'latin1'
stri_trans_general( x, 'latin-ascii')



####################################################

aa <- data.table::fread( "alaska.csv"  ) # encoding = "UTF-8"

aa$Notes |> textclean::replace_non_ascii()



gg <- readxl::read_excel( "georgia.xlsx", col_types="text" ) 


U+00A7


zzz <- "Alaska Stat. Ann. § 13.36.076; Alaska Stat. Ann. § 44.23.020"
gsub( "[\u00a7]", "_SS_", zzz, perl = TRUE )



################################################################

repl <-
c("â‚¬", "", "â€š", "Æ’", "â€ž", "â€¦", "â€", 
"â€¡", "Ë†", "â€°", "Å", "â€¹", "Å’", "", 
"Å½", "", "", "â€˜", "â€™", "â€œ", "â€", "â€¢", 
"â€“", "â€”", "Ëœ", "â„¢", "Å¡", "â€º", 
"Å“", "", "Å¾", "Å¸", "Â", "Â¡", "Â¢", "Â£", "Â¤", 
"Â¥", "Â¦", "Â§", "Â¨", "Â©", "Âª", "Â«", "Â¬", 
"Â­", "Â®", "Â¯", "Â°", "Â±", "Â²", "Â³", "Â´", 
"Âµ", "Â¶", "Â·", "Â¸", "Â¹", "Âº", "Â»", "Â¼", 
"Â½", "Â¾", "Â¿", "Ã€", "Ã", "Ã‚", "Ãƒ", "Ã„", 
"Ã…", "Ã†", "Ã‡", "Ãˆ", "Ã‰", "ÃŠ", "Ã‹", 
"ÃŒ", "Ã", "ÃŽ", "Ã", "Ã", "Ã‘", "Ã’", "Ã“", 
"Ã”", "Ã•", "Ã–", "Ã—", "Ã˜", "Ã™", "Ãš", 
"Ã›", "Ãœ", "Ã", "Ãž", "ÃŸ", "Ã", "Ã¡", "Ã¢", 
"Ã£", "Ã¤", "Ã¥", "Ã¦", "Ã§", "Ã¨", "Ã©", "Ãª", 
"Ã«", "Ã¬", "Ã­", "Ã®", "Ã¯", "Ã°", "Ã±", "Ã²", 
"Ã³", "Ã´", "Ãµ", "Ã¶", "Ã·", "Ã¸", "Ã¹", "Ãº", 
"Ã»", "Ã¼", "Ã½", "Ã¾", "Ã¿")

with <-
c("€", "", "‚", "ƒ", "„", "…", "†", "‡", "ˆ", "‰", 
"Š", "‹", "Œ", "", "Ž", "", "", "‘", "’", "“", "”", 
"•", "–", "—", "˜", "™", "š", "›", "œ", "", "ž", 
"Ÿ", "", "¡", "¢", "£", "¤", "¥", "¦", "§", "¨", "©", 
"ª", "«", "¬", "­", "®", "¯", "°", "±", "²", "³", "´", 
"µ", "¶", "·", "¸", "¹", "º", "»", "¼", "½", "¾", "¿", 
"À", "Á", "Â", "Ã", "Ä", "Å", "Æ", "Ç", "È", "É", "Ê", 
"Ë", "Ì", "Í", "Î", "Ï", "Ð", "Ñ", "Ò", "Ó", "Ô", "Õ", 
"Ö", "×", "Ø", "Ù", "Ú", "Û", "Ü", "Ý", "Þ", "ß", "à", 
"á", "â", "ã", "ä", "å", "æ", "ç", "è", "é", "ê", "ë", 
"ì", "í", "î", "ï", "ð", "ñ", "ò", "ó", "ô", "õ", "ö", 
"÷", "ø", "ù", "ú", "û", "ü", "ý", "þ", "ÿ")

new.order <- nchar(repl) |> order( decreasing=T)
repl <- repl[ new.order ]
with <- with[ new.order ]


fx <- function( x, y, txt ){
  txt <- gsub( x, y, txt )
  return(txt)
}

txt <- x
for( i in 1:length(repl) )
{
  txt <- gsub( repl[i], with[i], txt )
}

txt


g <- readxl::read_excel( "georgia.xlsx", col_types="text" ) 


replacements <- list(
    "â‚¬" = "€", "â€š" = "‚", "â€ž" = "„", "â€¦" = "…", "Ë†"  = "ˆ",
    "â€¹" = "‹", "â€˜" = "‘", "â€™" = "’", "â€œ" = "“", "â€"  = "”",
    "â€¢" = "•", "â€“" = "–", "â€”" = "—", "Ëœ"  = "˜", "â„¢" = "™",
    "â€º" = "›", "Å“"  = "œ", "Å’"  = "Œ", "Å¾"  = "ž", "Å¸"  = "Ÿ",
    "Å¡"  = "š", "Å½"  = "Ž", "Â¡"  = "¡", "Â¢"  = "¢", "Â£"  = "£",
    "Â¤"  = "¤", "Â¥"  = "¥", "Â¦"  = "¦", "Â§"  = "§", "Â¨"  = "¨",
    "Â©"  = "©", "Âª"  = "ª", "Â«"  = "«", "Â¬"  = "¬", "Â®"  = "®",
    "Â¯"  = "¯", "Â°"  = "°", "Â±"  = "±", "Â²"  = "²", "Â³"  = "³",
    "Â´"  = "´", "Âµ"  = "µ", "Â¶"  = "¶", "Â·"  = "·", "Â¸"  = "¸",
    "Â¹"  = "¹", "Âº"  = "º", "Â»"  = "»", "Â¼"  = "¼", "Â½"  = "½",
    "Â¾"  = "¾", "Â¿"  = "¿", "Ã€"  = "À", "Ã‚"  = "Â", "Ãƒ"  = "Ã",
    "Ã„"  = "Ä", "Ã…"  = "Å", "Ã†"  = "Æ", "Ã‡"  = "Ç", "Ãˆ"  = "È",
    "Ã‰"  = "É", "ÃŠ"  = "Ê", "Ã‹"  = "Ë", "ÃŒ"  = "Ì", "ÃŽ"  = "Î",
    "Ã‘"  = "Ñ", "Ã’"  = "Ò", "Ã“"  = "Ó", "Ã”"  = "Ô", "Ã•"  = "Õ",
    "Ã–"  = "Ö", "Ã—"  = "×", "Ã˜"  = "Ø", "Ã™"  = "Ù", "Ãš"  = "Ú",
    "Ã›"  = "Û", "Ãœ"  = "Ü", "Ãž"  = "Þ", "ÃŸ"  = "ß", "Ã¡"  = "á",
    "Ã¢"  = "â", "Ã£"  = "ã", "Ã¤"  = "ä", "Ã¥"  = "å", "Ã¦"  = "æ",
    "Ã§"  = "ç", "Ã¨"  = "è", "Ã©"  = "é", "Ãª"  = "ê", "Ã«"  = "ë",
    "Ã¬"  = "ì", "Ã­"  = "í", "Ã®"  = "î", "Ã¯"  = "ï", "Ã°"  = "ð",
    "Ã±"  = "ñ", "Ã²"  = "ò", "Ã³"  = "ó", "Ã´"  = "ô", "Ãµ"  = "õ",
    "Ã¶"  = "ö", "Ã·"  = "÷", "Ã¸"  = "ø", "Ã¹"  = "ù", "Ãº"  = "ú",
    "Ã»"  = "û", "Ã¼"  = "ü", "Ã½"  = "ý", "Ã¾"  = "þ", "Ã¿"  = "ÿ"
  )

repair_encoding <- function( txt ) {
  if (is.null( txt ) ){ return( txt ) }
  for( key in names(replacements) ) 
  {
    txt <- gsub( key, replacements[[key]], txt, fixed=TRUE )
    txt <- iconv( txt, from="UTF-8", to="latin1" )
  }
  return( txt )
}



x2 <- repair(x)
x2
all(stri_enc_isutf8(x2))


iconv( x2, from = 'ASCII//TRANSLIT', to = 'UTF-8'  )
iconv( x2, from="UTF-8", to="latin1" )

enc2utf8(x2)

rlang::chr_unserialise_unicode( x2 )

stringi::stri_enc_toutf8( x2 )

textclean::replace_non_ascii( x )
textclean::replace_non_ascii( x2 )

textclean::replace_curly_quote( x2 )


gsub( "[\u0080-\uFFFF]", "", x, perl = TRUE )


gsub( "\u[0-9a-fA-F]{4}", "", x, perl = TRUE )

text <- x2

# Regular expression to find Unicode sequences (\u followed by 4 hex digits)
unicode_matches <- gregexpr("\\u[0-9a-fA-F]{4}", text, perl = TRUE)

# Extract matches
matched_unicode <- regmatches(text, unicode_matches)

# Print matches
print(matched_unicode)


################################################



d <- readr::read_csv("BMF_UNIFIED_V1.2.csv")


d[ d$EIN2 == "EIN-91-1048245" , ] |> as.data.frame()



x <-
"(4) â€œpaid solicitorâ€ means a person who is required to be registered under AS 45.68.010(b), and includes a person who is employed, procured, or engaged, directly or indirectly, by a paid solicitor to solicit, if the person is compensated; â€œpaid solicitorâ€ does not include
          (A) an attorney licensed to practice law in this or another state, an investment counselor, an insurance company, or a supervised financial institution, to the extent the attorney, investment counselor, insurance company, or supervised financial institution advises the person on whether to make a contribution; or

          (B) a bona fide salaried officer, employee, or volunteer of a charitable organization;"

iconv( x, from = 'UTF-8', to = 'ASCII//TRANSLIT' )
iconv( x, "ISO_8599", "UTF-8")

iconv( x, from="UTF-8", to="latin1" )


library( stringi )

all(stri_enc_isutf8(x))

package(data.table)
df <- your_data_frame_with_mixed_utf8_or_latin1_and_unknown_str_fields
fwrite(df,"temp.csv")
df <- fread("temp.csv",encoding = "Latin-1")


wd <- "C:/Users/jdlec/Dropbox (Personal)/00 - URBAN/legal-compendium/LC_Text_Data_Merge/legal-compendium"
setwd( wd )

library( data.table )

df <- fread( "ALL-STATES-FORMATTED-V99.CSV", encoding = "UTF-8" )

write.csv( df, "TEST-UTF8.CSV", row.names=F, na="" )


stringr::str_extract_all( x2, "///u[:alnum:]{4}", simplify = FALSE )

library(stringi)
stri_enc_isascii( x2 )
stri_enc_toascii( x2 ) |> stri_enc_toutf8( x2 )

tools::showNonASCII( x )

iconv( x2, "UTF-8", "ASCII", sub="?" )

gsub( "\\u[[:alnum:]{4}]", "", x2 )

gsub( "o", "a", "god" )

textclean::replace_non_ascii( x2 )

iconv( x2, from="UTF-8", to="latin1" )

Encoding(x) <- 'latin1'
stringi::stri_trans_general( x, 'Latin-ASCII' )




fix_double_mojibake <- function(text) {
  # First pass: decode from UTF-8 bytes (fixing mojibake characters)
  fixed_text <- iconv(text, from = "latin1", to = "UTF-8", sub = "byte")
  
  # Second pass: handle Unicode characters (if any) properly
  fixed_text <- stringi::stri_trans_general(fixed_text, "latin-ascii")
  
  return(fixed_text)
}

x1 <- "(4) â€œpaid solicitorâ€\u009d means a person"

fix_double_mojibake(x1)



