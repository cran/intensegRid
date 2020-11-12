## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----example------------------------------------------------------------------
library(intensegRid)

# carbon intensity per electricity source
get_factors()

## ----british1-----------------------------------------------------------------
## carbon intensity for the whole Britain for the current 1/2 hr period
get_british_ci()

## ----british2-----------------------------------------------------------------
## function arguments
start <- "2019-04-01"
end <- "2019-04-07"

get_british_ci(start, end)

## ----mix1---------------------------------------------------------------------
# electricity composition in the current 30 mins
get_mix()

## ----mix2---------------------------------------------------------------------
# electricity composition for the specified dates
get_mix(start, end)

## ----stats--------------------------------------------------------------------
get_stats(start, end)

## ----stats2-------------------------------------------------------------------
get_stats(start, end, block = 2)

## ----national1----------------------------------------------------------------
# Current carbon intensity per UK country
get_national_ci()

## ----national2----------------------------------------------------------------
# Current carbon intensity for England 
# Function also accepts region values: "Scotland" and "Wales"
get_national_ci(region = "England")

## ----national3----------------------------------------------------------------
# Carbon intensity for all the UK countries for specified dates 
get_national_ci(start = start, end = end)

## ----regions_lookup-----------------------------------------------------------
regions_lookup

## ----region1------------------------------------------------------------------
get_regional_ci(region_id = 13)

## ----region2------------------------------------------------------------------
get_regional_ci(region_id = 13, 
                start, 
                end)

## ----postcode1----------------------------------------------------------------
get_postcode_ci(postcode = "EN2")

## ----postcode2----------------------------------------------------------------
get_postcode_ci(postcode = 'EN2',
                start,
                end)

