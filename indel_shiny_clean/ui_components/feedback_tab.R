create_feedback_tab <- function() {
  tabPanel(
    title = "Feedback",
    value = "Feedback",
    icon = icon("comment-dots"),
    
    div(
      class = "about-paper-card",
      style = "margin-top: 20px !important; padding-top: 20px !important;",
      
      h3(
        "User Feedback",
        class = "about-section-title",
        style = "color: #c0392b; border-bottom-color: #c0392b; margin-top: 0 !important; padding-top: 0 !important;"
      ),
      
      p(
        class = "about-text",
        "If you encounter any issues, have suggestions, or would like to report unexpected behavior while using the browser, please leave your feedback below."
      ),
      
      div(
        style = paste0(
          "background:#fff5f5;",
          "padding:30px;",
          "border-radius:16px;",
          "border-left:5px solid #c0392b;",
          "box-shadow:0 5px 20px rgba(0,0,0,0.05);",
          "margin-top:20px;",
          "margin-bottom:35px;"
        ),
        
        textInput(
          inputId = "feedback_email",
          label = "Email(optional)",
          placeholder = "Your email address (optional)"
        ),
        
        selectInput(
          inputId = "feedback_type",
          label = "Feedback type",
          choices = c(
            "Bug report",
            "Suggestion",
            "Data issue",
            "Visualization issue",
            "Other"
          ),
          selected = "Bug report"
        ),
        
        textAreaInput(
          inputId = "feedback_message",
          label = "Feedback message",
          placeholder = "Please describe the issue or suggestion in detail...",
          width = "100%",
          height = "150px"
        ),
        
        actionButton(
          inputId = "feedback_submit",
          label = "Submit Feedback",
          icon = icon("paper-plane"),
          class = "btn-danger",
          style = paste0(
            "border-radius:50px;",
            "padding:12px 32px;",
            "font-weight:700;",
            "font-size:1.35rem;",
            "margin-top:10px;"
          )
        ),
        
        uiOutput("feedback_status")
      )
    )
  )
}