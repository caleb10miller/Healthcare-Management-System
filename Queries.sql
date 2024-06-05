--Amount due for Patient Randy Moss
SELECT p.FirstName, p.LastName,SUM(bd.Subtotal) AS AmountDue
FROM BILLDETAILS bd JOIN Bill b ON bd.BillID = b.BillID JOIN Appointment a ON a.AppointmentID = b.AppointmentID JOIN Patient p ON p.PatientID = a.PatientID
WHERE p.FirstName = 'Randy' AND p.LastName = 'Moss'
GROUP BY b.BILLID, p.FirstName, p.LastName;


--Office Address for Dr. Chloe Bryant 
SELECT H.OfficeAddress
FROM HealthCareProvider H
WHERE H.ProviderName = 'Chloe Bryant';

--Appointments on 01/21/2024 for William Ball 
SELECT A.*
FROM Appointment A
JOIN HealthCareProvider H ON A.ProviderID = H.ProviderID
WHERE A.AppointmentDate = TO_DATE('01/21/2024', 'MM/DD/YYYY')
AND H.ProviderID = '000000003';

--Gross Amount of Bypass Surgery done from 01/01/2021 - 05/30/2024 
SELECT SUM(BD.Subtotal) AS Gross
FROM BillDetails BD
JOIN Service S ON BD.ServiceID = S.ServiceID
JOIN Bill B ON BD.BillID = B.BillID
WHERE S.ServiceDescription = 'Bypass Surgery'
AND B.DateIssued BETWEEN TO_DATE('2021-01-01', 'YYYY-MM-DD') AND TO_DATE('2024-05-30', 'YYYY-MM-DD');

--Payments made by patient Casey Bryant towards bill ‘000000001’
SELECT P.*
FROM Payments P
JOIN Bill B ON P.BillID = B.BillID
JOIN Appointment A ON B.AppointmentID = A.AppointmentID
JOIN Patient PA ON A.PatientID = PA.PatientID
WHERE PA.FirstName = 'Casey'
AND PA.LastName = 'Bryant'
AND B.BillID = '000000001';

--Adjustments made for Bill ‘000000002’ where reason for adjustment = ‘Insurance Applied’
SELECT A.*
FROM Adjustments A
WHERE A.BillID = '000000002'
AND A.ReasonForAdjustment = 'Insurance Applied';

--office address for providers with specialty = 'Cardiology'
SELECT H.OfficeAddress
FROM HealthCareProvider H
WHERE H.Specialization = 'Cardiology';

--select patients with null insurance
SELECT P.*
FROM Patient P
WHERE P.InsuranceID IS NULL;
