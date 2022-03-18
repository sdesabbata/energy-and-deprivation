# Energy and deprivation

The analyses in this repository aim explore the relationship between deprivation and electricity and gas consumption.

## Analaysis

- [First exploratory analysis](analysis/analysis-000-exploratory-energy-deprivation.html)

See also: [Related works](notes/related-works.md).

## Reproducibility

The code in this repository uses the following libraries.

```
tidyverse
RCurl
readxl
ggrepel
patchwork
```

After cloning the repository, you can set up the `data` folder, download the data by running the four scripts in the `utils` folder and render the analysis documents as shown below.

```
source("utils/utils-000-prep.R")
source("utils/utils-100-data-get-IMD2019.R")
source("utils/utils-110-data-get-elec-consumption.R")
source("utils/utils-111-data-get-gas-consumption.R")

rmarkdown::render("analysis/analysis-000-exploratory-energy-deprivation.Rmd")
```

## Data licence

The analyses in this repository use data that contain public sector information licensed under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) from the [Department for Business, Energy & Industrial Strategy](https://www.gov.uk/government/organisations/department-for-business-energy-and-industrial-strategy), the [Ministry of Housing, Communities & Local Government](https://www.gov.uk/government/organisations/ministry-of-housing-communities-and-local-government) and the [Office for National Statistics](https://www.ons.gov.uk/) (see also [ONS geography licences](https://www.ons.gov.uk/methodology/geography/licences)).