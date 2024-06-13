Create database E_Greetings;

use E_Greetings;


-- User Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY Identity(1,1),
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Role VARCHAR(10) CHECK (Role IN ('Admin', 'User')) NOT NULL,
    SubscriptionStatus VARCHAR(10) DEFAULT 'Inactive' CHECK (SubscriptionStatus IN ('Active', 'Inactive'))
);
select * from Users;
Insert into Users(Username , Password , Email , Role , SubscriptionStatus) Values('Ubaid' , 'ubaid123' , 'ubaid@gmail.com' , 'User' , 'Active');
-- Template Table

CREATE TABLE Templates (
    TemplateID INT PRIMARY KEY Identity(1,1),
    TemplateName VARCHAR(255) NOT NULL,
    TemplateCategory VARCHAR(50) NOT NULL,
    TemplateContent VARCHAR(MAX) NOT NULL
);

-- Feedback Table

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY Identity(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID) On Delete Cascade,
    FeedbackContent NVARCHAR(MAX) NOT NULL,
    FeedbackDate DATETIME NOT NULL
);
select * from Feedback;

Insert into Feedback(UserID , FeedbackContent , FeedbackDate) Values(2, 'Its a nice website Inshallah semester of the month' , 13-06-2024);

-- Transaction Table

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY Identity(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID) On Delete Cascade,
    TransactionDate DATETIME NOT NULL,
    TransactionType NVARCHAR(50) NOT NULL,
    Amount DECIMAL(18, 2) NOT NULL
);


-- Subscription Details Table:

CREATE TABLE SubscriptionDetails (
    SubscriptionID INT PRIMARY KEY Identity(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID) On Delete Cascade,
    SubscriptionStartDate DATE NOT NULL,
    SubscriptionEndDate DATE NOT NULL,
    PaymentStatus NVARCHAR(20) CHECK (PaymentStatus IN ('Paid', 'Not Paid')) NOT NULL
);

-- Recipient Emails Table:

CREATE TABLE RecipientEmails (
    RecipientID INT PRIMARY KEY Identity(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID) On Delete Cascade,
    Email NVARCHAR(255) NOT NULL
);
