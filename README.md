# Nasa_Asteroids_Dataset
## Objective
Identified and analyzed potentially hazardous asteroids using NASA's Near-Earth Object database.
Develop a risk assessment model to prioritize celestial objects based on size, velocity, and proximity to Earth.


## About this Dataset
I took this dataset from kaggle. Its about exploring the vast universe with the NASA Asteroids Dataset, a comprehensive collection of information
on Near-Earth Objects (NEOs). These celestial bodies, including asteroids and other space debris, come
close to Earth's orbit, making them subjects of scientific interest and observation.

## Tools used
- SQL
- Python
- Jupyter Notebook

## Methodology
- Data collection and cleaning
- exploratory data analysis
- visualization creation
- Insight generation

## Key Questions Explored
- How many asteroids are classified as hazardous?
- What is the average relative velocity of an asteroid?
- What is the average Est Diameter of an Asteroid?
- Is there any relation between estimated diameter and an asteroid being hazardous?
- Does the relative velocity km per hr decreases with the increase in estimated diameter?
- What are the top ten potentially dangerous asteroids?
-  Compared the orbital eccentricity/inclination between hazardous and safe asteroids.

## Results
1. How many asteroids are classified as hazardous?
   - Answer: The number of safe asteroids is 303.
   ```sql
   SELECT  COUNT(Hazardous) AS Safe_Asteroids
   FROM nasa_asteroids_data
   WHERE Hazardous = 'TRUE';


2. What is the average relative velocity of an asteroid?
   - Answer:

    ```sql
    SELECT AVG(`Relative Velocity km per hr`)
    FROM nasa_asteroids_data;
Average velocity KM per hr is 50340.474035131185.
    ```sql
    SELECT  AVG(`Relative Velocity km per sec`)
    FROM nasa_asteroids_data;
Average velocity KM per hr is 13.90605221082407.
    
4. What is the average Est Diameter of an Asteroid?
   - Answer:
   ```sql
    SELECT Name, `Est Dia in KM(min)` AS lowest_Diameter
    FROM nasa_asteroids_data
    ORDER BY lowest_Diameter ASC
    LIMIT 1;
The Estimated Diameter(min) is 0.0020162992.
   ```sql
    SELECT Name, `Est Dia in KM(max)` AS highest_Diameter
    FROM nasa_asteroids_data
    ORDER BY highest_Diameter DESC
    LIMIT 1;
   ```
The Estimated Diameter(max) is 9.7732718421.

5. Is there any relation between estimated diameter and an asteroid being hazardous?
   - Answer:
     Yes, the following plot shows that the higher the number of Estimated diameter results in an asteroid being more hazardous.
   
     ![](Distribution_of_Diameter.png)

6. Does the relative velocity km per hr decreases with the increase in estimated diameter?
   - Answer:
     Yes, the increase in diameter decreases the relative velocity.

     ![Comparison](Comparing_diameter_with_velocity.png)

7. What are the top ten potentially dangerous asteroids?
   - Answer: I determind the top ten potentially dangerous asteroids by using the following equatuon in SQL.
            ```
             ( `Est Dia in KM(max)` * `Relative Velocity km per hr` ) / `Miss Dist.(kilometers)`
           ```

9. Compared the orbital eccentricity between hazardous and safe asteroids.
   - Answer:
    According to the following bar plot the eccentricity can have an affect on the hazard status of an asteroid.
    Following are the top 5 hazardous Asteroids:
         ###High Risk Asteroids
1. 3082923   (Risk Score: 0.8361684490687855)
2. 3727339   (Risk Score: 0.8361684490687855)
3. 2495829   (Risk Score: 0.05495250003613771)
4. 3669253   (Risk Score: 0.039886229070416286)
5. 3632236   (Risk Score: 0.028379472876126015)
6. 3579078   (Risk Score: 0.027729040861794185)
7. 2365449   (Risk Score: 0.027729040861794185)
8. 2001685   (Risk Score: 0.02199838523911706)
9. 2002062   (Risk Score: 0.02199838523911706)
10. 2308242  (Risk Score: 0.019804939810913493)
          

     ![Eccentricity and hazard status](Eccentricity.png)


 
           



