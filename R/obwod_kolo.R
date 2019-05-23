#' Obwod kola
#'
#' @description funkcja sluzacza do obliczenia obwodu kola.
#' Funkcja dziala tylko dla obiektow o klasie "kolo".
#'
#' @param kolo zbudowany wczesniej obiekt o klasie "kolo" przy uzyciu
#' funkcji kolo.
#'
#' @return wartosc numeryczna - obwod obiektu o klasie "kolo".
#' @export
#'
#' @examples
#' obwod_kolo(kolo(10, 90, 20, 100))
#'
#' ob = kolo(pi, 300, pi+10, 310)
#' obwod_kolo(ob)

obwod_kolo = function(kolo){
  r = (kolo[1, 2] - kolo[1, 1]) / 2
  wynik = 2*pi*r
  wynik
}
ob = kolo(pi, 300, pi+10, 310)
