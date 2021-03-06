format.NA <- function(x, digits = 2, text.NA = "--", big.mark = "") {
  
  warning("Use of function format.NA() from R package meta is deprecated; use instead formatN().")
  
  outdec <- options()$OutDec
  
  res <- format(ifelse(is.na(x),
                       text.NA,
                       formatC(x, decimal.mark = outdec,
                               format = "f", digits = digits,
                               big.mark = big.mark)
                       )
                )
  ##
  res <-  rmSpace(res, end = TRUE)
  ##
  res
}
