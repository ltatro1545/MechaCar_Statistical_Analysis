####### Deliverable 1 #######

library(dplyr)

# read in mechacar csv
mechacar <- read.csv(file='Data/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# perform multiple linear reg
mecha_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)

# get summary info
summary(mecha_reg)

####### Deliverable 2 ########

# read in suspension coil csv
suspension_coil <- read.csv(file='Data/Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# create summary table of PSI column
total_summary <- suspension_coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_dev=sd(PSI))

# summary table of PSI column by lot number
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_dev=sd(PSI))

####### Deliverable 3 #######

# perform one sample t-test
t.test(suspension_coil$PSI, mu=1500)
# Ho = mu = 1500
# Ha = mu =/ 1500
# p-value = 0.06028.. fail to reject Ho if 95% confidence

# perform t-test by lot number
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
# p-value = 1.. fail to reject Ho

t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
# p-value = 0.6072.. fail to reject Ho

t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
# p-value = 0.04168.. *reject* Ho
