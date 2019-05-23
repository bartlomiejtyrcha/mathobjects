#' Prostokat
#'
#' @description funkcja tworzaca obiekt jakim jest prostokat na podstawie
#' odpowiednich parametrow - wspolrzednych.
#'
#' @param xmin najmniejsza wartosc polozenia na osi x
#' @param xmax najwieksza wartosc polozenia na osi x
#' @param ymin najmniejsza wartosc polozenia na osi y
#' @param ymax najwieksza wartosc polozenia na osi y
#'
#' @return obiekt o klasie "prostokat"
#' @export
#'
#' @examples
#' prostokat(2, 3, 6, 6)
#'
#' z = prostokat(1, 4, 12, 18)
#'
#' prostokat(log10(10), pi, 144, 192)

prostokat = function(xmin, ymin, xmax, ymax){
  values = c(xmin, ymin, xmax, ymax)
  if (!(is.numeric(values))){
    stop("Błąd! Upewnij się, czy wszystkie argumenty są typu numerycznego")
  }
  if (!all(c(length(xmin), length(ymin), length(xmax), length(ymax)) == 1)){
    stop("Każdy z argumentów może przyjmować tylko jedną wartość")
  }
  x_range = values[3] - values[1]
  if (x_range <= 0){
    stop("`xmax` musi przyjmować wartość większą niż `xmin`")
  }
  y_range = values[4] - values[2]
  if (y_range <= 0) {
    stop("`ymax` musi przyjmować wartość większą niż `ymin`")
  }
  x = matrix(values, ncol = 2)
  structure(x, class = "prostokat")
}
