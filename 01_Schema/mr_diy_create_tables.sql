-- @C:\Users\User\Documents\mr_diy_create_tables.sql"

-- ==========================================
-- CREATE ALL TABLES FOR MR. DIY DATABASE
-- ==========================================

SET ECHO ON;
SET FEEDBACK ON;


-- ========== 1. PERSON ========== joel
CREATE TABLE Person (
    PersonID     VARCHAR2(10)   NOT NULL,
    NationalID   VARCHAR2(15)   NOT NULL,
    FullName     VARCHAR2(70)   NOT NULL,
    PhoneNumber  VARCHAR2(15)   NOT NULL,
    PRIMARY KEY (PersonID, NationalID)
);

-- ========== 2. PRODUCT ========== aina
CREATE TABLE Product (
    ProductCode        VARCHAR2(10)    NOT NULL,
    StockKeepingUnit   VARCHAR2(10)    NOT NULL,
    ProductName        VARCHAR2(100)   NOT NULL,
    Brand              VARCHAR2(50)    NOT NULL,
    Category           VARCHAR2(50)    NOT NULL,
    ShelfLife          VARCHAR2(20)    NOT NULL,
    Weight             NUMBER(5,2)     NOT NULL CHECK (Weight > 0),
    Color              VARCHAR2(30)    NOT NULL,
    Material           VARCHAR2(30)    NOT NULL,
    ProductOrigin      VARCHAR2(50)    NOT NULL,
    PRIMARY KEY (ProductCode, StockKeepingUnit)
);

-- ========== 3. WAREHOUSE ========= aina
CREATE TABLE Warehouse (
    WarehouseCode        VARCHAR2(10)     NOT NULL,
    ZoneID               VARCHAR2(10)     NOT NULL,
    LocationName         VARCHAR2(50)     NOT NULL,
    CapacityLimit        INT              NOT NULL CHECK (CapacityLimit > 0),
    AreaSize             INT              NOT NULL CHECK (AreaSize > 0),
    WarehouseType        VARCHAR2(20)     NOT NULL,
    SafetyRating         NUMBER(2,1)     NOT NULL CHECK (SafetyRating BETWEEN 1.0 AND 5.0),
    WarehouseName        VARCHAR2(100)    NOT NULL,
    LastInspectionDate   DATE             NOT NULL,
    RestockFrequency     VARCHAR2(15)     NOT NULL,
    PRIMARY KEY (WarehouseCode, ZoneID)
);

-- ========== 4. LOYALTYPROGRAM ========= Iskandar
CREATE TABLE LoyaltyProgram (
    ProgramID             VARCHAR2(10)   NOT NULL,
    TierCode              VARCHAR2(10)   NOT NULL,
    TierName              VARCHAR2(30)   NOT NULL,
    RewardPointsRate      DECIMAL(5,2)   NOT NULL CHECK (RewardPointsRate >= 0),
    PointsExpiryPeriod    VARCHAR2(20)   NOT NULL,
    EnrollmentDate        DATE           NOT NULL,
    MemberBenefits        CLOB           NOT NULL,
    AnnualFee             DECIMAL(8,2)   NOT NULL CHECK (AnnualFee >= 0),
    RedemptionRate        DECIMAL(6,2)   NOT NULL CHECK (RedemptionRate >= 0),
    EligibilityCriteria   CLOB           NOT NULL,
    PRIMARY KEY (ProgramID, TierCode)
);

-- ========== 5. EMPLOYEE ========== joel
CREATE TABLE Employee (
    EmployeeID        VARCHAR2(10)   NOT NULL,
    WorkEmail         VARCHAR2(40)   NOT NULL,
    PositionTitle     VARCHAR2(50)   NOT NULL,
    DateHired         DATE           NOT NULL,
    Salary            DECIMAL(10,2)  CHECK (Salary >= 0),
    Workshift         VARCHAR2(20)   NOT NULL,
    EmploymentStatus  VARCHAR2(20)   NOT NULL,
    LeaveBalance      INTEGER        CHECK (LeaveBalance >= 0),
    SupervisorName    VARCHAR2(70)   NOT NULL,
    WorkLocation      VARCHAR2(100)  NOT NULL,
    PersonID          VARCHAR2(10)   NOT NULL,
    NationalID        VARCHAR2(15)   NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID)
);

-- ========== 6. CUSTOMER ========== joel
CREATE TABLE Customer (
    CustomerID         VARCHAR2(10)    NOT NULL,
    LoyaltyCardNumber  VARCHAR2(16)    NOT NULL,
    EmailAddress       VARCHAR2(100)   NOT NULL UNIQUE,
    DateOfBirth        DATE            NOT NULL,
    Address            VARCHAR2(200)   NOT NULL,
    Gender             CHAR(1)         CHECK (Gender IN ('M', 'F')),
    MembershipLevel    VARCHAR2(20)    NOT NULL,
    AccountStatus      VARCHAR2(20)    CHECK (AccountStatus IN ('Active', 'Inactive', 'Banned')),
    LastPurchaseDate   DATE            NOT NULL,
    PreferredBranch    VARCHAR2(50)    NOT NULL,
    PersonID           VARCHAR2(10)    NOT NULL,
    NationalID         VARCHAR2(15)    NOT NULL,
    ProgramID          VARCHAR2(10)    NOT NULL,
    TierCode           VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (CustomerID, LoyaltyCardNumber),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode)
);

-- ========== 7. SUPPLIER ========== aina
CREATE TABLE Supplier (
    SupplierID            VARCHAR2(10)     NOT NULL,
    BusinessLicenseNo     VARCHAR2(20)     NOT NULL,
    CompanyName           VARCHAR2(100)    NOT NULL,
    MinimumOrderQty       NUMBER           NOT NULL,
    SupplierRating        NUMBER(2,1)      NOT NULL CHECK (SupplierRating >= 0 AND SupplierRating <= 5),
    BusinessType          VARCHAR2(50)     NOT NULL,
    OfficeLocation        VARCHAR2(100)    NOT NULL,
    ServiceArea           VARCHAR2(100)    NOT NULL,
    YearsInBusiness       NUMBER           CHECK (YearsInBusiness >= 0),
    ContractExpiryDate    DATE             NOT NULL,
    PersonID              VARCHAR2(10)     NOT NULL,
    NationalID            VARCHAR2(15)     NOT NULL,
    EmployeeID            VARCHAR2(10)     NOT NULL,
    WorkEmail             VARCHAR2(40)     NOT NULL,
    PRIMARY KEY (SupplierID, BusinessLicenseNo),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail)
);

-- ========== 8. BRANCH ========== joel
CREATE TABLE Branch (
    BranchCode           VARCHAR2(10)     NOT NULL,
    RegionCode           VARCHAR2(10)     NOT NULL,
    BranchName           VARCHAR2(100)    NOT NULL CHECK (BranchName <> ''),
    AddressDetail        VARCHAR2(100)    NOT NULL CHECK (AddressDetail <> ''),
    OpeningDate          DATE             NOT NULL,
    BranchManager        VARCHAR2(40)     NOT NULL,
    BranchSize           VARCHAR2(10)     NOT NULL,
    TotalEmployees       NUMBER           NOT NULL,
    MonthlySalesTarget   NUMBER(12,2)     NOT NULL CHECK (MonthlySalesTarget >= 0),
    CustomerTraficLevel  VARCHAR2(10)     NOT NULL,
    ProgramID            VARCHAR2(10)     NOT NULL,
    TierCode             VARCHAR2(10)     NOT NULL,
    WarehouseCode        VARCHAR2(10)     NOT NULL,
    ZoneID               VARCHAR2(10)     NOT NULL,
    PRIMARY KEY (BranchCode, RegionCode),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID)
);

-- ========== 9. MAINTENANCE ========= rik
CREATE TABLE Maintenance (
    MaintenanceID        VARCHAR2(10)    NOT NULL,
    WorkOrderNo          VARCHAR2(15)    NOT NULL,
    MaintenanceType      VARCHAR2(20)    NOT NULL,
    ServiceDate          DATE            NOT NULL,
    EquipmentCode        VARCHAR2(15)    NOT NULL,
    TechnicianName       VARCHAR2(50)    NOT NULL,
    ServiceCost          NUMBER(8,2)    NOT NULL CHECK (ServiceCost >= 0),
    DowntimeDuration     VARCHAR2(10)    NOT NULL,
    IssueReported        CLOB            NOT NULL,
    RepairStatus         VARCHAR2(20)    NOT NULL CHECK (RepairStatus IN ('Completed', 'Pending', 'In Progress')),
    BranchCode           VARCHAR2(10)    NOT NULL,
    RegionCode           VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (MaintenanceID, WorkOrderNo),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode)
);

-- ========== 10. TRAINING ========= rik
CREATE TABLE Training (
    TrainingID           VARCHAR2(15)    NOT NULL,
    SessionCode          VARCHAR2(15)    NOT NULL,
    TrainingTopic        VARCHAR2(100)   NOT NULL,
    TrainerName          VARCHAR2(50)    NOT NULL,
    StartDate            DATE            NOT NULL,
    EndDate              DATE            NOT NULL,
    TrainingMode         VARCHAR2(20)    NOT NULL CHECK (TrainingMode IN ('Virtual', 'Physical', 'Hybrid')),
    CertificationIssued  VARCHAR2(3)     NOT NULL CHECK (CertificationIssued IN ('Yes', 'No')),
    AttendanceCount      INT             NOT NULL CHECK (AttendanceCount >= 0),
    TrainingOutcome      CLOB            NOT NULL,
    BranchCode           VARCHAR2(10)    NOT NULL,
    RegionCode           VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (TrainingID, SessionCode),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode)
);


-- ========== 11. ITSYSTEM ========= Iskandar
CREATE TABLE ITSystem (
    SystemID             VARCHAR2(15)    NOT NULL,
    ServerCode           VARCHAR2(15)    NOT NULL,
    SystemName           VARCHAR2(50)    NOT NULL,
    VersionNumber        VARCHAR2(10)    NOT NULL,
    ImplementationDate   DATE            NOT NULL,
    VendorName           VARCHAR2(50)    NOT NULL,
    UpdateSchedule       VARCHAR2(20)    NOT NULL,
    SystemType           VARCHAR2(30)    NOT NULL,
    StatusFlag           VARCHAR2(10)    NOT NULL,
    MaintenanceWindow    VARCHAR2(20)    NOT NULL,
    BranchCode           VARCHAR2(10)    NOT NULL,
    RegionCode           VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (SystemID, ServerCode),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode)
);

-- ========== 12. INVENTORY ========== aina
CREATE TABLE Inventory (
    InventoryCode       VARCHAR2(10)    NOT NULL,
    StorageBin          VARCHAR2(10)    NOT NULL,
    RestockLevel        NUMBER          NOT NULL CHECK (RestockLevel >= 0),
    CurrentStockQTY     NUMBER          NOT NULL CHECK (CurrentStockQTY >= 0),
    MaxCapacity         NUMBER          NOT NULL CHECK (MaxCapacity > 0),
    ReorderCycleDays    NUMBER          NOT NULL CHECK (ReorderCycleDays > 0),
    DamagedQTY          NUMBER          NOT NULL CHECK (DamagedQTY >= 0),
    OnHoldStock         NUMBER          NOT NULL CHECK (OnHoldStock >= 0),
    InventoryStatus     VARCHAR2(20)    NOT NULL CHECK (InventoryStatus IN ('In Stock', 'Low Stock', 'Overstock')),
    StockCheckDate      DATE            NOT NULL,
    BranchCode          VARCHAR2(10)    NOT NULL,
    RegionCode          VARCHAR2(10)    NOT NULL,
    ProductCode         VARCHAR2(10)    NOT NULL,
    StockKeepingUnit    VARCHAR2(10)    NOT NULL,
    WarehouseCode       VARCHAR2(10)    NOT NULL,
    ZoneID              VARCHAR2(10)    NOT NULL,
    SystemID            VARCHAR2(10)    NOT NULL,
    ServerCode          VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (InventoryCode, StorageBin),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);

-- ========== 13. PROCUREMENT ========= iskandar
CREATE TABLE Procurement (
    ProcurementID            VARCHAR2(10)    NOT NULL,
    OrderCycleCode           VARCHAR2(10)    NOT NULL,
    RequestDate              DATE            NOT NULL,
    ApprovalStatus           VARCHAR2(10)    NOT NULL CHECK (ApprovalStatus IN ('Approved', 'Pending', 'Rejected')),
    OrderedQty               INT             NOT NULL,
    EstimatedDeliveryDate    DATE            NOT NULL,
    SupplierRatingUsed       NUMBER(2,1)    NOT NULL,
    QuotationRef             VARCHAR2(10)    NOT NULL,
    CostEstimate             NUMBER(10,2)   NOT NULL CHECK (CostEstimate >= 0),
    ProcurementOfficer       VARCHAR2(50)    NOT NULL,
    EmployeeID               VARCHAR2(10)    NOT NULL,
    WorkEmail                VARCHAR2(40)    NOT NULL,
    SupplierID               VARCHAR2(10)    NOT NULL,
    BusinessLicenseNo       VARCHAR2(20)    NOT NULL,
    BranchCode               VARCHAR2(10)    NOT NULL,
    RegionCode               VARCHAR2(10)    NOT NULL,
    MaintenanceID            VARCHAR2(10)    NOT NULL,
    WorkOrderNo              VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (ProcurementID, OrderCycleCode),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (SupplierID, BusinessLicenseNo) REFERENCES Supplier(SupplierID, BusinessLicenseNo),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (MaintenanceID, WorkOrderNo) REFERENCES Maintenance(MaintenanceID, WorkOrderNo)
);

-- ========== 14. PROMOTION ========== Iskandar
CREATE TABLE Promotion (
    PromoCode               VARCHAR2(20)    NOT NULL,
    PromoID                 VARCHAR2(20)    NOT NULL,
    PromoName               VARCHAR2(100)   NOT NULL,
    DiscountRate            NUMBER(5,2)     NOT NULL,
    PromoType               VARCHAR2(30)    NOT NULL,
    StartDate               DATE            NOT NULL,
    EndDate                 DATE            NOT NULL,
    MinPurchaseAmount       NUMBER(10,2)    NOT NULL,
    ApplicableCategory      VARCHAR2(50)    NOT NULL,
    UsageLimit              VARCHAR2(20)    NOT NULL,
    EmployeeID              VARCHAR2(10)    NOT NULL,
    WorkEmail               VARCHAR2(40)    NOT NULL,
    ProgramID               VARCHAR2(10)    NOT NULL,
    TierCode                VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (PromoCode, PromoID),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode)
);

-- ========== 15. SALESTRANSACTION ========== iskandar
CREATE TABLE SalesTransaction (
    TransactionID           VARCHAR2(10)    NOT NULL,
    InvoiceNumber           VARCHAR2(10)    NOT NULL,
    TransactionDate         DATE            NOT NULL,
    PaymentMode             VARCHAR2(30)    NOT NULL,
    TransactionTime         TIMESTAMP       NOT NULL,
    TotalAmount             NUMBER(10,2)    NOT NULL CHECK (TotalAmount >= 0),
    DiscountAmount          NUMBER(10,2)    NOT NULL CHECK (DiscountAmount >= 0),
    TaxValue                NUMBER(10,2)    NOT NULL CHECK (TaxValue >= 0),
    ItemCount               NUMBER          NOT NULL CHECK (ItemCount >= 0),
    TransactionChannel      VARCHAR2(20)    NOT NULL,
    EmployeeID              VARCHAR2(10)    NOT NULL,
    WorkEmail               VARCHAR2(40)    NOT NULL,
    BranchCode              VARCHAR2(10)    NOT NULL,
    RegionCode              VARCHAR2(10)    NOT NULL,
    ProgramID               VARCHAR2(10)    NOT NULL,
    TierCode                VARCHAR2(10)    NOT NULL,
    PromoCode               VARCHAR2(10)    NOT NULL,
    PromoID                 VARCHAR2(10)    NOT NULL,
    SystemID                VARCHAR2(10)    NOT NULL,
    ServerCode              VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (TransactionID, InvoiceNumber),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode),
    FOREIGN KEY (PromoCode, PromoID)REFERENCES Promotion(PromoCode, PromoID),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);

-- ========== 16. PAYMENT ==========  joel
CREATE TABLE Payment (
    PaymentID           VARCHAR2(10)    NOT NULL,
    ReceiptNo           VARCHAR2(10)    NOT NULL,
    PaymentType         VARCHAR2(30)    NOT NULL,
    AmountPaid          NUMBER(10,2)    NOT NULL,
    PaymentDate         DATE            NOT NULL,
    PaymentStatus       VARCHAR2(20)    NOT NULL,
    CurrencyType        VARCHAR2(5)     NOT NULL,
    CardType            VARCHAR2(20)    NOT NULL,
    TransactionRef      VARCHAR2(20)    NOT NULL,
    IssuerBank          VARCHAR2(50)    NOT NULL,
    BranchCode          VARCHAR2(10)    NOT NULL,
    RegionCode          VARCHAR2(10)    NOT NULL,
    TransactionID       VARCHAR2(10)    NOT NULL,
    InvoiceNumber       VARCHAR2(10)    NOT NULL,
    ProcurementID       VARCHAR2(10)    NOT NULL,
    OrderCycleCode      VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (PaymentID, ReceiptNo),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode)
);

-- ========== 17. DELIVERY ========= aina
CREATE TABLE Delivery (
    DeliveryID          VARCHAR2(10)    NOT NULL,
    LogisticRefNo       VARCHAR2(10)    NOT NULL,
    DeliveryMethod      VARCHAR2(20)    NOT NULL,
    ScheduledDate       DATE            NOT NULL,
    ActualDeliveryDate  DATE            NOT NULL,
    DeliveryStatus      VARCHAR2(15)    NOT NULL,
    CourierName         VARCHAR2(30)    NOT NULL,
    DeliveryTimeSlot    VARCHAR2(15)    NOT NULL,
    TrackingURL         VARCHAR2(255)   NOT NULL,
    ShippingFee         DECIMAL(6,2)    NOT NULL CHECK (ShippingFee >= 0),
    BranchCode          VARCHAR2(10)    NOT NULL,
    RegionCode          VARCHAR2(10)    NOT NULL,
    TransactionID       VARCHAR2(10)    NOT NULL,
    InvoiceNumber       VARCHAR2(10)    NOT NULL,
    ProcurementID       VARCHAR2(10)    NOT NULL,
    OrderCycleCode      VARCHAR2(10)    NOT NULL,
    WarehouseCode       VARCHAR2(10)    NOT NULL,
    ZoneID              VARCHAR2(10)    NOT NULL,
    SystemID            VARCHAR2(10)    NOT NULL,
    ServerCode          VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (DeliveryID, LogisticRefNo),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);

-- ========== 18. COMPLAINT ========= rik
CREATE TABLE Complaint (
    ComplaintID         VARCHAR2(10)     NOT NULL,
    CaseNumber          VARCHAR2(15)     NOT NULL,
    ComplaintType       VARCHAR2(50)     NOT NULL,
    Description         CLOB             NOT NULL,
    ComplaintDate       DATE             NOT NULL,
    ResolutionStatus    VARCHAR2(20)     NOT NULL,
    FollowUpDate        DATE,
    SeverityLevel       VARCHAR2(10)     NOT NULL CHECK (SeverityLevel IN ('Low', 'Medium', 'High')),
    ContactMethod       VARCHAR2(15)     NOT NULL,
    ResolutionDetails   CLOB,
    BranchCode          VARCHAR2(10)     NOT NULL,
    RegionCode          VARCHAR2(10)     NOT NULL,
    PaymentID           VARCHAR2(10)     NOT NULL,
    ReceiptNo           VARCHAR2(10)     NOT NULL,
    InventoryCode       VARCHAR2(10)     NOT NULL,
    StorageBin          VARCHAR2(10)     NOT NULL,
    PromoCode           VARCHAR2(20)     NOT NULL,
    PromoID             VARCHAR2(20)     NOT NULL,
    DeliveryID          VARCHAR2(10)     NOT NULL,
    LogisticRefNo       VARCHAR2(10)     NOT NULL,
    SystemID            VARCHAR2(10)     NOT NULL,
    ServerCode          VARCHAR2(10)     NOT NULL,
    ProcurementID       VARCHAR2(10)     NOT NULL,
    OrderCycleCode      VARCHAR2(10)     NOT NULL,
    TransactionID       VARCHAR2(10)     NOT NULL,
    InvoiceNumber       VARCHAR2(10)     NOT NULL,
    WarehouseCode       VARCHAR2(10)     NOT NULL,
    ZoneID              VARCHAR2(10)     NOT NULL,
    ProgramID           VARCHAR2(10)     NOT NULL,
    TierCode            VARCHAR2(10)     NOT NULL,
    PRIMARY KEY (ComplaintID, CaseNumber),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (PaymentID, ReceiptNo) REFERENCES Payment(PaymentID, ReceiptNo),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin),
    FOREIGN KEY (PromoCode, PromoID) REFERENCES Promotion(PromoCode, PromoID),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode)
);

-- ========== 19. PRODUCTRETURN ========== joel
CREATE TABLE ProductReturn (
    ReturnID            VARCHAR2(10)    NOT NULL,
    ReturnReceipt       VARCHAR2(10)    NOT NULL,
    ReturnDate          DATE            NOT NULL,
    ReasonCode          VARCHAR2(20)    NOT NULL,
    ProductCondition    VARCHAR2(20)    NOT NULL,
    ReturnType          VARCHAR2(20)    NOT NULL,
    ItemOpened          VARCHAR2(5)     NOT NULL,
    RefundAmount        NUMBER(10,2)    NOT NULL,
    IsExchange          VARCHAR2(5)     NOT NULL,
    RefundMethod        VARCHAR2(50)    NOT NULL,
    BranchCode          VARCHAR2(10)    NOT NULL,
    RegionCode          VARCHAR2(10)    NOT NULL,
    TransactionID       VARCHAR2(10)    NOT NULL,
    InvoiceNumber       VARCHAR2(10)    NOT NULL,
    PaymentID           VARCHAR2(10)    NOT NULL,
    ReceiptNo           VARCHAR2(10)    NOT NULL,
    ProgramID           VARCHAR2(10)    NOT NULL,
    TierCode            VARCHAR2(10)    NOT NULL,
    DeliveryID          VARCHAR2(10)    NOT NULL,
    LogisticRefNo       VARCHAR2(10)    NOT NULL,
    ComplaintID         VARCHAR2(10)    NOT NULL,
    CaseNumber          VARCHAR2(10)    NOT NULL,
    ProcurementID       VARCHAR2(10)    NOT NULL,
    OrderCycleCode      VARCHAR2(10)    NOT NULL,
    WarehouseCode       VARCHAR2(10)    NOT NULL,
    ZoneID              VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (ReturnID, ReturnReceipt),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber),
    FOREIGN KEY (PaymentID, ReceiptNo) REFERENCES Payment(PaymentID, ReceiptNo),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID)
);

-- ========== 20. REVIEW ========= rik
CREATE TABLE Review (
    ReviewID               VARCHAR2(10)    NOT NULL,
    FeedbackRef            VARCHAR2(10)    NOT NULL,
    RatingValue            INT             NOT NULL CHECK (RatingValue BETWEEN 1 AND 5),
    ReviewDate             DATE            NOT NULL,
    ReviewContent          CLOB            NOT NULL,
    ResponseStatus         VARCHAR2(15)    NOT NULL,
    ProductQualityRating   INT             NOT NULL CHECK (ProductQualityRating BETWEEN 1 AND 5),
    ServiceRating          INT             NOT NULL CHECK (ServiceRating BETWEEN 1 AND 5),
    ReviewPlatform         VARCHAR2(20)    NOT NULL,
    AnonymousFlag          VARCHAR2(5)     CHECK (AnonymousFlag IN ('Yes', 'No')),
    BranchCode             VARCHAR2(10)    NOT NULL,
    RegionCode             VARCHAR2(10)    NOT NULL,
    ProductCode            VARCHAR2(10)    NOT NULL,
    StockKeepingUnit       VARCHAR2(10)    NOT NULL,
    TransactionID          VARCHAR2(10)    NOT NULL,
    InvoiceNumber          VARCHAR2(10)    NOT NULL,
    PromoCode              VARCHAR2(20)    NOT NULL,
    PromoID                VARCHAR2(20)    NOT NULL,
    ReturnID               VARCHAR2(10)    NOT NULL,
    ReturnReceipt          VARCHAR2(10)    NOT NULL,
    DeliveryID             VARCHAR2(10)    NOT NULL,
    LogisticRefNo          VARCHAR2(10)    NOT NULL,
    ProgramID              VARCHAR2(10)    NOT NULL,
    TierCode               VARCHAR2(10)    NOT NULL,
    TrainingID             VARCHAR2(10)    NOT NULL,
    SessionCode            VARCHAR2(10)    NOT NULL,
    SystemID               VARCHAR2(10)    NOT NULL,
    ServerCode             VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (ReviewID, FeedbackRef),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber),
    FOREIGN KEY (PromoCode, PromoID) REFERENCES Promotion(PromoCode, PromoID),
    FOREIGN KEY (ReturnID, ReturnReceipt) REFERENCES ProductReturn(ReturnID, ReturnReceipt),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode),
    FOREIGN KEY (TrainingID, SessionCode) REFERENCES Training(TrainingID, SessionCode),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);

-- ========== 21. AUDITACTIVITY ========= rik
CREATE TABLE AuditActivity (
    AuditID              VARCHAR2(10)    NOT NULL,
    LogSessionID         VARCHAR2(20)    NOT NULL,
    AuditDate            DATE            NOT NULL,
    PerformedBy          VARCHAR2(50)    NOT NULL,
    AuditType            VARCHAR2(30)    NOT NULL,
    FindingsSummary      CLOB            NOT NULL,
    ComplianceStatus     VARCHAR2(20)    NOT NULL CHECK (ComplianceStatus IN ('Compliant', 'Non-Compliant', 'Partial Compliance')),
    AuditToolUsed        VARCHAR2(30)    NOT NULL,
    ActionPlanRef        VARCHAR2(15),
    NextAuditDate        DATE            NOT NULL,
    EmployeeID           VARCHAR2(10)    NOT NULL,
    WorkEmail            VARCHAR2(40)    NOT NULL,
    BranchCode           VARCHAR2(10)    NOT NULL,
    RegionCode           VARCHAR2(10)    NOT NULL,
    TransactionID        VARCHAR2(10)    NOT NULL,
    InvoiceNumber        VARCHAR2(10)    NOT NULL,
    PaymentID            VARCHAR2(10)    NOT NULL,
    ReceiptNo            VARCHAR2(10)    NOT NULL,
    DeliveryID           VARCHAR2(10)    NOT NULL,
    LogisticRefNo        VARCHAR2(10)    NOT NULL,
    WarehouseCode        VARCHAR2(10)    NOT NULL,
    ZoneID               VARCHAR2(10)    NOT NULL,
    PromoCode            VARCHAR2(20)    NOT NULL,
    PromoID              VARCHAR2(20)    NOT NULL,
    ProcurementID        VARCHAR2(10)    NOT NULL,
    OrderCycleCode       VARCHAR2(10)    NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber),
    FOREIGN KEY (PaymentID, ReceiptNo) REFERENCES Payment(PaymentID, ReceiptNo),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (PromoCode, PromoID) REFERENCES Promotion(PromoCode, PromoID),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode)
);


-- ================================================
-- CREATE ALL EXPLOSION TABLES FOR MR. DIY DATABASE
-- ================================================

-- ========== 1. PersonReviewSubmission ========= 
CREATE TABLE PersonReviewSubmission (
    PersonID      VARCHAR2(10) NOT NULL,
    NationalID    VARCHAR2(15) NOT NULL,
    ReviewID      VARCHAR2(10) NOT NULL,
    FeedbackRef   VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, ReviewID, FeedbackRef),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (ReviewID, FeedbackRef) REFERENCES Review(ReviewID, FeedbackRef)
);

-- ========== 2. PersonBranchInteraction ========= 
CREATE TABLE PersonBranchInteraction (
    PersonID     VARCHAR2(10) NOT NULL,
    NationalID   VARCHAR2(15) NOT NULL,
    BranchCode   VARCHAR2(10) NOT NULL,
    RegionCode   VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, BranchCode, RegionCode),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode)
);

-- ========== 3. PersonComplaintRecord ========= 
CREATE TABLE PersonComplaintRecord (
    PersonID     VARCHAR2(10) NOT NULL,
    NationalID   VARCHAR2(15) NOT NULL,
    ComplaintID  VARCHAR2(10) NOT NULL,
    CaseNumber   VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, ComplaintID, CaseNumber),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber)
);


-- ========== 4. PersonProductInteraction ========= 
CREATE TABLE PersonProductInteraction (
    PersonID         VARCHAR2(10) NOT NULL,
    NationalID       VARCHAR2(15) NOT NULL,
    ProductCode      VARCHAR2(10) NOT NULL,
    StockKeepingUnit VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, ProductCode, StockKeepingUnit),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit)
);


-- ========== 5. PersonPaymentTransaction ========= 
CREATE TABLE PersonPaymentTransaction (
    PersonID    VARCHAR2(10) NOT NULL,
    NationalID  VARCHAR2(15) NOT NULL,
    PaymentID   VARCHAR2(10) NOT NULL,
    ReceiptNo   VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, PaymentID, ReceiptNo),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (PaymentID, ReceiptNo) REFERENCES Payment(PaymentID, ReceiptNo)
);


-- ========== 6. PersonProductReturnRequest ========= 
CREATE TABLE PersonProductReturnRequest (
    PersonID        VARCHAR2(10) NOT NULL,
    NationalID      VARCHAR2(15) NOT NULL,
    ReturnID        VARCHAR2(10) NOT NULL,
    ReturnReceipt   VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, ReturnID, ReturnReceipt),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (ReturnID, ReturnReceipt) REFERENCES ProductReturn(ReturnID, ReturnReceipt)
);

-- ========== 7. PersonDeliveryRecord ========= 
CREATE TABLE PersonDeliveryRecord (
    PersonID        VARCHAR2(10) NOT NULL,
    NationalID      VARCHAR2(15) NOT NULL,
    DeliveryID      VARCHAR2(10) NOT NULL,
    LogisticRefNo   VARCHAR2(10) NOT NULL,
    PRIMARY KEY (PersonID, NationalID, DeliveryID, LogisticRefNo),
    FOREIGN KEY (PersonID, NationalID) REFERENCES Person(PersonID, NationalID),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo)
);

-- ========== 8. CustomerPromotionRedemption ========= 
CREATE TABLE CustomerPromotionRedemption (
    CustomerID         VARCHAR2(10)  NOT NULL,
    LoyaltyCardNumber  VARCHAR2(16)  NOT NULL,
    PromoCode          VARCHAR(20)   NOT NULL,
    PromoID            VARCHAR2(20)  NOT NULL,
    PRIMARY KEY (CustomerID, LoyaltyCardNumber, PromoCode, PromoID),
    FOREIGN KEY (CustomerID, LoyaltyCardNumber) REFERENCES Customer(CustomerID, LoyaltyCardNumber),
    FOREIGN KEY (PromoCode, PromoID) REFERENCES Promotion(PromoCode, PromoID)
);

-- ========== 9. CustomerSalesTransaction ========= 
CREATE TABLE CustomerSalesTransaction (
    CustomerID         VARCHAR2(10)  NOT NULL,
    LoyaltyCardNumber  VARCHAR2(16)  NOT NULL,
    TransactionID      VARCHAR2(10)  NOT NULL,
    InvoiceNumber      VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (CustomerID, LoyaltyCardNumber, TransactionID, InvoiceNumber),
    FOREIGN KEY (CustomerID, LoyaltyCardNumber) REFERENCES Customer(CustomerID, LoyaltyCardNumber),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber)
);

-- ========== 10. EmployeeCustomerSupport ========= 
CREATE TABLE EmployeeCustomerSupport (
    EmployeeID         VARCHAR2(10)  NOT NULL,
    WorkEmail          VARCHAR2(40)  NOT NULL,
    CustomerID         VARCHAR2(10)  NOT NULL,
    LoyaltyCardNumber  VARCHAR2(16)  NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail, CustomerID, LoyaltyCardNumber),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (CustomerID, LoyaltyCardNumber) REFERENCES Customer(CustomerID, LoyaltyCardNumber)
);

-- ========== 11. EmployeeITSystemAccess ========= 
CREATE TABLE EmployeeITSystemAccess (
    EmployeeID  VARCHAR2(10)  NOT NULL,
    WorkEmail   VARCHAR2(40)  NOT NULL,
    SystemID    VARCHAR2(15)  NOT NULL,
    ServerCode  VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail, SystemID, ServerCode),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);

-- ========== 12. EmployeeTrainingEnrollment ========= 
CREATE TABLE EmployeeTrainingEnrollment (
    EmployeeID   VARCHAR2(10)  NOT NULL,
    WorkEmail    VARCHAR2(40)  NOT NULL,
    TrainingID   VARCHAR2(15)  NOT NULL,
    SessionCode  VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail, TrainingID, SessionCode),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (TrainingID, SessionCode) REFERENCES Training(TrainingID, SessionCode)
);

-- ========== 13. EmployeeInventoryHandling ========= 
CREATE TABLE EmployeeInventoryHandling (
    EmployeeID   VARCHAR2(10)  NOT NULL,
    WorkEmail    VARCHAR2(40)  NOT NULL,
    InventoryCode    VARCHAR2(10)  NOT NULL,
    StorageBin   VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail, InventoryCode, StorageBin),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin)
);

-- ========== 14. EmployeeMaintenanceAssignment ========= 
CREATE TABLE EmployeeMaintenanceAssignment (
    EmployeeID     VARCHAR2(10)  NOT NULL,
    WorkEmail      VARCHAR2(40)  NOT NULL,
    MaintenanceID  VARCHAR2(10)  NOT NULL,
    WorkOrderNo    VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail, MaintenanceID, WorkOrderNo),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (MaintenanceID, WorkOrderNo) REFERENCES Maintenance(MaintenanceID, WorkOrderNo)
);

-- ========== 15. EmployeeWarehouseAssignment ========= 
CREATE TABLE EmployeeWarehouseAssignment (
    EmployeeID     VARCHAR2(10)  NOT NULL,
    WorkEmail      VARCHAR2(40)  NOT NULL,
    WarehouseCode  VARCHAR2(10)  NOT NULL,
    ZoneID         VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (EmployeeID, WorkEmail, WarehouseCode, ZoneID),
    FOREIGN KEY (EmployeeID, WorkEmail) REFERENCES Employee(EmployeeID, WorkEmail),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID)
);

-- ========== 16. SupplierAuditInspection ========= 
CREATE TABLE SupplierAuditInspection (
    SupplierID         VARCHAR2(10)  NOT NULL,
    BusinessLicenseNo  VARCHAR2(20)  NOT NULL,
    AuditID            VARCHAR2(10)  NOT NULL,
    LogSessionID       VARCHAR2(20)  NOT NULL,
    PRIMARY KEY (SupplierID, BusinessLicenseNo, AuditID, LogSessionID),
    FOREIGN KEY (SupplierID, BusinessLicenseNo) REFERENCES Supplier(SupplierID, BusinessLicenseNo),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID)
);



-- ========== 17. SupplierInventorySupply ========= 
CREATE TABLE SupplierInventorySupply (
    SupplierID         VARCHAR2(10)  NOT NULL,
    BusinessLicenseNo  VARCHAR2(20)  NOT NULL,
    InventoryCode          VARCHAR2(10)  NOT NULL,
    StorageBin         VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (SupplierID, BusinessLicenseNo, InventoryCode, StorageBin),
    FOREIGN KEY (SupplierID, BusinessLicenseNo) REFERENCES Supplier(SupplierID, BusinessLicenseNo),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin)
);

-- ========== 18. BranchProductStock ========= 
CREATE TABLE BranchProductStock (
    BranchCode        VARCHAR2(10)  NOT NULL,
    RegionCode        VARCHAR2(10)  NOT NULL,
    ProductCode       VARCHAR2(10)  NOT NULL,
    StockKeepingUnit  VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (BranchCode, RegionCode, ProductCode, StockKeepingUnit),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit)
);


-- ========== 19. BranchPromotionAvailability ========= 
CREATE TABLE BranchPromotionAvailability (
    BranchCode   VARCHAR2(10)  NOT NULL,
    RegionCode   VARCHAR2(10)  NOT NULL,
    PromoCode    VARCHAR2(20)  NOT NULL,
    PromoID      VARCHAR2(20)  NOT NULL,
    PRIMARY KEY (BranchCode, RegionCode, PromoCode, PromoID),
    FOREIGN KEY (BranchCode, RegionCode) REFERENCES Branch(BranchCode, RegionCode),
    FOREIGN KEY (PromoCode, PromoID) REFERENCES Promotion(PromoCode, PromoID)
);


-- ========== 20. ProductSalesTransactionDetail ========= 
CREATE TABLE ProductSalesTransactionDetail (
    ProductCode       VARCHAR2(10)  NOT NULL,
    StockKeepingUnit  VARCHAR2(10)  NOT NULL,
    TransactionID     VARCHAR2(10)  NOT NULL,
    InvoiceNumber     VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ProductCode, StockKeepingUnit, TransactionID, InvoiceNumber),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (TransactionID, InvoiceNumber) REFERENCES SalesTransaction(TransactionID, InvoiceNumber)
);


-- ========== 21. ProductAuditCheck ========= 
CREATE TABLE ProductAuditCheck (
    ProductCode       VARCHAR2(10)  NOT NULL,
    StockKeepingUnit  VARCHAR2(10)  NOT NULL,
    AuditID           VARCHAR2(10)  NOT NULL,
    LogSessionID      VARCHAR2(20)  NOT NULL,
    PRIMARY KEY (ProductCode, StockKeepingUnit, AuditID, LogSessionID),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID)
);

-- ========== 22. ProductProcurementRequest ========= 
CREATE TABLE ProductProcurementRequest (
    ProductCode       VARCHAR2(10)  NOT NULL,
    StockKeepingUnit  VARCHAR2(10)  NOT NULL,
    ProcurementID     VARCHAR2(10)  NOT NULL,
    OrderCycleCode    VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ProductCode, StockKeepingUnit, ProcurementID, OrderCycleCode),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode)
);

-- ========== 23. ProductDeliveryShipment ========= 
CREATE TABLE ProductDeliveryShipment (
    ProductCode       VARCHAR2(10)  NOT NULL,
    StockKeepingUnit  VARCHAR2(10)  NOT NULL,
    DeliveryID        VARCHAR2(10)  NOT NULL,
    LogisticRefNo     VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ProductCode, StockKeepingUnit, DeliveryID, LogisticRefNo),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo)
);

-- ========== 24. ProductComplaintReport ========= 
CREATE TABLE ProductComplaintReport (
    ProductCode       VARCHAR2(10)  NOT NULL,
    StockKeepingUnit  VARCHAR2(10)  NOT NULL,
    ComplaintID       VARCHAR2(10)  NOT NULL,
    CaseNumber        VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (ProductCode, StockKeepingUnit, ComplaintID, CaseNumber),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber)
);

-- ========== 25. PromotionProductLink ========= 
CREATE TABLE PromotionProductLink (
    PromoCode        VARCHAR2(20)  NOT NULL,
    PromoID          VARCHAR2(20)  NOT NULL,
    ProductCode      VARCHAR2(10)  NOT NULL,
    StockKeepingUnit VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (PromoCode, PromoID, ProductCode, StockKeepingUnit),
    FOREIGN KEY (PromoCode, PromoID) REFERENCES Promotion(PromoCode, PromoID),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit)
);


-- ========== 26. ProductReturnInventoryUpdate ========= 
CREATE TABLE ProductReturnInventoryUpdate (
    ReturnID      VARCHAR2(10)  NOT NULL,
    ReturnReceipt VARCHAR2(10)  NOT NULL,
    InventoryCode     VARCHAR2(10)  NOT NULL,
    StorageBin    VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ReturnID, ReturnReceipt, InventoryCode, StorageBin),
    FOREIGN KEY (ReturnID, ReturnReceipt) REFERENCES ProductReturn(ReturnID, ReturnReceipt),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin)
);

-- ========== 27. ProductReturnProductDetail ========= 
CREATE TABLE ProductReturnProductDetail (
    ReturnID        VARCHAR2(10)  NOT NULL,
    ReturnReceipt   VARCHAR2(10)  NOT NULL,
    ProductCode     VARCHAR2(10)  NOT NULL,
    StockKeepingUnit VARCHAR2(10) NOT NULL,
    PRIMARY KEY (ReturnID, ReturnReceipt, ProductCode, StockKeepingUnit),
    FOREIGN KEY (ReturnID, ReturnReceipt) REFERENCES ProductReturn(ReturnID, ReturnReceipt),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit)
);

-- ========== 28. ComplaintMaintenanceAction   ========= 
CREATE TABLE ComplaintMaintenanceAction (
    ComplaintID    VARCHAR2(10)  NOT NULL,
    CaseNumber     VARCHAR2(15)  NOT NULL,
    MaintenanceID  VARCHAR2(10)  NOT NULL,
    WorkOrderNo    VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (ComplaintID, CaseNumber, MaintenanceID, WorkOrderNo),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber),
    FOREIGN KEY (MaintenanceID, WorkOrderNo) REFERENCES Maintenance(MaintenanceID, WorkOrderNo)
);

-- ========== 29. ComplaintReviewFeedback  ========= 
CREATE TABLE ComplaintReviewFeedback (
    ComplaintID   VARCHAR2(10)  NOT NULL,
    CaseNumber    VARCHAR2(15)  NOT NULL,
    ReviewID      VARCHAR2(10)  NOT NULL,
    FeedbackRef   VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ComplaintID, CaseNumber, ReviewID, FeedbackRef),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber),
    FOREIGN KEY (ReviewID, FeedbackRef) REFERENCES Review(ReviewID, FeedbackRef)
);

-- ========== 30. ComplaintTrainingResponse ========= 
CREATE TABLE ComplaintTrainingResponse (
    ComplaintID   VARCHAR2(10)  NOT NULL,
    CaseNumber    VARCHAR2(15)  NOT NULL,
    TrainingID    VARCHAR2(15)  NOT NULL,
    SessionCode   VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (ComplaintID, CaseNumber, TrainingID, SessionCode),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber),
    FOREIGN KEY (TrainingID, SessionCode) REFERENCES Training(TrainingID, SessionCode)
);

-- ========== 31. DeliveryInventoryContents ========= 
CREATE TABLE DeliveryInventoryContents (
    DeliveryID     VARCHAR2(10)  NOT NULL,
    LogisticRefNo  VARCHAR2(10)  NOT NULL,
    InventoryCode      VARCHAR2(10)  NOT NULL,
    StorageBin     VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (DeliveryID, LogisticRefNo, InventoryCode, StorageBin),
    FOREIGN KEY (DeliveryID, LogisticRefNo) REFERENCES Delivery(DeliveryID, LogisticRefNo),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin)
);

-- ========== 32. ProcurementInventoryRequest ========= 
CREATE TABLE ProcurementInventoryRequest (
    ProcurementID   VARCHAR2(10)  NOT NULL,
    OrderCycleCode  VARCHAR2(10)  NOT NULL,
    InventoryCode       VARCHAR2(10)  NOT NULL,
    StorageBin      VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ProcurementID, OrderCycleCode, InventoryCode, StorageBin),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin)
);

-- ========== 33. ProcurementWarehouse ========= 
CREATE TABLE ProcurementWarehouse (
    ProcurementID   VARCHAR2(10)  NOT NULL,
    OrderCycleCode  VARCHAR2(10)  NOT NULL,
    WarehouseCode   VARCHAR2(10)  NOT NULL,
    ZoneID          VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (ProcurementID, OrderCycleCode, WarehouseCode, ZoneID),
    FOREIGN KEY (ProcurementID, OrderCycleCode) REFERENCES Procurement(ProcurementID, OrderCycleCode),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID)
);

-- ========== 34. AuditComplaintInspection ========= 
CREATE TABLE AuditComplaintInspection (
    AuditID      VARCHAR2(10)  NOT NULL,
    LogSessionID VARCHAR2(20)  NOT NULL,
    ComplaintID  VARCHAR2(10)  NOT NULL,
    CaseNumber   VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID, ComplaintID, CaseNumber),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID),
    FOREIGN KEY (ComplaintID, CaseNumber) REFERENCES Complaint(ComplaintID, CaseNumber)
);


-- ========== 35. AuditInventoryCheck ========= 
CREATE TABLE AuditInventoryCheck (
    AuditID      VARCHAR2(10)  NOT NULL,
    LogSessionID VARCHAR2(20)  NOT NULL,
    InventoryCode    VARCHAR2(10)  NOT NULL,
    StorageBin   VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID, InventoryCode, StorageBin),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID),
    FOREIGN KEY (InventoryCode, StorageBin) REFERENCES Inventory(InventoryCode, StorageBin)
);

-- ========== 36. AuditTrainingAssessment ========= 
CREATE TABLE AuditTrainingAssessment (
    AuditID      VARCHAR2(10)  NOT NULL,
    LogSessionID VARCHAR2(20)  NOT NULL,
    TrainingID   VARCHAR2(15)  NOT NULL,
    SessionCode  VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID, TrainingID, SessionCode),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID),
    FOREIGN KEY (TrainingID, SessionCode) REFERENCES Training(TrainingID, SessionCode)
);

-- ========== 37. AuditITSystemEvaluation ========= 
CREATE TABLE AuditITSystemEvaluation (
    AuditID      VARCHAR2(10)  NOT NULL,
    LogSessionID VARCHAR2(20)  NOT NULL,
    SystemID     VARCHAR2(15)  NOT NULL,
    ServerCode   VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID, SystemID, ServerCode),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);


-- ========== 38. AuditLoyaltyProgramCompliance ========= 
CREATE TABLE AuditLoyaltyProgramCompliance (
    AuditID      VARCHAR2(10)  NOT NULL,
    LogSessionID VARCHAR2(20)  NOT NULL,
    ProgramID    VARCHAR2(10)  NOT NULL,
    TierCode     VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID, ProgramID, TierCode),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode)
);

-- ========== 39. AuditMaintenanceFollowUp ========= 
CREATE TABLE AuditMaintenanceFollowUp (
    AuditID       VARCHAR2(10)  NOT NULL,
    LogSessionID  VARCHAR2(20)  NOT NULL,
    MaintenanceID VARCHAR2(10)  NOT NULL,
    WorkOrderNo   VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (AuditID, LogSessionID, MaintenanceID, WorkOrderNo),
    FOREIGN KEY (AuditID, LogSessionID) REFERENCES AuditActivity(AuditID, LogSessionID),
    FOREIGN KEY (MaintenanceID, WorkOrderNo) REFERENCES Maintenance(MaintenanceID, WorkOrderNo)
);

-- ========== 40. WarehouseProductStock ========= 
CREATE TABLE WarehouseProductStock (
    WarehouseCode    VARCHAR2(10)  NOT NULL,
    ZoneID           VARCHAR2(10)  NOT NULL,
    ProductCode      VARCHAR2(10)  NOT NULL,
    StockKeepingUnit VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (WarehouseCode, ZoneID, ProductCode, StockKeepingUnit),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (ProductCode, StockKeepingUnit) REFERENCES Product(ProductCode, StockKeepingUnit)
);

-- ========== 41. WarehouseTrainingSession ========= 
CREATE TABLE WarehouseTrainingSession (
    WarehouseCode VARCHAR2(10)  NOT NULL,
    ZoneID        VARCHAR2(10)  NOT NULL,
    TrainingID    VARCHAR2(15)  NOT NULL,
    SessionCode   VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (WarehouseCode, ZoneID, TrainingID, SessionCode),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (TrainingID, SessionCode) REFERENCES Training(TrainingID, SessionCode)
);

-- ========== 42. WarehouseMaintenanceRecord ========= 
CREATE TABLE WarehouseMaintenanceRecord (
    WarehouseCode  VARCHAR2(10)  NOT NULL,
    ZoneID         VARCHAR2(10)  NOT NULL,
    MaintenanceID  VARCHAR2(10)  NOT NULL,
    WorkOrderNo    VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (WarehouseCode, ZoneID, MaintenanceID, WorkOrderNo),
    FOREIGN KEY (WarehouseCode, ZoneID) REFERENCES Warehouse(WarehouseCode, ZoneID),
    FOREIGN KEY (MaintenanceID, WorkOrderNo) REFERENCES Maintenance(MaintenanceID, WorkOrderNo)
);

-- ========== 43. MaintenanceITSystemService ========= 
CREATE TABLE MaintenanceITSystemService (
    MaintenanceID  VARCHAR2(10)  NOT NULL,
    WorkOrderNo    VARCHAR2(15)  NOT NULL,
    SystemID       VARCHAR2(15)  NOT NULL,
    ServerCode     VARCHAR2(15)  NOT NULL,
    PRIMARY KEY (MaintenanceID, WorkOrderNo, SystemID, ServerCode),
    FOREIGN KEY (MaintenanceID, WorkOrderNo) REFERENCES Maintenance(MaintenanceID, WorkOrderNo),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode)
);

-- ========== 44. ITSystemLoyaltyProgram ========= 
CREATE TABLE ITSystemLoyaltyProgram (
    SystemID   VARCHAR2(15)  NOT NULL,
    ServerCode VARCHAR2(15)  NOT NULL,
    ProgramID  VARCHAR2(10)  NOT NULL,
    TierCode   VARCHAR2(10)  NOT NULL,
    PRIMARY KEY (SystemID, ServerCode, ProgramID, TierCode),
    FOREIGN KEY (SystemID, ServerCode) REFERENCES ITSystem(SystemID, ServerCode),
    FOREIGN KEY (ProgramID, TierCode) REFERENCES LoyaltyProgram(ProgramID, TierCode)
);



-- =============================================
-- SHOW ALL CREATED TABLES FOR MR. DIY DATABASE
-- =============================================

SET LINESIZE 100

-- ========== 21 ENTITIES TABLE =========
DESC Person;
DESC Product;
DESC Warehouse;
DESC LoyaltyProgram;
DESC Employee;
DESC Customer;
DESC Supplier;
DESC Branch;
DESC Maintenance;
DESC Training;
DESC ITSystem;
DESC Inventory;
DESC Procurement;
DESC Promotion;
DESC SalesTransaction;
DESC Payment;
DESC Delivery;
DESC Complaint;
DESC ProductReturn;
DESC Review;
DESC Audit;

-- ========== 44 EXPLOSION TABLE ========= 
DESC PersonReviewSubmission;
DESC PersonBranchInteraction;
DESC PersonComplaintRecord;
DESC PersonProductInteraction;
DESC PersonPaymentTransaction;
DESC ProductReturn;
DESC PersonDeliveryRecord;
DESC CustomerPromotionRedemption;
DESC CustomerSalesTransaction;
DESC EmployeeCustomerSupport;
DESC EmployeeITSystemAccess;
DESC EmployeeTrainingEnrollment;
DESC EmployeeInventoryHandling;
DESC EmployeeMaintenanceAssignment;
DESC EmployeeWarehouseAssignment;
DESC SupplierAuditInspection;
DESC SupplierInventorySupply;
DESC BranchProductStock;
DESC BranchPromotionAvailability;
DESC ProductSalesTransactionDetail;
DESC ProductAuditCheck;
DESC ProductProcurementRequest;
DESC ProductDeliveryShipment;
DESC ProductComplaintReport;
DESC PromotionProductLink;
DESC ProductReturnInventoryUpdate;
DESC ProductReturnProductDetail;
DESC ComplaintMaintenanceAction;
DESC ComplaintReviewFeedback;
DESC ComplaintTrainingResponse;
DESC DeliveryInventoryContents;
DESC ProcurementInventoryRequest;
DESC ProcurementWarehouse;
DESC AuditComplaintInspection;
DESC AuditInventoryCheck;
DESC AuditTrainingAssessment;
DESC AuditITSystemEvaluation;
DESC AuditLoyaltyProgramCompliance;
DESC AuditMaintenanceFollowUp;
DESC WarehouseProductStock;
DESC WarehouseTrainingSession;
DESC WarehouseMaintenanceRecord;
DESC MaintenanceITSystemService;
DESC ITSystemLoyaltyProgram;

