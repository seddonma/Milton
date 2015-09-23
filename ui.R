library(shiny)
  fluidPage(
    headerPanel("What is Your Average Propensity to Consume (APC)"),
    sidebarPanel(
      numericInput("permanent", "Expected Income", 60000, min = 1),
      numericInput("transitory", "Unexpected Income", 1000, min = 0),
      numericInput("save", "If someone were to give you $100, how much would you save?", 10, min = 0, max = 100),
      submitButton("Submit")
    ),
    mainPanel(
      h3("Your APC is..."),
      verbatimTextOutput("APC"),
      h4("Your APC is the ratio of consumption to income. In other words, it's the percentage of your income that you spend on goods, rather than save."),
      h4("This method of calculating APC is from Milton Freedman's Nobel Prize winning Permanent Income Hypothesis, published in 1957. The Permanent Income Hypothesis uses Fisher's theory of the consumer to argue that consumption should not depend on current income alone. Rather the theory emphasizes that people experience random and temporary changes in their incomes from year to year."),
      h4(""),
      h3("Documentation"),
      h4("In order to use this app, type in your expected income into the Expected Income textbox. Your expected income is the salary you typically receive in a year. Secondly, type in your sum total unexpected income in the Unexpected Income textbox. Unexpected income is the total sum of money you receive erratically throughout the year, like your tax return or winnings from a small lottery. Finally, conduct a thought experiment for the final textbox. Imagine you were given $100, how much of it would you save? Finally, once you have entered all of your data, press submit. You can do so knowing that none of your data is collected at any time. Once the submit button is clicked, your APC is calculated.")
    )
  )
