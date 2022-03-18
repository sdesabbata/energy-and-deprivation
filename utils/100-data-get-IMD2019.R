##########
# This script downloads the English indices of deprivation 2019 
# released by the UK Ministry of Housing, Communities & Local Government
# from the UK Government website
# https://www.gov.uk/government/statistics/english-indices-of-deprivation-2019
# available under the Open Government Licence v3.0
# https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
# ---
# Author: Stefano De Sabbata
# Date: 17 March 2022
# Licensed under the GNU General Public License v3.0 https://www.gnu.org/licenses/gpl-3.0.html
##########

library(tidyverse)

read_csv("https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/845345/File_7_-_All_IoD2019_Scores__Ranks__Deciles_and_Population_Denominators_3.csv") %>% 
  write_csv("data/indices-of-multiple-deprivation-2019.csv")