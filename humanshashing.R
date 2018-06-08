keys = as.numeric(format(2^128,scientific = FALSE))
humans = 7600000000
humanshashrate = 7600000000

keyspersecond = humans * humanshashrate

seconds = keys / keyspersecond
minutes = seconds / 60
hours = minutes / 60
days = hours / 24
years = days / 365
millionyears = years / 1000000

print(format(millionyears,scientific = FALSE))