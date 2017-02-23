#1.�ϥ�%>$²�Ƴo�q�{��
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
this_year <- as.numeric(format(Sys.Date(), '%Y'))
birth_year <- this_year - straw_hat_df$age
birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
straw_hat_df$birth_date <- as.Date(birth_date_chr)

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date <- Sys.Date() %>%
  format(format= '%Y') %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(straw_hat_df$birthday, sep = "-") %>%
  as.Date()

#2.�p�� BMI �N bmi �ܼƥ[�J data frame
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

heights_and_weights %>%
  mutate(bmi = weights / ((heights / 100)^2)) %>%
  View()