library(dplyr)

MechaCar_Data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Data)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Data))

SuspensionCoil_Data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- SuspensionCoil_Data %>% summarize(Mean = mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

lot_summary <- SuspensionCoil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

t.test(SuspensionCoil_Data$PSI, mu=1500)

Lot1 <- SuspensionCoil_Data %>% filter(Manufacturing_Lot=='Lot1')
t.test(Lot1$PSI, mu=1500)

Lot2 <- SuspensionCoil_Data %>% filter(Manufacturing_Lot=='Lot2')
t.test(Lot2$PSI, mu=1500)

Lot3 <- SuspensionCoil_Data %>% filter(Manufacturing_Lot=='Lot3')
t.test(Lot3$PSI, mu=1500)

