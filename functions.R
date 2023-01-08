get_data <- function(){
  leagueCR7:: leagueCR7
}

make_plot <- function(data){
  mydata <- data[data$league_name == "Bundesliga" | data$league_name == "Champions League" | data$league_name == "DFB Pokal",]
  mydata <- mydata[, c(1,5:13)]
  cormat <- round(x = cor(mydata), digits = 2)
  melted_cormat <- melt(cormat)
  melted_cormat %>% 
    ggplot(aes(x=Var1, y=Var2, fill=value)) + 
    geom_tile(colour = "white")+
    scale_fill_gradient2(low = "blue", high = "red", mid = "pink", midpoint = 0, limit = c(-1,1), space = "Lab", name="Pearson\nCorrelation")+
    scale_x_discrete(label=abbreviate)+
    scale_y_discrete(label=abbreviate)+
    theme(axis.title.x = element_blank(),
          axis.title.y = element_blank(),axis.text.x = element_text(angle = 45, hjust=1))+
    labs(caption = "figure 3: Heatmap (correlation plot)")+
    theme(plot.caption = element_text(hjust = 0.5)
    )+
    geom_text(aes(Var2, Var1, label = value), color = "black", size = 7,alpha=2 )+
    theme(text = element_text(size=20))
  
}

save_plot <- function(save_path, plot){
  ggsave(save_path, plot, width = 20, height = 20)
  save_path
}