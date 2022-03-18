##########
# This script downloads the electricity consumption data
# released by the UK Department for Business, Energy & Industrial Strategy
# from the UK Government website
# https://www.gov.uk/government/statistics/lower-and-middle-super-output-areas-electricity-consumption
# available under the Open Government Licence v3.0
# https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
# ---
# Author: Stefano De Sabbata
# Date: 17 March 2022
# Licensed under the GNU General Public License v3.0 https://www.gnu.org/licenses/gpl-3.0.html
##########

library(tidyverse)
library(RCurl)
library(readxl)

download.file(
  "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/1050110/LSOA_domestic_elec_2010-20.xlsx",
  destfile = "data/LSOA_domestic_elec_2010-20.xlsx",
  method = "libcurl"
  )

for (excel_sheet in 2010:2020) {
  
  domestic_elec_sheet <-
    read_excel(
      "data/LSOA_domestic_elec_2010-20.xlsx",
      sheet = as.character(excel_sheet),
      skip = 4
    ) %>% 
    mutate(`Year` = excel_sheet)
  
  if (excel_sheet == 2010) {
    domestic_elec_data <- 
      domestic_elec_sheet
  } else {
    domestic_elec_data <-
      domestic_elec_data %>% 
      bind_rows(domestic_elec_sheet)
  }
  
  rm(domestic_elec_sheet)
}

domestic_elec_data %>% 
  rename(
    `LAD code` = `Local authority code`,
    `LAD name` = `Local authority`,
    `MSOA code` = `MSOA code`,
    `MSOA name` =`Middle layer super output area`,
    `LSOA code` = `LSOA code`,
    `LSOA name` = `Lower layer super output area`,
    `Number of electricity meters` = `Number\r\nof meters\r\n`,
    `Total electricity consumption (kWh)` = `Total \r\nconsumption\r\n(kWh)`,
    `Mean electricity consumption (kWh per meter)` = `Mean consumption\r\n(kWh per meter)`,
    `Median electricity consumption (kWh per meter)` = `Median consumption\r\n(kWh per meter)`
  ) %>% 
  write_csv("data/LSOA_domestic_elec_2010-20.csv")

rm(list = ls())
