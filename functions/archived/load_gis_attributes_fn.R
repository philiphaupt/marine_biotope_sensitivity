#function defunct - can remove: back-up table of what - to hard to keep one for every option - if the code has worked up to this point - this really is superflous.. I am removing this, and just inserting some simple lines of code before the cleaning script.

#function that reads file from specified locality, or defaults to a back-up locality, # needs working up
load.gis.attrib <- function(gis.attr = st::st_drop_geometry(hab_map)){ #hab.map is the habitat map that was read in 03_read_spatial_habitat_data #old function: attr = hab_map@data used to work wth readOGR
        #gis.attr <- try(attr) # input data from habitat map - if error read the hab map attributes from a back file
        
        if("try-error" %in% class(gis.attr)) {
        cat("The GIS habitat map is not read in, or there is an error, trying read a back up copy of attribute file.\n")
        backup.attribute.tbl <- "C:/Users/M996613/Phil/PROJECTS/Fishing_effort_displacement/2_subprojects_and_data/4_R/sensitivities_per_pressure/gisattr.rds"
        gis.attr <- read_rds(path = backup.attribute.tbl)
                
        }
        cat("Make sure that the gis attribute and habitat types have the same number of observations.\n")
        gis.attr
}
