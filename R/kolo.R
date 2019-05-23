#' Kolo
#'
#' @description funkcja tworzaca obiekt jakim jest kolo na podstawie
#' odpowiednich parametrow - wspolrzednych.
#'
#' @param ymax maksymalna wartosc wspolrzednej y
#' @param ymin minimalna wartosc wspolrzednej y
#' @param xmax maksymalna wartosc wspolrzednej x
#' @param xmin minimalna wartosc wspolrzednej x
#'
#' @return obiekt o klasie "kolo"
#' @export
#'
#' @examples
#' kolo(2,5,10,13)
#'
#' kolo(10,90,20,100)

kolo = function(xmin, ymin, xmax, ymax){
  values = c(xmin, ymin, xmax, ymax)
  if (!(is.numeric(values))){
    stop("Błąd! Upewnij się, czy wszystkie argumenty są typu numerycznego")
  }
  if (!all(c(length(xmin), length(ymin), length(xmax), length(ymax)) == 1)){
    stop("Każdy z argumentów może przyjmować tylko jedną wartość")
  }
  srednica_x = values[3] - values[1]
  if (srednica_x <= 0){
    stop("Argument `xmax` musi przyjmować wartość większą niż `xmin`")
  }
  srednica_y = values[4] - values[2]
  if (srednica_y <= 0) {
    stop("Argument `ymax` musi przyjmować wartość większą niż `ymin`")
  }
  r = srednica_y / 2
  if(srednica_y != srednica_x){
    stop("Promień nie jest taki sam w innych punktach koła")
  }
  r = srednica_x / 2
  if(srednica_y != srednica_x){
    stop("Promień nie jest taki sam w innych punktach koła")
  }
  x = matrix(values, ncol = 2)
  structure(x, class = "kolo")
}
