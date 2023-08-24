In the Maven Healthcare Challenge, I virtually step into a Data Analyst role, dissecting nine years of Hospital Consumer Assessment of Healthcare Providers and Systems (HCAHPS) survey data. My mission parallels the AHA's pursuit of elevating patient care. I examine trends, uncover progress, and identify opportunities within the data. Though not physically at AHA, my virtual insights bridge the gap. This analysis isn't just about numbers—it's a hypothetical contribution to healthcare improvement, resonating with the quest for enhanced patient experiences.

**Data Cleaning**
I have cleaned the data in such a way that all the relationships (like foreign and primary key) in all the tables is well defined.
For some columns (Like: Completed survey) there were many missing values(5772 rows) and it also comprised with numeric as well as Ranges in text format (like : 300 or more, between 100 and 299), So replaced ranges into numeric data by finding mean, median(Used Box Plot to find whether the values should be replaced with mean or median) for different ranges(like: for "300 or more" used 300 and greater values and checked the mean or median values and also checked skewness).
Deleted 2 states data( U.S. Virgin Island and Puerto Rico  from responses table) as they are Inhabited territories and not states and they also didn't have the data in other tables(Like: State Results).


**Data Manipulation And Visualization**
Found insights using MySQL and Created a Dashboard using Power Bi.
All the insights and Recommendation have been provided in the dashboard itself.

**DATA SOURCE** :  https://mavenanalytics.io/challenges/maven-healthcare-challenge/26



![Screenshot (265)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/6b8ed924-06b8-48d4-becf-b6c6c1403539)
![Screenshot (264)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/2ad237d7-9ad6-4fdf-914b-334727ab53db)
![Screenshot (266)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/ed31b640-4162-4f98-b91c-fcab76636d44)
![Screenshot (267)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/0dbe2e82-cf6e-44e1-a2d6-3ef962558da5)

