create database QandA
go
USE QandA
GO

create table Infouser(--BẢNG NGƯỜI DÙNG
    USER_ID INT IDENTITY(1,1) PRIMARY KEY,
    USER_NAME nvarchar(60),
    USER_PASSWORD NVARCHAR(60),
    USER_LOCATION NVARCHAR(60),
    USER_EMAIL NVARCHAR(60),
    USER_IMAGE NVARCHAR(60),
    USER_DESCRIPTION NVARCHAR(1000),
    WEBSITE NVARCHAR(100),
    FACEBOOK NVARCHAR(100),
    TWITTER  NVARCHAR(100),
    INSTAGRAM NVARCHAR(100),
    YOUTUBE NVARCHAR(100),
    GITHUB NVARCHAR(100),
    GET_NOTICATION_EMAIL INT
)
go
create table COMPANY(--BẢNG NGƯỜI DÙNG
    COMPANY_ID INT IDENTITY(1,1) PRIMARY KEY,
    USER_NAME nvarchar(60),
    USER_PASSWORD NVARCHAR(60),
    USER_LOCATION NVARCHAR(60),
    USER_EMAIL NVARCHAR(60),
    USER_IMAGE NVARCHAR(60),
    USER_DESCRIPTION NVARCHAR(1000),
    WEBSITE NVARCHAR(100),
    FACEBOOK NVARCHAR(100),
    TWITTER  NVARCHAR(100),
    INSTAGRAM NVARCHAR(100),
    YOUTUBE NVARCHAR(100),
    GITHUB NVARCHAR(100),
    GET_NOTICATION_EMAIL INT
)
go
CREATE TABLE QUESTION(--CÂU HỎI
    QUESTION_ID INT IDENTITY(1,1) PRIMARY KEY,
    QUESTION_TITLE NVARCHAR(500),
    QUESTION_TAG NVARCHAR(100),
    QUESTION_CATEGORY INT,
    QUESTION_DETAIL NVARCHAR(1000),
    QUESTION_IMAGE NVARCHAR(100),
    SLUGS NVARCHAR(500)
)
GO

CREATE TABLE VOTE(-----UP VÀ DOWN VOTE CHO REPLY QUESTION
    QUESTION_ID INT,---NẾU VOTE CHO CÂU HỎI
    QUESTION_REPLY_ID INT,--NẾU VOTE CHO CAU TRẢ LỜI
    USER_ID INT,--USER VOTE
    VOTE INT
)
GO

CREATE TABLE QUESTION_REPLY(---TRẢ LỜI CÂU HỎI
    QUESTION_REPLY_ID INT IDENTITY(1,1) PRIMARY KEY,
    QUESTION_ID INT,
    PIN INT,---NẾU GHIM CÂU TRẢ LỜI(CHỈ CHỦ CÂU HỎI MỚI CÓ THỂ GHIM)
    QUESTION_DETAIL NVARCHAR(1000),
    QUESTION_IMAGE NVARCHAR(100)
)
GO
CREATE TABLE COMMENT_REPLY(--COMMENT CÂU TRẢ LỜI
    COMMENT_REPLY_ID INT IDENTITY(1,1) PRIMARY KEY,
    QUESTION_REPLY_ID INT,--NẾU BÌNH LUẬN CÂU HỎI
    QUESTION_ID INT,--NẾU BÌNH LUẬN CÂU TRL
    COMMENT_DETAIL NVARCHAR(1000)
)
GO
CREATE TABLE NOTICATION(
    NOTICATION_ID INT IDENTITY(1,1) PRIMARY KEY,
    NOTICATION_STATUS INT,
    NOTICATION_TIME NVARCHAR(40),
    NOTICATION_DETAIL NVARCHAR(100),
    USER_ID INT,--USER
)
GO
CREATE TABLE CATEGORY(
    CATEGORY_ID INT IDENTITY(1,1) PRIMARY KEY,
    CATEGORY_NAME NVARCHAR(40),
    CATEGORY_IMAGE NVARCHAR(40),
    CATEGORY_COUNT_POST INT,
    SLUGS NVARCHAR(500)
)