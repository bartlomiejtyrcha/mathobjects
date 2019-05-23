#' Obwod trojkata
#'
#' @description funkcja sluzacza do obliczenia obwodu trojkata.
#' Funkcja dziala tylko dla obiektow o klasie "trojkat".
#'
#' @param trojkat zbudowany wczesniej obiekt o klasie "trojkat" przy uzyciu
#' funkcji kwadrat.
#'
#' @return wartosc numeryczna - obwod obiektu o klasie "trojkat".
#' @export
#'
#' @examples
#' obwod_trojkat(trojkat(pi, pi + 1, 13, 14, 20, 40))
#'
#' ob = trojkat(1, 2, 3, 1, 2, 3)
#' obwod_trojkat(ob)
#'

obwod_trojkat = function(trojkat){
  b1 = sqrt(((trojkat['a','x']-trojkat['b','x'])^2)+((trojkat['a','y']-trojkat['b', 'y'])^2))
  b2 = sqrt(((trojkat['b','x']-trojkat['c','x'])^2)+((trojkat['b','y']-trojkat['c', 'y'])^2))
  b3 = sqrt(((trojkat['a','x']-trojkat['c','x'])^2)+((trojkat['a','y']-trojkat['c', 'y'])^2))
  print(b1+b2+b3)
}
