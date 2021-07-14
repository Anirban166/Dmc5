#' Function to obtain the number of mods that exist on nexusmods for a particular game
#'
#' @title Modules counter
#'
#' @param url A nexusmods game-page url
#'
#' @return A number specifying the number of mods that exist for the target game
#'
#' @export
#' @import rvest
#' @import stringr
#' @examples
#' modCount("https://www.nexusmods.com/devilmaycry5/mods/")

modCount <- function(url) {
  read_html(url) %>%
    html_element(css = ".refine-info") %>%
      html_text() %>%
        str_extract("\\d+") %>%
          as.numeric()
}
