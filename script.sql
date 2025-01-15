USE [dbEMIT]
GO
/****** Object:  Table [dbo].[tblCompany]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompany](
	[companyID] [int] IDENTITY(1,1) NOT NULL,
	[companyName] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[surname] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phoneNumber] [nvarchar](50) NOT NULL,
	[dateCreated] [datetime2](0) NOT NULL,
	[dateUpdated] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblContract]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContract](
	[contractID] [int] IDENTITY(1,1) NOT NULL,
	[companyID] [int] NOT NULL,
	[gridProjectID] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[work] [nvarchar](100) NOT NULL,
	[equipment] [nvarchar](100) NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[dateCreated] [datetime2](0) NOT NULL,
	[dateUpdated] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGridProject]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGridProject](
	[gridProjectID] [int] IDENTITY(1,1) NOT NULL,
	[projectID] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[gridRow] [nvarchar](50) NOT NULL,
	[gridColumn] [nvarchar](50) NOT NULL,
	[dateCreated] [datetime2](0) NOT NULL,
	[dateUpdated] [datetime2](0) NOT NULL,
 CONSTRAINT [PK__tblGridP__17BD834DC09B4032] PRIMARY KEY CLUSTERED 
(
	[gridProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHistory]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHistory](
	[historyID] [int] IDENTITY(1,1) NOT NULL,
	[databaseID] [int] NULL,
	[tableID] [int] NULL,
	[tableName] [nvarchar](50) NULL,
	[recordID] [int] NULL,
	[columnName] [nvarchar](50) NULL,
	[oldValue] [nvarchar](50) NULL,
	[newValue] [nvarchar](50) NULL,
	[changeSource] [nvarchar](50) NULL,
	[changedBy] [nvarchar](50) NULL,
	[changeDateTime] [datetime2](0) NULL,
 CONSTRAINT [PK__tblHisto__19BDBDB3780D4089] PRIMARY KEY CLUSTERED 
(
	[historyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProject]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProject](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[scale] [nvarchar](100) NOT NULL,
	[siteDrawPath] [nvarchar](500) NOT NULL,
	[dateCreated] [datetime2](0) NOT NULL,
	[dateUpdated] [datetime2](0) NOT NULL,
 CONSTRAINT [PK__tblProje__11F14D8555BCA43A] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[surname] [nvarchar](100) NOT NULL,
	[position] [nvarchar](100) NULL,
	[email] [nvarchar](100) NOT NULL,
	[phoneNumber] [nvarchar](15) NULL,
	[dateCreated] [datetime2](0) NOT NULL,
	[dateUpdated] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserPassword]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserPassword](
	[userID] [int] NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[dateCreated] [datetime2](0) NOT NULL,
	[dateUpdated] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCompany] ON 

INSERT [dbo].[tblCompany] ([companyID], [companyName], [name], [surname], [email], [phoneNumber], [dateCreated], [dateUpdated]) VALUES (1, N'Elektrikci', N'Hasan', N'Sarnic', N'hasan.sarnic@hotmail.com', N'125', CAST(N'2025-01-15T10:00:26.0000000' AS DateTime2), CAST(N'2025-01-15T10:00:26.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tblCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[tblGridProject] ON 

INSERT [dbo].[tblGridProject] ([gridProjectID], [projectID], [name], [gridRow], [gridColumn], [dateCreated], [dateUpdated]) VALUES (1, 1, N'a1', N'1', N'a', CAST(N'2025-01-15T09:56:20.0000000' AS DateTime2), CAST(N'2025-01-15T09:56:20.0000000' AS DateTime2))
INSERT [dbo].[tblGridProject] ([gridProjectID], [projectID], [name], [gridRow], [gridColumn], [dateCreated], [dateUpdated]) VALUES (3, 1, N'a2', N'2', N'a', CAST(N'2025-01-15T09:57:10.0000000' AS DateTime2), CAST(N'2025-01-15T09:57:10.0000000' AS DateTime2))
INSERT [dbo].[tblGridProject] ([gridProjectID], [projectID], [name], [gridRow], [gridColumn], [dateCreated], [dateUpdated]) VALUES (4, 1, N'a3', N'3', N'a', CAST(N'2025-01-15T09:57:26.0000000' AS DateTime2), CAST(N'2025-01-15T09:57:26.0000000' AS DateTime2))
INSERT [dbo].[tblGridProject] ([gridProjectID], [projectID], [name], [gridRow], [gridColumn], [dateCreated], [dateUpdated]) VALUES (5, 1, N'a4', N'4', N'a', CAST(N'2025-01-15T09:57:36.0000000' AS DateTime2), CAST(N'2025-01-15T09:57:36.0000000' AS DateTime2))
INSERT [dbo].[tblGridProject] ([gridProjectID], [projectID], [name], [gridRow], [gridColumn], [dateCreated], [dateUpdated]) VALUES (6, 1, N'a5', N'5', N'a', CAST(N'2025-01-15T09:57:42.0000000' AS DateTime2), CAST(N'2025-01-15T09:57:42.0000000' AS DateTime2))
INSERT [dbo].[tblGridProject] ([gridProjectID], [projectID], [name], [gridRow], [gridColumn], [dateCreated], [dateUpdated]) VALUES (7, 1, N'a6', N'6', N'a', CAST(N'2025-01-15T09:57:49.0000000' AS DateTime2), CAST(N'2025-01-15T09:57:49.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tblGridProject] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHistory] ON 

INSERT [dbo].[tblHistory] ([historyID], [databaseID], [tableID], [tableName], [recordID], [columnName], [oldValue], [newValue], [changeSource], [changedBy], [changeDateTime]) VALUES (1, 15, 901578250, N'tblUser', 1, N'phoneNumber', N'0505', N'0606', N'sp_tblUser_Update', N'DESKTOP-EURSFP0\Gizay', CAST(N'2024-11-26T12:04:02.0000000' AS DateTime2))
INSERT [dbo].[tblHistory] ([historyID], [databaseID], [tableID], [tableName], [recordID], [columnName], [oldValue], [newValue], [changeSource], [changedBy], [changeDateTime]) VALUES (2, 15, 901578250, N'tblUser', 1, N'surname', N'bb', N'Yilmaz', N'sp_tblUser_Update', N'DESKTOP-EURSFP0\Gizay', CAST(N'2024-11-26T12:06:28.0000000' AS DateTime2))
INSERT [dbo].[tblHistory] ([historyID], [databaseID], [tableID], [tableName], [recordID], [columnName], [oldValue], [newValue], [changeSource], [changedBy], [changeDateTime]) VALUES (3, 15, 901578250, N'tblUser', 1, N'email', N'deneme@ff.com', N'aa.yilmaz@com.tr', N'sp_tblUser_Update', N'DESKTOP-EURSFP0\Gizay', CAST(N'2024-11-26T12:06:28.0000000' AS DateTime2))
INSERT [dbo].[tblHistory] ([historyID], [databaseID], [tableID], [tableName], [recordID], [columnName], [oldValue], [newValue], [changeSource], [changedBy], [changeDateTime]) VALUES (4, 15, 901578250, N'tblUser', 1, N'position', N'IT', N'Info', N'sp_tblUser_Update', N'DESKTOP-EURSFP0\Gizay', CAST(N'2024-11-26T12:14:11.0000000' AS DateTime2))
INSERT [dbo].[tblHistory] ([historyID], [databaseID], [tableID], [tableName], [recordID], [columnName], [oldValue], [newValue], [changeSource], [changedBy], [changeDateTime]) VALUES (5, 15, 901578250, N'tblUser', 1, N'phoneNumber', N'0606', N'0707', N'sp_tblUser_Update', N'gizay', CAST(N'2024-11-26T12:21:29.0000000' AS DateTime2))
INSERT [dbo].[tblHistory] ([historyID], [databaseID], [tableID], [tableName], [recordID], [columnName], [oldValue], [newValue], [changeSource], [changedBy], [changeDateTime]) VALUES (6, 15, 901578250, N'tblUser', 1, N'email', N'aa.yilmaz@com.tr', N'a@hotmail.com', N'sp_tblUser_Update', N'gizay', CAST(N'2024-11-26T12:38:41.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tblHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProject] ON 

INSERT [dbo].[tblProject] ([projectID], [name], [scale], [siteDrawPath], [dateCreated], [dateUpdated]) VALUES (1, N'Bulvar', N'1/50', N'c/Users', CAST(N'2024-12-04T11:40:28.0000000' AS DateTime2), CAST(N'2024-12-04T11:40:28.0000000' AS DateTime2))
INSERT [dbo].[tblProject] ([projectID], [name], [scale], [siteDrawPath], [dateCreated], [dateUpdated]) VALUES (3, N'Loft', N'1/150', N'd/Tablolar', CAST(N'2024-12-04T11:41:01.0000000' AS DateTime2), CAST(N'2024-12-04T11:41:01.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tblProject] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([userID], [name], [surname], [position], [email], [phoneNumber], [dateCreated], [dateUpdated]) VALUES (1, N'aa', N'Yilmaz', N'Info', N'a@hotmail.com', N'0707', CAST(N'2024-11-18T12:28:33.0000000' AS DateTime2), CAST(N'2024-11-26T12:38:41.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblUser__AB6E6164C0189D16]    Script Date: 15.01.2025 10:30:42 ******/
ALTER TABLE [dbo].[tblUser] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCompany] ADD  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[tblCompany] ADD  DEFAULT (getdate()) FOR [dateUpdated]
GO
ALTER TABLE [dbo].[tblContract] ADD  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[tblContract] ADD  DEFAULT (getdate()) FOR [dateUpdated]
GO
ALTER TABLE [dbo].[tblGridProject] ADD  CONSTRAINT [DF__tblGridPr__dateC__70DDC3D8]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[tblGridProject] ADD  CONSTRAINT [DF__tblGridPr__dateU__71D1E811]  DEFAULT (getdate()) FOR [dateUpdated]
GO
ALTER TABLE [dbo].[tblHistory] ADD  CONSTRAINT [DF__tblHistor__chang__4AB81AF0]  DEFAULT (getdate()) FOR [changeDateTime]
GO
ALTER TABLE [dbo].[tblProject] ADD  CONSTRAINT [DF__tblProjec__dateC__59FA5E80]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[tblProject] ADD  CONSTRAINT [DF__tblProjec__dateU__5AEE82B9]  DEFAULT (getdate()) FOR [dateUpdated]
GO
ALTER TABLE [dbo].[tblUser] ADD  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[tblUserPassword] ADD  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[tblContract]  WITH CHECK ADD FOREIGN KEY([companyID])
REFERENCES [dbo].[tblCompany] ([companyID])
GO
ALTER TABLE [dbo].[tblContract]  WITH CHECK ADD FOREIGN KEY([gridProjectID])
REFERENCES [dbo].[tblGridProject] ([gridProjectID])
GO
ALTER TABLE [dbo].[tblGridProject]  WITH CHECK ADD  CONSTRAINT [FK__tblGridPr__proje__6FE99F9F] FOREIGN KEY([projectID])
REFERENCES [dbo].[tblProject] ([projectID])
GO
ALTER TABLE [dbo].[tblGridProject] CHECK CONSTRAINT [FK__tblGridPr__proje__6FE99F9F]
GO
ALTER TABLE [dbo].[tblUserPassword]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblContract]  WITH CHECK ADD  CONSTRAINT [CK_tblContract_StartEndDate] CHECK  (([startDate]<[endDate]))
GO
ALTER TABLE [dbo].[tblContract] CHECK CONSTRAINT [CK_tblContract_StartEndDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_tblCompany_Delete]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblCompany_Delete]
    @prmCompanyID INT,
    @prmSysUser NVARCHAR(100)
AS
BEGIN
    IF (SELECT COUNT(*) FROM dbo.tblCompany WHERE companyID = @prmCompanyID) = 0
    BEGIN
        RAISERROR ('CompanyID geçersiz.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @OldCompanyName NVARCHAR(100), @OldName NVARCHAR(100), 
                @OldSurname NVARCHAR(100), @OldEmail NVARCHAR(100), 
                @OldPhoneNumber NVARCHAR(50);
        SELECT @OldCompanyName = companyName, @OldName = name, 
               @OldSurname = surname, @OldEmail = email, 
               @OldPhoneNumber = phoneNumber
        FROM dbo.tblCompany
        WHERE companyID = @prmCompanyID;

        DECLARE @tableID INT = OBJECT_ID('dbo.tblCompany');
        DECLARE @sysUser NVARCHAR(100) = ISNULL(@prmSysUser, SYSTEM_USER);
        DECLARE @dbID INT = DB_ID();

        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'companyName', @OldCompanyName, 'deleted', 'sp_tblCompany_Delete', @sysUser;
        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'name', @OldName, 'deleted', 'sp_tblCompany_Delete', @sysUser;
        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'surname', @OldSurname, 'deleted', 'sp_tblCompany_Delete', @sysUser;
        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'email', @OldEmail, 'deleted', 'sp_tblCompany_Delete', @sysUser;
        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'phoneNumber', @OldPhoneNumber, 'deleted', 'sp_tblCompany_Delete', @sysUser;

        DELETE FROM dbo.tblCompany
        WHERE companyID = @prmCompanyID;

        COMMIT TRANSACTION;
        PRINT 'Başarıyla silindi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblCompany_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblCompany_Insert]
    @prmCompanyName NVARCHAR(100),
    @prmName NVARCHAR(100),
    @prmSurname NVARCHAR(100),
    @prmEmail NVARCHAR(100),
    @prmPhoneNumber NVARCHAR(50)
AS
BEGIN
    IF @prmCompanyName IS NULL OR LTRIM(RTRIM(@prmCompanyName)) = ''
    BEGIN
        RAISERROR ('CompanyName boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    IF @prmEmail IS NULL OR LTRIM(RTRIM(@prmEmail)) = ''
    BEGIN
        RAISERROR ('Email boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO dbo.tblCompany (companyName, name, surname, email, phoneNumber)
        VALUES (@prmCompanyName, @prmName, @prmSurname, @prmEmail, @prmPhoneNumber);

        COMMIT TRANSACTION;
        PRINT 'Başarıyla eklendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblCompany_Update]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblCompany_Update]
    @prmCompanyID INT,
    @prmCompanyName NVARCHAR(100) = NULL,
    @prmName NVARCHAR(100) = NULL,
    @prmSurname NVARCHAR(100) = NULL,
    @prmEmail NVARCHAR(100) = NULL,
    @prmPhoneNumber NVARCHAR(50) = NULL,
    @prmSysUser NVARCHAR(100)
AS
BEGIN
    IF (SELECT COUNT(*) FROM dbo.tblCompany WHERE companyID = @prmCompanyID) = 0
    BEGIN
        RAISERROR ('CompanyID geçersiz.', 16, 1);
        RETURN;
    END;

    IF @prmCompanyName IS NULL AND @prmName IS NULL AND @prmSurname IS NULL AND 
       @prmEmail IS NULL AND @prmPhoneNumber IS NULL
    BEGIN
        RAISERROR ('Güncelleme yapılacak bir değer girilmedi.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @OldCompanyName NVARCHAR(100), @OldName NVARCHAR(100), 
                @OldSurname NVARCHAR(100), @OldEmail NVARCHAR(100), 
                @OldPhoneNumber NVARCHAR(50);
        SELECT @OldCompanyName = companyName, @OldName = name, 
               @OldSurname = surname, @OldEmail = email, 
               @OldPhoneNumber = phoneNumber
        FROM dbo.tblCompany
        WHERE companyID = @prmCompanyID;

        DECLARE @tableID INT = OBJECT_ID('dbo.tblCompany');
        DECLARE @sysUser NVARCHAR(100) = ISNULL(@prmSysUser, SYSTEM_USER);
        DECLARE @dbID INT = DB_ID();

        IF @prmCompanyName IS NOT NULL AND @prmCompanyName <> @OldCompanyName
        BEGIN
            UPDATE dbo.tblCompany
            SET companyName = @prmCompanyName
            WHERE companyID = @prmCompanyID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'companyName', @OldCompanyName, @prmCompanyName, 'sp_tblCompany_Update', @sysUser;
        END;

        IF @prmName IS NOT NULL AND @prmName <> @OldName
        BEGIN
            UPDATE dbo.tblCompany
            SET name = @prmName
            WHERE companyID = @prmCompanyID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'name', @OldName, @prmName, 'sp_tblCompany_Update', @sysUser;
        END;

        IF @prmSurname IS NOT NULL AND @prmSurname <> @OldSurname
        BEGIN
            UPDATE dbo.tblCompany
            SET surname = @prmSurname
            WHERE companyID = @prmCompanyID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'surname', @OldSurname, @prmSurname, 'sp_tblCompany_Update', @sysUser;
        END;

        IF @prmEmail IS NOT NULL AND @prmEmail <> @OldEmail
        BEGIN
            UPDATE dbo.tblCompany
            SET email = @prmEmail
            WHERE companyID = @prmCompanyID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'email', @OldEmail, @prmEmail, 'sp_tblCompany_Update', @sysUser;
        END;

        IF @prmPhoneNumber IS NOT NULL AND @prmPhoneNumber <> @OldPhoneNumber
        BEGIN
            UPDATE dbo.tblCompany
            SET phoneNumber = @prmPhoneNumber
            WHERE companyID = @prmCompanyID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblCompany', @prmCompanyID, 'phoneNumber', @OldPhoneNumber, @prmPhoneNumber, 'sp_tblCompany_Update', @sysUser;
        END;

        COMMIT TRANSACTION;
        PRINT 'Başarıyla güncellendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblContract_Delete]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblContract_Delete]
    @prmContractID INT,
    @prmSysUser NVARCHAR(100)
AS
BEGIN
    IF (SELECT COUNT(*) FROM dbo.tblContract WHERE contractID = @prmContractID) = 0
    BEGIN
        RAISERROR ('ContractID geçersiz.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @OldCompanyID INT, @OldGridProjectID INT, @OldName NVARCHAR(100),
                @OldWork NVARCHAR(100), @OldEquipment NVARCHAR(100),
                @OldStartDate DATETIME2(0), @OldEndDate DATETIME2(0);
        SELECT @OldCompanyID = companyID, @OldGridProjectID = gridProjectID, 
               @OldName = name, @OldWork = work, @OldEquipment = equipment,
               @OldStartDate = startDate, @OldEndDate = endDate
        FROM dbo.tblContract
        WHERE contractID = @prmContractID;

        DECLARE @tableID INT = OBJECT_ID('dbo.tblContract');
        DECLARE @sysUser NVARCHAR(100) = ISNULL(@prmSysUser, SYSTEM_USER);
        DECLARE @dbID INT = DB_ID();

        INSERT INTO tblHistory (databaseID, tableID,  recordID, oldValue, newValue, changeDateTime, changedBy)
        VALUES 
        (@dbID, @tableID, @prmContractID, CAST(@OldCompanyID AS NVARCHAR), NULL, GETDATE(), @sysUser),
        (@dbID, @tableID, @prmContractID, CAST(@OldGridProjectID AS NVARCHAR), NULL, GETDATE(), @sysUser),
        (@dbID, @tableID, @prmContractID, @OldName, NULL, GETDATE(), @sysUser),
        (@dbID, @tableID, @prmContractID, @OldWork, NULL, GETDATE(), @sysUser),
        (@dbID, @tableID, @prmContractID, @OldEquipment, NULL, GETDATE(), @sysUser),
        (@dbID, @tableID, @prmContractID, CAST(@OldStartDate AS NVARCHAR), NULL, GETDATE(), @sysUser),
        (@dbID, @tableID, @prmContractID, CAST(@OldEndDate AS NVARCHAR), NULL, GETDATE(), @sysUser);

        DELETE FROM dbo.tblContract WHERE contractID = @prmContractID;

        COMMIT TRANSACTION;
        PRINT 'Contract başarıyla silindi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblContract_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblContract_Insert]
    @prmCompanyID INT,
    @prmGridProjectID INT,
    @prmName NVARCHAR(100),
    @prmWork NVARCHAR(100),
    @prmEquipment NVARCHAR(100),
    @prmStartDate DATE,
    @prmEndDate DATE
AS
BEGIN
    IF @prmCompanyID IS NULL OR @prmGridProjectID IS NULL
    BEGIN
        RAISERROR ('CompanyID ve GridProjectID boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    IF @prmName IS NULL OR LTRIM(RTRIM(@prmName)) = ''
    BEGIN
        RAISERROR ('Name boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    IF @prmStartDate IS NULL OR @prmEndDate IS NULL OR @prmStartDate >= @prmEndDate
    BEGIN
        RAISERROR ('Geçersiz startDate veya endDate.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO dbo.tblContract (companyID, gridProjectID, name, work, equipment, startDate, endDate)
        VALUES (@prmCompanyID, @prmGridProjectID, @prmName, @prmWork, @prmEquipment, @prmStartDate, @prmEndDate);

        COMMIT TRANSACTION;
        PRINT 'Başarıyla eklendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblContract_Update]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblContract_Update]
    @prmContractID INT,
    @prmCompanyID INT = NULL,
    @prmGridProjectID INT = NULL,
    @prmName NVARCHAR(100) = NULL,
    @prmWork NVARCHAR(100) = NULL,
    @prmEquipment NVARCHAR(100) = NULL,
    @prmStartDate DATE = NULL,
    @prmEndDate DATE = NULL,
    @prmSysUser NVARCHAR(100)
AS
BEGIN
    IF (SELECT COUNT(*) FROM dbo.tblContract WHERE contractID = @prmContractID) = 0
    BEGIN
        RAISERROR ('ContractID geçersiz.', 16, 1);
        RETURN;
    END;

    IF @prmCompanyID IS NULL AND @prmGridProjectID IS NULL AND @prmName IS NULL AND
       @prmWork IS NULL AND @prmEquipment IS NULL AND 
       (@prmStartDate IS NULL OR @prmEndDate IS NULL)
    BEGIN
        RAISERROR ('Güncelleme yapılacak bir değer girilmedi.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @OldCompanyID INT, @OldGridProjectID INT, @OldName NVARCHAR(100),
                @OldWork NVARCHAR(100), @OldEquipment NVARCHAR(100),
                @OldStartDate DATE, @OldEndDate DATE;
        SELECT @OldCompanyID = companyID, @OldGridProjectID = gridProjectID, 
               @OldName = name, @OldWork = work, @OldEquipment = equipment,
               @OldStartDate = startDate, @OldEndDate = endDate
        FROM dbo.tblContract
        WHERE contractID = @prmContractID;

        DECLARE @tableID INT = OBJECT_ID('dbo.tblContract');
        DECLARE @sysUser NVARCHAR(100) = ISNULL(@prmSysUser, SYSTEM_USER);
        DECLARE @dbID INT = DB_ID();

        -- Update each field and log changes if applicable.
        IF @prmCompanyID IS NOT NULL AND @prmCompanyID <> @OldCompanyID
        BEGIN
            UPDATE dbo.tblContract SET companyID = @prmCompanyID, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID, recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, CAST(@OldCompanyID AS NVARCHAR), CAST(@prmCompanyID AS NVARCHAR), GETDATE(), @sysUser);
        END;

        IF @prmGridProjectID IS NOT NULL AND @prmGridProjectID <> @OldGridProjectID
        BEGIN
            UPDATE dbo.tblContract SET gridProjectID = @prmGridProjectID, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID, recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, CAST(@OldGridProjectID AS NVARCHAR), CAST(@prmGridProjectID AS NVARCHAR), GETDATE(), @sysUser);
        END;

        IF @prmName IS NOT NULL AND @prmName <> @OldName
        BEGIN
            UPDATE dbo.tblContract SET name = @prmName, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID,  recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, @OldName, @prmName, GETDATE(), @sysUser);
        END;

        IF @prmWork IS NOT NULL AND @prmWork <> @OldWork
        BEGIN
            UPDATE dbo.tblContract SET work = @prmWork, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID,  recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, @OldWork, @prmWork, GETDATE(), @sysUser);
        END;

        IF @prmEquipment IS NOT NULL AND @prmEquipment <> @OldEquipment
        BEGIN
            UPDATE dbo.tblContract SET equipment = @prmEquipment, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID,  recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, @OldEquipment, @prmEquipment, GETDATE(), @sysUser);
        END;

        IF @prmStartDate IS NOT NULL AND @prmStartDate <> @OldStartDate
        BEGIN
            UPDATE dbo.tblContract SET startDate = @prmStartDate, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID,  recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, CAST(@OldStartDate AS NVARCHAR), CAST(@prmStartDate AS NVARCHAR), GETDATE(), @sysUser);
        END;

        IF @prmEndDate IS NOT NULL AND @prmEndDate <> @OldEndDate
        BEGIN
            UPDATE dbo.tblContract SET endDate = @prmEndDate, dateUpdated = GETDATE()
            WHERE contractID = @prmContractID;

            INSERT INTO tblHistory (databaseID, tableID,  recordID, oldValue, newValue, changeDateTime, changedBy)
            VALUES (@dbID, @tableID,  @prmContractID, CAST(@OldEndDate AS NVARCHAR), CAST(@prmEndDate AS NVARCHAR), GETDATE(), @sysUser);
        END;

        COMMIT TRANSACTION;
        PRINT 'Başarıyla güncellendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblGridProject_Delete]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblGridProject_Delete]
    @prmGridProjectID INT,
    @prmSysUser NVARCHAR(100)
AS
BEGIN
    IF (SELECT COUNT(*) FROM tblGridProject WHERE gridProjectID = @prmGridProjectID) = 0
    BEGIN
        RAISERROR ('GridProjectID geçersiz.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @OldName NVARCHAR(100), @OldGridRow INT, @OldGridColumn INT;
        SELECT @OldName = name, @OldGridRow = gridRow, @OldGridColumn = gridColumn
        FROM dbo.tblGridProject
        WHERE gridProjectID = @prmGridProjectID;

        DECLARE @tableID INT = OBJECT_ID('dbo.tblGridProject');
        DECLARE @sysUser NVARCHAR(100) = ISNULL(@prmSysUser, SYSTEM_USER);
        DECLARE @dbID INT = DB_ID();

        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblGridProject', @prmGridProjectID, 'name', @OldName, 'deleted', 'sp_tblGridProject_Delete', @sysUser;
        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblGridProject', @prmGridProjectID, 'gridRow', @OldGridRow, 'deleted', 'sp_tblGridProject_Delete', @sysUser;
        EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblGridProject', @prmGridProjectID, 'gridColumn', @OldGridColumn, 'deleted', 'sp_tblGridProject_Delete', @sysUser;

        DELETE FROM dbo.tblGridProject
        WHERE gridProjectID = @prmGridProjectID;

        COMMIT TRANSACTION;
        PRINT 'GridProject başarıyla silindi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblGridProject_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblGridProject_Insert]
    @prmProjectID INT,
    @prmName NVARCHAR(100),
    @prmGridRow NVARCHAR(100),
    @prmGridColumn NVARCHAR(100)
AS
BEGIN
    IF @prmProjectID IS NULL
    BEGIN
        RAISERROR ('ProjectID boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    IF @prmName IS NULL OR LTRIM(RTRIM(@prmName)) = ''
    BEGIN
        RAISERROR ('Name boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    IF @prmGridRow IS NULL OR @prmGridColumn IS NULL
    BEGIN
        RAISERROR ('GridRow ve GridColumn boş bırakılamaz.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO dbo.tblGridProject (projectID, name, gridRow, gridColumn)
        VALUES (@prmProjectID, @prmName, @prmGridRow, @prmGridColumn);

        COMMIT TRANSACTION;
        PRINT 'GridProject başarıyla eklendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblGridProject_Update]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblGridProject_Update]
    @prmGridProjectID INT,
    @prmName NVARCHAR(100) = NULL,
    @prmGridRow NVARCHAR(100) = NULL,
    @prmGridColumn NVARCHAR(100) = NULL,
    @prmSysUser NVARCHAR(100)
AS
BEGIN
    IF (SELECT COUNT(*) FROM tblGridProject WHERE gridProjectID = @prmGridProjectID) = 0
    BEGIN
        RAISERROR ('GridProjectID geçersiz.', 16, 1);
        RETURN;
    END;

    IF @prmName IS NULL AND @prmGridRow IS NULL AND @prmGridColumn IS NULL
    BEGIN
        RAISERROR ('Güncelleme yapılacak bir değer girilmedi.', 16, 1);
        RETURN;
    END;

    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @OldName NVARCHAR(100), @OldGridRow NVARCHAR(100), @OldGridColumn NVARCHAR(100);
        SELECT @OldName = name, @OldGridRow = gridRow, @OldGridColumn = gridColumn
        FROM dbo.tblGridProject
        WHERE gridProjectID = @prmGridProjectID;

        DECLARE @tableID INT = OBJECT_ID('dbo.tblGridProject');
        DECLARE @sysUser NVARCHAR(100) = ISNULL(@prmSysUser, SYSTEM_USER);
        DECLARE @dbID INT = DB_ID();

        IF @prmName IS NOT NULL AND @prmName <> @OldName
        BEGIN
            UPDATE dbo.tblGridProject
            SET name = @prmName
            WHERE gridProjectID = @prmGridProjectID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblGridProject', @prmGridProjectID, 'name', @OldName, @prmName, 'sp_tblGridProject_Update', @sysUser;
        END;

        IF @prmGridRow IS NOT NULL AND @prmGridRow <> @OldGridRow
        BEGIN
            UPDATE dbo.tblGridProject
            SET gridRow = @prmGridRow
            WHERE gridProjectID = @prmGridProjectID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblGridProject', @prmGridProjectID, 'gridRow', @OldGridRow, @prmGridRow, 'sp_tblGridProject_Update', @sysUser;
        END;

        IF @prmGridColumn IS NOT NULL AND @prmGridColumn <> @OldGridColumn
        BEGIN
            UPDATE dbo.tblGridProject
            SET gridColumn = @prmGridColumn
            WHERE gridProjectID = @prmGridProjectID;

            EXEC sp_tblHistory_Insert @dbID, @tableID, 'tblGridProject', @prmGridProjectID, 'gridColumn', @OldGridColumn, @prmGridColumn, 'sp_tblGridProject_Update', @sysUser;
        END;

        COMMIT TRANSACTION;
        PRINT 'GridProject başarıyla güncellendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblHistory_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblHistory_Insert]
    @prmDatabaseID INT,
    @prmTableID INT,
    @prmTableName NVARCHAR(100),
    @prmRecordID INT,
    @prmColumnName NVARCHAR(100),
    @prmOldValue NVARCHAR(100),
    @prmNewValue NVARCHAR(100),
    @prmChangeSource NVARCHAR(100),
    @prmChangedBy NVARCHAR(100)
AS
BEGIN

    INSERT INTO dbo.tblHistory (
        databaseID, 
        tableID, 
        tableName, 
        recordID, 
        columnName, 
        oldValue, 
        newValue, 
        changeSource, 
        changedBy
    )
    VALUES (
        @prmDatabaseID, 
        @prmTableID, 
        @prmTableName, 
        @prmRecordID, 
        @prmColumnName, 
        @prmOldValue, 
        @prmNewValue, 
        @prmChangeSource, 
        @prmChangedBy
    );

    PRINT 'History kaydı eklendi.';
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_tblProject_Delete]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblProject_Delete]
    @prmProjectID INT ,
	@prmSysUser NVARCHAR(100)
AS
BEGIN
	--Bu alan parametre kontrolüdür
	
	IF (SELECT COUNT(*) FROM tblProject 
	WHERE projectID = @prmProjectID) != 1
	BEGIN

	RAISERROR ('ProjectID hatali.',16,1) 
	RETURN

	END


	BEGIN TRY
		BEGIN TRANSACTION;

		--parametre tespiti
DECLARE @OldName NVARCHAR(100), @OldScale NVARCHAR(100), @OldSiteDrawPath NVARCHAR(255);

-- Güncellenmeden önceki mevcut değerleri al
SELECT 
    @OldName = name, 
    @OldScale = scale, 
    @OldSiteDrawPath = siteDrawPath
FROM dbo.tblProject
WHERE projectID = @prmProjectID;


--tanimla ve ilgili yerden cek

DECLARE @tableID INT, @sysUser NVARCHAR(100), @dbID INT;

SELECT @tableID = OBJECT_ID('dbo.tblProject');

SELECT @sysUser = ISNULL(@prmSysUser, SYSTEM_USER);
 
SELECT @dbID = DB_ID();


-- History kaydı

    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblProject',            
        @prmRecordID = @prmProjectID,            
        @prmColumnName = 'name',              
        @prmOldValue = @OldName,              
        @prmNewValue = 'deleted',              
        @prmChangeSource = 'sp_tblProject_Delete', 
        @prmChangedBy = @sysUser;        


    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblProject',
        @prmRecordID = @prmProjectID,
        @prmColumnName = 'scale',
        @prmOldValue = @OldScale,
        @prmNewValue = 'deleted',
        @prmChangeSource = 'sp_tblProject_Delete',
        @prmChangedBy = @sysUser;


    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblProject',
        @prmRecordID = @prmProjectID,
        @prmColumnName = 'siteDrawPath',
        @prmOldValue = @OldSiteDrawPath,
        @prmNewValue = 'deleted',
        @prmChangeSource = 'sp_tblProject_Delete',
        @prmChangedBy = @sysUser


		DELETE FROM dbo.tblProject
        WHERE projectID = @prmProjectID;

        COMMIT TRANSACTION;
        PRINT 'Proje başarıyla silindi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
	
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblProject_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblProject_Insert] 
    @prmName NVARCHAR(100),  
    @prmScale NVARCHAR(100),  
    @prmSiteDrawPath NVARCHAR(500) = NULL
AS
BEGIN  
		
		IF @prmName IS NULL OR LTRIM(RTRIM(@prmName)) = ''
        BEGIN
            RAISERROR ('Proje adı boş olamaz.', 16, 1);
            RETURN;
        END;

        IF @prmScale IS NULL OR LTRIM(RTRIM(@prmScale)) = ''
        BEGIN
            RAISERROR ('Ölçek bilgisi boş olamaz.', 16, 1);
            RETURN;
        END;

         IF @prmSiteDrawPath IS NULL OR LTRIM(RTRIM(@prmSiteDrawPath)) = ''
        BEGIN
            RAISERROR ('Site Draw Path bilgisi boş olamaz.', 16, 1);
            RETURN;
        END;

		BEGIN TRY
			BEGIN TRANSACTION;


			INSERT INTO dbo.tblProject (name, scale, siteDrawPath)  
			VALUES (@prmName, @prmScale, @prmSiteDrawPath);  
  

			COMMIT TRANSACTION;
			PRINT 'Proje başarıyla eklendi.';
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION;
			THROW;
		END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblProject_Update]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblProject_Update]
    @prmProjectID INT ,
    @prmName NVARCHAR(100) ,
    @prmScale NVARCHAR(100) ,
    @prmSiteDrawPath NVARCHAR(500) ,
	@prmSysUser NVARCHAR(100)
AS
BEGIN
	
	--Parametre kontrolü
	
	IF (SELECT COUNT(*) FROM tblProject 
	WHERE projectID = @prmProjectID) != 1
	BEGIN

	RAISERROR ('ProjectID hatali.',16,1) 
	RETURN

	END

	IF (@prmName IS NULL) AND
    (@prmScale IS NULL) AND
    (@prmSiteDrawPath IS NULL) 
	BEGIN

	RAISERROR ('Girdi bulunamadi.',16,1) 
	RETURN

	END


	BEGIN TRY
		BEGIN TRANSACTION;

		--parametre tespiti
DECLARE @OldName NVARCHAR(100), @OldScale NVARCHAR(100), @OldSiteDrawPath NVARCHAR(255);

SELECT 
    @OldName = name, 
    @OldScale = scale, 
    @OldSiteDrawPath = siteDrawPath
FROM dbo.tblProject
WHERE projectID = @prmProjectID;

--Define metadata

DECLARE @tableID INT, @sysUser NVARCHAR(100), @dbID INT;

SELECT @tableID = OBJECT_ID('dbo.tblProject');

SELECT @sysUser = ISNULL(@prmSysUser, SYSTEM_USER);
 
SELECT @dbID = DB_ID();



IF @prmName IS NOT NULL AND @prmName <> @OldName
BEGIN

	UPDATE dbo.tblProject 
	SET name = @prmName 
	WHERE projectID = @prmProjectID;




    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblProject',            
        @prmRecordID = @prmProjectID,            
        @prmColumnName = 'name',              
        @prmOldValue = @OldName,              
        @prmNewValue = @prmName,              
        @prmChangeSource = 'sp_tblProject_Update', 
        @prmChangedBy = @sysUser;        
END;

IF @prmScale IS NOT NULL AND @prmScale <> @OldScale
BEGIN

	UPDATE dbo.tblProject 
	SET scale = @prmScale 
	WHERE projectID = @prmProjectID;



    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblProject',
        @prmRecordID = @prmProjectID,
        @prmColumnName = 'scale',
        @prmOldValue = @OldScale,
        @prmNewValue = @prmScale,
        @prmChangeSource = 'sp_tblProject_Update',
        @prmChangedBy = @sysUser;
END;

IF @prmSiteDrawPath IS NOT NULL AND @prmSiteDrawPath <> @OldSiteDrawPath
BEGIN

	UPDATE dbo.tblProject 
	SET siteDrawPath = @prmSiteDrawPath 
	WHERE projectID = @prmProjectID;



    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblProject',
        @prmRecordID = @prmProjectID,
        @prmColumnName = 'siteDrawPath',
        @prmOldValue = @OldSiteDrawPath,
        @prmNewValue = @prmSiteDrawPath,
        @prmChangeSource = 'sp_tblProject_Update',
        @prmChangedBy = @sysUser;
END;


        COMMIT TRANSACTION;
        PRINT 'Proje başarıyla güncellendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
	
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblUser_Delete]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblUser_Delete]
    @prmUserID INT ,
	@prmSysUser NVARCHAR(100)
AS
BEGIN
	--Bu alan parametre kontrolüdür
	
	IF @prmUserID IS NULL
	BEGIN

	RAISERROR ('UserID bos birakilamaz.',16,1) 
	RETURN

	END


	BEGIN TRY
		BEGIN TRANSACTION;

		--parametre tespiti
DECLARE @OldName NVARCHAR(100), @OldSurname NVARCHAR(100), @OldPosition NVARCHAR(100),
        @OldEmail NVARCHAR(100), @OldPhoneNumber NVARCHAR(15);

-- Güncellenmeden önceki mevcut değerleri al
SELECT 
    @OldName = name, 
    @OldSurname = surname, 
    @OldPosition = position,
    @OldEmail = email, 
    @OldPhoneNumber = phoneNumber
FROM dbo.tblUser
WHERE userID = @prmUserID;


--tanimla ve ilgili yerden cek

DECLARE @tableID INT, @sysUser NVARCHAR(100), @dbID INT;

SELECT @tableID = OBJECT_ID('dbo.tblUser');

SELECT @sysUser = ISNULL(@prmSysUser, SYSTEM_USER);
 
SELECT @dbID = DB_ID();


-- History kaydı

    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',            
        @prmRecordID = @prmUserID,            
        @prmColumnName = 'name',              
        @prmOldValue = @OldName,              
        @prmNewValue = 'deleted',              
        @prmChangeSource = 'sp_tblUser_Delete', 
        @prmChangedBy = @sysUser;        


    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'surname',
        @prmOldValue = @OldSurname,
        @prmNewValue = 'deleted',
        @prmChangeSource = 'sp_tblUser_Delete',
        @prmChangedBy = @sysUser;


    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'position',
        @prmOldValue = @OldPosition,
        @prmNewValue = 'deleted',
        @prmChangeSource = 'sp_tblUser_Delete',
        @prmChangedBy = @sysUser


    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'email',
        @prmOldValue = @OldEmail,
        @prmNewValue = 'deleted',
        @prmChangeSource = 'sp_tblUser_Delete',
        @prmChangedBy = @sysUser;


    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'phoneNumber',
        @prmOldValue = @OldPhoneNumber,
        @prmNewValue = 'deleted',
        @prmChangeSource = 'sp_tblUser_Delete',
        @prmChangedBy = @sysUser;

		DELETE FROM dbo.tblUser
        WHERE userID = @prmUserID;

        COMMIT TRANSACTION;
        PRINT 'Kullanıcı başarıyla silindi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
	
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblUser_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblUser_Insert] 
    @prmName NVARCHAR(100),  
    @prmSurname NVARCHAR(100),  
    @prmPosition NVARCHAR(100) = NULL,  
    @prmEmail NVARCHAR(100),  
    @prmPhoneNumber NVARCHAR(15) = NULL    
AS
BEGIN  
     
  
  IF CHARINDEX ('@', @prmEmail) = 0  
  OR CHARINDEX('.', @prmEmail) = 0
  BEGIN   
  
  RAISERROR ('Email adresi gecersiz',16,1)  
  RETURN  
    
  END  
    
    BEGIN TRY
		BEGIN TRANSACTION; 


        INSERT INTO dbo.tblUser (name, surname, position, email, phoneNumber)  
        VALUES (@prmName, @prmSurname, @prmPosition, @prmEmail, @prmPhoneNumber);  
  
      COMMIT TRANSACTION;
        PRINT 'Kullanici başarıyla eklendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
        
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblUser_Update]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblUser_Update]
    @prmUserID INT ,
    @prmName NVARCHAR(100) ,
    @prmSurname NVARCHAR(100) ,
    @prmPosition NVARCHAR(100) ,
    @prmEmail NVARCHAR(100) ,
    @prmPhoneNumber NVARCHAR(15) ,
    @prmPassword NVARCHAR(100) ,
	@prmSysUser NVARCHAR(100)
AS
BEGIN
	--Bu alan parametre kontrolüdür
	
	IF @prmUserID IS NULL
	BEGIN

	RAISERROR ('UserID bos birakilamaz.',16,1) 
	RETURN

	END

	IF (@prmName IS NULL) AND
    (@prmSurname IS NULL) AND
    (@prmPosition IS NULL) AND
    (@prmEmail IS NULL) AND
    (@prmPhoneNumber IS NULL) 
	BEGIN

	RAISERROR ('Degisiklik bulunamadi.',16,1) 
	RETURN

	END
 
	IF LEN(@prmEmail) > 0
	BEGIN

		-- Email kontrolü
		IF CHARINDEX('@', @prmEmail) = 0
		OR CHARINDEX('.', @prmEmail) = 0
		BEGIN
			RAISERROR ('Gecersiz email adresi.', 16, 1);
			RETURN;
		END;

	END


	BEGIN TRY
		BEGIN TRANSACTION;

		--parametre tespiti
DECLARE @OldName NVARCHAR(100), @OldSurname NVARCHAR(100), @OldPosition NVARCHAR(100),
        @OldEmail NVARCHAR(100), @OldPhoneNumber NVARCHAR(15);

-- Güncellenmeden önceki mevcut değerleri al
SELECT 
    @OldName = name, 
    @OldSurname = surname, 
    @OldPosition = position,
    @OldEmail = email, 
    @OldPhoneNumber = phoneNumber
FROM dbo.tblUser
WHERE userID = @prmUserID;


--tanimla ve ilgili yerden cek

DECLARE @tableID INT, @sysUser NVARCHAR(100), @dbID INT;

SELECT @tableID = OBJECT_ID('dbo.tblUser');

SELECT @sysUser = ISNULL(@prmSysUser, SYSTEM_USER);
 
SELECT @dbID = DB_ID();

DECLARE @password NVARCHAR(100) = HASHBYTES('SHA2_256', @prmPassword)

	DECLARE @sql NVARCHAR(MAX) 
	SET @sql = 'UPDATE dbo.tblUser SET ' 

	IF @prmName IS NOT NULL 
	BEGIN
	SET @sql = @sql + 'name = @prmName, '
	END

	IF @prmSurname IS NOT NULL 
	BEGIN
	SET @sql = @sql + 'surname = @prmSurname, '
	END

	IF @prmPosition IS NOT NULL 
	BEGIN
	SET @sql = @sql + 'position = @prmPosition, '
	END

	IF @prmEmail IS NOT NULL 
	BEGIN
	SET @sql = @sql + 'email = @prmEmail, '
	END

	IF @prmPhoneNumber IS NOT NULL 
	BEGIN
	SET @sql = @sql + 'phoneNumber = @prmPhoneNumber, '
	END

	SET @sql = LEFT(@sql, LEN(@sql) - 1) 

	SET @sql = @sql + ' WHERE userID = @prmUserID'

	EXEC sp_Executesql @sql , 
	N' @prmUserID INT,
	@prmName NVARCHAR(100) ,
    @prmSurname NVARCHAR(100) ,
    @prmPosition NVARCHAR(100) ,
    @prmEmail NVARCHAR(100) ,
    @prmPhoneNumber NVARCHAR(15)' ,
	@prmUserID,
	@prmName, 
	@prmSurname,
    @prmPosition,
    @prmEmail ,
    @prmPhoneNumber 



	

-- Değişiklik tespiti ve History kaydı
IF @prmName IS NOT NULL AND @prmName <> @OldName
BEGIN
    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',            
        @prmRecordID = @prmUserID,            
        @prmColumnName = 'name',              
        @prmOldValue = @OldName,              
        @prmNewValue = @prmName,              
        @prmChangeSource = 'sp_tblUser_Update', 
        @prmChangedBy = @sysUser;        
END;

IF @prmSurname IS NOT NULL AND @prmSurname <> @OldSurname
BEGIN
    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'surname',
        @prmOldValue = @OldSurname,
        @prmNewValue = @prmSurname,
        @prmChangeSource = 'sp_tblUser_Update',
        @prmChangedBy = @sysUser;
END;

IF @prmPosition IS NOT NULL AND @prmPosition <> @OldPosition
BEGIN
    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'position',
        @prmOldValue = @OldPosition,
        @prmNewValue = @prmPosition,
        @prmChangeSource = 'sp_tblUser_Update',
        @prmChangedBy = @sysUser;
END;

IF @prmEmail IS NOT NULL AND @prmEmail <> @OldEmail
BEGIN
    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'email',
        @prmOldValue = @OldEmail,
        @prmNewValue = @prmEmail,
        @prmChangeSource = 'sp_tblUser_Update',
        @prmChangedBy = @sysUser;
END;

IF @prmPhoneNumber IS NOT NULL AND @prmPhoneNumber <> @OldPhoneNumber
BEGIN
    EXECUTE [dbo].[sp_tblHistory_Insert] 
        @prmDatabaseID = @dbID,
        @prmTableID = @tableID,
        @prmTableName = 'tblUser',
        @prmRecordID = @prmUserID,
        @prmColumnName = 'phoneNumber',
        @prmOldValue = @OldPhoneNumber,
        @prmNewValue = @prmPhoneNumber,
        @prmChangeSource = 'sp_tblUser_Update',
        @prmChangedBy = @sysUser;
END;




        COMMIT TRANSACTION;
        PRINT 'Kullanıcı başarıyla güncellendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
	
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblUserPassword_Delete]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblUserPassword_Delete]
    @prmUserID INT
AS
BEGIN

        IF NOT EXISTS (SELECT 1 FROM dbo.tblUserPassword WHERE userID = @prmUserID)
    BEGIN
        RAISERROR ('Bu kullanıcı için parola bulunamadı.', 16, 1);
        RETURN;
    END;
            
     BEGIN TRY
        BEGIN TRANSACTION;
     
		DELETE FROM dbo.tblUserPassword 
        WHERE UserID = @prmUserID 

        COMMIT TRANSACTION;
        
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblUserPassword_Insert]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblUserPassword_Insert]
    @prmUserID INT,            
    @prmPassword NVARCHAR(100)
AS
BEGIN
    -- Kullanıcı ID kontrolü
    IF NOT EXISTS (SELECT 1 FROM dbo.tblUser WHERE userID = @prmUserID)
    BEGIN
        RAISERROR ('Belirtilen UserID tblUser tablosunda bulunamadı.', 16, 1);
        RETURN;
    END;

	IF @prmPassword IS NULL 
	BEGIN
        RAISERROR ('Parola bulunamadi.', 16, 1);
        RETURN;
    END;


	BEGIN TRY
		BEGIN TRANSACTION;

    -- Şifreyi hashleme
    DECLARE @hashedPassword NVARCHAR(100) = HASHBYTES('SHA2_256', @prmPassword);

    -- tblUserPassword tablosuna ekleme
    INSERT INTO dbo.tblUserPassword (userID, password)
    VALUES (@prmUserID, @hashedPassword);

	    COMMIT TRANSACTION;
        PRINT 'Şifre başarıyla eklendi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tblUserPassword_Update]    Script Date: 15.01.2025 10:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tblUserPassword_Update]
    @prmUserID INT,            
    @prmPassword NVARCHAR(100)
AS
BEGIN
    -- Kullanıcı ID kontrolü
    IF NOT EXISTS (SELECT 1 FROM dbo.tblUser WHERE userID = @prmUserID)
    BEGIN
        RAISERROR ('Belirtilen UserID tblUser tablosunda bulunamadı.', 16, 1);
        RETURN;
    END;

        IF @prmPassword IS NULL 
        BEGIN
        RAISERROR ('Parola bulunamadi.', 16, 1);
        RETURN;
    END;

	BEGIN TRY
		BEGIN TRANSACTION;

            -- Şifreyi hashleme
    DECLARE @hashedPassword NVARCHAR(100) = HASHBYTES('SHA2_256', @prmPassword);
           
           Declare @oldpassword NVARCHAR(100)
           SELECT @oldpassword = password from tblUserPassword 
           WHERE userID = @prmUserID 
           
           IF  @hashedPassword = @oldpassword 
           BEGIN
            
                RAISERROR ('Paralo Ayni.', 16, 1);
        RETURN;
           

           END

    -- tblUserPassword tablosuna ekleme
    UPDATE  dbo.tblUserPassword 
    SET password = @hashedPassword 
        WHERE UserID = @prmUserID 

        

        COMMIT TRANSACTION;
        PRINT 'Şifre başarıyla degistirildi.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH

END;
GO
