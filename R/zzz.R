#' @export
populate <- function(env){
  
fun <- completeme::current_function(env)

if(length(fun) > 0){
  comp <- switch(fun,
         set_template = c('3024-night','blackboard','base16-dark','base16-light','cobalt','dracula',
                          'duotone','hopscotch','material','monokai','night-owl','oceanic-next',
                          'one-dark','panda','paraiso','seti','solarized dark','solarized light',
                          'tomorrow-night-bright','lucario','twilight','verminal','yeti','zenburn'),
         set_font_family = c('Anonymous Pro', 'Droid Sans Mono', 'Fantasque Sans Mono', 'Fira Code', 'Monoid',
                             'Hack', 'IBM Plex Mono', 'Iosevka', 'Inconsolata', 'Source Code Pro', 'Ubuntu Mono')
         )
  
 
  
}

return(comp)

}

#' @export
set_template <- function(x){
  return(unname(x))
}

# in_function_call <- get("inFunction", asNamespace("utils"))
# inside_quotes <- get("isInsideQuotes", asNamespace("utils"))
# 
# carbonate_completions <- function(env) {
#   fun <- in_function_call()
#   if (length(fun) > 0 && fun == "get_templates" && inside_quotes()) {
#     # Completion within readxl_example uses the example filenames
#     #comps <- grep(paste0("^\"?", env$token, "."), readxl_example(), value = TRUE)
#     env[["comps"]] <- c
#   }
# }