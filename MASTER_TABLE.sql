WITH df AS
	(SELECT	s.Order_No,
		s.Order_Date,
		Line_No,
		s.Ship_To_Address_No,
		s.Item_Code SKUs_sale,
		Order_Qty,
		Quantity_Shipped,
		c.Order_Number,
		Line_Number,
		c.Item_Code SKUs_can,
		Quantity_Ordered,
		Quantity_Canceled,
		ISNULL(Quantity_Ordered, '0') as Quantity_Canceled_new,
		ISNULL(Order_Qty, Quantity_Canceled) as Order_Qty_new,
		ISNULL(Quantity_Shipped, '0') as Quantity_Shipped_new,
		ISNULL(s.Order_Date, c.Order_Date) as Order_day,
		ISNULL(s.Order_No, c.Order_Number) as Order_No_New,
		ISNULL(s.Line_No, c.Line_Number) as Line_No_New,
		ISNULL(s.Ship_To_Address_No, c.Ship_To_Address_No) as Ship_To_Address_No_New,
		ISNULL(s.Item_Code, c.Item_Code) as SKUs_new,
	 	ISNULL(s.Order_Date, c.Order_Date) as Order_Date_new
	FROM	sales s
	FULL OUTER JOIN	canceled c
		ON	s.Order_No = c.Order_Number
		AND s.Item_Code = c.Item_Code
	)

SELECT	Order_No_New,
	Order_Date_new,
	Line_No_New,
	Ship_To_Address_No_New,
	SKUs_new,
	Order_Qty_new,
	Quantity_Shipped_new,
	Quantity_Canceled_new
FROM	df
