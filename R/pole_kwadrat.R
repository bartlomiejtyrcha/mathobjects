#' Pole powierzchni kwadratu
#'
#' @description funkcja sluzacza do obliczenia pola powierzchni kwadratu.
#' Funkcja dziala tylko dla obiektow o klasie "kwadrat".
#'
#' @param x zbudowany wczesniej obiekt o klasie "kwadrat" przy uzyciu
#' funckji kwadrat.
#'
#' @return wartosc numeryczna - pole powierzchni obiektu o klasie "kwadrat".
#' @export
#'
#' @examples
#' pole_powierzchni_kwadrat(kwadrat(1, 1, 2, 2))
#'
#' f = kwadrat(0, 0, 6, 6)
#' pole_powierzchni_kwadrat(f)
#'
#' kwadrat_tomek = kwadrat(pi, pi + 1, 13, 14)
#' pole_powierzchni_kwadrat(kwadrat_tomek)

pole_powierzchni_kwadrat = function(x){
  a = x[1, 2] - x[1, 1]
  a ^ 2
}
