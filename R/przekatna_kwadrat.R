#' Przekatna kwadratu
#'
#' @description funkcja sluzacza do obliczenia dlugosci przekatnej kwadratu.
#' Funkcja dziala tylko dla obiektow o klasie "kwadrat".
#'
#' @param x zbudowany wczesniej obiekt o klasie "kwadrat" przy uzyciu
#' funckji kwadrat.
#'
#' @return wartosc numeryczna - dlugosc przekatnej obiektu o klasie "kwadrat".
#' @export
#'
#' @examples
#' przekatna_kwadrat(kwadrat(1, 1, 4, 4))
#'
#' kwadracik = kwadrat(4, 5, 6, 7)
#' przekatna_kwadrat(kwadracik)
#'
#' d = kwadrat(log10(10), 2, log10(100), 3)
#' przekatna_kwadrat(d)

przekatna_kwadrat = function(x){
  a = x[1, 2] - x[1, 1]
  a * sqrt(2)
}
