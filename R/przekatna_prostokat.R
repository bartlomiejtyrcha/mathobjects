#' Przekatna prostokata
#'
#' @description funkcja sluzacza do obliczenia dlugosci przekatnej prostokata.
#' Funkcja dziala tylko dla obiektow o klasie "prostokat".
#'
#' @param x zbudowany wczesniej obiekt o klasie "prostokat" przy uzyciu
#' funckji prostokat.
#'
#' @return wartosc numeryczna - dlugosc przekatnej obiektu o klasie "prostokat".
#' @export
#'
#' @examples
#' przekatna_prostokat(prostokat(100, 101, 102, 103))
#'
#' z = prostokat(4, 5, 6, 6)
#' przekatna_prostokat(z)
#'
#' m = prostokat(log10(100), 1, 80, 2)
#' przekatna_prostokat(m)
#'
przekatna_prostokat = function(x){
  a = x[1, 2] - x[1, 1]
  b = x[2, 2] - x[2, 1]
  sqrt((a ^ 2) + (b ^ 2))
}
