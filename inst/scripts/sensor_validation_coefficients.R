library(seastar)
library(asyr)
library(dplyr)
library(ggplot2)
library(ggthemes)
setwd(choose.dir())

A<- list.files(path=getwd(),pattern='asyr') %>%
  lapply(.,XML::xmlTreeParse,useInternalNodes=T) %>%
  lapply(.,asyr::process) %>%
  lapply(.,asyr::extract_wetQC) %>%
  dplyr::bind_rows()
write.csv(A,"data.csv",row.names = F)
#########
gain_and_led_table<-
  filter(A,!is.na(Target)) %>%
  group_by(.,Target) %>%
  summarise(.,pH_LED_AVG=mean(pH.LED,),
            O2_LED_AVG=mean(O2.LED),
            Gain_AVG=mean(Gain,na.rm=T),
            Gain_SD=sd(Gain),
            Gain_minus3SD=Gain_AVG-(3*Gain_SD),
            Gain_plus3SD=Gain_AVG+(3*Gain_SD)
            )
write.csv(gain_and_led_table,"gain_and_led_table.csv",row.names = F)
#########
ksv_f0<-filter(A,!is.na(KSV)) %>%
  summarize(.,AVG_KSV=mean(KSV),AVG_F0=mean(F0),
            Median_ksv=median(KSV),Median_F0=median(F0)
            )
write.csv(ksv_f0,"ksv_f0.csv",row.names = F)
#############
gaindat<-filter(A,!is.na(Target))

gain_lm<-lm(Gain~Target,data=gaindat)
SUM_LM<-summary(gain_lm)
coeffs<-data.frame(
vars=c("rsquared",
  "slope",
  "intercep",
  "Gain"),
val=c(round(SUM_LM$r.squared,6),
  round(coef(gain_lm)[2],6),
  round(coef(gain_lm)[1],6),
  (median(A$Target,na.rm = T) *coef(gain_lm)[2])+coef(gain_lm)[1])
  )
write.csv(coeffs,"coeffs.csv",row.names=F)

coeffplot<-ggplot(gaindat,aes(Target,Gain))+
  geom_point(alpha=.2)+
  geom_smooth(method='lm')+
  theme_bw()+
  ggtitle(label=unique(A$Lot),subtitle=
            paste0("Rsquared: ",round(SUM_LM$r.squared,6),"\n",
                   "eq: Gain = (Target * ",round(coef(gain_lm)[2],6),") +",round(coef(gain_lm)[1],6)
            )
)
ggsave("coeffplot.png",coeffplot,width=10,height=6)
