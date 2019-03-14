workout01-Daniel-delCarpio
================
Daniel del Carpio
March 12, 2019

5.1
---

``` r
shots_data <- read.csv("C:/Users/danie/OneDrive/Documents/GitHub/stat133workout01/workout01/data/shots-data.csv", stringsAsFactors = FALSE)

curry_total2 <- nrow(shots_data[shots_data$name == 'Stephen Curry' & shots_data$shot_type == '2PT Field Goal',])
curry_made2 <- nrow(shots_data[shots_data$name == 'Stephen Curry' & shots_data$shot_type == '2PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

klay_total2 <- nrow(shots_data[shots_data$name == 'Klay Thompson' & shots_data$shot_type == '2PT Field Goal',])
klay_made2 <- nrow(shots_data[shots_data$name == 'Klay Thompson' & shots_data$shot_type == '2PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

kd_total2 <- nrow(shots_data[shots_data$name == 'Kevin Durant' & shots_data$shot_type == '2PT Field Goal',])
kd_made2 <- nrow(shots_data[shots_data$name == 'Kevin Durant' & shots_data$shot_type == '2PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

draymond_total2 <- nrow(shots_data[shots_data$name == 'Draymond Green' & shots_data$shot_type == '2PT Field Goal',])
draymond_made2 <- nrow(shots_data[shots_data$name == 'Draymond Green' & shots_data$shot_type == '2PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

iggy_total2 <- nrow(shots_data[shots_data$name == 'Andre Iguodala' & shots_data$shot_type == '2PT Field Goal',])
iggy_made2 <- nrow(shots_data[shots_data$name == 'Andre Iguodala' & shots_data$shot_type == '2PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

table1 <- matrix(c("Stephen Curry",curry_total2,curry_made2,(curry_made2/curry_total2),"Klay Thompson",klay_total2,klay_made2,(klay_made2/klay_total2),"Kevin Durant", kd_total2, kd_made2,(kd_made2/kd_total2),"Draymond Green", draymond_total2, draymond_made2,(draymond_made2/draymond_total2),"Andre Iguodala",iggy_total2,iggy_made2,(iggy_made2/iggy_total2)),ncol=4,byrow=TRUE)

colnames(table1) <- c("name","total","made","perc_made")

table1 <- as.table(table1)
table1 
```

    ##   name           total made perc_made        
    ## A Stephen Curry  563   304  0.539964476021314
    ## B Klay Thompson  640   329  0.5140625        
    ## C Kevin Durant   643   390  0.606531881804043
    ## D Draymond Green 346   171  0.494219653179191
    ## E Andre Iguodala 210   134  0.638095238095238

``` r
curry_total3 <- nrow(shots_data[shots_data$name == 'Stephen Curry' & shots_data$shot_type == '3PT Field Goal',])
curry_made3 <- nrow(shots_data[shots_data$name == 'Stephen Curry' & shots_data$shot_type == '3PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

klay_total3 <- nrow(shots_data[shots_data$name == 'Klay Thompson' & shots_data$shot_type == '3PT Field Goal',])
klay_made3 <- nrow(shots_data[shots_data$name == 'Klay Thompson' & shots_data$shot_type == '3PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

kd_total3 <- nrow(shots_data[shots_data$name == 'Kevin Durant' & shots_data$shot_type == '3PT Field Goal',])
kd_made3 <- nrow(shots_data[shots_data$name == 'Kevin Durant' & shots_data$shot_type == '3PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

draymond_total3 <- nrow(shots_data[shots_data$name == 'Draymond Green' & shots_data$shot_type == '3PT Field Goal',])
draymond_made3 <- nrow(shots_data[shots_data$name == 'Draymond Green' & shots_data$shot_type == '3PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

iggy_total3 <- nrow(shots_data[shots_data$name == 'Andre Iguodala' & shots_data$shot_type == '3PT Field Goal',])
iggy_made3 <- nrow(shots_data[shots_data$name == 'Andre Iguodala' & shots_data$shot_type == '3PT Field Goal' & shots_data$shot_made_flag == 'shot_yes',])

table2 <- matrix(c("Stephen Curry",curry_total3,curry_made3,(curry_made3/curry_total3),"Klay Thompson",klay_total3,klay_made3,(klay_made3/klay_total3),"Kevin Durant", kd_total3, kd_made3,(kd_made3/kd_total3),"Draymond Green", draymond_total3, draymond_made3,(draymond_made3/draymond_total3),"Andre Iguodala",iggy_total3,iggy_made3,(iggy_made3/iggy_total3)),ncol=4,byrow=TRUE)

colnames(table2) <- c("name","total","made","perc_made")

table2 <- as.table(table2)
table2 
```

    ##   name           total made perc_made        
    ## A Stephen Curry  687   280  0.407569141193595
    ## B Klay Thompson  580   246  0.424137931034483
    ## C Kevin Durant   272   105  0.386029411764706
    ## D Draymond Green 232   74   0.318965517241379
    ## E Andre Iguodala 161   58   0.360248447204969

``` r
table3 <- matrix(c("Stephen Curry",curry_total2 + curry_total3,curry_made3 +curry_made2,(curry_made3 +curry_made2)/(curry_total2 + curry_total3),"Klay Thompson",klay_total3+klay_total2,klay_made3+klay_made2,(klay_made3+klay_made2)/(klay_total2+klay_total3),"Kevin Durant", kd_total3+kd_total2, kd_made2+kd_made3,(kd_made2+kd_made3)/(kd_total2 +kd_total3),"Draymond Green", draymond_total3+draymond_total2, draymond_made2 + draymond_made3,(draymond_made2+draymond_made3)/(draymond_total2+draymond_total3),"Andre Iguodala",iggy_total2+iggy_total3,iggy_made3+iggy_made2,(iggy_made2+iggy_made3)/(iggy_total2 +iggy_total3)),ncol=4,byrow=TRUE)

colnames(table3) <- c("name","total","made","perc_made")

table3 <- as.table(table3)
table3 
```

    ##   name           total made perc_made        
    ## A Stephen Curry  1250  584  0.4672           
    ## B Klay Thompson  1220  575  0.471311475409836
    ## C Kevin Durant   915   495  0.540983606557377
    ## D Draymond Green 578   245  0.423875432525952
    ## E Andre Iguodala 371   192  0.517520215633423

5.2
---

The Golden State Warriors might just be the greatest team that the NBA has ever seen. They have now won 4 NBA championships in the last 5 years, and are on route to win a 5th title this year. Through data analytics and excellent shooting, the warriors have cemented themselves in NBA history. Analyzing the starting 5 players in 2016 season, the only season that they did not win the NBA championship. The warriors approach to the game of basketball is that you can win by out-shooting your opponent, rather than playing great defensively, if you out-score your opponent by alot of points, your opponent cannot keep up. This is seen when looking at some of the players on the warriors like Stephen Curry and Klay Thompson, who are two of the best shooters that the NBA has ever seen. Appropriately called the Splash Brothers, they are major contribuitors to scoring points for the warriors.

In order to the understand the sucess of the warriors, we must look at the players more specifically the starting 5 players, and how well they implement the high scoring playstyle that Steve Kerr implements. First lets take a look at the 2 pointers by the starting 5.

``` r
table1
```

    ##   name           total made perc_made        
    ## A Stephen Curry  563   304  0.539964476021314
    ## B Klay Thompson  640   329  0.5140625        
    ## C Kevin Durant   643   390  0.606531881804043
    ## D Draymond Green 346   171  0.494219653179191
    ## E Andre Iguodala 210   134  0.638095238095238

Taking into account the main 3 offensive players on the warriors, the best 2-point shooter is the newest edition of the team (in 2016), Kevin Durant. While Kevin Durant was and still is considered one of the best players in the league, he is a very good all around player, unlike the Splash Brothers who are experts at the 3 pointers, so it makes sense that Kevin Durant has both the most attempted 2 pointers and the best percentage made of the 2 pointers. The addition of Kevin Durant to the already stacked team was controversial, as many thought the warriors were already a perfect team, but this table shows that Kevin Durant is the 2 point shooter that the warriors needed to seal their legacy one of the greatest teams in NBA history. That is not to say that the other players are lacking in the 2 point range, looking at the table KD has a 60% conversion rate, while Steph and Klay have a 54% and 51% conversion rate, respectively.

Now lets take a look at the 3 pointers of the starting 5 players in the 2016 season.

``` r
table2
```

    ##   name           total made perc_made        
    ## A Stephen Curry  687   280  0.407569141193595
    ## B Klay Thompson  580   246  0.424137931034483
    ## C Kevin Durant   272   105  0.386029411764706
    ## D Draymond Green 232   74   0.318965517241379
    ## E Andre Iguodala 161   58   0.360248447204969

First lets look at the total attempts of three pointers by player we can can quickly see who is the person takes the most 3 pointers and its probably the best shooter in NBA history, Steph Curry with 687 3 point attempts, and second is Klay Thompson with 580, the next closest is Kevin Durant who doesn't even break 300. Just looking at the attempts we can see that both of the splash brothers are 3 point specialists, and this is the engine of the warriors. Steph and Klay both have high conversion rates as well, as they are both above 40%, while none of the other players get into the 40$ threshold. It is evident that 3 pointers is the main game of the warriors and the splash brothers, and their percise shooting is what has carried them to finals every year since 2015.

When we merge both of the two pointers and 3 pointers we get this table.

``` r
table3
```

    ##   name           total made perc_made        
    ## A Stephen Curry  1250  584  0.4672           
    ## B Klay Thompson  1220  575  0.471311475409836
    ## C Kevin Durant   915   495  0.540983606557377
    ## D Draymond Green 578   245  0.423875432525952
    ## E Andre Iguodala 371   192  0.517520215633423

Kevin Durant has the best converstion rate out of all the players, at 54%, although he does not attempt the most shots, as that goes to Steph Curry by only 30 more shots attempted than 2nd place Klay Thompson, both of them have conversion rates of around 46%, which is amazing considered they attempted 300 more shots than Kevin Durant. The defensive players, Draymond Green and Andre Iguodala also have conversion rates above 40, especially Andre Iguodala has a conversion rate of almost 52%, which is second only to Kevin Durant. Since Iguodala only took 371 shots during the season, it may be that he only takes shots that he knows he has a chance of making and does not risk missing a shot when one of the 3 offensive power houses do most of the point making.

Now lets take a look a closer look the shot locations of the warriors.

<img src="C:/Users/danie/OneDrive/Documents/GitHub/stat133workout01/workout01/images/gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />

Most of Steph's and Klay's shots are 3 pointers, while Kevin Durant's shots are all around the board, cementing the idea that KD is an all around player, and the splash brothers and 3 point specialists, and the other 2 players Draymond Green and Andre Iguodala do not do much of the shooting, especially Iguodala. This makes sense Iguodala has one of the lowest attempts on the team from the data. A team must have an defense and someone to make the rebounds, those players are Draymond Green and Andre iguodala who suuport the main 3 scoring players.

One of the interesting things in the shooting graphs is that it looks like Steph has a favorite spot of the 3 pointer and its the upper left corner of the 3 point line. This is where he has the highest concentration of his made 3's are. While other players like Klay and Kevi Durant seem to have more a normal distribution where they make their points.

The Golden State Warriors have implented a style of basketball that priortizes scoring big points, and getting large leads that teams cannot keep up with. With some of the most talented 3 point shooters in NBA history in Steph Curry and Klay Thompson, they rack up points very quickly and with an all around player and MVP Kevin Durant sealing the 2 point game, the warriors have created one of the most lethal basketball teams in history.
