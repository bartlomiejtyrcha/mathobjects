#' Trojkat
#'
#' @description funkcja tworzaca obiekt jakim jest trojkat na podstawie
#' odpowiednich parametrow - wspolrzednych.
#'
#' @param x1 wspolrzedna pierwszego punktu na osi x
#' @param x2 wspolrzedna drugiego punktu na osi x
#' @param x3 wspolrzedna trzeciego punktu na osi x
#' @param y1 wspolrzedna pierwszego punktu na osi y
#' @param y2 wspolrzedna drugiego punktu na osi y
#' @param y3 wspolrzedna trzeciego punktu na osi y
#'
#' @return obiekt o klasie "trojkat"
#' @export
#'
#' @examples
#' trojkat(log(10), 2, 3, 100, 50, 12)
#'
#' super_trojkat = trojkat(1, 4, 12, 18, 1, 7)
#'
#' trojkat(log10(10), pi, 12^2, sqrt(7), 5, 94)

trojkat = function(x1, x2, x3, y1, y2, y3){
  values = c(x1, x2, x3, y1, y2, y3)
  if (!(is.numeric(values))){
    stop("Błąd! Upewnij się, czy wszystkie argumenty są typu numerycznego")
  }
  if (!all(c(length(x1), length(x2), length(x3),
             length(y1), length(y2), length(y3)) == 1)){
    stop("Każdy z argumentów może przyjmować tylko jedną wartość")
  }
  if (values[c(1,4)] == values[c(2,5)] || values[c(1,4)] == values[c(3,6)]
      || values[c(2,5)] == values[c(3,6)]){
    stop("Punkty muszą być w różnych miejscach.")
  }
  x = matrix(values, ncol = 2, dimnames = list(c("a", "b", "c"), c("x","y")))
  structure(x, class = "trojkat")
}
