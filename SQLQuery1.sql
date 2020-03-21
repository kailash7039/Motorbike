Select A.*,dbo.getSizeName(2) as SizeNamee,'2' as SizeIDD,SizeData.Name,SizeData.Extention
from tblProducts A
Cross apply(
	Select top 1 B.Name,Extention from  tblProductImages B where B.PID=A.PID
) SizeData
where A.PID=1