USE [dbEMIT]
GO
/****** Object:  Table [dbo].[tblHistory]    Script Date: 11.01.2025 10:13:17 ******/
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
/****** Object:  Table [dbo].[tblProject]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  Table [dbo].[tblUser]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  Table [dbo].[tblUserPassword]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  Index [UQ__tblUser__AB6E6164C0189D16]    Script Date: 11.01.2025 10:13:18 ******/
ALTER TABLE [dbo].[tblUser] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[tblUserPassword]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
/****** Object:  StoredProcedure [dbo].[sp_tblHistory_Insert]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblProject_Delete]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblProject_Insert]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblProject_Update]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblUser_Delete]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblUser_Insert]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblUser_Update]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblUserPassword_Delete]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblUserPassword_Insert]    Script Date: 11.01.2025 10:13:18 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tblUserPassword_Update]    Script Date: 11.01.2025 10:13:18 ******/
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
