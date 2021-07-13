library(rvest)
library(stringr)
modCount <- function(url) {
  read_html(url) %>%
    html_element(css = ".refine-info") %>%
      html_text() %>% 
        str_extract("\\d+") %>% 
          as.numeric()
}
modCount("https://www.nexusmods.com/devilmaycry5/mods/")
