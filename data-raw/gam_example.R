library(mgcv)

set.seed(123)

var.fun <- function(x){x^2}

x <- runif(100)
y <- x + rnorm(100, 0, var.fun(x))

mod.gam.1 <- gam(formula = list(y ~ x,
                                ~ var.fun(x)),
                 family = gaulss(link = list("log", "logb")))

mod.gam.2 <- gam(formula = list(y ~ x,
                                ~ I(x^2)),
                 family = gaulss(link = list("log", "logb")))


save(mod.gam.1, var.fun, mod.gam.2,
     file = "~/R_packages/gam_issue/gamvarfun/R/sysdata.rda")
