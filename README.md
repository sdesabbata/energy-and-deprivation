# Energy and deprivation

The analyses in this repository aim explore the relationship between deprivation and electricity and gas consumption.

## Reproducibility

The code in this repository uses the following libraries.

```
tidyverse
RCurl
readxl
ggrepel
```

After cloning the repository, you can set up the `data` folder and download the data running the four scripts in the `utils` folder as shown below.

```
source("utils/000-prep.R")
source("utils/100-data-get-IMD2019.R")
source("utils/110-data-get-elec-consumption.R")
source("utils/111-data-get-gas-consumption.R")
```

## Data licence

The analyses in this repository use data that contain public sector information licensed under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) from the [Department for Business, Energy & Industrial Strategy](https://www.gov.uk/government/organisations/department-for-business-energy-and-industrial-strategy), the [Ministry of Housing, Communities & Local Government](https://www.gov.uk/government/organisations/ministry-of-housing-communities-and-local-government) and the [Office for National Statistics](https://www.ons.gov.uk/) (see also [ONS geography licences](https://www.ons.gov.uk/methodology/geography/licences)).