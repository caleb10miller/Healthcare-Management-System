CREATE TABLE Insurance (
    InsuranceID VARCHAR2(20) PRIMARY KEY CONSTRAINT insurance_PK_null NOT NULL,
    InsuranceProviderName VARCHAR2(50) CONSTRAINT insurance_InsuranceProviderName_null NOT NULL,
    CoveragePlan VARCHAR2(50) CONSTRAINT insurance_CoveragePlan_null NOT NULL,
    ValidFrom DATE CHECK (ValidFrom > DATE '1900-01-01') CONSTRAINT insurance_ValidFrom_null NOT NULL,
    ValidTo DATE CHECK (ValidTo > DATE '1900-01-01') CONSTRAINT insurance_ValidTo_null NOT NULL
);

CREATE TABLE Patient (
    PatientID CHAR(9) PRIMARY KEY CONSTRAINT patient_PK_null NOT NULL,
    FirstName VARCHAR2(50) CONSTRAINT patient_FirstName_null NOT NULL,
    LastName VARCHAR2(50) CONSTRAINT patient_LastName_null NOT NULL,
    BirthDate DATE CHECK (BirthDate > DATE '1900-01-01') CONSTRAINT patient_BirthDate_null NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F', 'O')) CONSTRAINT patient_Gender_null NOT NULL,
    Address VARCHAR2(100),
    PhoneNum CHAR(15) CONSTRAINT patient_PhoneNum_null NOT NULL,
    InsuranceID VARCHAR2(20), 
    CONSTRAINT patient_FK_insurance FOREIGN KEY (InsuranceID) REFERENCES Insurance(InsuranceID)
);

CREATE TABLE HealthCareProvider (
    ProviderID CHAR(9) PRIMARY KEY CONSTRAINT healthcareprovider_PK_null NOT NULL,
    ProviderName VARCHAR2(50) CONSTRAINT healthcareprovider_ProviderName_null NOT NULL,
    Specialization VARCHAR2(50),
    OfficeAddress VARCHAR2(100),
    OfficePhoneNumber CHAR(15)
);

CREATE TABLE Appointment (
    AppointmentID CHAR(9) PRIMARY KEY CONSTRAINT appointment_PK_null NOT NULL,
    AppointmentDate DATE CHECK (AppointmentDate > DATE '1900-01-01') CONSTRAINT appointment_AppointmentDate_null NOT NULL,
    ReasonForVisit VARCHAR2(100) CONSTRAINT appointment_ReasonForVisit_null NOT NULL,
    PatientID CHAR(9) CONSTRAINT appointment_patientFK_null NOT NULL,
    ProviderID CHAR(9) CONSTRAINT appointment_providerFK_null NOT NULL,
    CONSTRAINT appointment_FK_patient FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    CONSTRAINT appointment_FK_provider FOREIGN KEY (ProviderID) REFERENCES HealthCareProvider(ProviderID)
);

CREATE TABLE Bill (
    BillID CHAR(9) PRIMARY KEY CONSTRAINT bill_PK_null NOT NULL,
    DateIssued DATE CHECK (DateIssued > DATE '1900-01-01') CONSTRAINT bill_DateIssued_null NOT NULL,
    DueDate DATE CHECK (DueDate > DATE '1900-01-01') CONSTRAINT bill_DueDate_null NOT NULL,
    Status VARCHAR2(20) CHECK(Status IN ('Pending', 'Overdue', 'Paid')) CONSTRAINT bill_Status_null NOT NULL,
    AppointmentID CHAR(9) CONSTRAINT bill_FK_null NOT NULL,
    CONSTRAINT bill_FK_appointment FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);


CREATE TABLE Adjustments (
    AdjustmentID CHAR(9) CONSTRAINT adjustment_AdjustmentID_null NOT NULL,
    BillID CHAR(9) CONSTRAINT adjustment_FK_null NOT NULL,
    DateAdjusted DATE CHECK (DateAdjusted > DATE '1900-01-01') CONSTRAINT adjustments_DateAdjusted_null NOT NULL,
    AmountAdjusted NUMBER CHECK(AmountAdjusted BETWEEN 0 AND 100000) CONSTRAINT adjustments_AmountAdjusted_null NOT NULL,
    ReasonForAdjustment VARCHAR2(100),
    CONSTRAINT adjustments_PK PRIMARY KEY (AdjustmentID, BillID),
    CONSTRAINT adjustment_FK_bill FOREIGN KEY (BillID) REFERENCES Bill(BillID)
);

CREATE TABLE Payments (
    PaymentID CHAR(9) CONSTRAINT payments_PK_null NOT NULL,
    BillID CHAR(9) CONSTRAINT payments_FK_null NOT NULL,
    DatePaid DATE CHECK (DatePaid > DATE '1900-01-01') CONSTRAINT payments_DatePaid_null NOT NULL,
    AmountPaid NUMBER CHECK(AmountPaid BETWEEN 0 AND 100000) CONSTRAINT payments_AmountPaid_null NOT NULL,
    PaymentMethod VARCHAR2(50) CHECK(PaymentMethod IN ('Credit Card', 'Debit Card', 'Cash', 'Check', 'Online')) CONSTRAINT payments_PaymentMethod_null NOT NULL,
    CONSTRAINT payments_PK PRIMARY KEY (PaymentID, BillID),
    CONSTRAINT payments_FK_bill FOREIGN KEY (BillID) REFERENCES Bill(BillID)
);

CREATE TABLE Service (
    ServiceID CHAR(9) PRIMARY KEY CONSTRAINT service_PK_null NOT NULL,
    ServiceDescription VARCHAR2(100) CONSTRAINT service_ServiceDescription_null NOT NULL
);

CREATE TABLE BillDetails (
    BillDetailID CHAR(9) CONSTRAINT billdetails_PK_null NOT NULL,
    BillID CHAR(9) CONSTRAINT billdetails_FK_BillID_null NOT NULL,
    Quantity NUMBER CHECK(Quantity BETWEEN 0 AND 100) CONSTRAINT billdetails_Quantity_null NOT NULL,
    Rate NUMBER CHECK(Rate BETWEEN 0 AND 100000) CONSTRAINT billdetails_Rate_null NOT NULL,
    Subtotal NUMBER CHECK(Subtotal BETWEEN 0 AND 10000000) CONSTRAINT billdetails_Subtotal_null NOT NULL,
    ServiceID CHAR(9) CONSTRAINT billdetails_FK_ServiceID_null NOT NULL,
    CONSTRAINT billdetails_PK PRIMARY KEY (BillDetailID, BillID),
    CONSTRAINT billdetails_FK_bill FOREIGN KEY (BillID) REFERENCES Bill(BillID),
    CONSTRAINT billdetails_FK_service FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);
