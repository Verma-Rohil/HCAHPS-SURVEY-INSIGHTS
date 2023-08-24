Use patient_survey;


-- Q.  Total Completed surveys by Patients?
-- Answer : 24.3 mn

			SELECT 
					SUM(completed_surveys) as Total_Survey_count
			FROM
					responses;


                  ##  NATIONAL RESULTS ANALYSIS  ##
                  


-- Q.  Total number of Hospitals(Facilities) Surveyed (51 states)?

/* NOTE:  In the raw responses table we had the data of 53 states (Including VI = Virgin Island and PR = Puerto Rico)
          But, In the states and state_results table there were only 51 states. SO, Had to remove those 2 states data from responses table.*/

-- Answer  : 4793

			SELECT 
					COUNT(distinct Facility_id) as Total_Surveyed_Hospitals
            FROM   
					responses;
	
    
    
    
-- Q.  Year wise data of Measure("CARE TRANSITION")?
-- ANSWER : Top box percentage got increased till 2021 and then decreased by 3% till 2023.
			
            
            
            SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 
					n.measure_id = 'H_COMP_7'
			order by 
					measure, year;




-- Q.  Year wise data of Measure("Cleanliness of Hospital Environment")?

-- ANSWER : Top box percentage got increased till 2021 and then decreased by 4% till 2023.			
            
            
            
            SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 	
					n.measure_id = 'H_CLEAN_HSP'
			order by 
					measure, year;



-- Q.  Year wise data of Measure("Communication with Nurses")?
-- ANSWER : Top box percentage got increased till 2021 and then decreased by 2% till 2023.


			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 	
					n.measure_id = 'H_COMP_1'
			order by 
					measure, year;
            
            
            
            
 -- Q.  Year wise data of Measure("Communication with Doctors")?           
 -- ANSWER : Top box percentage got increased till 2021 and then decreased by 3% till 2023.
 
 
			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 	
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 	
					n.measure_id = 'H_COMP_2'
			order by 
					measure, year;
            
 
 
 
  -- Q.  Year wise data of Measure("Responsiveness of Hospital Staff")? 
  
  -- ANSWER : Top box percentage got increased till 2021 and then decreased by 5% till 2023.
  
  
  
			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 	
					n.measure_id = 'H_COMP_3'
			order by 
					measure, year;
            
            
            
            
  -- Q.  Year wise data of Measure("Communication about Medicines")?    
  -- ANSWER : Top box percentage got increased till 2021 and then decreased by 5% till 2023.
  
  
  
  
  
			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 
					n.measure_id = 'H_COMP_5'
			order by 
					measure, year;
            
            
            
            
            
  -- Q.  Year wise data of Measure("Discharge Information")?     
  
  /* ANSWER : Top box percentage is maintained between 86 and 87% which is a good indication.
               Hostpitals have done well in giving information and helping the patients regarding aftermath symptoms and how to handle them
               while discharging from the hospital.
               */
  
  
  
  
			SELECT 
					year, measure, bottom_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 	
					n.measure_id = 'H_COMP_6'
			order by 
					measure, year;
            
            
            
            
            
  -- Q.  Year wise data of Measure("Overall Hospital Rating")?         
  
  -- ANSWER : Overall Hospital Rating has decreased in 2022 and 2023. Maybe due to the pandemic. As it was pretty hectic to cater large amount of patients, 
    --          for which the hospitals were not prepared.
  
  
  
  
			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 
					n.measure_id = 'H_HSP_RATING'
			order by 
					measure, year;
            
            
            
		
  
  -- Q.  Year wise data of Measure("Quietness of Hospital Environment")?
  
  
  
  
  
			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM 
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 
					n.measure_id = 'H_QUIET_HSP'
			order by 
					measure, year;
            
            
            
         
-- Q.  Year wise data of Measure("Willingness to Recommend the Hospital")?       
-- Answer : Recommendations for hospitals have been pretty much stagnant(71-72%) during all the years providing a 2% decline in 2023.




			SELECT 
					year, measure, bottom_box_percentage, middle_box_percentage, top_box_percentage
			FROM    
					National_results n
			JOIN
					measures m ON n.measure_id = m.measure_id
			WHERE 	
					n.measure_id = 'H_RECMND'
			order by 
					measure, year;
            
            
-- Q.  Year wise average Top box percentage Of the Nation ?



			Select 
					year, Round(avg(top_box_percentage),1) as Average_top_box_percentage
            FROM   
					National_results
            GROUP BY  
					year
            order by
					year;
                    


-- Q.  Year wise Average response rate and average top box percentage?                 
-- ANSWER : Average response rates have drastically declined during all the years by ~ 8% (from 2015 to 2023)                     
  
			Select  
					n.year, 
                    avg(response_rate) as Average_response_rate,
                    avg(top_box_percentage)  as Average_top_box_percentage
			from 
					responses r
			JOIN 
					national_results n ON n.release_period = r.release_period
			group by 
					year
			 ;
   
   
   
   
-- Q. Questions/Queries regarding measures and results obtained in survey according to the queries regarding different measures?             
-- ANSWER: Three Measures (Discharge Information, Communication with Doctors, Communication with Nurses) Stood out in the best performing measures with(86.6% , 81.3%, 80.1%),
--         According the Average top box percentage.			
            
            SELECT 
					m.Measure,
					q.question,
					avg(Bottom_Box_Percentage) as Average_bottom_box_percentage, 
					avg(Middle_Box_Percentage) as Average_Middle_box_percentage, 
					avg(Top_Box_Percentage) as Average_Top_box_percentage
			FROM   	
					national_results n
					JOIN
					questions q ON q.Measure_Id = n.Measure_Id
					JOIN
					measures m ON m.Measure_Id = n.Measure_Id
			GROUP BY 
					m.Measure, q.question
			order by   
					Average_Top_box_percentage desc , 
					Average_Middle_box_percentage ,
					Average_bottom_box_percentage ;
                    
                    
-- Q. Year wise top 5 facilities(HOSPITALS) with highest response rates?               
                    
                    
            SELECT 
					a.year, a.state_name, a.facility_id, a.response_rate
			FROM         
					(SELECT  
								year(release_period) as year, s.state_name, facility_id, response_rate,
								RANK() OVER(partition by year(release_period) order by response_rate desc) as rnk
					 FROM    
								responses r
                                 JOIN  
										states s ON s.state = r.state)  as a

			WHERE 
					a.rnk BETWEEN 1 and 5;
                    
                    
                    
                    
                    
							### STATE RESULTS  ###			
                            
                         
                         
-- Q. state wise average top box percentage ?                     
/*	 ANSWER:  South Dakota	76.8 %
				Nebraska	76.7 %       {TOP 3 STATES}
				Louisiana	76.1 %
                */
			
            
            
				
                SELECT a.region, a.state_name,  a.Average_top_box_percentage
				FROM
					(SELECT   sa.region, sa.state_name,
							 ROUND(avg(top_box_percentage), 1)  as Average_top_box_percentage
					FROM     
							 state_results  s
					JOIN     
							 states sa  ON sa.state = s.state
					group by 
							 sa.region, sa.state_name
					order by 	
							  Average_top_box_percentage desc, sa.region) as a
			          
                         ; 
                         
                         
                         
                         
                         
-- Q. region wise average top box percentage ?                            
/* ANSWER:  West North Central	74.8937
			West South Central	73.7028
			East North Central	72.3800
			East South Central	72.3583
			New England			71.1685
			Mountain			71.1542
			Pacific				69.9511
			South Atlantic		68.8188
			Mid-Atlantic		67.2963  */
            
            
                         
                         
					SELECT 
					sa.region, AVG(top_box_percentage) AS Average_top_box_score
					FROM
						state_results s
							JOIN
						states sa ON sa.state = s.state
					GROUP BY 
						sa.region
					ORDER BY 
						Average_top_box_score DESC;



-- Q. Year wise average of States top box perccentage of all measures ?




					SELECT 
							year, st.state_name,
							m.measure,
							AVG(Top_Box_Percentage) AS Average_top_box_percentage
					FROM
							state_results s
								JOIN
							measures m ON m.Measure_Id = s.Measure_Id
								JOIN
							states st ON st.state = s.state
					GROUP BY 
							year , m.measure, st.state_name
					ORDER BY 
							m.measure ,st.state_name, year;
                            
                            
                            
-- Q. Measure wise top performing state according to Average top box percentage?  				
                
                
                
                SELECT a.state_name, a.measure, a.Average_top_box_percentage               
				 FROM               
					  (SELECT 
								st.state_name,
								m.measure,
								AVG(Top_Box_Percentage) AS Average_top_box_percentage,
								Rank() OVER(partition by m.measure order by AVG(Top_Box_Percentage) desc ) as rnk
						FROM
								state_results s
									JOIN
								measures m ON m.Measure_Id = s.Measure_Id
									JOIN
								states st ON st.state = s.state
						GROUP BY 
								st.state_name,m.measure
						ORDER BY 
								m.measure ,Average_top_box_percentage desc, st.state_name) as a
								
				  WHERE rnk = 1            ;    
                  
                  
                  
                  
                  
-- Q. Measure wise Least performing state according to Average top box percentage?  				
                
                
                
                SELECT a.state_name, a.measure, a.Average_top_box_percentage               
				 FROM               
					  (SELECT 
								st.state_name,
								m.measure,
								AVG(Top_Box_Percentage) AS Average_top_box_percentage,
								Rank() OVER(partition by m.measure order by AVG(Top_Box_Percentage) desc ) as rnk
						FROM
								state_results s
									JOIN
								measures m ON m.Measure_Id = s.Measure_Id
									JOIN
								states st ON st.state = s.state
						GROUP BY 
								st.state_name,m.measure
						ORDER BY 
								m.measure ,Average_top_box_percentage desc, st.state_name) as a
								
				  WHERE rnk = 51              ;                  