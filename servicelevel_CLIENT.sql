---	SERVICE LEVEL
WITH df AS
	(SELECT	s.Order_No,
			s.Order_Date,
			Line_No,
			s.Ship_To_Address_No,
			s.Item_Code SKUs_ord,
			Order_Qty,
			Quantity_Shipped,
			c.Order_Number,
			Line_Number,
			c.Item_Code SKUs_cel,
			Quantity_Ordered,
			Quantity_Canceled,
			ISNULL(Quantity_Ordered, '0') as Quantity_Canceled_new,
			ISNULL(Order_Qty, Quantity_Canceled) as Order_Qty_new,
			ISNULL(Quantity_Shipped, '0') as Quantity_Shipped_new,
			ISNULL(s.Ship_To_Address_No, c.Ship_To_Address_No) as Cus_ID
	FROM	sales s
	FULL OUTER JOIN	canceled c
		ON	s.Order_No = c.Order_Number
	)

,df1 AS
	(SELECT		*,
				Order_Qty_new + Quantity_Canceled_new AS total_ord_qty
	FROM		df
	)

SELECT	Cus_ID,
		SUM(Quantity_Shipped_new)*100/ SUM(total_ord_qty) AS servicelevel_CLIENT
FROM	df1
GROUP BY	Cus_ID
ORDER BY	servicelevel_CLIENT DESC

