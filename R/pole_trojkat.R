#' Pole powierzchni trojkata
#'
#' @description funkcja sluzacza do obliczenia pola powierzchni trojkata
#' rownobocznego i rownoramiennego.
#' Funkcja dziala tylko dla obiektow o klasie "trojkat".
#'
#' @param x zbudowany wczesniej obiekt o klasie "trojkat" przy uzyciu
#' funkcji trojkat.
#'
#' @return wartosc numeryczna - pole powierzchni obiektu o klasie "trojkat".
#' @export
#'
#' @examples
#' pole_powierzchni_trojkat(trojkat(3, 0, 1, 6, 7, 5))
#'
#' xc = trojkat(3, 0, 1, 6, 7, 5)
#' pole_powierzchni_trojkat(xc)
#'

pole_powierzchni_trojkat = function(x){
  b1 = sqrt(((x['a','x']-x['b','x'])^2)+((x['a','y']-x['b', 'y'])^2))
  b2 = sqrt(((x['b','x']-x['c','x'])^2)+((x['b','y']-x['c', 'y'])^2))
  b3 = sqrt(((x['a','x']-x['c','x'])^2)+((x['a','y']-x['c', 'y'])^2))
  boki = c(b1, b2, b3)
  boki
  #rownoboczny
  if(boki[1] == boki[2] && boki[2] == boki[3] && boki[1] == boki[3]){
    pole = ((((boki[1])^2)*sqrt(3))/4)

  }
  #rownoramienny
  if(boki[1] == boki[2] && boki[1] != boki[3] && boki[2] != boki[3]){
    h = sqrt((boki[3]^2) - (((1/2)*boki[1])^2))
    pole = ((boki[3]*h)/2)

  }
  if(boki[3] == boki[2] && boki[1] != boki[3] && boki[2] != boki[1]){
    h = sqrt((boki[1]^2) - (((1/2)*boki[3])^2))
    pole = ((boki[1]*h)/2)

  }
  if(boki[1] == boki[3] && boki[2] != boki[3] && boki[2] != boki[1]){
    h = sqrt((boki[1]^2) - (((1/2)*boki[2])^2))
    pole = ((boki[2]*h)/2)
    }
  pole
}
