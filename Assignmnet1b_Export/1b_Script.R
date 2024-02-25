Airports_2022<-read.csv("Report127_2022.csv")
Airports_2013<-read.csv("Report127_2013.csv")
Airports<-rbind(Airports_2023,Airports_2019,Airports_2018,Airports_2022)
Airports<-rbind(Airports_2022, Airports_2013)
ASHEVILLE REGIONAL, SAVANNAH INTERNATIONAL, MYRTLE BEACH INTL, EUGENE - MAHLON SWEET FIELD, PALM SPRINGS INTERNATIONAL

Small_Airports<-Airports%>% filter(Airport.Name == "ASHEVILLE REGIONAL"| Airport.Name =="SAVANNAH INTERNATIONAL"|
                                   Airport.Name =="MYRTLE BEACH INTL"| Airport.Name =="EUGENE - MAHLON SWEET FIELD"|
                                   Airport.Name =="PALM SPRINGS INTERNATIONAL")

A

Airport_Rev<-Small_Airports%>%select(Airport.Name, LOC_ID, FYE,
                                     Total.Passenger.Airline.Aeronautical.Revenue,
                                     Total.Non.Passenger.Aeronautical.Revenue,
                                     Total.Aeronautical.Revenue,
                                     Total.Non.Aeronautical.Revenue)
Airport_Cost<-Small_Airports%>%select(Airport.Name, LOC_ID, FYE,
                                      Personnel.compensation.and.benefits,
                                      Supplies.and.materials,
                                      Total.Operating.Expenses)
