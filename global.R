#global file
library(readr)
badip <- read_delim("~/R/spam_attack_map/badip.txt", 
                    ";", escape_double = FALSE, col_names = FALSE, 
                    col_types = cols(X1 = col_date(format = "%Y-%m-%d"), 
                                     X2 = col_time(format = "%H:%M:%S")), 
                    trim_ws = TRUE)

