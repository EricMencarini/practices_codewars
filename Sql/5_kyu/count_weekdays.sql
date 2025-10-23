--https://www.codewars.com/kata/58241d05e7a162c5b100010f/train/sql
CREATE OR REPLACE FUNCTION weekdays(start_time DATE, end_time DATE)
RETURNS INTEGER
LANGUAGE sql
AS $$
  WITH sorted_week_days AS 
  ( 
    SELECT 
      ranged_date::DATE, 
      TO_CHAR(ranged_date::DATE, 'Day'), 
      ROW_NUMBER() OVER(ORDER BY ranged_date::DATE) AS rank_days
    FROM 
      generate_series(
        LEAST(start_time, end_time),   
        GREATEST(start_time, end_time), 
        INTERVAL '1 day'
      ) AS ranged_date
    WHERE 
      EXTRACT(ISODOW FROM ranged_date::DATE) < 6 -- Saturday/Sunday
  ) 
  SELECT 
    COUNT(*) AS total_weekdays 
  FROM sorted_week_days;
$$;

