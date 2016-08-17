# Mode function, see http://stackoverflow.com/a/8189441/715870
ps.mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

ps.parsePrice <- function(price) {
  return(ps.removeDollarSigns(ps.removeCommas(price)))
}

ps.removeDollarSigns <- function(price) {
  return(sub("\\$", "", price))
}

ps.removeCommas <- function(string) {
  return(gsub(",", "", string))
}