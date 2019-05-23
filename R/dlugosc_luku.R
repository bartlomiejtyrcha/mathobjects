#' Dlugosc luku kola
#'
#' @description funkcja sluzacza do obliczenia dlugosci luku w kole.
#' Funkcja dziala tylko dla obiektow o klasie "kolo".
#'
#' @param kolo zbudowany wczesniej obiekt o klasie "kolo" przy uzyciu
#' funkcji kolo.
#' @param a wartosc kata wycinka kola w stopniach
#'
#'
#' @return wartosc numeryczna - dlugosc luku obiektu o klasie "kolo".
#' @export
#'
#' @examples
#' dlugosc_luku(kolo(1, 9, 2, 10), 4)
#'
#' fajne_kolo = kolo(pi, 300, pi+10, 310)
#' dlugosc_luku(fajne_kolo, 85)
#'
#' dlugosc_luku(kolo(1, 9, 2, 10), 180)
#' dlugosc_luku(kolo(150, 150, 300, 300), 1)

dlugosc_luku = function(kolo, a){
  r = (kolo[1, 2] - kolo[1, 1]) / 2
  if(is.numeric(a) == FALSE){
    stop("Argument 'a' musi być numeryczny")
  }
  if(a > 360){
    stop("Błąd! Wartość kąta nie może być większa niż 360!")
  }
  if(a < 0){
    stop("Błąd! Wartość kąta nie może być mniejsza niż 0!")
  }
  wynik = (a/360)*2*pi*r
  wynik
}
