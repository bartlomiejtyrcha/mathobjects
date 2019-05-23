#' Obwod kwadratu
#'
#' @description funkcja sluzacza do obliczenia obowdu kwadratu.
#' Funkcja dziala tylko dla obiektow o klasie "kwadrat".
#'
#' @param kwadrat zbudowany wczesniej obiekt o klasie "kwadrat" przy uzyciu
#' funckji kwadrat.
#'
#' @return wartosc numeryczna - obwod obiektu o klasie "kwadrat".
#' @export
#'
#' @examples
#' obwod_kwadrat(kwadrat(7, 8, 9, 10))
#'
#' z = kwadrat(1, 1, 2, 2)
#' obwod_kwadrat(z)
#'
#' fajny_kwadrat = kwadrat(0, 3, log10(10), log10(10000))
#' obwod_kwadrat(fajny_kwadrat)

obwod_kwadrat = function(kwadrat){
  a = kwadrat[1, 2] - kwadrat[1, 1]
  a * 4
}
