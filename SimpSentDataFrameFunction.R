## Simple Sentiment Analysis function



SimpleSentiment_df<-function(textVector = rise$FiveReasons1) {
  require(tidyverse)
  require(tidytext)
  textVector_df<-data_frame(text = textVector)
  textVector_df_words<-textVector_df %>%
    unnest_tokens(word,text) %>%
    count(word) %>%
    inner_join(get_sentiments())
  
  return(textVector_df_words)
}

