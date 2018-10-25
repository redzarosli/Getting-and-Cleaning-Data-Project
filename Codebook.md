Types of Activity
-----------------

The following are types of activities analyzed for the scope of this
study:

1.  Walking
2.  Walking Upstairs
3.  Walking Downstairs
4.  Sitting
5.  Standing
6.  Laying

Variable Headers
----------------

    tidy_data <- read.table("~/Coursera/Getting and Cleaning Data/Project/ProjectWeek4/Push Files/tidy_data.txt", sep="",header =TRUE)
    names(tidy_data)

    ##  [1] "activity"                                   
    ##  [2] "subject"                                    
    ##  [3] "timeBodyAcceleration.mean...X"              
    ##  [4] "timeBodyAcceleration.mean...Y"              
    ##  [5] "timeBodyAcceleration.mean...Z"              
    ##  [6] "timeBodyAcceleration.std...X"               
    ##  [7] "timeBodyAcceleration.std...Y"               
    ##  [8] "timeBodyAcceleration.std...Z"               
    ##  [9] "timeGravityAcceleration.mean...X"           
    ## [10] "timeGravityAcceleration.mean...Y"           
    ## [11] "timeGravityAcceleration.mean...Z"           
    ## [12] "timeGravityAcceleration.std...X"            
    ## [13] "timeGravityAcceleration.std...Y"            
    ## [14] "timeGravityAcceleration.std...Z"            
    ## [15] "timeBodyAccelerationJerk.mean...X"          
    ## [16] "timeBodyAccelerationJerk.mean...Y"          
    ## [17] "timeBodyAccelerationJerk.mean...Z"          
    ## [18] "timeBodyAccelerationJerk.std...X"           
    ## [19] "timeBodyAccelerationJerk.std...Y"           
    ## [20] "timeBodyAccelerationJerk.std...Z"           
    ## [21] "timeBodyGyroscope.mean...X"                 
    ## [22] "timeBodyGyroscope.mean...Y"                 
    ## [23] "timeBodyGyroscope.mean...Z"                 
    ## [24] "timeBodyGyroscope.std...X"                  
    ## [25] "timeBodyGyroscope.std...Y"                  
    ## [26] "timeBodyGyroscope.std...Z"                  
    ## [27] "timeBodyGyroscopeJerk.mean...X"             
    ## [28] "timeBodyGyroscopeJerk.mean...Y"             
    ## [29] "timeBodyGyroscopeJerk.mean...Z"             
    ## [30] "timeBodyGyroscopeJerk.std...X"              
    ## [31] "timeBodyGyroscopeJerk.std...Y"              
    ## [32] "timeBodyGyroscopeJerk.std...Z"              
    ## [33] "timeBodyAccelerationMag.mean.."             
    ## [34] "timeBodyAccelerationMag.std.."              
    ## [35] "timeGravityAccelerationMag.mean.."          
    ## [36] "timeGravityAccelerationMag.std.."           
    ## [37] "timeBodyAccelerationJerkMag.mean.."         
    ## [38] "timeBodyAccelerationJerkMag.std.."          
    ## [39] "timeBodyGyroscopeMag.mean.."                
    ## [40] "timeBodyGyroscopeMag.std.."                 
    ## [41] "timeBodyGyroscopeJerkMag.mean.."            
    ## [42] "timeBodyGyroscopeJerkMag.std.."             
    ## [43] "frequencyBodyAcceleration.mean...X"         
    ## [44] "frequencyBodyAcceleration.mean...Y"         
    ## [45] "frequencyBodyAcceleration.mean...Z"         
    ## [46] "frequencyBodyAcceleration.std...X"          
    ## [47] "frequencyBodyAcceleration.std...Y"          
    ## [48] "frequencyBodyAcceleration.std...Z"          
    ## [49] "frequencyBodyAcceleration.meanFreq...X"     
    ## [50] "frequencyBodyAcceleration.meanFreq...Y"     
    ## [51] "frequencyBodyAcceleration.meanFreq...Z"     
    ## [52] "frequencyBodyAccelerationJerk.mean...X"     
    ## [53] "frequencyBodyAccelerationJerk.mean...Y"     
    ## [54] "frequencyBodyAccelerationJerk.mean...Z"     
    ## [55] "frequencyBodyAccelerationJerk.std...X"      
    ## [56] "frequencyBodyAccelerationJerk.std...Y"      
    ## [57] "frequencyBodyAccelerationJerk.std...Z"      
    ## [58] "frequencyBodyAccelerationJerk.meanFreq...X" 
    ## [59] "frequencyBodyAccelerationJerk.meanFreq...Y" 
    ## [60] "frequencyBodyAccelerationJerk.meanFreq...Z" 
    ## [61] "frequencyBodyGyroscope.mean...X"            
    ## [62] "frequencyBodyGyroscope.mean...Y"            
    ## [63] "frequencyBodyGyroscope.mean...Z"            
    ## [64] "frequencyBodyGyroscope.std...X"             
    ## [65] "frequencyBodyGyroscope.std...Y"             
    ## [66] "frequencyBodyGyroscope.std...Z"             
    ## [67] "frequencyBodyGyroscope.meanFreq...X"        
    ## [68] "frequencyBodyGyroscope.meanFreq...Y"        
    ## [69] "frequencyBodyGyroscope.meanFreq...Z"        
    ## [70] "frequencyBodyAccelerationMag.mean.."        
    ## [71] "frequencyBodyAccelerationMag.std.."         
    ## [72] "frequencyBodyAccelerationMag.meanFreq.."    
    ## [73] "frequencyBodyAccelerationJerkMag.mean.."    
    ## [74] "frequencyBodyAccelerationJerkMag.std.."     
    ## [75] "frequencyBodyAccelerationJerkMag.meanFreq.."
    ## [76] "frequencyBodyGyroscopeMag.mean.."           
    ## [77] "frequencyBodyGyroscopeMag.std.."            
    ## [78] "frequencyBodyGyroscopeMag.meanFreq.."       
    ## [79] "frequencyBodyGyroscopeJerkMag.mean.."       
    ## [80] "frequencyBodyGyroscopeJerkMag.std.."        
    ## [81] "frequencyBodyGyroscopeJerkMag.meanFreq.."

Conversions in variable name from base data
-------------------------------------------

The following are the changes made to the main dataset to makes the
dataset more readable:

-   f -&gt; frequency
-   t -&gt; time
-   Gyro -&gt; Gyroscope
-   Acc -&gt; Acceleration
-   BodyBody -&gt; Body

Things to note
--------------

Only mean and standard deviation data is listed in final tidy\_data.txt
