-- 상품별 판매수량
SELECT p.ProductID, p.ProductName, sum(od.Quantity) 
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;
-- 상품별 매출액
SELECT p.ProductID, p.ProductName, sum(od.Quantity) * p.Price '합'
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;
-- 날짜별 매출액
SELECT o.OrderDate, od.ProductID,
       p.ProductName, p.Price, od.Quantity,
       sum(p.Price * od.Quantity) '합'
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate
;


-- 추가 총합

-- 회계같은 경우 전년도 남은 액수를 va안에 넣어도 될거같다
SET @va = 0;
SELECT a.OrderDate, sales, (@va := @va + sales) as total_sale 
FROM (  SELECT o.OrderDate, sum( p.Price*od.Quantity) as sales
 FROM Orders o   JOIN OrderDetails  od on o.OrderID=od.OrderID
				Join Products p on p.ProductID=od.ProductID GROUP BY OrderDate ) a;
