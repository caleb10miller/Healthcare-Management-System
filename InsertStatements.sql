INSERT INTO INSURANCE (InsuranceID, InsuranceProviderName, CoveragePlan, ValidFrom, ValidTo)
VALUES ('0000000001', 'Blue Cross Blue Shield', 'A', TO_DATE('2023-01-13', 'YYYY-MM-DD'), TO_DATE('2024-01-13', 'YYYY-MM-DD'));

INSERT INTO INSURANCE (InsuranceID, InsuranceProviderName, CoveragePlan, ValidFrom, ValidTo)
VALUES ('0000000002', 'Blue Cross Blue Shield', 'B', TO_DATE('2023-07-11', 'YYYY-MM-DD'), TO_DATE('2024-07-11', 'YYYY-MM-DD'));

INSERT INTO INSURANCE (InsuranceID, InsuranceProviderName, CoveragePlan, ValidFrom, ValidTo)
VALUES ('0000000003', 'United Healthcare', 'S', TO_DATE('2023-02-22', 'YYYY-MM-DD'), TO_DATE('2024-02-22', 'YYYY-MM-DD'));

INSERT INTO INSURANCE (InsuranceID, InsuranceProviderName, CoveragePlan, ValidFrom, ValidTo)
VALUES ('0000000004', 'Humana', 'D', TO_DATE('2023-09-13', 'YYYY-MM-DD'), TO_DATE('2024-09-13', 'YYYY-MM-DD'));

INSERT INTO INSURANCE (InsuranceID, InsuranceProviderName, CoveragePlan, ValidFrom, ValidTo)
VALUES ('0000000005', 'Cigna', 'A', TO_DATE('2023-11-20', 'YYYY-MM-DD'), TO_DATE('2024-11-20', 'YYYY-MM-DD'));

INSERT INTO PATIENT (PatientID, FirstName, LastName, BirthDate, Gender, Address, PhoneNum, InsuranceID)
VALUES ('000000001', 'Randy', 'Marsh', TO_DATE('1978-02-13', 'YYYY-MM-DD'), 'M', '123 Fake Road Dr. South Park, CO 11111', '+1-876-555-6308', '0000000005');

INSERT INTO PATIENT (PatientID, FirstName, LastName, BirthDate, Gender, Address, PhoneNum, InsuranceID)
VALUES ('000000002', 'Skip', 'Bayless', TO_DATE('1960-09-29', 'YYYY-MM-DD'), 'M', '465 Fake Road Ln. New York, NY 22222', '+1-123-555-0926', '0000000003');

INSERT INTO PATIENT (PatientID, FirstName, LastName, BirthDate, Gender, Address, PhoneNum, InsuranceID)
VALUES ('000000003', 'Michelle', 'Obama', TO_DATE('1971-04-03', 'YYYY-MM-DD'), 'F', '932 Fake Road Cir. Fairfax, VA 33333', '+1-544-555-0007', '0000000001');

INSERT INTO PATIENT (PatientID, FirstName, LastName, BirthDate, Gender, Address, PhoneNum, InsuranceID)
VALUES ('000000004', 'Casey', 'Bryant', TO_DATE('2000-12-24', 'YYYY-MM-DD'), 'O', '324 Fake Road Dr. San Francisco, CA 44444', '+1-998-555-7874', '0000000004');

INSERT INTO PATIENT (PatientID, FirstName, LastName, BirthDate, Gender, Address, PhoneNum, InsuranceID)
VALUES ('000000005', 'Randy', 'Moss', TO_DATE('1982-01-27', 'YYYY-MM-DD'), 'M', '886 Fake Road Ln. Boston, MA 55555', '+1-443-555-1114', '0000000002');

INSERT INTO PATIENT (PatientID, FirstName, LastName, BirthDate, Gender, Address, PhoneNum)
VALUES ('000000006', 'Gerald', 'Green', TO_DATE('1948-04-01', 'YYYY-MM-DD'), 'M', '454 Fake Road Rd. Charleston, SC 12345', '+1-443-555-8866');

INSERT INTO HEALTHCAREPROVIDER (ProviderID, ProviderName, Specialization, OfficeAddress, OfficePhoneNumber)
VALUES ('000000001', 'Stephen Miller', 'Cardiology', '731 Fake Road Rd. Knoxville, TN 66666', '+1-865-555-4809');

INSERT INTO HEALTHCAREPROVIDER (ProviderID, ProviderName, Specialization, OfficeAddress, OfficePhoneNumber)
VALUES ('000000002', 'Randall Smith', 'Dermatology', '4800 Fake Road Dr. Philadelphia, PA 19121', '+1-856-555-1234');

INSERT INTO HEALTHCAREPROVIDER (ProviderID, ProviderName, Specialization, OfficeAddress, OfficePhoneNumber)
VALUES ('000000003', 'William Ball', 'Gastroenterology', '2700 Fake Road Cir. Dallas, TX 77777', '+1-123-555-9977');

INSERT INTO HEALTHCAREPROVIDER (ProviderID, ProviderName, Specialization, OfficeAddress, OfficePhoneNumber)
VALUES ('000000004', 'Ian Gallagher', 'Neurology', '173 Fake Road Dr. Chicago, IL 88888', '+1-444-555-3498');

INSERT INTO HEALTHCAREPROVIDER (ProviderID, ProviderName, Specialization, OfficeAddress, OfficePhoneNumber)
VALUES ('000000005', 'Chloe Bryant', 'Cardiology', '444 Fake Road Ln. Nashville, TN 99999', '+1-423-555-3336');

INSERT INTO APPOINTMENT (AppointmentID, AppointmentDate, ReasonForVisit, PatientID, ProviderID)
VALUES ('000000001', TO_DATE('2024-02-28', 'YYYY-MM-DD'), 'Sharp pain in chest', '000000003', '000000001');

INSERT INTO APPOINTMENT (AppointmentID, AppointmentDate, ReasonForVisit, PatientID, ProviderID)
VALUES ('000000002', TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Skin uncontrollably breaking out', '000000005', '000000002');

INSERT INTO APPOINTMENT (AppointmentID, AppointmentDate, ReasonForVisit, PatientID, ProviderID)
VALUES ('000000003', TO_DATE('2023-09-28', 'YYYY-MM-DD'), 'Fingers tingle and loss of feeling in extremities', '000000001', '000000004');

INSERT INTO APPOINTMENT (AppointmentID, AppointmentDate, ReasonForVisit, PatientID, ProviderID)
VALUES ('000000004', TO_DATE('2023-11-18', 'YYYY-MM-DD'), 'Sharp pain in chest', '000000002', '000000005');

INSERT INTO APPOINTMENT (AppointmentID, AppointmentDate, ReasonForVisit, PatientID, ProviderID)
VALUES ('000000005', TO_DATE('2024-01-21', 'YYYY-MM-DD'), 'Difficulty swallowing', '000000004', '000000003');

INSERT INTO BILL (BillID, DateIssued, DueDate, Status, AppointmentID)
VALUES ('000000001', TO_DATE('2024-01-22', 'YYYY-MM-DD'), TO_DATE('2024-04-22', 'YYYY-MM-DD'), 'Overdue', '000000005');

INSERT INTO BILL (BillID, DateIssued, DueDate, Status, AppointmentID)
VALUES ('000000002', TO_DATE('2023-11-19', 'YYYY-MM-DD'), TO_DATE('2024-02-19', 'YYYY-MM-DD'), 'Paid', '000000004');

INSERT INTO BILL (BillID, DateIssued, DueDate, Status, AppointmentID)
VALUES ('000000003', TO_DATE('2024-05-06', 'YYYY-MM-DD'), TO_DATE('2024-08-06', 'YYYY-MM-DD'), 'Pending', '000000002');

INSERT INTO BILL (BillID, DateIssued, DueDate, Status, AppointmentID)
VALUES ('000000004', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Overdue', '000000001');

INSERT INTO BILL (BillID, DateIssued, DueDate, Status, AppointmentID)
VALUES ('000000005', TO_DATE('2023-09-29', 'YYYY-MM-DD'), TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'Paid', '000000003');

INSERT INTO ADJUSTMENTS (AdjustmentID, BillID, DateAdjusted, AmountAdjusted, ReasonForAdjustment)
VALUES ('000000001', '000000001', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 547.00, 'Insurance Applied');

INSERT INTO ADJUSTMENTS (AdjustmentID, BillID, DateAdjusted, AmountAdjusted, ReasonForAdjustment)
VALUES ('000000001', '000000005', TO_DATE('2023-09-30', 'YYYY-MM-DD'), 5000.00, 'Insurance Applied');

INSERT INTO ADJUSTMENTS (AdjustmentID, BillID, DateAdjusted, AmountAdjusted, ReasonForAdjustment)
VALUES ('000000002', '000000005', TO_DATE('2023-10-03', 'YYYY-MM-DD'), 2000.00, 'Overcharged');

INSERT INTO ADJUSTMENTS (AdjustmentID, BillID, DateAdjusted, AmountAdjusted, ReasonForAdjustment)
VALUES ('000000001', '000000003', TO_DATE('2024-06-01', 'YYYY-MM-DD'), 100.00, 'Insurance Applied');

INSERT INTO ADJUSTMENTS (AdjustmentID, BillID, DateAdjusted, AmountAdjusted, ReasonForAdjustment)
VALUES ('000000001', '000000002', TO_DATE('2023-11-30', 'YYYY-MM-DD'), 1050.00, 'Insurance Applied');

INSERT INTO PAYMENTS (PaymentID, BillID, DatePaid, AmountPaid, PaymentMethod)
VALUES ('000000001', '000000001', TO_DATE('2024-03-11', 'YYYY-MM-DD'), 100.00, 'Credit Card');

INSERT INTO PAYMENTS (PaymentID, BillID, DatePaid, AmountPaid, PaymentMethod)
VALUES ('000000001', '000000002', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 1050.00, 'Debit Card');

INSERT INTO PAYMENTS (PaymentID, BillID, DatePaid, AmountPaid, PaymentMethod)
VALUES ('000000001', '000000004', TO_DATE('2024-04-01', 'YYYY-MM-DD'), 100.00, 'Cash');

INSERT INTO PAYMENTS (PaymentID, BillID, DatePaid, AmountPaid, PaymentMethod)
VALUES ('000000001', '000000005', TO_DATE('2023-12-11', 'YYYY-MM-DD'), 3000.00, 'Check');

INSERT INTO PAYMENTS (PaymentID, BillID, DatePaid, AmountPaid, PaymentMethod)
VALUES ('000000002', '000000001', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 100.00, 'Online');

INSERT INTO SERVICE (ServiceID, ServiceDescription)
VALUES ('000000001', 'Heart Cath');

INSERT INTO SERVICE (ServiceID, ServiceDescription)
VALUES ('000000002', 'Acne Treatment');

INSERT INTO SERVICE (ServiceID, ServiceDescription)
VALUES ('000000003', 'Decompression Surgery');

INSERT INTO SERVICE (ServiceID, ServiceDescription)
VALUES ('000000004', 'Bypass Surgery');

INSERT INTO SERVICE (ServiceID, ServiceDescription)
VALUES ('000000005', 'Fundoplication');

INSERT INTO BILLDETAILS (BillDetailID, BillID, Quantity, Rate, Subtotal, ServiceID)
VALUES ('000000001', '000000005', 1, 3000.00, 3000.00, '000000005');

INSERT INTO BILLDETAILS (BillDetailID, BillID, Quantity, Rate, Subtotal, ServiceID)
VALUES ('000000001', '000000004', 1, 400.00, 400.00, '000000001');

INSERT INTO BILLDETAILS (BillDetailID, BillID, Quantity, Rate, Subtotal, ServiceID)
VALUES ('000000001', '000000001', 1, 1000.00, 1000.00, '000000005');

INSERT INTO BILLDETAILS (BillDetailID, BillID, Quantity, Rate, Subtotal, ServiceID)
VALUES ('000000001', '000000003', 1, 100.00, 100.00, '000000002');

INSERT INTO BILLDETAILS (BillDetailID, BillID, Quantity, Rate, Subtotal, ServiceID)
VALUES ('000000001', '000000002', 1, 2000.00, 2000.00, '000000004');
