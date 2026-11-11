create_home_tab <- function() {
  
  tabPanel(
    title = "Home",
    icon = icon("house"),
    
    # -----------------------------------------------------------
    # 1. Hero Section
    # -----------------------------------------------------------
    div(
      class = "hero-section",
      h1(
        tagList(
          tags$i(class = "fa-solid fa-dna logo-icon"),
          "Mutational Signatures of Small Insertions and Deletions"
        ),
        class = "hero-title"
      )
    ),
    
    
    # -----------------------------------------------------------
    # 2. Main Content Container
    # -----------------------------------------------------------
    div(
      class = "container",
      style = "max-width: 1200px; padding-bottom: 50px;",
      
      
      # -----------------------------------------------------------
      # Context Section
      # -----------------------------------------------------------
      div(
        class = "intro-text-section",
        
        p(
          class = "intro-lead",
          HTML(
            paste0(
              "Small insertions and deletions, \"indels\", are mutations that add or delete short (< ~50 base pairs) sequences of DNA.",
              "<br><br>",
              "This web site presents corresponding signatures extracted from somatic indel mutations in ",
              "<span class='data-badge'>6,975 tumors</span> from ",
              "<span class='data-badge'>36 cancer types</span> using methods based on ",
              
              "<a href='https://doi.org/10.1016/j.xgen.2022.100179' ",
              "target='_blank' ",
              "rel='noopener noreferrer' ",
              "onclick='event.stopPropagation();'>",
              "<strong>Non-negative Matrix Factorization</strong>",
              "</a>",
              
              " and ",
              
              "<a href='https://doi.org/10.1093/nargab/lqad005' ",
              "target='_blank' ",
              "rel='noopener noreferrer' ",
              "onclick='event.stopPropagation();'>",
              "<strong>Hierarchical Dirichlet Processes</strong>",
              "</a>."
            )
          )
        ),
        
        hr(
          style = "border-top: 1px solid #eee; margin: 50px 0;"
        )
      ),
      
      
      # -----------------------------------------------------------
      # Cards Grid
      # -----------------------------------------------------------
      fluidRow(
        
        class = "flex-container",
        
        
        # ===========================================================
        # Card 1 : 476 Type
        # ===========================================================
        column(
          4,
          
          div(
            class = "feature-card card-476",
            onclick = "$('#home_goto_476').click();",
            
            
            div(
              icon("microscope"),
              class = "card-icon-large",
              style = "color: #9b59b6;"
            ),
            
            
            h3(
              "476-Type Classification",
              style = "font-weight: 700; color: #2c3e50; margin-top: 0;"
            ),
            
            
            p(
              HTML(
                paste0(
                  "This new classification (",
                  
                  "<a href='https://doi.org/10.1038/s41588-025-02152-y' ",
                  "target='_blank' ",
                  "rel='noopener noreferrer' ",
                  "onclick='event.stopPropagation();'>",
                  "<b>Koh et al., 2025</b>",
                  "</a>",
                  
                  ") recognizes 476 types of indels. ",
                  "It provides the highest resolution for analyzing similarities and differences between signatures."
                )
              ),
              style = "color: #7f8c8d; min-height: 60px; margin-bottom: 15px;"
            ),
            
            
            div(
              "Explore",
              class = "card-btn-fake"
            ),
            
            
            actionLink(
              "home_goto_476",
              "",
              style = "display: none;"
            )
          )
        ),
        
        
        
        # ===========================================================
        # Card 2 : 89 Type
        # ===========================================================
        column(
          4,
          
          div(
            class = "feature-card card-89",
            onclick = "$('#home_goto_89').click();",
            
            
            div(
              icon("dna"),
              class = "card-icon-large",
              style = "color: #e67e22;"
            ),
            
            
            h3(
              "89-Type Classification",
              style = "font-weight: 700; color: #2c3e50; margin-top: 0;"
            ),
            
            
            p(
              HTML(
                paste0(
                  
                  "This new classification (",
                  
                  "<a href='https://doi.org/10.1038/s41588-025-02152-y' ",
                  "target='_blank' ",
                  "rel='noopener noreferrer' ",
                  "onclick='event.stopPropagation();'>",
                  "<b>Koh et al., 2025</b>",
                  "</a>",
                  
                  ") recognizes 89 types of indels. ",
                  "Often provides more informative granularity for indels in homopolymers."
                )
              ),
              style = "color: #7f8c8d; min-height: 60px; margin-bottom: 15px;"
            ),
            
            
            div(
              "Explore",
              class = "card-btn-fake"
            ),
            
            
            actionLink(
              "home_goto_89",
              "",
              style = "display: none;"
            )
          )
        ),
        
        
        
        # ===========================================================
        # Card 3 : 83 Type
        # ===========================================================
        column(
          4,
          
          div(
            class = "feature-card card-83",
            onclick = "$('#home_goto_83').click();",
            
            
            div(
              icon("cubes"),
              class = "card-icon-large",
              style = "color: #27ae60;"
            ),
            
            
            h3(
              "83-Type Classification",
              style = "font-weight: 700; color: #2c3e50; margin-top: 0;"
            ),
            
            
            p(
              HTML(
                paste0(
                  
                  "This widely used classification recognizes 83 types of indels. ",
                  
                  "Described in ",
                  
                  "<a href='https://doi.org/10.1038/s41586-020-1943-3' ",
                  "target='_blank' ",
                  "rel='noopener noreferrer' ",
                  "onclick='event.stopPropagation();'>",
                  "<b>Alexandrov et al., 2020</b>",
                  "</a>",
                  
                  " and used on the COSMIC mutational signatures web site."
                )
              ),
              style = "color: #7f8c8d; min-height: 60px; margin-bottom: 15px;"
            ),
            
            
            div(
              "Explore",
              class = "card-btn-fake"
            ),
            
            
            actionLink(
              "home_goto_83",
              "",
              style = "display: none;"
            )
          )
        )
      )
    )
  )
}