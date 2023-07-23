CREATE TABLE Weather (
  id            INT PRIMARY KEY,
  recordDate    DATE,
  temperature   INT
);


INSERT INTO Weather (id, recordDate, temperature)
VALUES
  (1, '2015-01-01', 10),
  (2, '2015-01-02', 25),
  (3, '2015-01-03', 20),
  (4, '2015-01-04', 30);

select * 
from weather w1
join weather w2
where w1.recordDate-1=w2.recordDate and w1.temperature > w2.temperature;


--  accepted
SELECT w1.id 
FROM weather w1
JOIN weather w2
WHERE DATE_SUB(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate AND w1.temperature > w2.temperature