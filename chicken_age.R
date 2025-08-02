library("lubridate")
tz <- "America/Los_Angeles"
birthdate <- ymd("2025-3-15", tz = tz)
age <- as.numeric(difftime(now(tz), birthdate, units = "weeks"))
weeks <- as.integer(floor(age))
days <- as.integer(7 * (age - weeks))
front_str <- sprintf("Chickens are %d weeks ", weeks)
pluralizer <- ifelse(days > 1, "s", "")
mid_str <- ifelse(days > 0, sprintf("and %d day%s ", days, pluralizer), "")
end_str <- "old."
print(paste0(front_str, mid_str, end_str))
