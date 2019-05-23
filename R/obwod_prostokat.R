#' Obwod prostokata
#'
#' @description funkcja sluzacza do obliczenia obowdu prostokata.
#' Funkcja dziala tylko dla obiektow o klasie "prostokat".
#'
#' @param x zbudowany wczesniej obiekt o klasie "prostokat" przy uzyciu
#' funckji prostokat.
#'
#' @return wartosc numeryczna - obwod obiektu o klasie "prostokat".
#' @export
#'
#' @examples
#' obwod_prostokat(prostokat(133, 130, 138, 135))
#'
#' z = prostokat(0, 0, 6, 7)
#' obwod_prostokat(z)
#'
#' m = prostokat(log10(10), 1, 2, pi)
#' obwod_prostokat(m)


obwod_prostokat = function(x){
  a = x[1, 2] - x[1, 1]
  b = x[2, 2] - x[2, 1]
  a + a + b + b
}
