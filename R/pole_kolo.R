#' Pole powierzchni kola
#'
#' @description funkcja sluzacza do obliczenia pola powierzchni kola.
#' Funkcja dziala tylko dla obiektow o klasie "kolo".
#'
#' @param x zbudowany wczesniej obiekt o klasie "kolo" przy uzyciu
#' funkcji kolo.
#'
#' @return wartosc numeryczna - pole powierzchni obiektu o klasie "kolo".
#' @export
#'
#' @examples
#' pole_powierzchni_kolo(kolo(1, 9, 2, 10))
#'
#' fajne_kolo = kolo(pi, 300, pi+10, 310)
#' pole_powierzchni_kolo(fajne_kolo)

pole_powierzchni_kolo = function(x){
  r = (x[1, 2] - x[1, 1]) / 2
  wynik = pi * (r ^ 2)
  wynik
}
