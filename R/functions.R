#' Prediction function 1
#'
#' @description Predicts from a GAM with the self-written variance function
#'
#' @export
pred.fun.1 <- function(x){
  predict(mod.gam.1,
          newdata = data.frame("x" = x))
}

#' Prediction function 2
#'
#' @description Predicts from a GAM with a 'direct' variance function
#'
#' @export
pred.fun.2 <- function(x){
  predict(mod.gam.2,
          newdata = data.frame("x" = x))
}

