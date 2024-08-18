SELECT * FROM ERD.Resources;

-- Identify schools with a shortage of resources (e.g., less than 50 books):
SELECT s.Name, r.Type, r.Quatity
FROM ERD.Resources r
JOIN Schools s ON r.SchoolID = s.SchoolID
WHERE r.Type = 'Books' AND r.Quantity < 50;