#' @export
pecc_server_reunif <- function(input, output, session) {


  source(file.path(find.package("peccary"), "ShinyApp", "0SAS_Pecc_ini.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "SAS_exploDataset.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "SAS_explo_plot.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "SAS_NCA.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "SAS_ModelBuilding.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "SAS_folder.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "vpc_pckg.R" ), local = T)
  source(file.path(find.package("peccary"), "ShinyApp", "SAS_report.R" ), local = T)
}


#' @export
pecc_server_reunif_test <- function(input, output, session) {

  for(i in c("0SAS_Pecc_ini.R",
    "SAS_exploDataset.R",
    "SAS_explo_plot.R",
    "inst/ShinyApp/SAS_NCA.R",
    "inst/ShinyApp/SAS_folder.R",
    "inst/ShinyApp/SAS_ModelBuilding.R",
    "inst/ShinyApp/SAS_report.R",
    "vpc_pckg.R")){
    source(pathget(paste0("ShinyApp/",i)), local = T)
  }

}

#' @export
go <- function() shinyApp(pecc_ui_reunif, pecc_server_reunif_test)


pathget <- function(path){
  system.file(path, package = "peccary")
}
