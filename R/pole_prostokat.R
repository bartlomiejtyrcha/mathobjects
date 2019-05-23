#' Pole powierzchni prostokata
#'
#' @description funkcja sluzacza do obliczenia pola powierzchni prostokata.
#' Funkcja dziala tylko dla obiektow o klasie "prostokat".
#'
#' @param x zbudowany wczesniej obiekt o klasie "prostokat" przy uzyciu
#' funckji prostokat.
#'
#' @return wartosc numeryczna - pole powierzchni obiektu o klasie "prostokat".
#' @export
#'
#' @examples
#' pole_powierzchni_prostokat(prostokat(2, 3, 6, 6))
#'
#' z = prostokat(0, 0, 12, 13)
#' pole_powierzchni_prostokat(z)
#'
#' m = prostokat(log10(10), pi, 13, 204)
#' pole_powierzchni_prostokat(m)

pole_powierzchni_prostokat = function(x){
  a = x[1, 2] - x[1, 1]
  b = x[2, 2] - x[2, 1]
  a * b
}
