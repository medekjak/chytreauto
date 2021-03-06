USE [master]
GO
/****** Object:  Database [MAINSYSTEM]    Script Date: 7/19/2016 12:46:36 AM ******/
CREATE DATABASE [MAINSYSTEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MAINSYSTEM', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MAINSYSTEM.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MAINSYSTEM_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MAINSYSTEM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MAINSYSTEM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MAINSYSTEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MAINSYSTEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MAINSYSTEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MAINSYSTEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MAINSYSTEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MAINSYSTEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MAINSYSTEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MAINSYSTEM] SET  MULTI_USER 
GO
ALTER DATABASE [MAINSYSTEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MAINSYSTEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MAINSYSTEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MAINSYSTEM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MAINSYSTEM]
GO
/****** Object:  User [administrator]    Script Date: 7/19/2016 12:46:39 AM ******/
CREATE USER [administrator] FOR LOGIN [administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [db_datareader] ADD MEMBER [administrator]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [administrator]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u WITH ( UPDLOCK, ROWLOCK ), dbo.aspnet_Membership m WITH ( UPDLOCK, ROWLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users WITH (ROWLOCK)
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COORDINATES]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COORDINATES](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DEVICEID] [int] NULL,
	[TIMESTAMP] [datetime] NULL,
	[LAT] [decimal](10, 6) NOT NULL,
	[LON] [decimal](10, 6) NOT NULL,
	[TRACKCREATED] [uniqueidentifier] NULL,
 CONSTRAINT [PK_COORDINATES2_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRSTNAME] [nvarchar](50) NOT NULL,
	[LASTNAME] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER_DEVICE]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_DEVICE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMERID] [int] NOT NULL,
	[DEVICEID] [int] NOT NULL,
	[FROM] [datetime] NULL,
	[TO] [datetime] NULL,
 CONSTRAINT [PK_CUSTOMER_DEVICE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEVICE]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEVICE](
	[ID] [int] NOT NULL,
	[IMEI] [nvarchar](30) NOT NULL,
	[TYPE] [tinyint] NOT NULL,
 CONSTRAINT [PK_DEVICE2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEVICE_SIM]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEVICE_SIM](
	[ID] [int] NOT NULL,
	[DEVICEID] [int] NOT NULL,
	[SIMID] [int] NOT NULL,
 CONSTRAINT [PK_DEVICE_SIM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EVENTS]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EVENTTYPE] [nvarchar](50) NOT NULL,
	[TIMESTAMP] [datetime] NOT NULL,
	[STOREDTIMESTAMP] [datetime] NOT NULL,
	[DEVICEID] [int] NOT NULL,
 CONSTRAINT [PK_EVENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[REQUESTS]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REQUESTS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DEVIDEID] [int] NOT NULL,
	[REQUESTTYPE] [nvarchar](50) NOT NULL,
	[SENT] [bit] NOT NULL,
 CONSTRAINT [PK_REQUESTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIM]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIM](
	[ID] [int] NOT NULL,
	[NUMBER] [nvarchar](50) NOT NULL,
	[OPERATOR] [nvarchar](20) NOT NULL,
	[TYPE] [tinyint] NOT NULL,
	[CREDIT] [int] NOT NULL,
 CONSTRAINT [PK_SIM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRACKS]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRACKS](
	[ID] [uniqueidentifier] NOT NULL,
	[DEVICEID] [int] NULL,
	[STARTTIMESTAMP] [datetime] NULL,
	[ENDTIMESTAMP] [datetime] NULL,
	[STARTLOCATION] [nvarchar](50) NULL,
	[ENDLOCATION] [nvarchar](50) NULL,
	[IMAGE] [varbinary](max) NULL,
	[LENGHT] [decimal](10, 1) NULL,
 CONSTRAINT [PK_TRACKS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 7/19/2016 12:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 7/19/2016 12:46:40 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'MembershipAndRoleProviderSample', N'membershipandroleprovidersample', N'c9200f4f-e5f2-4e4f-bff6-7c54b07418aa', NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9200f4f-e5f2-4e4f-bff6-7c54b07418aa', N'156aded3-ac4d-41fb-9f37-a95f47196d25', N'/3hIUVAF2ecJTGCsEODVsaMsQaA=', 1, N'y6hOcdgJBSUd+7QfMeeWiQ==', NULL, N'jakub.medek@yahoo.com', N'jakub.medek@yahoo.com', NULL, NULL, 1, 1, CAST(0x0000A607016076DC AS DateTime), CAST(0x0000A60701630F04 AS DateTime), CAST(0x0000A607016076DC AS DateTime), CAST(0x0000A609014E8F1D AS DateTime), 5, CAST(0x0000A609014E8F1D AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9200f4f-e5f2-4e4f-bff6-7c54b07418aa', N'156aded3-ac4d-41fb-9f37-a95f47196d25', N'Administrator', N'administrator', NULL, 0, CAST(0x0000A60701630F04 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[COORDINATES] ON 

GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (9, 1, CAST(0x0000A5E50115B9A8 AS DateTime), CAST(50.073906 AS Decimal(10, 6)), CAST(14.435671 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (10, 1, CAST(0x0000A5E501171938 AS DateTime), CAST(50.072301 AS Decimal(10, 6)), CAST(14.436229 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (11, 1, CAST(0x0000A5E5011878C8 AS DateTime), CAST(50.070807 AS Decimal(10, 6)), CAST(14.436808 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (12, 1, CAST(0x0000A5E5011B37E8 AS DateTime), CAST(50.070483 AS Decimal(10, 6)), CAST(14.436015 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (13, 1, CAST(0x0000A5E5011C0AD8 AS DateTime), CAST(50.070187 AS Decimal(10, 6)), CAST(14.434287 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (14, 1, CAST(0x0000A5E5011D2418 AS DateTime), CAST(50.070828 AS Decimal(10, 6)), CAST(14.477094 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (15, 1, CAST(0x0000A5E501218918 AS DateTime), CAST(50.071626 AS Decimal(10, 6)), CAST(14.433815 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (16, 1, CAST(0x0000A5E501263468 AS DateTime), CAST(50.071867 AS Decimal(10, 6)), CAST(14.433676 AS Decimal(10, 6)), N'7a0d0914-9522-44f7-b78a-f5787efdb24d')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (17, 1, CAST(0x0000A5FA01428CA8 AS DateTime), CAST(50.129872 AS Decimal(10, 6)), CAST(14.419802 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (18, 1, CAST(0x0000A5FA0142D550 AS DateTime), CAST(50.129747 AS Decimal(10, 6)), CAST(14.419718 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (19, 1, CAST(0x0000A5FA01431BA0 AS DateTime), CAST(50.129740 AS Decimal(10, 6)), CAST(14.417965 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (20, 1, CAST(0x0000A5FA014361F0 AS DateTime), CAST(50.129740 AS Decimal(10, 6)), CAST(14.419965 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (21, 1, CAST(0x0000A5FA0143A840 AS DateTime), CAST(50.129740 AS Decimal(10, 6)), CAST(14.419965 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (22, 1, CAST(0x0000A5FA01447554 AS DateTime), CAST(50.130478 AS Decimal(10, 6)), CAST(14.419902 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (23, 1, CAST(0x0000A5FA0146769C AS DateTime), CAST(50.130440 AS Decimal(10, 6)), CAST(14.419475 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (24, 1, CAST(0x0000A5FA01498C74 AS DateTime), CAST(50.128985 AS Decimal(10, 6)), CAST(14.420273 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (25, 1, CAST(0x0000A5FA0149D3F0 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (26, 1, CAST(0x0000A5FA014A1A40 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (27, 1, CAST(0x0000A5FA014A6090 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (28, 1, CAST(0x0000A5FA014AA6E0 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (29, 1, CAST(0x0000A5FA014AED30 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (30, 1, CAST(0x0000A5FA014B3380 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (31, 1, CAST(0x0000A5FA014B79D0 AS DateTime), CAST(50.129195 AS Decimal(10, 6)), CAST(14.420182 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (32, 1, CAST(0x0000A5FA014DDD88 AS DateTime), CAST(50.129035 AS Decimal(10, 6)), CAST(14.419577 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (33, 1, CAST(0x0000A5FA014C54F4 AS DateTime), CAST(50.129720 AS Decimal(10, 6)), CAST(14.419753 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (34, 1, CAST(0x0000A5FA014D960C AS DateTime), CAST(50.129713 AS Decimal(10, 6)), CAST(14.419522 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (35, 1, CAST(0x0000A5FA014DF174 AS DateTime), CAST(50.128948 AS Decimal(10, 6)), CAST(14.418650 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (36, 1, CAST(0x0000A5FA014DF750 AS DateTime), CAST(50.129378 AS Decimal(10, 6)), CAST(14.419143 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (37, 1, CAST(0x0000A5FA014E37C4 AS DateTime), CAST(50.129842 AS Decimal(10, 6)), CAST(14.419818 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (38, 1, CAST(0x0000A5FA015044C4 AS DateTime), CAST(50.130260 AS Decimal(10, 6)), CAST(14.419818 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (39, 1, CAST(0x0000A5FA0150AAB8 AS DateTime), CAST(50.130537 AS Decimal(10, 6)), CAST(14.419428 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (40, 1, CAST(0x0000A5FA0150F108 AS DateTime), CAST(50.130537 AS Decimal(10, 6)), CAST(14.419428 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (41, 1, CAST(0x0000A5FA0152046C AS DateTime), CAST(50.130517 AS Decimal(10, 6)), CAST(14.420025 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (42, 1, CAST(0x0000A5FA01524ABC AS DateTime), CAST(50.130517 AS Decimal(10, 6)), CAST(14.420025 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (43, 1, CAST(0x0000A5FA01529DF0 AS DateTime), CAST(50.130372 AS Decimal(10, 6)), CAST(14.420020 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (44, 1, CAST(0x0000A5FA0153C090 AS DateTime), CAST(50.130460 AS Decimal(10, 6)), CAST(14.419857 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (45, 1, CAST(0x0000A5FA0153D6D4 AS DateTime), CAST(50.130502 AS Decimal(10, 6)), CAST(14.419930 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
INSERT [dbo].[COORDINATES] ([ID], [DEVICEID], [TIMESTAMP], [LAT], [LON], [TRACKCREATED]) VALUES (46, 1, CAST(0x0000A5FA015406E0 AS DateTime), CAST(50.130670 AS Decimal(10, 6)), CAST(14.419667 AS Decimal(10, 6)), N'ba6eb6a0-db7e-48c6-9831-1c391b7be259')
GO
SET IDENTITY_INSERT [dbo].[COORDINATES] OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

GO
INSERT [dbo].[CUSTOMER] ([ID], [FIRSTNAME], [LASTNAME]) VALUES (1, N'Jakub', N'Medek')
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER_DEVICE] ON 

GO
INSERT [dbo].[CUSTOMER_DEVICE] ([ID], [CUSTOMERID], [DEVICEID], [FROM], [TO]) VALUES (1, 1, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER_DEVICE] OFF
GO
INSERT [dbo].[DEVICE] ([ID], [IMEI], [TYPE]) VALUES (1, N'868683020938860', 1)
GO
INSERT [dbo].[DEVICE_SIM] ([ID], [DEVICEID], [SIMID]) VALUES (1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[EVENTS] ON 

GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (1, N'HELP ME', CAST(0x0000A59A0164B788 AS DateTime), CAST(0x0000A59A0164B788 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (2, N'HELP ME', CAST(0x0000A59A0164C91C AS DateTime), CAST(0x0000A59A0164C91C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (3, N'HELP ME', CAST(0x0000A59A0164CA48 AS DateTime), CAST(0x0000A59A0164CA48 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (4, N'HELP ME', CAST(0x0000A59A016CCF68 AS DateTime), CAST(0x0000A59A016CCF68 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (5, N'HELP ME', CAST(0x0000A59A016CCF68 AS DateTime), CAST(0x0000A59A016CCF68 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (6, N'HELP ME', CAST(0x0000A59A016CCF68 AS DateTime), CAST(0x0000A59A016CCF68 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (7, N'HELP ME', CAST(0x0000A59A016D3FE8 AS DateTime), CAST(0x0000A59A016D3FE8 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (8, N'HELP ME', CAST(0x0000A59A016E9168 AS DateTime), CAST(0x0000A59A016E9168 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (9, N'HELP ME', CAST(0x0000A59A01757AF0 AS DateTime), CAST(0x0000A59A01757AF0 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (10, N'HELP ME', CAST(0x0000A59A01761A50 AS DateTime), CAST(0x0000A59A01761A50 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (11, N'HELP ME', CAST(0x0000A59A0176A948 AS DateTime), CAST(0x0000A59A0176A948 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (12, N'HELP ME', CAST(0x0000A59A01777C38 AS DateTime), CAST(0x0000A59A01777C38 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (13, N'HELP ME', CAST(0x0000A59A01784F28 AS DateTime), CAST(0x0000A59A01784F28 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (14, N'HELP ME', CAST(0x0000A59D00AF7BD4 AS DateTime), CAST(0x0000A59D00AF7BD4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (15, N'HELP ME', CAST(0x0000A59D00AF7BD4 AS DateTime), CAST(0x0000A59D00AF7BD4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (16, N'LOW BATTERY', CAST(0x0000A59D00AF7BD4 AS DateTime), CAST(0x0000A59D00AF7BD4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (17, N'LOW BATTERY', CAST(0x0000A59D00AF7BD4 AS DateTime), CAST(0x0000A59D00AF7BD4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (18, N'LOW BATTERY', CAST(0x0000A59D0126CB94 AS DateTime), CAST(0x0000A59D0126CB94 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (19, N'GT', CAST(0x0000A59D0126D878 AS DateTime), CAST(0x0000A59D0126D878 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (20, N'GT', CAST(0x0000A59D01271D9C AS DateTime), CAST(0x0000A59D01271D9C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (21, N'GT', CAST(0x0000A59D012763EC AS DateTime), CAST(0x0000A59D012763EC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (22, N'LOW BATTERY', CAST(0x0000A5E5012562A4 AS DateTime), CAST(0x0000A5E5012562A4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (23, N'GT', CAST(0x0000A5E5012563D0 AS DateTime), CAST(0x0000A5E5012563D0 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (24, N'GT', CAST(0x0000A5E50125A7C8 AS DateTime), CAST(0x0000A5E50125A7C8 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (25, N'GT', CAST(0x0000A5E50125EE18 AS DateTime), CAST(0x0000A5E50125EE18 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (26, N'GT', CAST(0x0000A5E501263468 AS DateTime), CAST(0x0000A5E501263468 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (27, N'GT', CAST(0x0000A5E501267AB8 AS DateTime), CAST(0x0000A5E501267AB8 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (28, N'LOW BATTERY', CAST(0x0000A5ED01180398 AS DateTime), CAST(0x0000A5ED01180398 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (29, N'LOW BATTERY', CAST(0x0000A5ED011804C4 AS DateTime), CAST(0x0000A5ED011804C4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (30, N'LOW BATTERY', CAST(0x0000A5ED011804C4 AS DateTime), CAST(0x0000A5ED011804C4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (31, N'LOW BATTERY', CAST(0x0000A5ED011804C4 AS DateTime), CAST(0x0000A5ED011804C4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (32, N'LOW BATTERY', CAST(0x0000A5ED011804C4 AS DateTime), CAST(0x0000A5ED011804C4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (33, N'GT', CAST(0x0000A5ED011A8244 AS DateTime), CAST(0x0000A5ED011A8244 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (34, N'GT', CAST(0x0000A5ED011AC894 AS DateTime), CAST(0x0000A5ED011AC894 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (35, N'GT', CAST(0x0000A5ED011B0EE4 AS DateTime), CAST(0x0000A5ED011B0EE4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (36, N'GT', CAST(0x0000A5ED011B5534 AS DateTime), CAST(0x0000A5ED011B5534 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (37, N'GT', CAST(0x0000A5ED011BA868 AS DateTime), CAST(0x0000A5ED011BA868 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (38, N'GT', CAST(0x0000A5ED011C09AC AS DateTime), CAST(0x0000A5ED011C09AC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (39, N'GT', CAST(0x0000A5ED011C2824 AS DateTime), CAST(0x0000A5ED011C2824 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (40, N'GT', CAST(0x0000A5ED011C6E74 AS DateTime), CAST(0x0000A5ED011C6E74 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (41, N'GT', CAST(0x0000A5FA0146B968 AS DateTime), CAST(0x0000A5FA0146B968 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (42, N'GT', CAST(0x0000A5FA0146FE8C AS DateTime), CAST(0x0000A5FA0146FE8C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (43, N'GT', CAST(0x0000A5FA014744DC AS DateTime), CAST(0x0000A5FA014744DC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (44, N'MOVE', CAST(0x0000A5FA01475EA4 AS DateTime), CAST(0x0000A5FA01475EA4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (45, N'GT', CAST(0x0000A5FA01478B2C AS DateTime), CAST(0x0000A5FA01478B2C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (46, N'GT', CAST(0x0000A5FA0147D17C AS DateTime), CAST(0x0000A5FA0147D17C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (47, N'MOVE', CAST(0x0000A5FA01490A60 AS DateTime), CAST(0x0000A5FA01490A60 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (48, N'GT', CAST(0x0000A5FA01490B8C AS DateTime), CAST(0x0000A5FA01490B8C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (49, N'GT', CAST(0x0000A5FA014950B0 AS DateTime), CAST(0x0000A5FA014950B0 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (50, N'GT', CAST(0x0000A5FA01499700 AS DateTime), CAST(0x0000A5FA01499700 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (51, N'GT', CAST(0x0000A5FA0149DD50 AS DateTime), CAST(0x0000A5FA0149DD50 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (52, N'MOVE', CAST(0x0000A5FA014DC618 AS DateTime), CAST(0x0000A5FA014DC618 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (53, N'MOVE', CAST(0x0000A5FA014DC618 AS DateTime), CAST(0x0000A5FA014DC618 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (54, N'MOVE', CAST(0x0000A5FA01500A2C AS DateTime), CAST(0x0000A5FA01500A2C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (55, N'GT', CAST(0x0000A5FA01500A2C AS DateTime), CAST(0x0000A5FA01500A2C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (56, N'GT', CAST(0x0000A5FA0150507C AS DateTime), CAST(0x0000A5FA0150507C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (57, N'GT', CAST(0x0000A5FA015096CC AS DateTime), CAST(0x0000A5FA015096CC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (58, N'GT', CAST(0x0000A5FA0150DD1C AS DateTime), CAST(0x0000A5FA0150DD1C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (59, N'GT', CAST(0x0000A5FA0151236C AS DateTime), CAST(0x0000A5FA0151236C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (60, N'GT', CAST(0x0000A5FA015169BC AS DateTime), CAST(0x0000A5FA015169BC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (61, N'GT', CAST(0x0000A5FA0151B00C AS DateTime), CAST(0x0000A5FA0151B00C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (62, N'MOVE', CAST(0x0000A5FA015413C4 AS DateTime), CAST(0x0000A5FA015413C4 AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (63, N'MOVE', CAST(0x0000A5FA015428DC AS DateTime), CAST(0x0000A5FA015428DC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (64, N'MOVE', CAST(0x0000A5FA015428DC AS DateTime), CAST(0x0000A5FA015428DC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (65, N'GT', CAST(0x0000A5FA015428DC AS DateTime), CAST(0x0000A5FA015428DC AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (66, N'MOVE', CAST(0x0000A5FA01542D8C AS DateTime), CAST(0x0000A5FA01542D8C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (67, N'GT', CAST(0x0000A5FA01546F2C AS DateTime), CAST(0x0000A5FA01546F2C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (68, N'MOVE', CAST(0x0000A5FA0156DE9C AS DateTime), CAST(0x0000A5FA0156DE9C AS DateTime), 1)
GO
INSERT [dbo].[EVENTS] ([ID], [EVENTTYPE], [TIMESTAMP], [STOREDTIMESTAMP], [DEVICEID]) VALUES (69, N'MOVE', CAST(0x0000A5FA0159F5A0 AS DateTime), CAST(0x0000A5FA0159F5A0 AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[EVENTS] OFF
GO
INSERT [dbo].[SIM] ([ID], [NUMBER], [OPERATOR], [TYPE], [CREDIT]) VALUES (1, N'739953765', N'T-MOBILE', 1, 200)
GO
INSERT [dbo].[TRACKS] ([ID], [DEVICEID], [STARTTIMESTAMP], [ENDTIMESTAMP], [STARTLOCATION], [ENDLOCATION], [IMAGE], [LENGHT]) VALUES (N'ba6eb6a0-db7e-48c6-9831-1c391b7be259', 1, CAST(0x0000A5FA01428CA8 AS DateTime), CAST(0x0000A5FA015406E0 AS DateTime), N'', N'', 0x89504E470D0A1A0A0000000D49484452000002800000009608030000007903C9BE000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002FD504C5445342C20322A2A37304C40383040403F4C443C4545444A4A49504F4F50504F5C544C5353525857565958575C5C5B645C5460605F6961596363626868676D6D6B746C6471706F7372717877767D7C7B1A168F201C9726229D2925952E2AA53430AB3A36B15E57824F4AAC4745BF4B46B1726FAC5858D5605EDB6462DB6866DF6C7CC47674DB7E7CDC6B6AE3716DE6716EE97472EC7875E67876ED7B79E57B79EB7574F07A77F67B7BF67D7DFB34A85300B0FF4284F34A89F2508DF25590F25A94F46197F36399F472A3F378A5F079A8F440C4FF847C74EA4335E94B3DE94C40EB5142EB594BE95D51EC6D63EB7A6DEC7E72847FE0807EEC817EF3807FFB81807FFBBC05F8C93EF8C844F8CB4A8382818C88808B8B899894909999969B9A989693A3A1A09EA8A498A6A5A2AAA9A6ACACAAB0AFADB0B0ACB7B6B5B8B5BEBBBAB7BDBCBA8280D48280D98986D58C89D29A97CC9E9BCB9895D89F9CDD8381E38381EB8886EA8C89EA8281FC8B88F28D8CFB908DE3908EE99492E69491E89A97E89D9AE79A98E89392FB9897FB9B9BF49A99FB82ADF18FB5F19BBCF1A09DE7ABA8C7A5A1DFA9A3D8ACACD2B1AAD6B2AEDAB9B9CFBDB9DBA4A1E5A8A5E5ADAAE5A1A1F4A3A3FBB2AFE4B0AFFAB3B0E4B3B0E8B9B6E3BCBAE3B6B5FABBBBF295CCA199CFA59BD2A9A1CDABA8D4B280D8FFA1C3F6AAC6F2ADC8F1B0C9F8C0BCB8EC9992F09D94E9A298F0A49BECBEB5F2ACA3C1BACEC0BCD3C1BDDAC2BEE2C2C0BDC8C4B8CCC8BCF6E5B7C4C3C1CEC6CBCBC8C4CDCCC9C7C4DDC4C8D4D0CCC0D1CCCED1CCD7D2CFDFD3D0C4D3D3C8D9D3C9DCD8CCD5D4D1D5D1DFDAD6D2D9D6DEDCD8D0DDDADCC5C2E1C2C2EDC9C5E1CECAE0C4C3F9C8C7F9C9C8F9CDD8E8C5D4F1CAD9F0CEDEF8D0CDE0D0CFF9D4D2F2D6D5F9DBDBF9D5E1F1DBE3F0E1DCD2E0DDDCF2CBC5F4CFCAF2D0CBF3D5D0E5E1D4E4E1D8EEE1D0E9E5DCF6E9C2F7EBC8F3E1DAF6EFDEE5E4E1E7E7EAE2E8EFE8E5E0ECEAE2EDEDE9E4E4FBE7EBF1EAE9F8EDF0F9F0EDE7F2EEECF6F0E4F3F2EDF5F4F2F3F2F8F8F7F4F8F8F6FCFBF9FFFFFFE7251F0800000001624B4744FED200C2530000584149444154785EC5BD0DDC2C577D1EB6F576B9786FA36565AD55C9A949EA164B76AF74ADE84AD7BA32C2C4AC30496B132340CB44F6623A3460BB2516A8048BE0060C769A944F5B314ADA18B70C894952B45B65E5BB947DE7E563A4808BEDB840B2979477FABA58F19C51B12733BC3BBF5F9FFFFF9CF93E333BBBEF157D40EFDD99DD9D9D39E739FFEF734EE7B81EAEE3AC96CBF97C369B2F970779AC9674126767AB83B9FAB4C2FC60E9A897BB63EDC580B7AE1E6C854D1F8ED7B8B9F94A9D4A807B9FADF8ED78C557B3D7C9D1EC60C61FD91BFB3FAE6B47F22EE2C05BDB876B579D6F42F3ED3A8EBD94FD35C3BFB2A70E0E1CFE8D03BC812EC35BD4992B7BA5B05EBB428828B915867D70C04DDF1E9B28C24544F27AC32FDAA18980198E1C473D5A998AE86F4945DB912D782A02DA3EDD93E2DC61903BD80A49408C8D59E50BF38383654A393A9112F0707E5A02CEF67E5C39BEE2606DDBEB23756E1B5A8F978C8B737ED68DEA2C020915E622FEBF2A7071EDBDE42EC64BB81FF6C326F285705D41CCF68BCCD6A11D0133D45211D250CAC453119039E7E609A80EB6421170BE54C739604C680918ADEC655980EF8AFD45A8148091DD967C80B3DCFDD75C7ED670851ECBCB4505C9C53971116FDAABBBEE02F5FCBBEEB25BD2A719117371EDADD72C65B557DB958019D6E9202BEB6712F32C137766A21DD23D296D5438D80A4940DB56877964048C567CB5955416FFBF125012A3F5F802DCE56C8FDB95BF131CD26BC845C807229C4693A13367B3BB5EF29197E0FF77CDEDBC6064FAECA257AB88A290B8E8E2FF4566EF4FC01430158989958782A8974C5C3A4ECB612E2DB58480F9836D701501D5610133988509E5F204F4A1804E49C0A3820E0F02A15E6D872446A4BD613D562B34EACEB7BB3EA6DF910404D016DC176BA5C964B7D1951977817C20E15DE839A9A4E739257D70C816E36905A3E222C113E22A1030C51164E27C89215696894AD0E341B7084549403B4F4075B00D4AA0D4107096522E4F40B1C26D6A54F60E8052CC282142270CD46B890094147A52E625533BD0CD561CACAD90A6668E8015890DAB0AB28275D9ECAE8F4069FA1FB94B755C6A30B292C6D155168C7058AE260109DC234A26D29D6B8522CEDA8E46F7B8D263938DDC44A92AE4A743DDA7DD4C020ABEB4BB9243F86A12F0E8F0F0F0D8EF38223F5E4438F33621A0689927E3EE049CA3F9DA2BEC04A55842B3C9E0DEF5918FC4F1473E7297D660540E2775E00A544CB9682BC1B81717AF3601EDA252634391057D4ECE1352A108FD9CF699EC944D9E809B96045CBBF4696D7F124952CAD1898480AE8D3EDD59A414901070BD86B00B9D0E45546CF486F0603A083FEC1C6CA6A6370D99780254940CC407F621E03EEE5D9180B8DF469B154EC84B5E0227042F1347BA2A469420A1EE632A3A8A8CFC44313DFD0E4AFA6A13B056A6D4C614936781503C949D223977B4530F95344D1ED4E829E5E8C4913A5A8380A770D97121F8FC4C40F7902FB8E8F03FB13D77C03468DF75270CDD416F991070B06259C84CFC1611B018CC4A25760D641486099843D16054FDA6A024098912F9442C14098992A6B3F5F89611304516C829094598BB924592800D94D2A0A469F220A1BC92EA61CD975EABA8B49680AB5A03A10AD04F3EAEFCF578D1E77F8CDEA467E26834363BB13D0BC9374157404B753CB0F2D80B5760E2CE044CFC87DD2009085F84B18D8033CBB2A6D3A9A90EAB48B8C83ABAD07D07078A80445449D5A5A2222969F81B5A83312320740859CC9E3CC22BF9624750D057BDDC0A16F2EA59E423703F0AC909D9A9EA602B1AA2D6B8F63CA51C9D4808681F56FB748D07A0B1C0C31A4DD848452220EB70454063487FBD8E177BDDE8F1CED41AF6E3C9B0DFE9818D861545B38E6C61DF584057D3677723E03E111FD930492CA14DDC69BB0C61C0D04F83DDB2FFF889427A4550EE8BFC7F958B8960ECC080E49B83C1BC227B39640666E6CA8ED84B4F244E8B7415148BD6F983AD280EF402D0384926CEE67B4B08A8CBC4415C16205B91A8A8892581BFF325B55E42C011FD9D120D3B3FFB3DFFC9339291417F1C5B5D63388E17DD381E2DE2CD1A52D1AD375AF5C0D0383D016930CA57F56849C01CA452932A3804F1CAA251B111FFD1C7F25C7445C783AAA603570C06FD4E77227917AC065A026E958BA7B2AA64224471AE41A669D010B55E26F9A54A260E5E70B94F89AD3416D2619D22A5E22A719B328B5E1270333648C730EB3AE79EFF82B73EC32F47E3381E4FE260189BC378DC0FE37177D895FEFE2E04DCA63D6B20132E39026E2517BA501A413B42F981B6938475D05E684B2D1BD19AB0B808CA6CDE0451146258F6A682BC1821ACAE2EA81AA411853AEC67A8284802AACCA824A0DBF26A0D51EB79925FD211B0DCA7590FE5333D255B357101D3AF4B028683816159C2EE7AA1D9B9F8FC175C7CEB9F37C0BD3E1EC4E98D60151A7D3E308278C2B2F25B4240FE9D1D09B8BB0C1181902A2B740BBCD9CA46454005A809E829E320DCCC063E54B550744C0CC3D09886F26511F8A87CE1EE67A828485741355671E86E4343D47A9EE497E24D2915AC21A02E30A36CD52A15537DA608B8308CC9C0DC8C7B839EF9E80BBEFBD6F3FFD1FDF1B44FFDE2C5567F02D948CE09EC4163B43B01C19DFD099888B436049C1D6C4D1854117AA108BDC5C209FD7ADB0D6C4C433B6C17A2050B041C931767F68CBEC17A64614CC5C65BF9BE2FC8A3F6C57130808AAE5EDF83C52825E391B3DEA79514A46DA6145C834CAB42C541B4AA6396E497D24C9CB4D8A295C66392C31FCD84C652A73264F569A022133091967CC5C067233A0A57332F8CFEFEF77CD7F3BFFB05FFB4339C98CBA8B30CCC6E3C3216DD309E760D6A61C66E04DCCA1D0D8A046C13F8846B0596908CCFDB1B5B101A2BDFECF43B9D8EDE76AB02FE34B1314F40B307FD107417B1D3257BDAEA5A463F5EF487DD21DA776D4CBD28184C210F8F0F49387A2C1CF95A229C982C193DE18963252EF78024A06AA162CB6D810CEBD61250E6974AA9E05047402EE681AF28FB407682868CCA6D4A3213928064AF52C3703CE138F8FB77DE79E7C53B7FD9340C6363F6065D331A1862606C0646B84908D8D6C405F624E0213DAC4878DE46BD727029416A6F502B34DC6CB8EAF98345DC8DC7B3DDBCD74E1024C119872DE345A7331C76E28911F7A6B0A51D03AC1C4DC88D1BC17EEE4D87436BB3895616C46286008D4A640CC4700A0AEE09C52249C0264A55A1F20A750494F9A5586C4F05B30921A55B86663202190173108F5CB870C71D7FE54B2C14C395174553275C0D5CAB3B1EF60C790F6D4D5C609700570EAEED055E6A9AB421E09114F27858F5F80A383DD3884F2922A17FC5C08B87F17CB82301398B027F38145D93A848D1FCC5221E1A7167D8EB7416145AC07F64BCF4CDB86340834057F7C88F332753231696E5877EDF6222FAA6B137FD1216A9021179B0B1E5E8832668ECAA52CD471ECE32C92FA59938F69871048554A2AC8C75A0E5F1B3AC68CB5CD4935111D0060E0F0FA9CEC3A5E0D623E781DBBF407A818422B97020E3C69979538B5DACB6A51684BD7C03C05DE7AAAD77A8D6CC120639D3B760E01FD1F3A21DB83D56AE307A3194E6AE04E4BF682E7FD89B4C4CCB13DD55186EE221C8C6AD0A5148FF75C87BC33F38D7615D3D1DC64667BC88FAE321246367119BD34DE459AEEF529EDA59AF8F647C7107A8E45B9E804958934CAF5CB7571A5119611A02BAF3958CC2DCF592522AD80301CBDD215D4D9C9737815FE24ED846466555022198E6791E551BA1197EE5DCB95B6E39FFDBCC4609D61741E00BBE875DAAB1F622205903640F24D00529F856A226D6245ED8AA40C0A37510078E6A8A83033B88CDD8EC74ED68271B2CC9840858CE53C318DAD1B437E81B516F160E267EB88628041BC13CDCE4C8F0F04FD0A1A816494A83FEE9411E12592D88440B82119232C2237BDE7AEDAC888B2410DA7151B14876CA11479538ACA99E3001CE50BF73CF1321398BCC1A4D6351D9B3D581694C670B38682A119210704DD599A53E95B514DABE6E24A322E037BEF8C52F7FE52BCF7CE39BF2300E1EBDE3C2850BB7FF36B311C211E39264E3DA76A5DDD336CF430077DA1B8C0A22C4731FE4720A9A20855407686A755C8F52208883662155C8B04B762CB88E1FF6997ABF1DD2541CC625FB70C0CC8936C67AE3C1A79944E476C072EEC1C8EB1EB07EEE8089FC0F7819077DC8CAD8EB58F05D6273C11A3C87848B1CEBB6ED4437E92109A80CE644A6E53C77B0AD124662E03C37A3479F4B3809B8EE9C89A2CFC41101CBDD818FC3D0DA2A6C2A649404FCC64317133CF4D05B7FF19D1FFAE0AFBD950FBE4C9CA49CB0E71D531BC81110C7C73BA8E07D025C22EC19C678E8915C86091004EBE315BD2490240631935B415FA92FD5A294C7535E22242ABB64AE4531CED8986D67721EC562048AE7D17D1217C9ACF4FCCDCA0BC3E96AB3821B6744B3BE10566F331D82A1A378082F258E2D38278B4E9F62FEDED498140998C3068A8775138C4EC9C532199DBC18536CCC0F7A5939491C23F9473D9F119209E8AA03802427E424DE87539764E28A04A4FA743D01778AA613196D1905FA3F987B7578E851FE500E9B43A9C271AB1830CD3F59ACBD6E0910103D39996E60CA841BE8244BF8E2C05B781B771D86EB75782C7D21896DB69B6C9C04452F117416E3BEB7E80D9C2DA98A128A042CC0B38F1C97868A148D60E26635857C1C475E7F38EA2EA28115044323DA74168B3E456FBCEED818D712300F5C1586122828C928B5B45BC8C4490236842930ECA474244EAAA8351F290A4AACA890B73829334D056B3271324EB6BBB0A17AC0387EE62714D76AF015F9C309A2E28021194F64D43B5C7B254224010D6333198D469019E3D1D0BF3C1C4D7A9E390CC3A11942005EFEBE44086E13813A022A2B966B07E014744DB19B0FD244C04C1028B9C86E9C64E36CE645D118E27CD11D0EFBC218F8466FB3E86F361649C29D2035134B4626E05A3A9287DB0858808A5A4361A79C24E61DCC972E359BCABCAA444872A44D8490F2DD43DB1D1D9295F7776EBDF5D6F3175EFEE05FB9E30EC5B902BE287F5822720FF553D58A0E57D200FB1270B1B07A8E4574BB6C18BED75F5CC6EB096CAAF5BAE705143CB8FC7D0CBC52DFAA439180D248577E5FB01A1A1363D13783AB48C09AB49A904105FC12480F3D3D9B859BD93408FAD3757734EA0D68BE89471F49E28B3B82ED15C8471E97BB1150A9030645995733B00942AD665630BCBA729FB25B82BEDE5DDB31DC0F9C3F7FEB2D3FFFD9C3C3837FFECFFFE93F7BEFDFFE8597532C106CFC09320FBF2C7F98B0C16D48FBA368E42A1226C8B8086B62F79B621B10E6BCD18704740C4378A3C5E5919489D329159EE05602E61FE508D5B7EA900607188991CE0781634C06C361B7D3E95C3D026EED070A3D3317493252804B58336B1A42384380A9F8A2E46266E9EE8896B3168BF608C0DEC7724E5D8C664B2765B2404F53C1DA44081E792F61A3F03E0AFDBDEDC94F7DE257DFF7F0CBF1F2965B6E3947F83B6F84707CCAA32C091A63236CDD83D54C554B901A8C50D2EDDA45AAE0309A8EF17763189E480978301C597017A825BEEF32402EACFA561D8ABE59C1482769243B797D5509B8433F7080CB3D1610EB195CF708962F74D36AE5C0CCA3F64FBCFE76689B0A664E65F34728F802DF975FA3D9D2E42F5FAD21152CE3D0A721A0FB2031B082B71FFF02FEFE330CCC43D6D55B9F0B5C940E978E8B79250DEFA5FE5A4440F0215CF717A1E933012F4B024661BF4FF97BEA0E932420CC9F6DEE6B3110542E97F343C38AA7D370B73060130157BB4F9A2D5A090550F80B761E71916E3C26C15820233D8FB358F063A56849C0E2FC1177C9EA5759F254DC217DBDB0940A26F7A4284E24F5F678F004EE9B25E1CA78F8F861FCFDBCFAD46E489D7F9DC1486464C128A57B09221C11014578301E4D37A6E989C9816384A169462021BD4586DCE6FB3C9F4CC06D6D5D34C94A25C0C29FF43DA33F1C5F3D09D8C0A63AB4FA8A24E04A0A460AC7C0E00BC2CD248827DD1E8C0895A767B42460C11E5973F025CD5AA2D9D2E42F9F488F4053D983D4B52C4F28D68FAEC6D77190AC76B30BFE40F22DC1830FBFEF111689B77FFE6DF8FB05F5A9FD511F155DCD3565A449613BFD4B096957089FEA3E612E85FD0392785CC487E10BC7AC10F2D2A05492AD8A37933612548BD0F3BCB6C53009AE2E01DB54FB287B4D7D0E82115A7A6DAFC574E87783C5D81FD8C1312829F564CB40ADB247D84221C1965FA18824A014B5D554702348B4102B5BDA5B8C2BC436C6838F3CF519BEF92B24FB4041FC777A02E600C128C948A387E5E272B62C07706017F1BF54BE8483392C00AAEE1450CA86ACA05B25EB10F9DB7AAE6499A8C04346C0E1D41AC5F3AB48C0366C2AA168A6EA51881F65084237E8C50BB867460046AE1B0AFCAAC842D84799F721714436A0B48F3D45C0E408364D224EF2BA6D855379E1C2F61609449D922B83D8F63091EDFC53EACCF19374C4F80375E6AA63EDD0BA31C9BDF2CD6A474DDA3F144C53C6FACAA101193A5BFB5A4BC0C3A4A5BDE0A0DB75AC9E793509B89D4D25B429B69004AC564E09110EC78B9E3D34483554FCDA46A406B1CDE22FFF2D6AB634F94B27F2A9E04CA5A4C93566DA115B5D444BA6208366CAC9B7D557B4F83078F6E0678881B725169FCBE4237C469D795660930191209DD6572C28CDBA34118DC07A395FA4958D0D405BE408582E0116DC050B2BD82D11D244C0366C2A015D9A7B5C3D92B92BEA3083B78916F1B8D3171901359FD2421270BD2E8B3F00045CAAD44729150C159CB7697420569280CC13516966B8F5EA43055CB90D44FBC2E7896EB7277CA303C6B34A4008FB55F95E8989CA906009BE479766A0B6552F81B2841002C20F927437F9B78580DBD95444AB1921D25EF3ABD4F2A573106DE8191A0AFC34B0E564121201E59AC91C019D2201D1532D9D5D97AC2D746E5E334B1943FD5A6CA4778068EF634178FEE54FCA53240F292678FE73F2F8594532C5959898775238A68D276E6347E8A1236026218430875D23F07573D99A504FC03DE617A1B3DB125093E210064D8912632E4D2BF8B55B21ED1187D46FF9BAD46C8A72D554F08ED196B556334B0993D4283E05A2DDEECA5AD407AFF029F2833FF5161CF2D1B70CECA410137177EA66313ED59B7BA058BE5B9610E4357A93EEB810076E817A02B6625311646FA997B570EDD461280046C9BA3F8E8DAE0C24D5D2540B49404AFDAA13198880525B28021ECA0F6B33712D916AE6BCAB424484D0F92CE960987FEF2706BE85A523C5063FE37EF8579540FC968396CD9337BC4F3A2F45D127284B8840C4CE74D4EDEF580CD34CC05DFB079DBDED2BEB992ADD2B510B6E99D804FD6EDF0A9880E5387B23943D7240A9DF322A044C53C1F057760D3315213533F12EAF997FEEA69B6EFA3974F81B2903F7378881107E573702B32FF6902939140DC8F2C215C1B4DB1BEF5E8BD040C0166C2A833A5BBDAC813D57A57BE575B9C3E970624C173DC7CF1350BBD44615928091366898115065E29A52C165B89CD4DE56D44D9A591A5D44C1FF8188472F7EF6E69B6FBEE98D8FCDE66FBCE9A69B7F593F95E05B8B3D644A0E4593AC2C2182151719F9DBF279653412705701B1ED2BB24099A320E51447383326C36136AFB414676F46C3E28064B9A8D4474240FE308EB64A40D7B65D399D282BEA6EE2A2B4B91EBBE9E69BCFFDF7C4C09F212ABEE9E08064E17BF163C02CC9B97080A45564F12AE254042C55C44A0266B3FAC28D632D1673EBAA4AC05D095834532BE01C992A8F2F530B2A5886E4852D09C8076D09D8E0B1501C5A12B0B83E2F11B0790D94B5DC342287CD162E727837783FF8F6B360D8FCB1EF8736BEE9BF59BEF1E673929105C09F498275A907F32CE31449EE0A7B4B0B5778BED91D427CEC5A8DD540C02D6CD2A139744DEA175EAA24A026EE1E78E3D833661B16E22ACECEEB296D9D9C2F09A8CF656612B09A0A6E0C8AAD1D19B0D643C745114E8DD9CCFBD21DE7CFDFC6FEEFE7280073EB7BFFFAB99B6F7E236423A96952D4C5481D2109D6B55C97705FEC2153329409C8CD901250F8432BEEC4D35D13218D04DC3968D914E74C2AF40AEB40E721FCDE24EE8FBAAB1C018BDD53CBC4268F8552239249492A58495A92800D0FE8A8896BDB9172712D3AA3C9A037FD6F2F9CBFF009BEC8A788816FFF00FE7C808F8F452068EE01915012128F251F92912630F62984D88E5311105FAE12300B03FA032260B86B2AB881807B44CD1B228752FDE27EA5C3A0D681CE43D8FDD81A6E26854C5C3996AA676233019354B05C9F37C9C411011B02ED6B79033BA2636F22B3FBE8850B171EF6603E0AF161BC7C3BC504DF2F2F1B3A8E2A50C103533A8C43249289F9474D9E1486227FF6EA2021E05EA66791BD4907A9438A43F7E2DE747AF508D86616162F670B36A89E6FF88ACCD1D2E7E49D6B726CC2EB7A237333CE1130B2F5DD5366A2F258B4ED3A830A96B2AC29155C813471E238846C6B5DD41DD08C2CAFF38D87BEF7CF7DCF53710C8BFC4B775CBCF0305878CB9B888FEE71B81AA44B07508914BF623F472DE75E8C7293A1289FF4AA28E7C4AAFABF531CB5E7A28E801155D31DB9F46C7EBC88AD5E6FB13301EBEEA024717590454060033364DDE0645185A8CAD1D6A6828F43A3D38F275D2F2360E656A4DD5365E27C396FF058D66403F2DBE554303ABA9E806ADF1B484D52AD5951773317179DC562311EC6DFFF5DDFFB826FF3E2D170D879FE43DFF3333FF9820B173F08F7C4F75D21E686F0E94E059E578A0B9A5793E50F542A8D9EB4C8443A85735B0DE206245695625F0A7E731B8A3E819C921451DD1CCC5F5A79985B601309B2861B625665741CEDEC049266DB7C10F02F4F86995B47C0A37C85A8741834A9E0358B31732D337175A9E00A131D08161958D1A621714F09018BEBF336A7823100E846D70505589C60A0E1E2A237190E2761FC6D2FB878F13FA6BA5AE7DBCE3DF4676FFCF13FF7DD0F7DC8EA77C761BC58D873110A70511C8BC9802678C177E94F35EB7E3E0BCAB9918054B0DEC49CA24F20BB31051CE0211EDD3066A15C96A4CD42048C0E6DD7A8A1E0760148FC23974ED9D218A3A53D421264EA9720EF5C63AFB99B70B188E2A8652A3861E2816709610D876363A2CB0211019534DB25150C025EBE1C69F7BD61E8B968AA39A9FFDE858B175FF01C3C65F7271F7AE8C69FF9CAC51BCFBD73E8D02263A3E178D80B63674493FA27065527FBFE7A2E3C5ED248DF5732038D46AE28E75D8DF4645287E25D0A3AB73EE4551BF048F6A1A35326459FA044408CACC594166158A863F6CDE442044E2319C96AD15070BB00B4897FE9F5D618A52083CEC9CAA95F426147D63C844D93FA5420A996A61588A037B7BBC67038EAC94D388AA0DB94F67239158CBBAD27200C85CB97DB5583655C8448F321D2A24DE7E72F5EBCF13F8DC3BEF195872EDEF8F033176FBCF08BF1C23186BC9A497F11F78C45DFA08329D8B8300C7B136E0F76B3722E8AC4E57C270A2AABF748F12E059D538D04C0203DD6ECE15934996509705B3490512E6410C0D6E1C3045B052005F50A4E24FAD3D210B0A07E09D261A84EB714624C2B7D2CE4FA8685553A1A21C2D5D49AC4C622E6595E65E04114018BEBF36E4905AF3DFFB2A333149A104EC681BB765C31FEF3176EFAAE1FDFF4C79B2F5DBC70E387BE71E1C687FE42B73FEC81739010F8AF3B8D1D331E4ECDAE132FBAE6B49BC993628051BBCC58A29C4920EE44C10602CA40428A4D25ADA94D84E43119C6933ECD2E6E82EF782532262B6944050A6E1580CCBF023D1C7CA5DAA545F54BA8CBB10931B1F0861F7018B029B05282087D6B1818E66630AB2160927BE3DF4C53C18D04740411B0D5EF6720B796FFF5C637FED9175CFCC9CE64F293E76EBAF1E17FFBBD375E7CFE64B3A145C64040FCE71019E37E9F9704C5A3E634571E72D108EE2AC9C5A26074D80B6C4F419823CC2145BB0C38277719C850C9C2970C7CD941B83B72E1C912B6FA8ED5B7BA155EE6B0F12E5FBE5C50DD2063B6940B28983A58DB04A08BDE2B57DEB15E28756949FD12A4095625209EA467588B42314CBB9DC48588C6A6D985FF5C4340A92DAAA9E086292F76E05F7677252007F6E8DF30FCE09D775EFCEB33D3B8FFA67337FEADE0A6EFBEF882BE35E918516711847095ADD8EB4FE3CE949614B3869D21FDDB8CE232638992561424B7848252945EE63BD123E190A25D069C5386498ACAA39708A8B6C5C0E090339DC5C48847560C210094C8AC10D1FC7786E340C3A8B31D2F0BF8479EA2E056014863A97C872EC8B6A26D711814E7A7E5242A15CA9280D5C21521463D5ADB419603EEB259B57C16D398EB1659CC08585C9F9753C1F5BD65071EC6EA7A37026610FFE2C2850B0F0561F8A58B17EFFC5BC19DE7EEB8604CCC89E977A07F3AD1AC6789C174D3718C7E1C77210B4930B6C62610076EC2C555620E1228BD9CB43D850E4B74DC4EC08C391502966492FC7CD64181D5377AB1DFF5799958DC19EEEFD8F3FCFC0A2D1B5711909048C2CE819DA3E04652709B002C0F07095ADABB0259308CF64073F0A72401358910418BB0C6901E74547EBE2608212D0F19C029604D8A36CDBDF1A9948E8D045C415D8080AD7E5F079772709F3F3EFEFCF90B171E3E7EE88E73179EF2C370437BB77AB328320783B1703BBEDF33A2AE290CF0927459BBE49FEFC03F5248EC295B35771E191DF182DA9F1C45BA3945BB0CB85FD9E0E0CEE19A595859BC1A9D9B576FEAF3AA8120FA23037E7E47ED0B0A1C2E0F966A2102B52A06C8E8F39D47BEEF671210776AE7562904056D0ADE369BDFA539CA122437E533EB32EE14364063A8DA3C0D01FDA124203F41F1F99A21C4B01FC4DEA89C05B261A8937C28A582330236AC383A87B9E26D4E11F37D0F08F81E2220AD8AF0E0F99BCEFD573C3717601D05449113C281DA98BD1E08785C584D2759684503F421404ACC433FE628DBC445001D42F690BA3D8923E98E806B32F04F9935B746F9E809280FF03C72F0AC23161F84BC1083C78BE762325A2919D5AD77484D1E1CA46B7602E2709B002CFBE41254ECA3A43EAFDD47249451833C17F949356B238B79BF6F1886250DB9C2F335021D2AE271DFE88EBD1C015D5B4D9405D2DC1BBF914F05F347757097DCCDD561D21AC4BCDB5D45C0B78080BFACDE60101149E411D32262637AEBDC55872BD8A7BC951A1BF945C148967C8A448E14C15C642F1300F5544300756E579259C34BD9F4150242BAE49A23232C219C4E60031AC6627E903E4889B029726464C9D871576CC89628B84DF6E87AAF32C014B2E5D6898A759938E1D212D543E9CA169FAF09225C799069A3BE03C1A2CEAD577339AC689A22FEF2B54A04C4633711700D357779EB5A014DA069704F29023E5C26601E2C168BB25B362FAD6CB8D22C3316E1DE48897918E47A022688E0B8100F4909431337F8FDB9C5756A944F311192232C103AABD044E70DBB9916AA23601E44462A46B06935948383A39C0BEDE9137429D042E53B8406DEB68A362DB3C3C6A786806A00445146408D9CAC4084834EA7D3871A9BC8C58913C54B0B55AC8EE0AE9753C1529E6CCBC441D339F5899016A075DADEA108F8F67337D7135003F2F1F00FFA3CB903161B69E6E5E0B2E2623B4442EAA53A0901E4324F35CAA768321757831290E3EC466D363CA796D0868004590DC30B5A403D6614DC9443D345682CF876E5B6F24935ABC38B70DAED408FB2272109D894894B0025162C390D3430C3A354F1CE674B1EC3E8CA8480C54C5C33013911B2699508A9032D5374DB1549C0F7EC4E40BAB7A2D04990CB024A25DD66C93B2E45D35F8F91754B9DF2298A9C1C6109A127389EB732D3657E73A3A7114939962395568E82E1BA410F6B2EDF30BE72A8DD4FC1B7FA56BC509EC40ED3D261D54731354714BA52F491C649AE4F044C56E42D10D06E9C9489F6859BB66322A4049A0DFC6149C0F781806F54A7DBA0918039E4EC2970F1B8898B029DB99580D42D35CAA7344BBC244742036A082AB8C7B5748CAD37AF90D5035297A0F7E4B45D4660D7521072A6A483E118B7D9C7422642340414062542C27C2A3820A77AFBCC1D11F687F1B033F18F70FF1081F93CA60D735E0E694540476A982D993847C4D0D49ABBDC015407FDB024E0076E3E77EEBF56A7DB40ED87D0B60F092E3E9C7251C7C290821BB5D7CB324F45E59A4259050932C232C2D0EAB31AE25A3AC6EE04847DCEA6E0CAC9A4A07E25598072FC0501B24687D64B940CB5B5A3624AF54B5E3747408F6E07E633876FB2486219FE74149BA3791743BCB2461E068A2260717DDE2D04AC1D263BE033E0DE795AA2E3E1E34740C037A9D36DA0ECA75D08982388ABE60BC17381DF92BAD011C9D5BA279204A40CBD1AFB1A02E6BBB7942A1581C77A462EABC24857B8DF821C01C17E0A15C1685AA7066EAD290871B9CC3989C4BF563ABFB025701E42F4FBC684F6C3C1418E8019C04115565D15C4A23FA1247F38986916942602F2B5D24C9C24E0A60D01F74E8448D07C745EADEDF8D7BF25044C09A2022947D0CF8790886BC5C18D5B106205A8D4279A48367DC5482F59F8F2F359C25844D67064E42BE27471121D0A04C4CF4B6F6495654722BD2948D9E0D55C76AAE25F1B01A81221E5086F1086228EA6E4C9B20C57030C2A98A207A548227E38138B8EE70ABB3BE9C77657570C8301A522CF6A7DDE5C2AB861C0D40E935DF0AB201FADD3F1F0F12740C09F5367DBE074042CBB11EBB4D040D40E39B5BA131EB8A45C13A85B4A9011562298778DDEB8D74F2BE25AAF2C5422206EA5A529489C4B28D89E7F2AE5530AB0D17C466B418E7C2443E9A501C6C5A7E022F43EC41F733081E7C15BB00C2FE86659A01CD08769EA834FB44B05EB87C98E4816A67CF8F8A99BCEEDE484A8DE6EBCC512F095A403A41597ADD88E464F3A53D48D392534F1C06AEC6F216046588980B5903F488540CE2468468580687D4541BE1386D614E4A5C00F569C796BCBBF6474560838195038AFD3194C7304AC48208CAA6CC16E5012BF2F8CB93069D0FADA95114902CAF1BF4B2A583F4C76062D0BCD04FCC24DE76EFE7975B20D306C88296D85082147108D15A7E47E3D03E503D39BB2E92BD64C31119223AC04D9E1C3C5A69F0A8192CD580F0D01E18D907483F5BEC51484C99888A355CBA692042C47783DAA4CEF3BF162D197B382CB0474ED258CBEE2A8924B247BB3BEA0BD13932472091487964F91ACCF9B11B0124A4FA11F263BE3D713027E6A7702D2E0D89380B298B768C5398921A867604E6B2BF3B7DC3625732023AC842FFA8B697F225D48C2A9089806A657D9E46C98821AA706540588856D423040CD9C384FF8739E4F319112B0981067A2CFE7201C3FD491B34C6C4F52DEE360D25F2C2881AFCEE50139B74F2A381B26B4B1C79AAB926BE95A0B5E2D9508F83910F02FA8936D703A026A95E89A5782A6F3BAE0AA7C60D6DA65D9A6505418E5F579656DCB749C4DCAC4FD9C868060B0A460DE14746AA2825073F86CBD3CC943A9873201C124976AE236434540FE45D50A547D4D58422ECFE07D902998FC1A0818047251A32C069AA13229334B0537D928D930B169B746D899EC50DA6A3BF4D66C7CBB22E0959BCEDD74BB3A57035C32BB2615EA6040B9C22D27896BA1B43641D96725797194B8226E41344A4802B2D6AE2560BE8373129321C4984AE2423FBDDDDC8068461D01A9DFABA6A0E6DE49D82E67E8E856A3B5C6C70242B3DB1BF6FAF96218B5023BD971C43A42A6F2E57B50DE72EFF198F61EAD80EE4D1130599F57CAF42D9938BE4B1FBF9AD84E121BC946997D68C1C64F2802BA20E06DEA9C162ED738F335E992542721426332B51C9D6BAF434E45D65048D55969EC3B3C70967992DF4EA9A550726A15617304A4CDCB690A813A713508987A2339535057A300B9343F467F1603D335A89D13B70EE2686199A12C2A2DB4823D235FDB4E284805872403E59B9E70A370321C99723A670950DAFAF579DB1090C290AACF74884A6C9453360ADDCE65A98A80E76B690AE924B5265F534E02B16D5774269311ED7A50A99549406578C95CE84C4596A5530A0EC760FC6DAA8B2C647E4BCDB78BE67771A74C8C95281C768693A41E84705508A81CDD822958F146B80A102370559EFCA18594A79A3128C285612EE6AAAC5E3B0C1D7814B3E58A822320639AEE155E6F6C183DED1651688662262E4B0537D928F22EBDE56C995920CD90D387683774C94645C6BF2909E810011B16E84DD6012960DD89C270DAF37D6620FD61A8AF00229C39A1A31E7B79BCE61701DC39FAB6A692C8593AE8C7CB6E546560A698240173311C89924F91119620C279C4B382550C839033099AD14840505D9982FC838CA01898A69920447517AE08EF8EDA8CA27791C1136677D88529C7ED59B67119240253572767130B8BD6360F7BBA69E9340EB504243FBF7E84A6C3C43DD451631BC046599B6CBFF7DCB95B6EF91B4787DF0F02D62F912F1560190BAA2FA13FD3C1D8DE4496650911818DBE7F0CD3900A5A43A70F9B5912D03DE0F9AC223469B3848C1C39C0200603A9D0719D3A710AD92C58A55CCBDF2E2542240193F5F002AF33E06A2C91190C25AFB91E5B08487287EDAEDC628D7E3E304DF30CD8DC2506261B54D643F67F958042F0F272A6CCC469F500858672044C338DC264F363A09B969E11B09889DB46C074981CD9AA2A39B38477C1EFDC71C7850BEF58AF7FFEDCB973BF9D88C50AB40210DCB3160B5AB6BDBF30BB5E640C87DD513CB4261327F4692D16E10BDF5E04E4A808B1F626BCE65110F6E5D5748B254283AC6541B557F22733C7B9A60EA9A4516DFE549228C0481877C6E0A42B0703E1EA1110BFC6145CE56A2CE08DA807A0792009E978D1E52D196849C0AA3BAD08E8CB6A2C49C052B490D603487E8BCD7405CFEF4E160BA3A7CFC425899032014B81D522F2C3840A9ED66A8F552EBF031BB39668C617799FF40FC6F13B2F5EBCF34B108BD0D1D299C6A5D2F9E6B94509F2307B062FE0D1B5E2784473F641C3B8335A8C7B31EDEA38F4E3C9746AD8014F35F1C57842BA3AF094ABA1F3F3E048382ECD2971D0B6852E507157F45D51B9A62812703D3F245B32BD8608FC80E644E462B16D6B11DA10F0382993C9AAF6536F844CA9F451585816F6C92AA336C5E009AB1BF70DB55E945E0FACB256C8DBC418D4A36E7794184305640454EBF3E6A6A5378CD09A6102F105E238291B8FB7B0F1CBCCBF8B0F7D33FE10FEC9B64B4FE69B2BB75786BA367CCDDC2410432D34439AD830E0C6D32CF64E406BC085A3201E19F1B06F4CBA2198DA1DFBF1D0083DCB8BCCE188EB527453AAC99375786AA45F0A48ABFA193C70660D16A00C2D05F876F87A1618161E080C0AF2DEB012AD63986D0888412ABD115B94BC110A73E49E845741D5ECD59142E9D62A0185889DD8E9F7570D04C463273A5885A4198A525921500E148796042CA7829B5444AB4C5C998D7088A1A8F3CAF44BB44B3FE18BF107F9AF06ECF672A3723532173B1FDA68E97530A15DCEC16E9AAD0A49E8744D10036CE4FF168BB15CE7A3B7883B0EB3D18C87E3D8EA2FA65DBA5CD5CA51A4B00F361082C4C0DC27E403D377B4516C1EC9B9E6224980C1A28EA0F7C5C631C77DB5BE3CA1752D424B02826ACA1B911D4808D7F6118760F220DB2AB76651198A5915218947E06B469B805493DE10E11B98D9BC424FEE778533EA747A6AF3D112888092134502FA20607DEEA67698D401640473D2DDD0659DBCE41F94EFC50FC58FE2EFEFF0456B911359D4BFC701742AAEB71683B16F765DBFCF2BE7807CF8CFEA4EC6DD749D8FAE41D578BDC5B80F69284F3510F0185DA818983540167590044CCB40125409A85E02229C0EBA9DA1B108FD9480A5B04D03DA12103759094C070E7850922372B7E8798D78A9C9C4C177EBF74CCF300C532E2FC734D110903401F3306B01110C61025AFD6958DD2A1EA662717DDE7C2D42B981BEF08104EFFF95477FEDD77EED836F7A1FE33DEFC8F0700E6FC9E1C10C2FBFFDF6DB6FFB811F387FFE1678C0B73EF88E0B17EEB8F3D1FF0E04FC04FF721D229B2B1D79037EEA5F41E20F77E585DEB8D75D44E3CE703299CDFB6138EBF31A5BB4D00CE9E4451C4C68E5C14E87D765317ABD2E51B59E80E4E3430FFBF126CDAEE6A20ECA1A2C7FBB68D295093899B2139CCBDB94C2360D684F40F41EEBE1556EDE88382C3BF4520DE306B52494164665AE45E0F5A656AF371A0FD5FC0D46590FE0BA16DF01AE3E571BF2937F4A46526CEAE280642168D7E7A525F24B04A43DDE146E394FB2EB8E73EAF054B8053C24DC7AEBFB5947F3CF6B702C1F6CC545B71CEF8424A5781D98288E85EF5833D3B0E763DF9F0E22A30F09388F3BE1660371082785169A71688119B3E7C550CE8D04A494C81A9EC826F69D150B6CB520363551660D16501CAFB8C15C177A4A7D899CC078760888DB2021A8F54672487216343FA3C4C19A55D782197C3A4EE6E451FE183DB62DF7EC4D22A9225CCDBC31584B6B9B57252013505EAC9A0A2E35104DA354B8E50211F0C255216086F765CE74CED55080519A88F614540239031D57F672E540CD07C924F64D389DACA6AB83811056279A75A766CF743BE1B4B7898D3E8C45F25E1A08C80CF4D4F21E510095235DB3D0865F9E59837994346AC980960AABE0B4E1599E0D02E287313C815CC5B4AE52CB41CBC9E69C531955069562287F213427217B7A05941DB9D2631344D8A32A429A8F954D87C9807B480828D3D8478A809A4C5C5E024A02DEA20EAF12D2FDAB73DE4BC2457178B44EA7EFAB4AC732888D78078310C34F0811065401B48AA2D964380D571DE10F2691DBEB0C6C6A484DB22913632EFA214A85488210B7A54A37EC52C0B224D08A3DA1E6A0140C2B6A79F5720B7625A0A38AF673B99148BBC66F42C2595E494B0256E65A84C670B618B31D91C1CB3F10411339119B4DB471160B588F357168B5807925155C8CEC133EFF4882BFFDE8EF007FEF57D4E16EA0C97079BC83A667BEED9147B4BB152AB7F7B0587B9D2E6BA2D8C86A27073E86CD48936340141F425108CF0F1DB0112F5936540639404536F21584465EFE56C0799C955C078EE295A5C597F316A16B2BC7B4D0ABCF1A0149F7ABDC889CE1CB28A5E75270087B954B8FD4581870A3B820BA3BA4F4BA8CAC6DA0C98B13E18A7608231096DAE16BB3694C846852C1F50D2487894E86B440B641BFC4DB689790B7A837F700D828E723808D44396AFA1C6034F2BB54BF40624B08576FE60079C155DD874C0315AF7428B631877C4CE462D61329FD4AC9E7678980C965A5439C9FC52E6C553B5582A2607273B2FF2B04A440121E7731337D97420FF4A1907E016D4B938F78AC3B3A02AE063ECF891E8C74C53018308A806A7DDE5D52C13A2BAA0D6415EAF9B77DEA73BC2E02CFCCBC4A9BF51F51231CA041C834AC92514E615DCA50B246241434E7DA891A8560010EA93C193B27B9B8E230204C89947EE5F18A9F2A2BB01AEC4540E50FE72BB5F0C465FDC8905914F28957CE91226035C026649ECFE740920CC3310133F06C2492036878128CF2C7685112340FE9603D0197DAF5792913D740C09A61D2125C82A5B6AAA68AD437D3D44CB553D7E9913AA0B01953C95864A32420D5AA278DC55F2813D0257F26703D0A766FC3E1815C548A1105A15C086E9D9340A5EA9BC24F35621F0272A4856622811759A596B6581050591450683E9751164D84372F74926835376FADDEE1F69D3BC29FD24537B62E13922542AA046C18A192807AAB623BC8E63BFFA02CBEFA14BD26025EB5DDFAF53D0B362673B5E6721E7436A79ADB8A072E9A237B684940A11682E3D079691DB81CD6C9E4D63AF8A5BE7F560948B1E6D56C9DA4E7725388B55397F0055AA88A1B83FB5FB34F5C41E8941271B4A456D2B8684CBE4E8A6331EE8DADC5C2D56E130AA59D469EF3046C4E059F6E4E1C3B218A7FC75C10C822F16AED98BEB567D7D23DF4C03ACDC8657129052313D0E54DFCD92F8753CE5CA4ACA25F0A586EA4615907BFE203B4AE45D88D809C8225035E66DB128738BBB93A6FC4A53DC5677088F9431AD993173A2A5D52CA8310C0C59C7F48CD787C30E195A53B130D015D3483767DDE68B56C22A064E97E049433E19E5247727D0EC2FBD489D3A269E44864E5048992E6A6AA70511290939BB92B9265A7C8082E56E2953A08B83FEADB2934F67A0D7622208583887469BD81728873ABC9342C68040273DB680858103A351541159015E47882E3D741B6366C06BADDDA54F0B684F57E8B03B2C79123601ADFBEBDBE5576027AB6702536C5C09A2C6C27AD99A217ACB4080447166594BB4AE0054E54ED45806344878A8A325EA9311741BFEAA3E5CBE5B660570212E352A7165019E262B1A07AAF0249ADCABA23499F1708A8DF7EBA8A28766004D6117096449EE52DA70AB96984D624ACDB40CE423A7F5EEE164C785239C5691CFA9428DDB843CE299390F527831FB12610EDD2EAC92C175732DBCC5C4C51C3452916E59A84D9F2F768595A515C37B2A8E5D5CB6DD889806BB2FA8AFBCEA05325059BD37312B5539212BF830F321DD20222985004513B2993EAC8A56E4F3371729C88E6499975727A2B3E9FB0EDD7D509E0FDEAD47BD4F1295124A093F9A6049A27A5AC371D2F0ADFB599806B8813BD8EAE938B60E39272A2928DFAD54B687BAC9699B8DD08482B1255A71EA985145A7823B511DE82D0D98D806E2F3027D6C0D165E20E8F9259C11E578B27A960AF9A0ACE61A7DFCF83F7473FFF66FCF7883A032422F0EAE8E0A26859E76B370AD02D8050D08B475202523D131F163CBD2D5CDCE608F1B241CF0A012923A3B3CDD37A55F5F87514AC9B92A4FA5C55C9EC46406B181BC6663CD325428420D1EA43EE0A1961AC4F05E7502BA7B740F2EFC3B90DFA19496E2E53CBA70099B5EA251E4726967470E6D5E72B7C777E40FC4B0998C3762EC283C33B45B998835C48A03ECC5AC44E04C4956BAE9B38C4597E4747C17CB0A58002E7762360D8B5CCD166A823E05C987082A74360CC5E72960A6E6AA03D33719FA375F1A17C731BF433E4E4E0F3E7DFAE8E4F850289EAB3693E9EAF428FFC77A102988076235376908B599F5290BF9E2815EC42C0C65578AB8B4C13058B5CCB075B0A28786EB23C529FDAABC08B9C45D0EFF45C2D01ADB1E78C9DE9F46064E60988AED84A40CD3069C4931C8086E82347B81074214602B75D51C7A7413A17816A11A4E746EB8295DCD30842A84AC0DC3C0628C9432620FAAC1D531AB98877988BF40E474974FBA6D6601702D2A5D54B1D94439C7823F81714CC5BA9EE9644482274D6EB2068B93A69E0F3AF2DA2A05A0D783CF73CCB36A7B169C6568180CDA9E0BD56A7BC42A61F4B3EF284DF214F4AB84C4D2867757C1AA42387CC2C2900DDC42120FF94C2251E06BE8E80D9A8235BDED98D8039808B497CB15A3906C7EF60463FDFD687DB81806E9A87AC43DE21F62F5F5E47E4116714AC8FF0968CC3A3C3C37671F4209C8EA63445C752A98E0266F65A84F3490C0ECE5905DBCA688702DA3A2953EFDFD5C1A5F578A5A74B85850FF3C904E9326DA7474222C8F0958CB1E7CACB291A4824C4D8D565223202920463028A557BA66891E322C49FE420DC84ADF99A0C3B10905C902DBD92AC2C48D26F7D1914F4E38D93FAEA6A0176CD13CB3EDF55EBC1009CF68CFEB8D3EDF4C5BA1A599E1DCCEC209ACCE72373CC2B08A4A9E0A64488BA997A826AE052BE57C9BD2FE0D5DBF855824404362CCED1163902CE0EE969427DDCBF142E64A40484825ECD9354706BA66C4352510B06DADBF335297620602BCB5239C44C419A84EFF8979D440A4AEFA29E80FAB66C800807561C749C38F0BCC3CA643CEA24E8F6288AA713C3A7304D9A0A6E1AA1F572BA162EAFC3F6B0FC7DCABE95EAFF547E24179CD917098978A90CC786B6D5B7998E8049FF91029E1D3201BDAB484005F281E7BA9FAF417B02D214B336379BAC730E0AF216D9972FFB50C487106F9280F9B92B0ACA38CCADECD00E22EC8B98666E0B0A2D9719C804DCF06FD27C4F9C4917CC87395EABE32501DB6C139682D720920558F086F1BA5CFCC20AFA3465A909122B4812110A97CF56A127A0EC3FD849B3B5C39938598B7075C1B502CF0601F1CC4D2E480ED2215EADDC30967B14838A826C658E136AE22BD4E78BD8179A60722344D8C1378720601880F62506C26498D9F1648EDFF4A75CB1AF3271210858DF40728AD82E8910CEF7BE397172AFE0A0BC1AA59A7052BF3E515B24244AD5A91EF0026A09280D609908A15A04F9E6550414F00E976D4F405A6E59BDDC0AF64656CBD53A601928055C28D8D5F09CC27C17021987C6A43FDF8380407738A485E988818511824E0201E7C3793C1F8D394C93A6829B72E5F586420D683B86AC008B6BF22BAB514A1178FAB2D4960484F0AF0A0B69984191D1C3A799B8AB4F40CE84B494553B1090E489DEDED0417A23CBD96AE1D0C6CAF98A1EE80DDAC99662071C37001D795EDF5488249647F3C4DA2C4E0BC1177039342F2D0DD217D6EA5FAE85EBC6F1C168323279D99C7C2AB8BE8194A1C0FDDC061CE67B794EB851EEADDC525C9C7F15CA5213EB1EAAB8491AD41090C846E480F9B122FEE912215703F0B2AF3A01390DAC5EB7825C597036CFCF63CF83661FA94A8ED5CA5F7420C66CB5DC27ED018CD669C340DA2B388682E78539A0F9F30C5C1E3BD6DC89E283B10FEDCE049421CAE65470ED768A7AB083717B7ECE07653E2A41677693CFFF813ADA1B2011737B8B3D5E4F40782FBCC39524608BADC9F7C116F95C405B02927869DB270A6C0AAE664BBB8682792C86C162DAB505CDEC5AAFFDD960A0DD77A6221795BE94AB83D212853906CE8FE794851B0E471348C81C017593323314B2325BF1059277B715EA9D29E852B1F62838534CD1ED85C4B9D883806C173A1481A123494074D04E52A5259E050292E5BAFB589173E266B6ED48F3AF1EBC1619ADF604711689C037E7F05A68466A4197056833C9C084899280095B8A0C9C53D99AEF3873D33478E1CB5D52C1BAE5CD34B8C209E0ACFE94403991EA2C381681A7D6C10901B704DA4A0B9A3288941C81A12675F74F84B4C01603A1807604A481B38FB5AA4CC1B9C3AB6EAB1C9D0EC60872ACEBC44EAF43EBC35886134734CB9A17483EA4A5C8A16E8F83999AFA414C6483B1B49A18333079F6997D28F919D30E605E4640744543BBEF9489635A95EA5CC8E1A84E01E1F949A79D1A823B4F08D8D81DBA072402428FC9D5A4240183678D808DC3A3805604A465D876F040F29081697CD95D1FCAFED74E3298743BDD8E19875D2B9E8E62A36FF42724168756EC4D371B5A12859828AC41004AC24834D47E0E928059E50A0DF1A4601B9D648B783A89E7D0C0E460A7A9E02424AB85FC503B02B20352F66D89949AFAE777D0674F39352455AD7B10105EA4053D26CFAFD744C05367E26AB04322A41501B9575B5FB10C5E59901E3B99F8C1C5E3E4FFE6D6741C1A71301EC656C7308C2EAFC7388CA77D6FD15DC45D2FF63A5E381D999BD860020AE11A7EC0DAB95261C84B1672A392CD6347F389E78FCCB145043C4C96E9586E9F94D94A85B0615749F112D334C57F9F236BF19465A90901B571BE1C7404C4B94C8EA49332DB3365076078B47ECE36042407A4B54ED7802C129854F91C57923797851C6B7F6086E1BC03D107736D123B5D5A28A66FB26A1E99B1318E47E30584225E387D2716E6D4F35D9B42397CC9BCB8E22014D18B3ACB8EA6666C4E37539308D82A155C5FB253C11572376EAF6478DF83B3BACA178E5717CDC55D911030958435A82120A540E48124E0F1B3434008ACF6F65A0B02EEE780E421559E2460C09B0251F42F8308BA335E6ACCECFB7EB8F1FDD8ECCB0540E19C4CC724047BD3D833E3B1412BD57ADDC904A760DA05B222091CCEA28A09031501A7D1D8030D73046C3329533777B90256AA5546D12C105DDA978BF30B855A3B03243A0D0133392255F0FA59C8C401B8BB1D0858A866D5010EC8BE066002AAA3394ABA96C27F6800927DB45A3CB9BAB0E99C20587536517F684DE676672D26834D77B6D98C210EFB263C146748027138ECE16F0021458B84E690DB440B0A1E2D6DA3710FE6AB8D3FC227AD114F194937ABE6064A223A5E31B4535FB25306470035465DB9263F0531F3B653B564422C6A503E510378019507205B3CFB1265429A3342FB63DBF028A0B3CC55B31676C25760CFBD5D4CA21E2C02950ACEC0A48126B60FC9AC3BF68330A2657AC566D21D74AD8DD1B7CCAE1DFADDFE2CF669097303B4A3654083C9700C89580BF29E898D2E4D9AC037E3C93CC2F5F3D3D2692F3602D9A0FC6F9A7C699D89FB1409B4A402218F724D7E8A2B14A23E553A2E21A04EC2E5A17343498E64FDE862F4DB36CDEEA09A7AA7BA7BD729A00B02D5A2837191806AAE1517B35B9A259EFB69C022504E7DD382178B0F85B7E64D2F841FCC40C6D0180C67A0C870E007F3AEED8FA18BE7D33EA4DF68B1E8955613AC838CC36C22B186644C52C1B81B37588D0D633A9BAD3786B932C3C8A1C0840842C15A5D53B253824BE1BEDB74AB5E51FDA9DEDB251178FB692AF34F4140225B615441F3405449A88E47BFD3EA97A7C5B6BB2BA0232BABD58D6448B8C8A1DDDDAA837520119804E59A01C64138F9FEDA0619695BAA00D408C269AF3358459DB9E8199BAE19AE7929F86D80941C4EC8CB1EE64390BC0EBAEDAE2D73D01F0FA61B6FD0F7C2703530685F0453CE34DB9E082157435F654F35F97F53BD2E8217EA384D362489F0EE4E40DA52AD32A1878C15FA2F873C15F7953BBB1190FFF23680E99413752F09724A9AEE6A2F754CF7D46649C402A20842D1F5FC63D0055CF4A37006A28C37667730EC58EE0A3E4773926F6A8180C440B5E74B09B4B07418D0FE6BC275C5DC800D30ED4B31BD95806C00EA279B53ED55CD14388A51DF768AC2E88458DB520DD5401CF1AC62EF714F5B351DCF338DB8D7B5A659037649842802E6464C52592D6FA9383C8A5A1AF7D55A5C33013966277825B02D99B93222B6D45C5FB86B41F23108665E0025A256825A391C55AC2C5E624E21FB2613BF8680CA93316873A18DB02CB071A1B69A51959EB4212ABF28E37364CE3DA8570CD59AFC141CB83E45303A236099604554E2205484A5256016E158E7973292BDAD9074BA1440F2D34DD8767705540898034D7F12628D5F86C15A47467963DBC8488FAA520C002FD00D0F181E687173A116E095E2210EBD4332A3250139FA925FBC84D808B36E1A3B13C8C111EFA7A9016DC5164F8681D5A5D0CE10E665278CC7F122883D87D3CDE18C67D35520E720D5D4B650D2ADA6F899AAA5CFDFB67F5DEADE04644655080851656962BC19158B4404582CCA2EAFEFF15D1221A90AD64FF815DE7C1AA01F2008E45DAD6C9B47482D19E5AD558C463CEA524678D3490C9234CCC5447EF1075A63036BB1980A9650175E1DBB222402C6D3E14493FD03FA644876A78B456741D51023C7E9C45E673CA6FD0123F28A0339A19D2295C9CED00C5EEDA06E8A87AE263F0113777F2B3099ECB6AD8BCB04A45CBE2636423C2627B3CEE527DF91A9485C2C9B664A2CD2074AA1BC5D12212901F3379C04C6D00356DF09BD63F8A3AA1FC85364C9B8B2577C5FD51BA35BCB8C46C5463CAA0C036B23BCC91E6909177754D15A83CD59C2998E221691D654906854A960AA3594AFD893E918E3E1D0F17A23B06ED189175DA8EE215545F4ED28E899B0103DA862074EBABAB22A2FAD9D65F924DE2CD7E427E0199AFBD7C424FD5491702594DF8702B63404241E7398AD469691EBA85EE6276056E44FBEC3D1DFDBEEAE002660217742952694FA875DEE6F1654F329C47812E12F5501F4E47608C4447E41E286C45F1D19D5CDE151E7CC852D01B69C58848A66B1B85D456B4BA79C95B0E66A3389681379B954309A8FB2D15ED05985D1A6233F135B50C18B3EC42513D018C7560FE2D0E72A083827395DFC241B80B5E1146D4DBE024D1839C592E52D09584E45500886249D3A4C81CBB89CBBD44B2C0A57699AD6958B24D01ACD605C5917A2BF297022A54F0B9F950998BFE12034C7637B137A9BD89AC413E84DD33818181B2E02F07CD3112E44820887334A2EC8782E7F1100FBF1AB928C7403EA9E14380AB73DC09620D90070BB8AD656AE808093A41CD5581552C19C01C5F8723BBEE78AF1C8B2AC4D0F04EBF860DF84CA7078DBC9D888CD3EEF52190AF8DB99007C1B91A8A1B08ADEAED3415CBFB5EFFCCCA406615B2D422915C121187446253622790C7A6A53ADC966F835207A8260A95CD49091D8C86F2945AD6B948480C91D04E178604DBA5C213AE11D41277D63D8B3A0AE4613018713F63F5151742DEA1111CE7ADCBB15A40B38A89B3B3860BDE72DEB9797A94541451F5754B49680CB4308ECC89A1C98E6749C27603A295396B786DEA43F30A3696FD01F46C6201A187E383422C83F30713C31699754307916AC796A29C006605342435B93AFC04B58EEBB4642D24F258255507A9F25998680F818F3B8A6D8A446002A1CCD6056AAD78CDC42E91AE903AC963A55CF04CC2D5B132C7AE8242F0E7B8B7868818021A9A8CEC2EB4C17E391DC2F7462B838B5225F540803920412AA505C50C111C8A80A3DF309C9DD51F05CA0A2593FEB0978E0D86E6C1CE0FD68A24905031846F803710E3323F466AB7033B336A359E0F76634FEFA66DCEDD18E94DE3858A015229E5ABAFEEDAD14A22299BA601FAF95B56F42783F021E9107C27108752241FA31AD23422BB13484F3201ECB8A3BF51D02215D564547BC50B251C34026607673AE37EB494D073BA8E781804CC84E98EC543B84956E9A5D8FB64D266DB530ED8DE0D442529152C345550DE8ACB62D30D31624161B16B2C233CDED7842040C275C0E98A6820B3520AB3946AE4D6E2EA0B60334DC757762F64C38C5B44D79B0F0A4C38C2FFB4FFEC0B973B7546BB0F2D0D7E42BF024F63DD7EB4D18B3AD16A148406A0997DD407522417A192EF82C73830460FD40A964F6D818930CA4545666B090CD48B2116CD431B048C0233B8A87DD61B7D3A31D90E10F82809005927964A243328C0CA8A6054ED106C9E3BE413A4A224C8A0B988B0E93912F4B48AA01A939D4A9D3A3A17A9986BD1D4F47732FB2862C01D35470AE7BE49627B99624EB22040F1D633C85460EC793D8EBF6FBBDC455A1DDF72F9CFF5FE1C3D46B277D4DBE02CF51DF331093B45DDA5F3528B431856020C934A1C3EC32302ACBF2AC5900B259A95E2B88702202D62AE14CED9DCB2A2603AD9950B9EF0201D70ED9560E06BCD18BADEE20F007E6BAE384D31EDB84F8CF98C4548F029FB137EA43FC581E53B302CAE87275D48AC94801625680A18DD1B94398720B2401B5C62D1A7C05A13B1DC10FB1A83DDC74C7868C80B498F14A6799B06FB5B14C31EB6EA8FEC1243D40F81DDA48F35148456FBDC218D38A889A9A7C09D6C16F56073B22E9A71604CCDE276EF13F0D0494EB15A9D712CD0290DE2D359B08175023D46EA16186F0D9B80D0B0CCC0FFD044C40FC3A8480C832ABE1BA13868349184ECC8DD1ED0F06D1642C7CA8DCA1A10868F4FA94C7B2C6E3B18E8079906E4B6229BE4D0D52B98B7DD1503E4F04E4B73D47F814314A266572318CFC0CEDBC5659D348C1135EE0C13A34EC59D7B4688A0AE1999F00FFDE295F93734C82BEF2FD9A9A7C052E8CDE2F1FBC0F01495712F3340BB6E505129C8665FE9ACD02509A958014718279071B79139A63330C4772D2A790B36133144D03094540DC23BE21DBF571C3B7879390AD215C16FF79AB8D390B83C1241A58F1635624AEDD18E375C7257B70B1958079786BF678B60587DAA2818068702AD8F74CD391E3309B159CB43BAB84A615E76CE7D04503CC0D7368FA6B2F88BFF98BE0DF43CFF0752442F24C947B9CA0AE265F42EE60A80E764372E724D49A226C3902A6BA52133A2C08459A309733459A05205D94DE05F1D866B18539B5C3E9349C4C0EC696DBF7CC11C8B85E9424601301D761F86F7FF3C5F7DCF3AEDF8BFDFB3B3D033214A06A61FCC3559B41E88B68E6C7D1E2A7CDC7378389188F6124F9FE7080F7EA427465D0FCB5FCC03B251401C9EB87A5AB4E4AA0C16D8FB27093E18437B3AECC0A26F34FBBE67A0AFAA487710DF8B027ECD52F9CBF70F1E297E5753260E8C38F0109DDCF7CE291F73DCC53851B427DE424EF57999F4825B4A00C052701B69211922320118998AA9BA7512060D111211157DF342012BF2BC22997F687C6C89A0E69FAC3D0114E648D8CD12A82729C15F9574FC0D9C1328C7EF3EE4B97F0FF4B7FF14F681AA4A6084460CCADC3E87FFAC1DFD89C442B277406AEDB1D0C86031F9A88520B142E2EEF325602890AAE4E55D73C2524A7D8C3474770C85375085A7066FBDE18769F80564043A4045C71F7D014E282FBA181344DA04FA2CD863EF989F3B79C3BF726572E0B5CC037BFF42FDEFFA6FFEC966C93F55F9557D081CB52D5EBDD9030A614F14D1E3D1D87197B525D89BEAF10B0A8950B8E088DCD7A0148B913FA17041C43E91A916908317417E3683877E18C8CFBAEEF2F97EEF0C02D74740301DDE8A3972EFDE69FC4F1BF7CD18BA90C2FCFDCF435F59823FEC10FFE46C8510B7216C359E8AC24CF65888EFD0D19A323C1A9FA27050FD5C6D1B50B94672DB710CF00E93003BD662BDF640F5DAECF9BCE0AE60082DA71515DA806DCE1AE5ACE3BA9C1BA42CF98CEB2FFE633FFE7A31F7CE743E49A5CBC78C7855BCF9DBBE5562260C3ECB73FA0F7F75A252621A0BB92113630AEF4E8928C99684B89A4EBFB9250CC3922CD0290A42A5F5F84D1D03466A3D962E4BAA3050808AB6F3619DA632B5C18E3E968E9CEE7B92534EB08783477BC3FBEFBD2BFA4068DFC8876DE0D685D029282B4232F08891741242807E2FF831FFC87C271C02FCF55D1B394A10954B898C94873E0084A5BD2DBCDF6C50E4866B0A511F852874473F61DAC89874FA8299C7252E656F38F2109A856B1903558B77D8ADE70D7879F7CFCBD7FEF83EF7CAB645E0E44C25B7EFCEFE6235065900E6E9090F5C88825915F2E1C64544F4D509F53211820976B4850118A992342BCE5173AA45235806658F485980DEC3ED4F074D3DFF8E3F1683508CDC96632B58DBE70C9CB4BA5601D019DA52BDE7DE997B87B642C368A82AF7D0D861FD1EF8FFEF08F888261F4CCEF3E4575C92020FE1EAFD754AF202F520B5E1C66093EBA6A531F6E8D660F6B0794D7924CF641A30EC1EF1E8470DE4D733A9A8B43748A149731DD116444B6E3623D584749020A9B55276C3BF7734FC1D0038920EDCEDD7AE10E453CC643BFF8A147BFF8956F043E8543290045B3FED4C532502EAFA662B5191A4F3645AE9018E350E952D2AAFC4247A92A1DC811C1456C9285F5C609B51D5D3E800236A2B1E17993693F0AA7E666CADC210B6EEC4FCCD0C0C0C787A136E5171B0828C40F5FFA57DC3D108024F23EFEB27BEF7DD93FC1ABAFBFEABEFBEE7BF5D7F18A6CC4BF78F78BA082FFA138FED84BEFBDF747D7421B814BA196C7623D97082B7E230B849C0E0D33D8A8C157228EA6F04196C221C178441F8E231210C016F38FC13A4A2D22607304F936625E0EB7C22824122AE6F12F64A0C0BC2422956CA76DD55430D884B6B328310EE56F25211800ED511E70C57CCA0910F9F4A88C808EB5608EC527279BF8E927A3CF5E899E88E2CDA793D916E4AFE10F5E454F3EF9C9A7E3938822344128BFAABB2E11D05E09F1C24BDFA40BFC10E145D16FDDFBB28F7DEC47EFFD78F4EF5E79DFAB5FF5AAFB5EF9EFA2DFBCF443EFFEA5BB2FBD28FA1F7FF037E8FD7FF4B17BFFD2B16E4BB2046A5518B57D4261BA2D09F116FDBF159280DA021B26A08A2B45118CA665B24034B14F9F172F43169D28027E920C400D1E7CF87D7FF7BD8F7FD62D2CC25942180876A2B9C60C447CFB3EB91099B45107AD908660000D018BA7980D3906F2B10E3EB422F876129D7CDABF02E63DFD243F2398A73E003005E330024F4F40BF8477BAEB1201970742DC7389A35B2FBCE79E7B2EDD13BCF4A55F8BA2AFDDFBD2E055F7BD0AF2F055F73DF6CCDD773F1345BF270918BEECA55F0F3FFE97EFFD985F30490A60E1BB4C55465158113DE4AB53A1612D4926A07414A2A943D66C9A0A26065A2DF8A7348624A0FB4645B81460DE239FFF9C126B2EE8E534AEFF452022E293B6F3D4EEC960F29A762460128221A0375A1090C45B48FE6510C9E32AF0812806EFC27073E589A74F623FBE42EC53EFE64024E4D3CC6A9F2E480D4967F2900474C5BB2E7D949A4844D11F5F7AD157EFFD3112B4FFC5BDFFD7ABEFFBC32888FEF0BE57FFFEA51FA1532F64027EEDDEFFFC637FE9DEBFFC8F55205C03A57D337E168515446075EAFEEE68584B123FB05204F4C7F915CA291387A66F23012501D572DE6F52BC93CC7BEA3355E3039E09B9C7854A312D2277F767A795BF77B45C52678150F65F803201AF7B3DF8F0FAEBF0C70F7D26478A33EADFB154A971F0C9E8247CFC4CE739DFFEBAA73F7DDDD9EB3E7DF2E96B9F7BDD1327274F5F834F45F7FF07D7E235F0D873CF9C5D640CA486E4F3E90513023AE2772FBDF04FC0589880EFBEF46E45C01F2302FE3F9280BF77E95D74EA1E45C07BEFFDB1AF869EEFE9CBDE7879DE5521C82B09987225A71C4E01550CA327E081745140C021F9F3F905A22DBCDB8281B2C3D572DEFFFB83E75FFE363DF37280B305CFC3F5FCE68DEEC5AE5BA2F08A72BAAAFA069012487F4643C0A2100029AE0B4E826B410D74740D01CFB019179DC0F6DB3C76F6F1E8C9D79E79FCDAC723F33B4EEEFF2F83D7BEE2E431FAFAC94F3D105AD7D2C71F3BFBD8C91BCE3E2159EB87B504C44811E1BB2EFDF033F14910FD2F97EEFE7F950A7EE98F4A151C4105FB77DFFDC751F4FB890ABEF7ABF04F3EEECB45FA4A90AB52CE9785362E092B08974A83EC8E86B52467079E5C3F9A0908419D2D108DAEA428CC76064A112109D8EC6E15403128190D753D5133A320DC8981AA6647E744D6230BC11034D3988A9C04295EFBD8C963C699934F7FE7D96BCC93334FFC99914B0C71AF3FFB069CBCFEEC357FEDCC9933C113D79DBDE6F59BE889F0B98FBFE1CCD9071E3F8B8F84674FAE094EC4F34E6E789298F51D9FA6EF01CF7D1C7FDEF0BA93A7FFC3B3D7BBE193D7D3DFA7BFF31AF30C08F8F40D38C2DB92804B377CE6472E5D7AF1BBDF75CFA5BB7F2F6227E41FBDECDEDF8AFE084EC863AFBEEF957F0AC1F8C277BF3B7142FE099C10BCFF71DDCE1EAC7D97E5E53C24015D8A9272C4DE0245B7CBA02D90B1453D011DD79C4C0CD3B49C7981803213C70CAC0D69284802AAF5E477218C0411114A99C2F2206249338775BBCA6B9004CD49A4A9532D404FA85E0270E8CB4F302BF40008F8E46B4E5EF3C49993EFF86BFEC1D993330FF80FDC402CBAE1A7820770F2B1E8D3D79C9CF1C36B5F8F77A3932B9F3D73E539168C3F62DCE23527CF85E0C47F2CDACEFED4D9EB3E4B5F4DE4DCFD0F040FDC10DEF0579FFEAB3784F7DF4F973B7372FF1BA237D0F515011D378A3F7ACF25CAC4FDAB288CC2DFA230CB6FC1DFF9FA2BEFBBEFBE57521806ECBBF46245C0E8E33F8AF7FFB1F0AA3168D6BED518875A49921C80042B8AE567F9A33D900B6E9701025A262848F3428A7B05D3F0C0FD50FF6C2115A9BD8480BBEACC1C888850CC4C442FCD546E5ACFEAA75BE59A1D39205A221782216852C1C55344971B4EAE8BCE9CF8F7BFE279CF01D74E7C926E2767F102275F7B3FD4EB99307CFAA75EF1BC3370F93FF9EF3F7DF6F1C5B54432FF15FE093819D1C78973675E173E41A6A43C3873E6E4CFD0B5FCB32214674379399CC31BF4052220C537794994677EFF77610486C7704582AFFE1B1588FEFAFF46F403FCDFFFD7CF808012C1BFF9EAB15F8DC270E4B9A47D194A58CD73F5D919708E93991404DD818B498DAB3ACCC359D26A1EFC360CAE3C0193926C988275955809A491A4D69357E74E014E0FD9B61C8AED1948D12C1934DF8580F9100C0087046C3BC24897404BE3BAD0EA696B135D7EFAF5AFC1DFEB5FF7B85321E0F5E61357CE44CF0943BCFBD933279B38FAF6C71F7FEE354F3CF6DC133179FAE4E45A7C8A1C10E21CD4319351AA607C822E71363AFB749E8067057D2221E04CA948B819D459321517E5527151F44B3FF4AFA3E87FBEF46E7A23FA537A5FB876A95BA4F391F37D33C8EEB75DAACF56D305988730F40BC03BE0224946A223F1B19E9185E07611642EA949481B977DF57C2A98AF887BDDC2403692D24CDCD5822B772C83335C19BE1A70CD84AA93DA8580F9100C1A1C5721EB879A9451686D6EEA303A13B9D73C46D478E2E9FB41911B9E7EE07E62C8FD0F3C09D977F6D362722638F37478F6097702966DE2C7CF825E8F9F7D6C713D5169F2BAF075F47122E0FDAF8F16D7D357E1A7D0274E5E412AF8E415A48283FBEF77AF27028E1F085F4F1F02017974C845A172FDE1A53B4053F705D1472FDDFD232FBE044F84094AEF178D5840E65DB45D95AC0FAD0E197283EBA5456CE3FC514532829FD45A794692BA4E2AE11A76756302269390F8A9D2BD82795226612B03D97057EBC9B7214B5B240CF46A87568A42CD44C1AB68860AC1B81075503A9A86AD200C9FE3FBD78BE039E14F9FBDE6B5A0C8EBCFDEE0118B9EBEFEDA833327AFC3C9E784377C3BBDFB3A6219C758CE3CF7B193E741979E3979E29A33CF3BC0497ACBBFFFEC754F261FC127A41382BFDFFE9D4F8657AEBFD6828589CBCA0F8180EC5C291559DB1F61F4D11F860D0803519D909A5BBD2470A4348B3C17A1D79636494C7C877A3797C7A5F6D04CEB932012125F69DC1682DB05E0DB9489232404947740044CEE711B0365264EAE277F350998CCCFDB6C352C29FA97D54C54467C3DF0FC336AA6A415E9A9D530265834F6712A37F2E9293304FE737C2E7822050815182429120E28EF0D8E080A8E35262812B07E80B12AA65B51C7FCB59C11EB92A9520CFDE551B7F02D2FA1AF2898402A72CB2273915A8BD946BCE3A6CCA310DC2E009F5DA691673E939B159CDEF616064A02AA54B03AB73FD64B7A08593C7AC8779EDFED5C0776E8724DDA9280AEB3E2CE508D041ECE9760626611AA30AD8ACCA8911F04BE9F25E2C210FE460235D323F4F1BF8624711B44FE6BCE9EB94E866988D6BE0F025252BAC19E4FF0A7A0A03410250A053E2AF652DB99F565039282AB0205E50E4B4B34DC4AB5F83A331D1525F15A32AC3E13974C42E233E95EC1F94999C4C0DAC8861C616A3DF9B6A2A716B402063DA8B4BA544CA871E10A9A3155A899D84EC023B4514EE5B2D9C7F11E6A0FF9116529C151C4E57217979C401713E14A64042002A38823C9F559E236903169CE8A485A8380B8B9A524E04EBB34D3D7D44B197B2970A88486B2017434B548E1EB2C4F0960A1541C443EE992289213238BC1ED3CF0F5A49313024A7948BB53E528075554D861330FD60C601E3553B615CE9EE0F94FF2991872C00B0C327A36DDEA7672C654FE74533516791A24EAD4E5A9E20CF6722A10B2CE52A202D7CD7520A0089282D51DC06C0C42A579419AD32961300FD7C035E9DA61E0FBFF1FEAC8B21431B0F3BF0000000049454E44AE426082, CAST(1142.5 AS Decimal(10, 1)))
GO
INSERT [dbo].[TRACKS] ([ID], [DEVICEID], [STARTTIMESTAMP], [ENDTIMESTAMP], [STARTLOCATION], [ENDLOCATION], [IMAGE], [LENGHT]) VALUES (N'7a0d0914-9522-44f7-b78a-f5787efdb24d', 1, CAST(0x0000A5E50115B9A8 AS DateTime), CAST(0x0000A5E501263468 AS DateTime), N'', N'', 0x89504E470D0A1A0A0000000D49484452000002800000009608030000007903C9BE000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000300504C54453D383433691E783B03453F604840354A7A35484A464E504B524B425D564D55555346407D5459615E605A635C4B645D646962596A67646A63746E7269756E65706F6E74776F797A7524209A322D8D2A26A0302CA53936AC3B37B2413EB9504B965F5A815B569D4744BF504DB66C689D6B68BC7C78A07E7AB04C4AC55452CC5C5AD66461C0676BDA6570D4737FCF7879DA6464E26A67E16C6AE46E6DE9706EE87471E37472EC7976EC7E7BE17B79EC7978F534A853608B4C7F8379769C6300B0FF4586F3508DF15993F27783CD7D88D36197F174A4EF76A4F1925D24897850817B73E94738EB5547EA5D51EE795EEA6C61EC7E72847F9A827EDF807DEB8C867E8DAD7ABC965BA49677FBBC05E5BD4DF9C93BECC654F8CA47F2CF5BE6C771F9D862FFE1688887858E899394998D98938B9B9B989AABBDAC9F83A39E98AAA79CA3BD90B6AB92BFB59FA9ABA5A6B5BBB2AFA6B8BDAFB8B6B2808EC98987DB8997C78590D0918DDC9499C79795D88886E98382FB908EE79895E79C9BF49AA4C582ACEF8BB5FD9ABBEF94BBFDA19DDEA19EE7A8AACBABA7D7A9B2C2B0AFCEB2AED5B4BBC1BBB7D5A8A5E5A8A7F6B0ADE5B7B4E3B6B4F499CEA2AEC0B6A9D4B0B9CEA7B6C7B5BDD0B09EC2FDBBC2C4ABC4EEA3C5FEBACDEDB3D1FFC0BFBCEE9A8FEE9B92F09D96EEA79EF7AB87F1A498C4BECEC0BCD4C2BEE2C2DA9EC5C2BDC0CDB7C2C8BACBC3B1C8CFBFC0D4AEC4D8ADCADEAAC8D5B4CEDBB2D2D5BDD0D8B8D3E2B9E7D195E8DDBDF4C9A4F2C2BBFEEDA8F7E7B8FEF0B4C2C1C1C7C2CDCBC6CECAC9C6CDCAC8CAC6D8CCD2C3D4CEC3D0CECAD2CEDDD6D0C6D5D2CDDAD4CADDD8CED6D1D1D5D1DED9D4D2D8D5DEDDD9D1DDD9DDC9C6E0C7D4EAD0CDE0D3DDECD8D7F7DDE9C9DCE3D2DAE1ECDCE9FEE4D2CDE2DACBEBD2CFE8DFCEE1DCD3E1DDDDEEDAD5F2CAC3E2DFEBE9E0C3E4E0D6E6E2D9E4EED4E4EBDAEDE3D0E8E4DBF5E8C4F2E9DCFEF2C1E0E0E0E4E7EBE7E8EBEAE7E1EDEAE3ECEBEAE6EDFDEDF4E2EEF2F8F0EDE4F1EEE9F3F1E6F4F2EDF5F9EFF6F4F1F7F7FFF8F7F4FAF9F6FEFEFEFFFFFFD26F234F00000001624B4744FFA507F2C500007CC149444154785EC5BD0D9C1BE77DDFB9D2AD58807765C10BAEF2F92D575FAF17BB4AEDA3653962195AF5C52909B96F31C4B5E344B62E700970D74110B58DA8288EADC46A6D2971DA63EAC6AADBA68D6DB4DB86DD17B117130DA22EBC18D8F1588AB369457174B962D6441CA4F3C8CA8E9F4C39F8DCEFFF7F9E9979E605BBA45F9ADF875C003383C1CCF37CE7FFF23CCF3CB33076AC6D6B8BF5D40FBFF7BD3FFC94CDB2D4870934B61C7A6159F8DFDB1AAB0F24779BFE6003C7C596637B888F6367E66EB963B1075963C7194F1C7A2FF047889135F347D892E4902C8B5F1C67647D43DA4EA497146A9DB4B1B1B16E993F34D2BF1DBF21A983D3C2391BA74B1A5321A4E424059491435F4E7630DE7646CEC82DDAEBC44201E63467C74EE1C686B666B39950C769D45E563810AE032E102E3F7C88CFEEF9E7ACE79E7BEEF958C65B92B98A846D9F7BFECAC5F58BB18CB72CF5790DDAE0DA80D62E2EE06C6C7D888A395D150980E62900A649BF6F9E12AD740693C9D09E4CECA1DBE76533E16C4FC01D4E87311423BC1FE3879CB76825D51F031857BCA55F63E516B06C9BFE666B228F07CBE29387360AEB6354B85429B78EAEB9946E18C0C9360ED71D8D0A012CDAC948BFA675207F8E0300D5712740B1C01C4A3A064ED7011564B4617C1CCF3F6F69B6940E06D032000466EBC4DA9A46CDD0C6DA9ADE085A180300FD8B8A393A205C14068036D88A643BA341CF3C279BCA08D891ED037E3D5A66CD02CBD91E4F009FB2839E02D111E22D1FFCC45BDEF2E807DF429B29E56B2F87503153C5D5FE8D01381F21AC334E9F956367FEB75DBA628DED5559D3821BA3B8F8600FE26F62F9B359A87E61943A7A783B466E3B77E1BAD1518EA3BD6701549FC8D091C02E7F8E057B693DFFDC450D1951A6E083D3215957AE642D226BC1B8F00CE6F487FBF9AD791191BDEA9985C7153EC04E08BD1E1BC28915CCB6F7B6183D67427F6D3171F12246A3B77C62F696B7CCFEF11F0B80EB1B30F9370F606E8F3993B8CFB7C7B02EB1891FC1F4D042A69262165385075EB463933FB25C1068486D697AE0425873F84F46B1B18D497CDE4A193940A7E1E3C5409017477A6E04009F27DAAE9032F691141B015370C1B17200BE4701C88E438B8EBCB7659E2D9D2199BF3E5E073607818E37733C7704E43C87F813F86BD31BD779CB27824F7CD0FF6300903CC206FEAF177E2BE3A85272B3EB721BEF8B2F01189B40049BF84B31E078B46DD9261CB99F21655C30451C8E8548869DA8121934FCC828220D4E7634D70347328CB2AB6340FD3159970350BF6A6910130EC905EFABE770FDE7940530626EF2D4BB930FC6E545000EFAA659A7952ECC9F0E026915B21058BC6D17264F9941FC753C0E05DFF2894F04FEA37F3C00520AB2B18EC8911690E9E035AC39DF52CA1A913C91854752245711A3AAD8B1F19EDFB10C2862C1319289B38910A5D128422E73548E915D89D803A72D63ACF8B77040743CE3D80327EB5C82CB4A20CC026831A006A4070158680353001ACC4D2E191F8CCB884EC84E0581BCB2E74E6C642263CE41B0D5CC77F604FC02A8530690FF38AEF5964F3CFA8FA71FFC6371C11B385D2460285395318F8C1ADF1FC02C19864760DD38801CC280939176C0E637739E9D0440805BC21B30E3D702C194A96B6BB21DCE663E9F915BEC81E3538239556F0C52E3D30551267499AC8370C37A739303017C2E6F024D004DE6D48777ABF7DCD6A24409899B0A027925993F0A022300C3C022CB87EB7534DADAE617CBC2751CBCE5836FC1BF3F96244403987CCBA8F142FF1729F74359086E0640DED4A5B6AF2C7071B2E309A1DFE57470FE0139237860754CF3420B0519E88EAFAD38D34C6C61C6A4150008FC6E0AC0E79FBF9245705F00DFFB2EFD21297165EF0A1B62FA3870CA4668913FDB028089036639484E742B8C0160B636B144BFC62A2EC56F1A407307732A8A95AB45B3598074130026D471036CD402468A8EDC9390BFA73EA47543FC4DC803CFB6D4DB3947C6CB13F307E1689492853700E0F3ECA239312177CD2B0ED073E964783E80EF3200344A9CED5DCFAC81A821868EDCB6267116321951E64B911F1328464E380BBA8341AFD5EE74F99BACE4228C945BF2AD0010F92F4EF71B02F0C02CE426004C6F8AE06E3B4951F45E85AC37DAB6F4D5275337C69FF2C0D8AF3BDFB0037CD3FC45A24659FD16CA98B41C80CC9C964E496E48CFE966992B57AE4E76E602383101344A9C8E301D04F259C2F491154410489E18598837864B6100F7848D74644CD7A5B0B6406198A4FCD08D0098DB84F48D01B896AC4F0158F8135AD95D1A21096B1F00B3C4E4ACA98B90705B85847A9590A56EBBDC9122EB89E344777F712B34E2464A493259742C6A11328D08C9455E9E3A916C1AAC15DB3B0D5DDA4EDE9450E80700784D7F48C26E36863D65E0B5A85C60FA3800ECAB96C0AD990FC3A8F8DBF3C6286281CB9215E08D67D4F71F1F806671EF0FE00107B40F80D935858747102224D47BF5E5A294DD4A109027F6F7220CC1A33F3F383444ADD0EC81B15BB68389543F08627178DACC39C1F88D327C270032738A3A167D48CCE341AED7FC2664408D63C802181B3D06F0DD97F487A4AEF8124EF7C6515C437D702A08E496402B082D6E02F4C6A36DC70B98BC20109EE0B7B320DFEE99E8A0FAD6BA4900D7D637B6A9815EAF27BBA3DEB18A7F42CB8CD458694BB10F80D44B9E56F1E1D1969C97C01FFBDD52A359EE84DD6A5D841410FA049F37116DBCBF01028D56681C1A188CA4FADE28A9CEA6F119DFABA5DB61B4083A65F148B4444104A5A04A8BB7E46F406A89B1310A3D05A0E975D3001A9E83DC8FD5332B8F57F65C0E022D8BDA0427237F866BCF81C7D5F0096E3AB56DDB1A2904BDC89FFCB703706DE3E25A0CA09BDEE73E460C2BB3DE2A1D8CB9394063E9761143FBB9516B44C649B46ADD6679DA2F79ED6A586A543A6C0BC54436ABCD1B00D07151BA6686ED6C532BCE78ECBA3177E90275617F0BCF8060314435A8A43E6A8A20AC2A449096C7CC166C81DF30014C857D93FBDF630068443D74ACE35410A812139B83400741204E7334A176005FC1E7395B46A3FFD8F268E92CD041C87F2B002F6E20FD5ABF18BBE03481FB0298DBE718C1950B6FA6EBA3F8F8480500CEDD16EBA89084DF680AD16AD44B957A255CB0BDD234AC57AA6E080AC1A1EF9B0CE6E244EC24E907564A8C07C5492CF3206079B3BE57CBB4800A2113A24C8AAC4833445BE37BFAFB584D7FF43A2D2A7313C0711EC0A863CE703A2A08A48EB758B4927BE3F0BEEF0E86B8A0280E21CA3C0761482616B62D8039F566AAC0F335925B525C69370720058034FC27B680B0D5EA1D6B5F0023BF690C25C12BBDCFF54764940730DBFA67481DBA9015F8DA7AABD2F57BDD6E45F8E561AB2A9BF5B052290FC2003E191611D12091A71C347D092E5AC9B550ECA92E3CC3BA450599146891EFBD7AF5921261A559C98B016428155809ACB1782DC0D4AFD832BD3B2A3B0340D74EC5800460DC336C34C4F00535E89987EDD0F9521088DAE9C1CF72BE01F6700C1C031BFD3C2CE4CDB3A08FD244DC6B6DE7EAE8C601A4016D2951844D414E2C551210F543721AA261CA803A875B12F64A6DE84AAA1B6CCE11E5954A0158FB90AE5609D9AE5516AB7EBB2ABDB05DF3FD85A0522E97ABC3B2EC54C37AB95C0F7B5D804718FAB2DA250005D946FA32FB9ED92C757846C017C50A7C15C084E3B4F287E36AFC00E07E4DCB11700C96423051C49EDE06A20FF8AFBEABC43F6D0068396C0123AF9B1A9A60D87176B8762A08E48698FEC8EA0FBC00966D10FAEE085E372905E3DB4AB6256776CF9B795B0545A00FF91B11F84803A8C29FF1D8DAB0365200F26924CA03185B3B84AEBC1FBD9CB58F1D4B29BF195FACC5D2D8F8E46A6518342A9569A32107E510C6D077F0B9170C4BBE5FB67A756997C361C70E82F200180A69D72200C9BB04E6C998651FBDC7797167646A34442C8DDFA54B57F607D0A04923188BC96304CD8DECD446AA6C12005132A9BC233534C1BC8E881837D312080D511C36928BA1D303076EBA467316C3B59C99EC0F8260540060B4B18687869328E9E54A736C49EA776359206F9DDBE0A3F573004C7337CFC5E6AEA839CA1FE27C539BB41AC3BF0A010E837068CB41356CD406DDB06D7BE54EA32144A56B57FC5AA75F6E947BE182945DD8C2F6400338260F9CCABDCD0181D18F472D3EC5D2F84139001553AA78D2EBB050BFD34A01A9940E1BD58FC500D238C4779B794706C08413F6C6FD280844AA0B47EA87B37038933D447CBD31B704A67BEC0B2ACCB1C46CDA9BA6DA04950E5EC0BA490091813081D1FAF44E7141DC0077B1B24DD1F3943777733B2772B9B68210FFC2A05D6B048D6AB7DC6BD7A52C3941C9AA04DDAAD3EB0ECB7EAD160E1B0D5B03C8ADD0A9E8D6FC101DF6FCAB80A4E9835443608A3A65D768690ECE0C91FAD550CA03EBE28F0124C052896FBA59DA281E86694841E0D84634EE498AF8427FD2B32C6A1EECAB1B43CCD8172A62C81A05C1808C60A69ABE2D007227F83A5E5200725AA10AF646B84B94AAE3F92A38C47975EFE4E34596E25006FEA0D10D45A551AD0541A5D60B834EA511764AB59A1FD4DAED924E8E6D2FE381D3C06B00E75F05244D1FF4BC2A1A50C7DC697494720066CC650180A90D3200726892CA3BD2CDD2A60DC35908617BDE246E56F66005C753E193719C7AFE14A5C1799A1F4B505578FC56ED8484F82F5446707F58BF65006EACA33061EA48AA64F9E38D73172B1F38142A1A7665A8F864C6E9A43C2B212C4A347CE975BB483F6AD5202879B26C35AA8B5E283B8DDE8280F3C145446D5C0C60B437EEA98F15FDF8BE065CD307257D7119FAA0FC924C18A85F636572E03480EA46803480A94619F398AD91E5B95DD41C593EC7DADA9AF8883AA4B725BD0198B3AD2D2A2CCB91423A4E107055BB20104B912224BDEC601A05266104B117BD8CF46D03706D1DFF36785CEAC60605967AE537A08298A250F936EA1CBACA061F04B42A7E4157B0276D2F08DAE54AD9AF222A0C9BE576AD0C178C1D8D2C4A8229C4A30E66FA46E6DAD69F8A4B346980D14A2833708BBCB1FE9828028C9D748187CE20A97E5203A80E2C9DF8328057F58768131A44349AC8D9EA6968C9F105BD9EDEF247422E9FB664CFC7CBD2D2692790A75700E0D27210F016ABBE359162E9F4D2E9AD285F530DF3B61590111446417DDB004408A86EC83263C16F4CFB475189F2871E1FB6D992BD9FF563A59C26B546C32D7B41581F7825BFD1948D6A9484D05840D840CBA5BEBD919339CEE8E39C2C5E7317CB0090785260C5516056719848CA6E92E32F05A08EC2F200C61121E51EDC6CA4BAD6662BA7BDD03DBD12CAD3AB522E2DC991EF823269CB95D3DBD2C30A0754FAA0300C680B780F6B2C574F03C9A508408D1C8A1691A0348CE0B713406A896153F84D02981B153D4705008EE2B893BA7E6937D976D202E52D2E1943EAA31BF8A25AAD36A46E89A66618C8A37E264A103385A43FCFE93CD4DCC5BAA262BF2403C1478D4FA152D4A5B6CC478C2680D175914E7CCD9C98C76BB82AE40B84638BA52558ADA595D082D9934B67A5E72F2F2D2DE3E5F4322ECE6D172B1C01282DB58594287838646CBBAC018CFB85803F8CA09D18C16F1B801B4C1EE99B07305BB373943DF43112378A3BD3EEFF60875E6CB23C2428BE240C6DA917B9BAA713177451A9E95CB2E8E811B43375D7F6F6AEF11B88AC9A42304F1E16E154B6B7B7E740990630BF8DFA5506303AD43480515F1C37B44C7CEEDE90D4B5668F61C8CE7647CBA79D70F5F4CACAD29213F8CE696B7949FAF669CBB7ACAD49B872DA9F4850882D969696B6503E1635B1AE9C765551A56E2EB4BC70D08F8D60AEE48A519BE305F70330E28F0CE1370960D235B4AFA2434FFC2DC2B4BC92ABB158F1CDBA45620CB55B2102B511243FAC9725A2767A3A8AFC1A8ADB09BC6B7BABD69EC20F00664420E2DBA06E6B0BD99B87343480412A6430B528E7804D00E3669074CB8B4A498C86161E35C1470EDF0A2D6D05C10AE1B5848BF0EC123CAC0CBAA71D5A6785A0D1C112DA62656585A81B5B3E162035A13D98F37D4030825E6C04BF6D00AA9668D2370FE08D65210899F55D8F71B65DDC0492BE7F3CA71BB4B74A285B35F892FD7046D40000F30B68A1A8039924646D2C2E5DBD74ED4A6D4F9942884051CC29E810344C3C64400A7116BF15A33C612928F31EF8F9894B028049453280FA4624650FDF7B2DF2BA388464D004D93BCF0B71D1803BB905DE1001127781751A1712BC6E082A2772792908680BDD53E9137F9404C3A8664A746C89D8087E3B001C51F0B7ADE883BE7900F76FC9489A17E3402FD69CC3DE8FC01BA33D919DF8E16272F9BE135D2DD45E86FFBEACD17D3C3E8DE2641F8C6327E6E8CAF1B2D005011661055623D5A17B5082099CB5464B2B0A208D10D2DC64728D040093FA8E9BFEC8EB5A979E7AEF7B2F63CF3C9A0ADB18A500C45C310891FA22A4C3070F060F87727A15B907520E6428C49DB04EAF04016D01013FE60FE908DD939D2F51CB096C650473EBBE05003A402E318070C6177398DFA40ABF4F9E56193C6AD7D60B332AFE61771F237783F782184AFC7031824236ABD55A6D4C231A785C03FDA9F5C56A2BB06AD59A2598BA8046AF478AA1B3883A0B3969D46EEFDA96434ED2CFB962224F3308F102FCD51F23008D7E08D5F407F84613899FDEC3A7A79241DD86EF006272D2F3E09C4FAF4872BDE2B4854B68693908B81566C50B1C7A5D866F66D3B80A00A5C36FB771B1BB453EC5C12E7A492468E85B0320CD8CA0F9A3D698F56F12C0745A0093A746CCE40C5E4E73C89F9F0AEFC7E65CC57EB8104100D892B2D5080763E9D702D9A8563B41BDE354BD59D39EB55AFC4D82CEF73C14FF686B8B4653DBB63D2EB6D4635814FC5C28D266B020F7E542622C3580A96A2400EFD76398FD4BF79B0E194A4A48BA08E5FA433196D4402F2CFAE7BAD2B170C4CEEA9627A7586FADC0DFFA927F4F1080AEB5656D6FA92194C9E85C43308283DE30D526C8FA5600C86301BF9500AAEB24F1B51C5ADD88E68D9F8E128D7176FD37C21F64F3ED9954953499821ACD1115FAD86FB57CBF5F0B6A6DE11F0987B59968CC5AED467B1686DD76AD06B707FFCA0366124BC79A3B9AC7B14634083480F18D19CC3A652859E42A0053D71D01483BA1906F94E98B3339A036A8C9762FB0F0CA2D0120CDC187A998D8F83015CE805B4AC11A35DDD356FCA5898BBF6A1785618D63C969AFE7678DE037072097BCBDADDA61B4BE6900E16B91CF92E6FBDA392A3E1B08A64AED517FD69A7B6BDB417226334E1F51A1C41389F74F719DDFAAF7BBB5FEACDD9ECD2AB6A8B6BA226C552B5BBEDFA8F7DB35DFCD6489B1F6E9464692EA46AE583156907A248B3480A9B3630B78891A5AF0E12A3B64B58295A971AB27CD0534D2026547E3118678A1459973809D36EC5EA12D772D5BE68DA0C333012AE99284CCA1A7F180D1B95AE789C2347FDF388089C51B6D7F237DC8D09CCB89F64BC626DBE257D86C7343B2C299A5B39158712E31A834DAD5F6ACDD0A646D20DD5EAB3A6935BA153FAC6DC9368D2E9C1711EC1B8FE21CD8157B6C060B3CB0B18872E0B82B4E8B904B3A3F18C0A42B04BFAD5F959CDE3435F00CCC3803E44230FE43BE432EDD56C613111A01677164839AF5BDAC11D455CED2C441A9B1CF1A4F48CD66992D254A42A82398EE8BC33BFCB9390013F0C8E2F1DEE7C66C0728731D63C730A53C92803F67F8BCF9040452839D47F087C82414709140A0405C27FA35E139478276DDF76B43BB2165D5C622D8BE4EA5D6A68EBD79A737A7172F96E18A0B3CB091A5A8FDA7014C8DC7CAE008A58FC9ED0F7CD37E12327DBE33C9ED2BFB6640A4E7C13443BF22274C37FB20121CA68D6071D474933120193EA210B9C8FAFAF6DADA7A02AD86382DE5601361511AEB836A629EF471AB84990626A7779C2E96C25879BEDCB10DF2B670684861157140CEF3819DCA680364B0C8251C0088CCF788EF553BCD5A3B6C1EA9B442BBEDCBF650DFFC3417C0A26A4B8B5C31FD78E28A13994CF2C6FB0198FE04652E4E0B41A07E4B221F0CC347CEB73719B3F18BDACA347E9039F62FEF5C54EB0CA7C33D7F165FFCC565310FC0E28D1940FAA3E2C0B52B86D786512B90A693E602D63B49EBE09A28168D7DA526B62C795AA9D3BAE1045825E15B8EE389A8ED24909EABDA4CD4A9D2E0A5F876117F7C04983507A1D5DA1AAB3BEE025FF5EB711375AEB263A19A3905D85738418F5CB19991B04CA7CC47721080C9D8042853E5A3AE9A032C120A8B8240EC578D898E60C051C42793BAA2B3A51B13C96D828350EA0DBE0500BADC08CD1690DE5CDCB889C83E775BB0D29CDF3F58DC54A3DFE7958AF20B03E594983C6A2BF3646CF27CE41CCAA91BADE57CBB5C3C5CDF9716B500723F3225929033E2F689488500BA7461E27B8553D7A485948A5CB13F32CD603A2A24140A008C91CB019809409D9E9D0A0261121C3535871A13ADBC948B685D7D62997623E35F8C55308248463C6D048BC3A09B0270B2AD02409AB1780DC1E05A51F1CED13CD2F6ED0BD947074475C6AFED9380207020678B4B3476B621A23B67048B37D29370A68F5C354D4736838C587A1EB88C39C89E35D8831975F1BD7EB35C1A1C082021AFCCA0D1479269A8C619E6014C904B8FCE22658EB1DF4F9940F2C13D862F9AA812FC8CB2B73D9B80A4BC583ADCE6C1D2CA08CEC9FC6F0E400BD64F3744F35CD1DF0200E7FC92A97C36041DF0BD64758E3F15E2A98614D3D9061E4A8F7C6DC6A7C706D4D9D9DC5CA7B1AAB39937079DDC8F2595ADD8438EEEC22CD44BA5FA006653AF8BE514C5C491198CA2C16C5A62ADA7014C23971E1C43CA38A34C430C1D72DFE1E9B17A8A1AB7E0AEFB1474868BC9F604C00886CA0866B08F7493001279CCDFC58BD426B8A397DF80E601B84F16920C7E29F8EE9C9B3F22C52760DC30A81C2D8578F0B491AB65678B308F9D6DD159EB16C4F1269FF59A1AAB3A4C4DAD102B552D2CC7C68126ECF132216B755B00BFCC3E9C110AC3B1ED7C91C00C1A0D33E97699E7ACF5FD014C0D8E2165AAC2EE7929BE7012B6C5000E80222D2962C72424A1AE20DCB66888CC4006459508DD3480514708DDA37E71532FBF01CD03305F67440A670370833AC3987338FB280ABE90863B3AAB45D918211E7790810C76B6FB4493230DA03AEB8B179DD9B45D3FD22C0430DF11488FD431D95392EDA69C6053E421F16E983E2DF37D246D0625DDB5A2D1633D4743943200C205BFE7A968CFA9C131FA924E5DBCE3FE3075DF17AC1E9C2F0781966A092C0230E377F59BA22D691A99A1395435A59B03D041F4A7085463126E02C0392D3B1C72444A4C5E26B5FD8601C4EEB6B7338E96423C60C71D64070D21249FCAFD66CAFEEDECEE8A4EA5DA1934A3BEA894B2D98E430FD399504B715ABE57961E0DEC8429E60539E2DC517AF67F52D430931AB5F51C774EA500F4AF5D86AE45FE5DF7C5A16CE9521851C1667E6CAB97CB83FB5110C8A7549840A670D2E66D4E7F138CA0ECC30F17F5D4DF2480385BF58C28352CF55B0020FD946ACD23CDE9929BD79A314F482E686FC86B3D1A10C2E4B1A3CD867826FE45E24BDBB5147E1737FDF59DDD9AE87666AD8E2227A58C3157F8154904D56928ECB657D7BBC96D0852F2A3EDE817D4A82D371A3163317F29007D79F6CCE5CBF79F5AD204AABE38944652B499AE680481A962B04770BE9C81A816E9EC8929A517F2B116A77BD47E834BC7EE15DC3C7CB3004EF8742F52FE719138BCA217DF888A7E28E91AC998BC8C6E1040804CAE9B938B38CCA3F61495D516B15DE81662A9946E1C8D01DF945675BD3108AADD9A2247B575D23B287D7DCFC76F82943B9C36CB8BB5691816700CD9A331158A9D77C5AE1D994162D0DA56476600E8C9D553F75FBEFFD633A7977C1C3F1C40AE2F8E9CAC29A7972E1AAC26E78B77080279AEDE424852454783408AF953B3C8F29D9BF0C3999B876F164097DA00193FA59B4842CC7613E34E76327D7AE93E9A739491C01D0C288D6FA7284F9B3C0AF390D76E29AF334F85177724CD1F2E364DA090BB9B566530A8B769AC097E935ADFE37B370D47359E77052B4951AA0F83B0E50485D934D1A79170F253CFA0E4C80C8660D0E221C204601CFD0B797AE5F2E5D3672E39B70A84B8D84BAE2F2E5BBDE3FEC04B61811FEF137CCC21AD29F413E9A2A32B5FBFD5A2F1E2461268D318993E750FA74EE8262D20DD131CE377932E58B95A955D90C5D33F71005CAC39DB288B0783E7523F99C20EDCF934FA4E857907F6C1EDE783550B2BF88B09DC147B3B7B21557F67CB8DA3341A793C4ED5C741F7BA085C2681DD5C286A09A4BD9975E9E6B3621ABCCA5DC5136B2B72C151BD02C0D5CB976F7DEA92BC558DA04FCF15A39409EAB63341207C708FC33A0A02694DB19F489BC0EDD42EE84020619C09AE1118C141E8A7BF97F99AD63C007982B6443704E098FB89A954A104BC58078461ACF451EA96BC546F6D1820A4C7CF6867ABD9282E3953F3B7504685F98B93FF9DC98EA0C953ED8A9D4A83119C19ACCF2B3D16CC128CBE6C954A7538F20C804C1F8DE44F76062147C9EE11BE9507504B771D46905CB03E11BAD5EDF29953979F5A3AAD01CC7785646BDDEA7AA905F0C1039BA3BF1EF58A309105322F3904ACA98B1D69DFA0B2D84ADD30838DA87B789A740F430702A87A72598411758228314F910AE764712373A73CD5BC9ADEB7BAB4F4116B5F4B215E3CD21DE0E1CCC8DE81BBECAE8A4BCED45C1F9CE22F6EFE74BDDD66AD3BADD861AA030447989C5F9A1E43DC1E484F1C1A0B59A271C761A0D7B03873027D57AF5DBB922D2C8746C3EAF7246C89AD271C0EAA86E828B390CEADB7DEFAD4E533A785BECBB900C0CC21DAFD4C6B804593947316A25A02E751121D250E859EBFA73E700B274C7C69602D44F38D45423E6CF7FAD42878E33278034690C6918A83AB8804D4B21729AEF354F495732491E692690825C2492DF95AC51DBB5A54A86A409E57E7078F8399EB83D56129EC20156C5DDC747645B771A4130CD20D31B8BEA23688C213D5EC51B334B6401EDC0EDB34823FDE09D17785F0E311A6D772358E5CD2601C35493BC277382B2600234844E0AFD25DC94154F7F9BEB8EC313A562F9DA0D923B7CF4D80886BF9B149C5C5A87F1247C1DFD605E07B6D29ED4E58B32AB5B26E678A35B6A67EBF37841F0653F4305A8474BBBBBB3B3B9B78AB8A18D257BBA9B5C22A364E23D36A30067DE96FCCCD64F74D71E16DA981C61826C09DB51CE2C5BDB5E433E6289FF76735877F559ABAFD058A00DC15C29FD66B476A4EEADAA6BDA84790E44E27C51E0BF00461BD52695706BA1986E823CFCBE6AF08402EDD7880B5ABEB1A5738B26239332D20003C7BFAF4F2E5203ABE7C5F1CED4EBF61B9A35E3A6A4579AA8706C30FB3719C5B4834897EBC52BDF1BD7247361AA1A874E5623D6302A994FC69AF67338284DCC6E6EECAEA0E204CCABA00C0784AD4B45287450DA5FAAD2AAFB4E60358B8EF319347DE36B2799CD452838A1D1B9B48735C0474B0092CFEF92C7F17B7718522FC183B2B8D4AB531C03199E18D3A0067DB998CCD4353EC6D1BECB15C1B7EAA245BCD4E0300D2340F441F09AF0AC0B40FC6E5CC7BD0B96E0C223FC3043F61C480135F9E3A75E6CCA953F160AF22003357ECF630EB83C743F5D0E03E2522F443BC382B54846996556CB7175A8B5EA3278352BBD6F17200D249481BA160E859DB84E08EA8346AD58601E09ABEDA13CDE12F0D607400F4A620249C0B608A1EF6E69CD926E4CD7031A7DA9033A5857DCFCF3A0F36814588AAB621A348D6D7B7F921F93BBBF5F61087D4AD0F906CC7D20700CB141F9AEA7920F6F23F6001C0B2F44A258B06FB5964F9481C01327F57CD4B0C57765476DCD6989A2F84190480315272F5F4A5CB972F9FDA8A004CDFA8AE957668963D48472223C28F9A00F5D8D4392E0667968AE051319E90C376AB52AF8BD0AAC217E7F8C346E024202B2805AA75DDB58FC0FEADCBDD4D5DDE946624EE98348FBF2C80281AF552C0DF3E90F0B93378743D531372DC9447619E228FB754CAF1373FBE44D11D68020BE6535018EDE8B347816CD3E833FAB0B92B656037669541CD04301E6ECE8D17C41E3D30471FB46123B49C9190ED866CDA439BE74F20F0983E12E8B3AE5E4DCE31E54D009FE168941CB280F1652C579618C05513C0D46D49A4F431D94E4F99D84840443D2F4E0781BFF5D0134555BA3DCA6479488BA4EC54834AA55EAAF6C3A2018F881978FF81D7EFF56D3FF465B7268408B6C6F88B6050DFEE612298E38F5B18E915EFF84D2CB637C5D394CE73939CFB717E618C14A0A63C3D282FB7AF029FB95F227DA009CC1F98225CF1B7B14EB3315169A822D9149EDFECCCEAB3F64024BFAAAF0090478FCA24F68C0A2DF05F63CBF3FD20E89456F770F624051F5E409FE983E1E55225907F3C1D6402E83BA7CEDE7FFF99537B3180DC15A23F444AFBA3B1D3E75C23D1B6DB739320F085371FBBF309BD2616057FD1508D48229822AA580CC4E2400EBC380C4D44E37A58B8AC027FD0831D0C5A9556D7096AB52342ACAEEF8229A42431821CF8649AFBA8899176EDD170E0CC6F58F678CE34B9D97AD64D2AF3F20B78DBE2BB58623F6F288790A1F9094AA4AC8552BFE0D0D9B32F88EE03542FCE443607413DA8D932297C7A267BCAEAE1F4F49BFC9913A7A39108827A05E92A61A7F0430008D3C72E184E98778E4A4E5F5BF05FFA9D2900185F9642AE9EBAF5D6D34FD1106DB524DF17973B266B3A48736D393A08EC5110F8B9BBEEBCF3BC5A11A9E0FE240263D8AE9687D55ED8A9E4879B41C02E3E0104B69EF0A6F6B4D6EC349BB3234EE8571BB586BF77011E79B2BE494D1C942953C1A7AB5CC823CC9D2F6B9D9C8F470915F2179D72D25F4B4D2ADAD7C6C390915F2405AE43EEB48AF8DB9FB1C22A339531A9EA17C69A3EF0C77F236D0240BB5A6B072D731A6998BD843D25C334989504830F738F37BE5569D22378E3398C60FE347C2C8B3398F4B147C948560BD8325A21829067A6D9A3FB047849415F1C4A45BF2A59E939B1A910ECA11A8F4041A0FBE6BB8EDDF525B58645030CD43BC3C1081F97D41066BD5AA76701E5F1436833C657937222E7E705155B7ABE55F57CE987C1117B506D2025D903856273075E766747EC0A5F8674E3034E09FF0300480AAC6E9193CF4935148EB6193C38ABC4D786F0B5C8E38DFC22E54D0B9E955FD8E257E094A32801CA19A0ACD261E2789B1B77C8F52A256D021B281048049ECD879F3CEEB4A031D10030AA2C7EF26614AFCA6E85D489677123FBA7E1A32C04CA208D6424BD20D68211040B79760949F02998410E03C74E415F9C59CEF4A0222B98A54F0165A29AA2E187E19D1F01801F536B48A84BFDCE283C1FB17BAF24A4EF55CB08A2F2FCE91949322644D84784EB049D7AE0B72B95DA91B0D308BC8A259BD5DABABF67ADAC0BD9ED0AD1990C5B5018581D2B080160B71BCA6E4730E734B8C026D149E174F83D95A0B50571FBB5EB414690273478E46B5384A4AEF9BCB92BAC0233A051E05194105F1B19339297B901AEEDF5B5B19A894E4901B8B9B9E36AA644D06C3381092005001A8E808240FD34D96421D55748777A6AFAA00840A22FEF470AA33F256A868924E4E933676E3D73666575D5F528BAB6F826A534802E6C29D71087AC78F18DAB894565A20F0141E01300F067D5273A10D30E4726D0978D0A02933A4D7C5C2EBA65C18EEA2E6D2F7C416ED46F347DBF6205DD9AACB7A65EC5EED5845D09069566AD215BCDDDDDDA1000D66A41ABD6AA758323A257F1825AA3517127D12C8B24D7EA116EF496265D8CB3D948041E1C0B593C23B14D01988E8EB3B6CD7161DA52FD8B24032058683A775F56923238D0041ABF02B7BF899CC3E00F006EEEA863D50008B9DD4661B7859F0098C305C4E9377CE9739AA53F6AED058ED35DAC2433A92A1F7CA5903EEC63FE7544F303C6C2B577ED0C62C06B2829E542527D7108D1A979887E84FAB4F4527A32B07EAB65644E70C5CF00401D0466C352E55291C6361A9372DB2F757D212BF94116205EBFC3AF995712F5DCE10FEC9A5F6D776B8DB03A90F611596F7B5E47D60633D464BBE5FBB5BEF4ACEA76506F7A5D0038A9F4836080307A08C6C8397BD3E9D41E90E2692C8840C958920954C610E0A5BA34596900D305916E721993658B121FBAB156C1689488ECB6E99E5C1867233A38D804C63BB046D418A5823FD2E6CE669283E98B633C11E14C3450CAF17E8B7E213A726A512FCAA7E8A1EE8DD546CBF4C1349F60017D93F10819E75C0348ED80B1107C9D3E75FFE95B9725C59BB4E47EEE8BA3A148117858983EE2ED6C0C08AEF41BA88720F0CE3B39082CB80EF023A89620ACF51B95D2D42A49DFAAE742B374CF44BEB8C870C871ABDD6CF94886BBF5B0DEF7A69E3CD2F7BC1A4C9F94B57E20EB9D30B4EBD556303B52ADCBC06F566A959E8D4C5AA94FF8E1D5A621EF3C1A0A2267CCBDC7F891E2AC1632CF3D6BAE52C56EF98D520557081328ED2004F9B4983E421EAEC30E4D561006ED061308F62939CDEC33A7B835CB8A063F9394E1DB311A019018902D13A2DFA8768299888FADE8D4E0329D115D7B054091602864A3D36CEC5DD336708EEDC35970EE9BF5068952B765C2059FBA74F9F2FDA7FDC9D8A5DDB9AA33981B8792BDA7CC983B9A7DF9C147BEA03F29596A5A04BADE9021FFE49DC7EEFAF41C336CB9D2AB578741AB2AEB653F44F69BBDE51E714DEABC0A2279844E6C5D42EA496EB58246DBB7BBB32AEC5ED56E35A6D35ACF6FD6A79EDFB7A78DBA3C62573BB2579B7AB5BE8F8574D66CE94656BFD71BE69BEE94E6F685A44A365BCCC6293B0E2CB31C2C2221A2E9071AAD293F5E909855D38BE1F88715D9A507C375CB5D9F664E60575F546CA6A2CB1DE504EA12F858912FA5D3DB46CC4A66B6DA251BEFC50016C271C0A85421AB9D4ABFEE04C85899BE39CDE9C04FFDCEDCB3B0168C3542AE047B972FEF5D9394468F7009148D464803E8B8B3F3C7320D2D23BBEFD278047B48FF38082C78242109D552EEB4DCB0511F203CA3C6BFCC656436BE28CDBB98508DE44F2D371CD76A552B68D7FACD5A6057079DCA707A64301CC84663D0682009B12BDEB0DA6F55FA136DEBD8D261CF2050EF2CA77900A68D5EF6E2D0C3A2D88D4F64A52BBDC5B03790DE30ACF4FBD4DAE4D12476386C27EC562BC37001DB04FD61BBD2F0E3DB81E61B0F2D553E08AE79C3043E16CC23F7ABC50D2DF48883690AC03961E6BE03533D5CDC0DD457BB5ADDB3E7D147C71E0D7C9D3BB66CDB04D00BC2AB674E9D5EB9EC9321A015459DC1E9EBDCF6666F82897B467F6439D6D0A6A668D5128820F0CED717B601510C17967ACD4ADDAF563DE57B53E5CD6304B2366FDFEE01C4566C4D50AB9D667B828CB7D5ED4C069405BB5EBBD9F68316DC7437E860B1951E6E8388B49F7A0AB2A91B04305DFBB44FF2A2FC20FEB1A8942BE566080C61E62AFD5EBDD341C6DF693861B55A0B1727FD46506E54FC60506A36A3C7CE90F6B745BAC4284C2E685284DFA1C693A40045D0ADD65AB38EE182E78DAADDD7088A3074E8D610643345354B72CD8C73DEC831777B411F3535B2DABE732B8D4638C3A73FC2A28301B482D94330718FE88F4ADBF6408D47702908BCEB58BA25904551B8B41BCDA0596BDB256AA9D3456E5C2BDAF8656D40B1314D84401E5ED997D4CEA27C1BB703EAE9902962A414034A797BFA31A74743698B34C74C647A89D3E1149B1EE5827011097FC1F707A5A0D2138D46B018362A9D6A23ACD7DA251F814150AE370720B134081B0DD9A4076F45BA1113A8D2B4CC68168E203357BE90B5A0DD9DD56D2FA1CB04ED9A7E65CD37828E236AA55AC5A15AD48B32A2733701CE545A945558D682E5A882C26542538E736730EF9582501E8DB0EF70186B163C0E00DFFCB14F7FFA99679EF9DCE7BEF8C52FBD00CFD3E3EE606A09B4AD078FDD8920302D5F0E6460573A30094EB75D0E744E488A0F356EBBCC1C7CFA16AE39C2D593F3DE050F4F8DA57A06FBBD39BB9E0B60EA17F8D3386E2D20D3E3328138105F2E80F9B2B5E8FB007021A8B744AF12F4C7BD72AF5DC375D1ED942C0409256B5AAAB4CDA168070E494055EA138BDA1FB88F9ADB82B3961B004E1BD3594D18FB344A895AF2F45B52F12CA974768EEF49248E48AAF4C294788BA8E951297319A18C28BDC355B2C08D79800D4B01E02A0178EB9E6028B7ADF50200335E07C61C41E05D29DD79ECD8DD6F3A4F7AE4C1071F3A0F407FF26350CCE80B2FF8ED055CEBCD61657168551AA9BE0FDD8B6534BE647B158ABAB42251F5D319F13971CF198DA9D7B94551712A8DD42092B926701E80E91A82C723D11DC209C8380F0203D6AFD16D96C2454756FBD30A3D05BD530B5AA546A5D7AF0441BD6397AD5E550E9ACA5E1B0572C02344F00BF1C1392365F862AF9B3D6E1938D54ABB510F8D123420CD00483BD46F225187080576BEEC965D31ECE43BED698C203797A4C3F9E2CBC8B1174C8326574F2DDF7FFFA933D7E0BEB9D28A86C3A4CE69ECCC5CE7090481691D3BF6C6636FC4EB1B8E1D7B037DE485918E1F3F7ED7F137BEEC15EF78F81D2FFB9E3FFFB2477EEEE77EEE09E8E723469F7E1A8CFEA639C42173F9C4C3120C25E051F547270B74B15CAD001473011C45C6729E099C0B606A73844D05D7062A040B7DAFDB693445D82C554AC840C20A65451411C2112F04C1A05AEDE850811F746B68DE6FC78AA296C4F025328F871A1911FDB55B9D4016962EF197063032072C4475719BB490152BF4C3304CFB602A6BDA828E285DDC85C614DB2F9887E8CB955388022FEF454550341C26755138DECC197FF1CD790041205EDE70E75D3900C11FE9E5AF79CDF137BCEAF8AB5E7B0C3CA675E7319850BCBEF9EEBB95197DE4A1477E961825443FF6E9673EF5A9A79FFE02D9519409F8223347056F9A9D4871D972F73899C5828D28DAD02735D704CE0350BF2AC165652D0689CB5EB7B548E4BD8370DA09CB52369A61A35CA1BFBC4666C98B545C7789604332862F911196D2EFFB35D5156CBAE618C0147F7183983E25A2CFECB60DA67ED36A23774CAC358AD8D65BF3DF54591487B2360034F71AF268846BD4ACA6F65A04A0591C1677C47DE1A1479E7804FA49C2E5EEBBDF0C84DE70D71B4011CC2059C23B4D177DFCF82B5E05005FFDBA57DC71FC152F7F5D0E3F0800EA7791524E9ED0BEF34EDAFDB13BDFF4A677BCE3FCF99FA45F274423469F79E6B73EF70584A383548D10AE11ACC90A58BFC4A9CF33813704209CA159385AA9A2771D2231A076681A75465004B07CC22BE8A68B545C77917069150C688964D496ECB684E8D5819F9831A9517144196A8A3F19C745C4372EF24C638B0CCBF592D56C346ABAF982E8C35E993AD5FE980230D746C5B2460B66AEE33B6797684CFEA9D3D19DC105E3B1D20086DC0F921D32EC0EFEFDE73EFAEF9FFEAD4F3DFECCE38F7D8CC6239C7FE2899F254ACE9F7FF8E1FFF5652F7BDDF1D7BEF6D8CBD814661C344416301D55B24D64E0F041FD0182BC6A7F61DFDA8E1A8CFEFCE38F3FFE91C73FFA387CFDE7BEF89B4364BF49ED393D1A479157310359EF58C45F3A828D2C128C1D52C8115EF6212FD2DCAC8B4275C464055DFD58C3E32B0C78E5B85E6905D57AF548237494BFA69E1E73F704A0B2C2BE2C45AD04EE0880E74E4CC845D969DA15D9F57CA22FF2CD8C872ACFB43D2E6C2D24000DAFE15BA74F9F815656570D00B37323983BDA9AF13CE5B926286BD0A78911DC3EFD33BA8349D22B75AA5504DCCD07BEF6FF7DF973CF80D24FB3E1223A40C9DF79F0FC0F9C7FD3F977DCAD1882D8219394D9E3B7396C0B359752F575DE1F8C2928851D851E41D6C498F20191257D862DE90B85D76F16C0C2682D5D77A9FDE48A6D8E8A4CA0624F39DDF47ED43DCD0885E9970D7321827050AF566D411346029818BB141AD4384BADFA832E7B414A4611A1E40F40C876BDB3B8D8C1E6C8F41DD861B59C8F4521950E020BEF6BB0C6343587FE0000E119C8075373AE5A52301CC6BC1C9183A8A93932D728E20575C3704F7507A3BABF846356AD4642F617BD4E69914212DE3A55295C6C36B202FAE0BEF0C297BEF8F4AF3C0D0E62467FF621B6A43FF03DEF30199DA7799C1ACB33E6F60E8A5A733A1633CAA6F4A19F798CF591C739B1274671124500A6EB2EF329EDA4E62AD31213057C4999479053E31307BAEA23CAD2A81821ADFACCAE57BBB3107CEA85A4D441F9F4C806C408DD2A8D58C086B483A276647FB0586D3BBEA73CAF820E4736A293D2E79542AEF8EA048046FD8BC03A7399B2608DDFFE00C2798C277A6059AAA9802E2FABC713230C6C6A0C3C0F1BF369327D1E75C03B8EDFA84AAF1E37629A7D1BBAF18FEEE6E6CFB83EB2C6075BB8D6C8552D6C8AD12F7C8E6C15334AE68B035278FBF3E7DFF1A6398CA6C04C7FB8236D356120B5FF57BAC3905A926CFFA6C88E2611E9636C472346D37EA8681C40A18CE245C1C0212658B19864F5286C23B8A5E5DCA3AA16F95EAB8D00705015223D198A4203E128D587EFC132B4A7D3B2DDAB082FDA59DA8CB37C4489340F7F143F8FC6B69A8D08D0EBAD8D7A2D00D0E5877703C0A45084BCF5CCE55BCF9CA2470B2A15CC8D10ED8732153F98B91C33181711F043F16CF7D5CC1C4332BDD41DFC04006C5760F3B0DA9795A631EC3EB9BEE2C63F64FF8AAFA87DC410B5ABF0C2A4A570BEE8E45C20AA18FD74CC289B51C5E8DD77A7729E3BEF78439A3972D10ABBEF4E090BD417785B72F6050E3F13CC1E4B7C3D187D4831AA7C7D6C470BA42B8FE12BA4D642921A4561A6B8A0C69C41788157AF51373072E00C0B54FE420E6C893A0DC26AC72B0576AF555D881FC36ED66F2C1A51462D40FAD94EC9CFC74D37290B1875F9D108605C29FCEC61582400986421429EBA76FFA9CB67CE2400E647232400566BADAEA333E6C8495039D0AB35B0683C028FCD8F82405F561BBE43B773487B403756D23A5274C0C6B86D6A527354677056284FBD597AC45D567A2635FD29A3E49748A3C1E0D77FFDE9A79FFE1465278FFD0439D7386982DE71F79D77106F3969AC488AD82C8199743E43687AA516922666947E3DB6A31F41DEF4F8477FE5E9798CD25C22FAAD295DC4F8EB20FB0E679D0AD9406F3B75F2AA30846CD683C06E36C376AD559741A366D79A3A13405916F860928ADF9C916B069B713D26CBC6F4B43EEADBE0BBA6BD68024408002691082CE0A533679E3AB51C03981F0E13878CBEA8759AD523476A0D3A4CC550841FBDEBF3780406300A02A5B7D8A78607016AE3EF40AA9CCC81A7B40C04C65B183237E31B35333266F0C3C9165DBAA48C1DC10F8DC788776877768FFAB1D3B2D637B6FFEDBFFD97BF087DF4A33F0AFDCDBFF9373FF0133F6132FA66C0A36C2173A494416CFF8F73A5CDB1FE54C4E8638FA9467C4A99C0A83E6ADD69C90E5B7AB523F5A9A8D782D02C556EEE1B3908A702BB148A52A7DE118BA506D941BB62744917D504492F1FA586888C94574544C8B73730758E279279E86641000645002F0E00932C44C8A55B6F7DEACCE96B40442D6100537D71B12B975BB840DAFDC9160FDDA08A36C7FCB9DB3D1E8FA03A34741038119DB2089B7694DFC7B135159461FE58A3513C12DF541ACAD49D68CAB62BEEE250A8D0324CB2F74D520F46CC6AC1A82C6B2D9A6125B9D5F122DD809112F9FA2FC08E7E94EC15F9FA9FF919158F6A4633C4E55A3BF34ADC7B917F3794DD15330A4AE9D7C9D3FFFC2FFCEF3FFECCFFF2CC6FFFF6E35F7BFA6920CA8C0289D0E35888F28EB03CEC953B3D3B2C77AA55DF2A573DF8643E2F68DE78AAC81A28AF44EE95EB609BC6F512755E905037E3FB4882002F7A0104008D2C0457C7254A8369CC082FC80F8749006CB57C59B76910330E13179B811F64F51DAA4778C9711404DA8E2F6BCDB013DFF2105739A56BD1FB4894DCEBB7897229097C0F16689B67A74370569CFDB3658C6D63F68A26831B7D77901F950500D50C481BEB1B6BFAA6C7B5B50DBD3627DD3E974C76A18413624675CAF4918FC44D4F09A3B1B23E7D7F000BD72A2A79CDF1E3AF7EE36B5FF7F01D773D7C3C62F5CD773F7CFEF53FF53F9FFFA99FFAB99F7BF0D5DFF9DFFFC29FFBB3CFFC8D3FF76717FEDE037FF6B71FB8FD6B5F7B51FA7BFAC0A9E0F59BB45090F8CBC9F716DDAF8A5093903300A3DB1B3CCFA71B17E3C520D0D34FFCDF220063232182E756CF5243E0E9D32BCA0BE787C3C40E5B76EA13EB4857B6DA6A6C79A64AEDBED52734FA13B7A782401AFE4CDD4F2ADB624513A3812BC74E4F92064F9BF7C0B925F6FA1ACFBEA6BAAE8B44E94C2C328DEAD93166C8C232460F15F8606B4DDDED1EDD7141AFEB17E702C8A2A9067060466A90B9788A0C3C0EF805FBF34FFFFB5FF914946A1E7DE4C11CA3A60AACA9A697D61C3F7EFC75AF7ACDC30FBFFA78CC1F042A8FBFE6B5C75FF75DC75FF9C6E32F7FDDB1571C3FF6C6E3AF7EDD5DAFE11E82E3C7E3A627FCFADF49378F72CA640F2D9B9E413E326F945677D408BAA30634BA748B975E1E261371F29D5D5411DB04609C85C0059FA2CEE0334B4B3A112E0030AA393FA81FA90E2AD51A3D0D1DA599A9D1F1B60A02A925D0A53181C77E13197EBD929E752D1A294DED2AC9F8598851CB0E83C97A69F00718D60C760A84C8AEE07945B92638E3B7DCBC0FB6683A38FC54EC87D7D736E095F5DA39421EAFBAA03585D9DFCC1B156E43D663F1B38A6D1027F59F4B92FA9F6742FF8EB6A248EA355EDAC31385D4DFF9F077BDF2B5DFF5DAE3642A192EFE7BFC2E50F78A63C78FBFF6E5AF7CF5F197DF75C7CB5F11D39756D6C41E3BF67F00F0F35F36F0E2F985E92A5766502F272013EEB27DF13C3B565C30C80DF69E3A75FAF2256A61E125F9E1303180320CF11B628B0C1A97B35E1EC9524160DF990CED17EE4608FD69216DD5BC5E241017DF4140E68F7148A510E92485C4FC110DD97197A68A83C06CABD4D836F6DE2F0090E14B6EF4E6A78D1C6001A39F500142CEA0A70F41796DD4DEBC33C997704AA978851DBD6ABFFF34FCFCC77EE1C7FFCC9F79E8E7CEFFF9D73F7CF79B15785AAF037577BCFCF8F137BCE2F81D2F236BA8A5204BC9B09C880EB097871F7EF8F8F19F220F3BEC0D39DE33925B4A33F8A6426DEF8AC6809018407829E59BC6BEBF7AEB99D3A7EE8F29C90F87894AD197CDCA91DA00BFEF8FA91100A5972EBA51CFA614184CD98FDD4DDEE06313EA6299C31FD5C748DF43A5CC1FCB48AE72EE37E60FF9C17A6E65AC9CAD63A56A9F87B0E99BDF49C35EFC568BA674DFD061206B8D661F58D76B8B95B6CB1A30C3B845D12962D36CCF469146B08EFAAD296E8887417CFA71A22D71DA4F3C9434753EFCF02B89963BF09FC879DDAB5FF1F23B8E1F7FCD2B5E7EEC38A87BF9CB5F77FCD8CB5FF7AA57C31092E6049B1A40C077A786EFF85D6FB8E3077A43388C9EBEA195686433B8B545E76AE7EB2C2B755B268A45E58F62E5D633972F2FDF2A9C6D2D069007AD6624BA75A7D9A83852B8827E85FA2E52BFE6F48764489CC1177FF20D74F06F4EDF3A5720BE03044E391536E97DE63B4440A4868113D4B9081687CF09804C1FEF3BDE83DDCB7E871EB80ECCD5CF416B883D2F5E2CDC73A49CC18229664F11B136E272449CB89D634F51F505ED6795A34542FD330F71BB8FCE5878DC5122C342B1F4677A397EFC9540E6AED7700272FC8D2F3B76FC8E571E7FDD6B8EBFF6D5C75F75C71DAF7C23DCEEEBBEEB8D4C5FF495BCC8862090BA4BC1471FB1F9C35FF37BFD5EDF271F3B22E8883A3A315D85FB0647240D60B4995C79EEDAE5CB7B97123F991B8D106D2B5B5B7EC36EB5C63535E3305C40C6476EF3BC59EE436FE641A9E70FE48F90C29F74361D3565E5F1729229000840303107C11CB9240520F5AA262DF84268FB9CCD42DCB14DF62E01905A620E0030153D905CEB85175E60AA9EFED4A71EFF7B1FF9C8638F3DC6E1DB131AAB88AA7DB28CEC28215319C345ACD00BFE0314A0F6F05DDFF5306D729C62BE3B10E9BDF155AF7819AD78195627F441F80E8E421D0E1F190FC6FC191C2ED28FDFFEED679EF9D4A73EF7DB5FFBDAD7FEEB7FFD9AEF39835E4F193B6AC8B2D3257A30806A6684B8E682D07DEAF2E54BD7F424E5D0BBB29DC15175CA5647D4827AB7DD55B47281275E0C4210684D9E39FF0614C51BEF36A687992F155F52CF51C20CEF37977DA4F88B5CE35A6EB671567110488338932B95246457377F3ABD3E19A74434D53962400DA09A738F908C2C150C95CE08B4FFA3AC31420A69816AA456D51B899B59F85D66459128EA3A48A92DB03DFD202D0358C71F7EED2B5EF3CABB1FFE1E42EAA7FEB7EF7CD9777EE777FEC2C28FFFC277FEF8C7169EF90950F55B4F535A4BED83288F7C81A1A84682E2BB5050284AEF028FA22ED8EEB1BA5A998B4C896677A55AC240A811B032804962E1DC7AEAD4E55367F6E29E5A1E8D607685E80B5B84BE2F2B95A614DC11421738FD356FA4727A9FFFF0CFDE7527FCEF1B1FCCDD1557A4C8DAD97429F112123DFB291FC699FC25B1D9465136521804C2A5A3F4F4072521CB702578E3F43FFAC9DFF8B7FF52F57BFC831FFDD10F53C7C7073EF0D0077EE227FE16F4E083FF27F47AD27C8B940726BB80F82008EFBC0100D3DD2B2945C3C6CF3FF220192BC6FF898F71CFC8A71EFFD4D3CF7CEECB5FFEBF8EFEA907BE2CEC20A0F3751D6FB8E8A2EEFAA54EA35A0FCB56880A4CC729AEAE7C25A68FDA58A48B8C42D147AD6ED1C5CE0092FD4BD93E25445311744A23CE368CFA5500461FE5D2D2A5D3F75F3E756535CA5673A311F491FA6ED7C6A1F02C496A4BD5AD1113E83EF3C4EBE17B696CFEF96772596591741F366368CC2D9C6B6124A5F8339383F5941166A9C235A2AA673EF538F93F65AB54333019AB871FBEE3E177507443235E8E45030ED4A8037ECF1FF507FAF4DD7790992986230755AEDB43BBCC821DE88E36EDFF88A99F510D70AAB74D0F5BC8F5091B66455FCA631B265D761BB359A782CA421C43E3EA71A10D04001CD63B32989654BF9451C6EA8656AD983E9F66DF4CE8D3AB49D46845138EE6E883C8246AE8D22BE3B888018C2372B9BA74E9CC99CBA756574EE963C87606BB16DF39706D6F5CAB1EA9355A0311E8863D7D504CE0173FF608229963C7C8FDDEF5E00B7483F0818AC650E8A147948DD06B41F641071C23F7ABBFFA6FFEE1BFECFDE23FFA28E9EF7EF8C37FF7C33490004A02ABEF490756A872AA7103080A7F28067AF52B5FC1F6E8D81DDFAD008C06C0280E8938AC520B784901432A92CA1B356C910EAC1E8A6F7379FC231FF9C8E34FC3587DEE8B74A74BD4939B28174F16CA48EC234068F8BFDF6A819A4667060A981C219BB566B94E7705F8B2ABBBDB62270808AC86F67F69FAF84983097DA08A5FA9E3089C15D00719BB4D29B9E193018C0DB02F4E9D3975EACCADD7E48A01A0D9123DD6000ABA21CA6E356A47C6BA632DF2749F7FFC67CFAB32E79AFE9EA7411F3749EFAF28CDE062E470FD734FA3529E7EFC7133B6D254FDC0F7C105C61C449CD00B96C07CA9DF8F6486E79A3E7EA75E89191583BFF6B5C75FFD5DC7B1C51B00A0DA31EF17A21FE25DC7E2A5D85544D5830F3E4843559FA03BFC7E9E3CA061AE60AFBE94EB5C490D3245556FABB19F8644D4239F7F6C6FA1E22B3502D6158DFA381495E96CD6EAD2BD13AA4757DAD5964BF38278F809A9BADB8000DD23C0AB3B7DCAC632F4D1C3B5983EAE672017B7B150CA36EF008D8B42097B558A0174DDABC9BCE6FE2ACD4F79E6A96B7A742200CC74854400FAA2DD6C0BBEB7469712FD16FCEEF9B8BE5193E79F78C61E813E6E928E5AAC8CB685C40B9E7F90EF683AFF8E37BD39695B20D3A2DFA6148F0A556430790C04BDD2F2CCD7A24FE9FDC504222FBCE3F8B1571D3F76EC55AF7EF91BE183B1873FFFFABFF017BEEFF5DFF7E33FFEE314F6FDAD9F4004F8E10FD030981FFDD18F762838FC87FFF0DFFC2A3F8E31921A09EF0F7890BA5E962817D8A7A32E12BCD8B6795F1B8D1BF222066F44910F8E7AB5851F8A7AA53FEB561AADDA8C96A81F1538424FEF37CEEEACB12FB6E8C63CFCACD5F5FD22FAB6F9070026E8C34F449CD3A44EEA5D4E6900A9C5CB56CE385EB1C0B36B4587811FE767565FC2A5A196705F9CD112AD01147EBDDEAA54BA7413AB5E33F9959F7F44B1A308445DC3D79C3FFF03DF031778CC6CB12A500C462654CAC547A4C80F2A81BAF823BD2791AFD41B93D4FB3BDFF42665AC78503D42AB783CE8338FFD77CF7CF86F7CF9CBFFE3FBFEE04F3D30F5C6BDEEC5751A72A0BD3C840F5137B0A1F56CB9BB8EDFABBBCD9EAFED4AAC6CA762B66AB4B8112382500EAA405077496971E1EBF739E95DC6E34185ED867EBFD208826E37507321A8554278D1F1908F644BEB38484CC6F8BDD0AF356A7572B759DB1779F6B89D56278D00307B7691526769CEC11D5F7F6900712CF4D47E23E8CBF6C53957B80CF664CD1FD73D9E624CEB63092B203089B3E8164DBE3B78BE8C6432CD1F943166509ABFEFFE6E64A3DFF77DDFF7E0DFFEDB64AA1E7AE8031FF8C0873FFCE11FFDF0638F6B17F8C52FFEBA6D7FBE204A892C851F84F57AAF21C36AA3D9680BE11080EA79DE2C35FA85FB813795D4F23C807409DB957AA56267BA1CF3515C2180248EE76D9A28A5DE94B261CEA5CE453F1F40E583E3F04A884ED70F6641A36A134BBC2CCE11136B490611BF816B2768B4E5562DE834037144307DAAED258EFBB2ED093AC2B372EDF6898C35A92183F10A0DA03E1C289375A8A7A6EB0F900630F0EB41B7254C00CF1BC62B72756FA0BB8209409E27619E0CC6F43E52E1BA1A87413327C0711354FF287281BF7A7193A6C5DF45DE26766972F29DA4A96E23699846EC5D1C238F2C1771902F0753512A976A965F43958F27A3DEC6C5F578D4DF5AC422166CF2C95FBBCA9F0B0184DDAA884A73218AE3B58C02D69A07202F2706855CB4BBE58667CC99AD7EFD5AD1A9B0606270AABA9E3DD1AD75BBD54A7B36A87442BD30BE10E29FB7C642A21A29F50D7B3581648590ADB66123E9B9BED4F612372C64C38628C5983FAD9D09606CE5F0EB0857F4A74200CDA02FD315A226A31641B711B6AA55F3F27C24B9FF21CE0A1588A08FE649485AAC584C155CE0E38F7D44718570FD0BBF8E2C305BBEF10CEBD25B0769D6E6AEAE7F6867F3C49E7FE1823879E1BE5DFFC4CE4EE228D7C889E2BC28EE58375A280C218A86F741F957CAA25FB2DBE55E18F888D6860CA0B67BFCB017DEE30D01E8877EB55F97F5AE3013C08234761E80D1D71CD15EAC556CBA6B9DBD30D9294DA0DA2023EA50C6758623D2BC38FE588A6AD06980A869FC609A3814487CB01F0C6420B7EA355B1C9950734DBDED35E9FE75D5ECEC24AD742643944E4467389837A793F17BCAE8AA7BE1A9013BFAB202F052521AD9AC230DA00E01F764ABD2F26CC70C505E78E211754BED133FF3D8CF7FECB1C7290BFCD4E31F850BFCDCD32FBC30F71A494E0332DF1B42D84BE721EFBB2F70C57DF7ED6EEEB03637C7FE851372FDE4AE5C3BE9C8DD5B76BD9D1D9B56F07F7A7A12F6E700A3F5A2DE10C7F2A45581CF2CFB2298D6EB12D580EB696C0D7AF80639DC0DCDB3027063ED20002982EF05B25D1DD4240DD1887FB4E0BCC82C534F30F7B31BCE29AA635C17CD720F70944B0D951B34A4C06FABB569E99B3163B6081867E4FBC2AA07D560D69AC9D879C6F7D7E91211AE1B845E3774ABF6A03E6B542B7D29AB5DAF754490E355E3E312C397A0480350E2B3CFF79DB3A8F9CF4096C84B0648E242038D232B0760760460BA2BC4660F4CA35A9C5ACD91A9B9916CF5B83BD5CAAD9B4263E33CAF253035D35581A1D0224C050014B63871C1DFDDB9B02B47D62E483C7732D870FCDDCD0B425E38B1BB7B61D717173677FD8B3B5869ADE3CF8640C4B6BE969F628AF80BC39E17D8252183453FBE4F6FABD7BBB81E3F6A83A4DE5310988E01CD6387286D958B6E286A95017566A292540D1659BB78999B1EAE182DF6E5A2D7AE07FE62DFAF7678220F7D87463A3156B97766382E0DE8800BF7E5AC5A1BCCEC061C706CF0B07FA2D9E7DFE7F0AFDBB3AB013716CE7AF5AD6A7336A8356C0F798AFA06145314A318273A2CDD1B67884E8A6C9D3954D3B1E2A354E31EB927EF86004C6242F6C0C2EF38BE98B58F3471927A05075474ED45164D45F83C3F02425F7BA052F8ACD233AD19479B150C86179CE8C2AADDB6EE9F3C71F236710EBCDDB603A37862030B4E9C905870F2A45CC7BA73F2E4B9DDCDDB366EDBDD3D81373472652DDB9D4735643743BF510BAA35E995C9FB2AD904E08609A00E07F54BA2A4D458B25D1E20730842484142231C718245F677CE7D6631977EB7CA33FA567DD168F89572B5D60CE812A1D980E84AB1ED11FC1819BE8242C30A4F8E9BCE6C5AA9B7AB536C1E1FC2B64B4D6C5BD2B3F01AFA4D4FB45A6175DAAD87D2EDFA4702642233043A7B8845F437B0BBF8EA35394E6427533A392335BB390DEEA3CFC6A9AB5353A1028255BDFB08C098836CBB4B2A2971D8030761936EEFB39BB5EA5612045281520F6BB427B6FAC33E1D3B0EC21ED2BD7B59A5F99B77E38B92E5F8B79DBCEFBEFB6EF177CF01BD8DF513BBE74ECA13E7825B0262F1C4C67DF79D434078DB855DEB3679EEE4EE49ACD9B9781B12938B1BDBF4DCB8D46FA10465A7D6458855AEFBB512C8894F64DCEB61F3BC05242A3768647414666601F465A754EF2F56CA8BC9B06F4230B9DBC454318071B4CAE6B4D66B35A4AC741A757FB0300D6DBA834836C0A060ECC685A915044B25C7D54675D0A854DA3C5A2926C672E4B8D144BD09BFDB9A048D46D06ECF5A4DBF32445C3F6B0C91F3C0E17397784C76E283A3C34BA523CEA0A71C9C3BCA8D063122617AE4881ABF401B4750EB2424B13DD97697545232220FBC27FBA15DABF76B5BB2A387C290B840DDCC01F074677CE7722F63B6495C337119A669CCEACAFA8EB8E5C2850BE76E93BB3078B7ECFAB7ECDEB6294F6CECDC16C0DEEDEECA93B7DDB6E3AFC1EAEDDE22BB27366FDBF34F5CC01A8B0C1759349340FC16B91F04584294DBA1799FCAC4EDF7907A98E62EB280B8BAE9EAE5D06D7B7B7D5DB5C7260A6050175233964134B354F6C449C500261541E991DD99963BCD72B8E8F9FD72D02E55EA41200755448319F6B30280CDCE4C1CE9DAB541C8BFCE270FAAC7B07CE336E25DBFDE6856FAB3DAA0DD0A3BD559B75AAF217A1062CC03322037895AE2A38A0D74B4C47546DB8859F488185E949206508DB94571C545115D110BAA449322BA9669774901C80670CFA9D4FD59BBD6A26B3476C1735C0A8D6E77E8F6749E363F1388119871B3D5FEFC39EB17772EDCB63BD945D671F2E4AE75CBDEDE899327F7F66E911B27821317767737E4890BB79D43528240F084BF770B4179129EDA453CC7D9EC1ADC7072F6F82D444265DBED4FFD722748C5557DB8E035BE0B44495BC3CCA3FF799807175D44A12F87EDD0A24640736F2835A09A6F072A3EDD541D22360D6D9AD57241926B87D12A0FA7F5010827C74E1D1A7AC39C6C57D6BCD9141970BBA50EC676A9C1A98B400356BF536B09AB16CCBAB5D9A4DA6885B38A98055BD42420804C7460C9B124AD08D151B301C3B5B50DB0E8812B43CA840ACE88E6E920F674A4A0E753E177EA75413D71DDB84633009A31A1F2C030E98DCA00A741B328A915B42AD983A97E0F9121DD99C4DDC1E963D44181AA9CFDF91BC308012CB1B97BDF7DF2B6731B274FECEEDD77DBA6BF49DE363879D2B9EFA4BC8508DDBDEDC2E6890B7BBB274EECEEEC9EBBE59CA0C7FBB339A30737EB83E4DFDAF38360B155A994A6C3F48D5293215C308D000436D10B35E9C4F3E8A544F1B42A5F213BE5A6E887EDCCC4C92E8DDC5637EFC106E88121EE9C49E853004264A783A05E6D2F4E61002B8BA25169940634AFA00F8F9F213D91E38D2BCD41A73B9B35D4E3C7E157A5E76F1D0903D10E9B8D7E736AD766B3E08890BD2308A7BA486D7C35CF54426072CDA0A6884D28F1C1E40D60419C6DC0D7B3AD945356D2E3BFF5C02D677307DF8A4D68E401740C6864210C6092ED9B00B207BE26F6C4CCAED4D5CD705A6E718E8103A663E3398AD41C0946501A87016C47F6E58F6E0ABAB87BEE9C70C4B973C18513272F9C84A1BB6F77F7E24979EE9CDC3979E23E2960FB4E5E90174E9EBC207677CF5DD8DDDC2520D97811800804C98B6267C87F2911B48761A761CBCA9006C499E220901B02F9CB440FB476B1D8C693F82A9FC88A3328971BA863BD5809C65BEF868C293DD49D4E77BDB0C492FA3105CB35A8D174BEED6A58E259F6BB8DAE0CA2BCB848AE1C366B47EADDA02AB857D0775A4076AB1E366A8DB0DE0EECD9AC627BFE11A4BE1DDBA7795E082AFE6A4CA0F1C838E4342AAE5007C85D866AFEC13E0559A864CB36637CCD1ECD11876BCAA1A7385FBCE8D20FC4D79D7E530CA0D1F26CB40BF2502C9A632D9885757A9C9411F1158C19658D7BEC7BFB302BEAF88CEE9CC4B01F249BE2FE1DEAE94084B7B74BFD1E3070BB3BF82FE93D2DE5575CA7F8BB43DB42140152C52B92D815AFC3255069064859CB15E1D76B7A864F5316829AAE6A8836959E242D2BF8CB5AB5DC1F98CFF860C17EEA1DA4B491894758C500820F38E376B95EEA5965E957DBCE62A7DA09EB4D3045C62DE92B89E54C504BA2D338D250F35FFA8242A67E2DE8C1F04D71D615B757EB365A339A17383AAF088E88403E181EB6600B5B9F97E58ED9E4AB03B5993FA787AC9656D1A298BD681F8E3EFF4D063CCEA8B5378A018C0B373308DF8801D903FB4EB5DA9D05353860FC505288735CF084671C757BE3F84EB324272C764205A2B6643A03BA8EF0677373131664833EE29D7AD9BCE8003FC7BA88C594A66E6EEE6C9E8089D41D1A24C521DDC24973D17B301FB56AD8369F0C9868D8EFF77B1B74EFAFA1A29E372DF294763DE84E3AD56E723F8312A249B27BF8CF59B4DE19E201BDDED41C00F10330D9C88A7D40E72D0A0112EB61C996037AF80992E31C81CE8826A284937504B7450AE9547A625087D7F503B12564CD9ED9EDAEF01C57C47E3F8643FB29FA26397B1C97E8EA092B61BC792DD7B7E20F6E8E1E55822B3BCD1E1D05DF9A356203B0C93F13BB6A9D9EC400C685CB2DCF690075330C3702FAAD76B7EAD5711658A29B9BA1A269AC4830D1F4D21FA24A790114B9E1FDBD6E227E029A2155897C6706B2D5A8BD64C741D88755EB7CC7241BCCDDDD941553ADCB9BC82E9B8DD02BA14AE9093905FC114EBE372533A8BEA9341F40210761D0A6D9A56A1D7F6C861928A36DFD751645977AA7851E7D9F32C1710721FC65AB16B6BD4A0B1ED8AE54FD105971512C6859EA56C9C0A1D9FA6096C4A022EC7A28EB1D5FD61A0D1C2CA056271FD56202877A433E981FDE899C19C990E78F9227B792271BF55403E090E632A1B8C2600F5F068B2090F68D4C13E7AD9667CE3002F04A5C689941F80980EC81277EAB1B5645CD0E786D74A4F342385C88DC4F3884534B7AE3941B8E4FF720A9FA4A14C554CECE787773833BE52EEEEC4C90FC8A9DD1AEBB030669F58E7325CD8FF2C43BB8A6BB8DC0E7E6E7B8E654978596902BCEAA23F9699A5DFE2E6B3F00ABC2AF94293303D03003493D2421602CC5E05AA147DFDF2BB864093BBDB0E48A85B0562EB56558AF340BB3617B5BDFABBB0563A506F7756AFD1ABE5E0795C3A110B058D1B651E5C7BFAEAB13F5443D30B213DAE56ECD78821D847C42D93FAA5D2C4FD526E7C75408D1EC510EFC143FB33DF931B5AF18C011B55D531B3601F89EFBE91D995B2B9A21D0BD76CD02817BA2D6E836442D1A07CD26D6999B8238F0BE43D8E75EAFDF33EEF666CB39D7DD64E5B2EF4DA46B7467D7BA40666EE702C57E1B17CF9D70D685D8DCD8DD84614C0C8D16194CB68CBB9DB2D76DF852544AE53603484194CB8F9963D1C337C7CB5BA855E14DED61CFB277762E52F7F298060AAB2D78C3681E637A785F77300DDA8B0D4F2520664FA91599685330C66BEBD942E3397EE69424D62273A26798D21CFBDD72A91E2E0E4AB0623D1AC2E3E67B1AB1270520F6A986960AAF51A3CCB736C319725B736435E29A889B8DB5111FD38F2DDA837260F7FAB578DA7296630D7A7A10023BB7A436757E4C4AEEEDD9D9DC51BF16FD987E8D00A4C70D5BD615884CDE7BDFB54E0D06CE787C5519441E0373C5BA726DCF69D52BD55A3DEEB8C2C5BE5F063B66F06CBA7B3ED5633DB25147FAFD0DCA413245E2817970A5BBF79D3879DB2EF7CB4DF8EF7D1BB789DD13E7C4668E3E3DAA809DE1CE6EADD6ADB4BB6118F95F5F58D44A3116215D81B027528E1D9FDA39A433F6C574387437A7E375DFA7DE2BE9615520A9749CC4F3F9B2B3D808FD7A9C81D0D0733683EE76AA4DDB500A40620FDFA0ACB148B43B61AB194B010FA287B05795E5A95FAD349A35DF76D2E6941ABFDD2D05204F97E13B5BD638086A8801F5D47B54F871AC9027D1563F3369F7C25AAB01235BAF0ECAA9F6A5F136DD11CC6FB9C355EF831FA5A4AD1E81988E4748D18FA910248E01B9898FC4B371FCF0FDBA2186DBA5DFFD14AFB96259577996416B108651A48D92D91724C4A90EFBB2C85E2732529803E4D0440FD1A5A43383CDDD5B7677CFEDEC9E13BBB76D7067DCB9E01667EDB65D373590E0E25A34A6059E995780C0C57ABD522A0965AE469E5CB200D692132E9F5D3E7B56041EFE2E5981B496CE2E2D0BB97A763A9DAE2CFBA3252FF457969697B6C26069797939BA6F06F2C350D44AFD1086552F410DB119A4F943CCB1D5917091E81352BDA371D6982289056B057F2664454F998B605F8820F064A3D5AAC9F642DF7332B348B301B2783C1F245D3DAE79E6DBC2190BEE0AA34A2BF0C1B40A21B0B071A9C9C02B35ABED4EB9D409C245DB2B9B8FB0A36D7BAA65C3EDD10C048EEDAAB04F2D8B4034FAE2B4A225CA392F5CBA728527B28E01BCC63EF85D57792385E3BBD7AE5EB972F5DA952BD7AC6B7B72AB71E44833198B9FFF85B460BC811FFFD54B62DD38816A0215FEA59DD803DF77DBC94DD52F27A8DFE3C405497D6F34FA2516AA39A6917AE3F8CD8E28D3B3C97587196A442EAF4AB9B21C044B5BC25B5A0D56CE0AB1BC1C7A4B5BBE38BB22D79726537B694B6E2DC9001CCAD5A5D059A286B138DF15B2D3E884FD524B0F42D022BBC5F7EFE91185897898A105F6000BD88BDC3514B3108B52223028448B9D3E99565A4A067ADA2B77EA15896421628961A6F578C36930F9603DAA7E34A218821E3B43EB69A388F6348972D005DE8D0AB5580B17ECB54BCDB051AAD0BCCA6A3396331AA8A8CAEA0D7002636B3B7A941235D444A3C3F28156F463EA4C17A21679EB2A1C30E7B9D4F217193DF5E15D400FC2DFAB96BF55E9045E7D0BA5624604F33526F3D7E3BFFA7413DD0481900A68373551BB9B9B3BE76E93274F8ACD5B40DEEEEE2D63791F7CF28E5A0DA53DF13A1C30E7CF6B96F010FD4557100D7E5F59960226CF5BB27CBC862B6709AF6075191BAD2EFB3B4B96B7B28CF0FD2CF0EC4FA77627B096A8FEE3EAF0ED72AB526AC300EA05B1C62A07CE10A84C2250C98F65C957989048037C11F4AB8B0D9AE35D553244DEC86E97BA92EEB0A3C5FA4982E4C8F57866523CAA5E153FB6E39F98E383E177830122CC5AC3ADB4DBB850877EADED551B3C30365DE316B2E0A18328B94F6711E594EC78E3632C4A35F58FA9469F050A969D1DBA330EF05D056257AF524BE07BEE67FE94397C372C1F44185ED96B75C42C6C77BACDCC039FE78A011C2260C8CD3975B304725F720CE07D2709C0DBCEAD9D3C214FDEB773EE96DDBD73B79C430AC28A1D2F0B2C327DA8F8B56D7833F36E167702274BA005CED2EAEAD955789EE5A515270896577DC75F59DEDB5D5ADD59B283606505E0212D994EFD5572C153ABDF1F0E6DCB16B2DF10B25B69A60D204B37C29804461EB9B86725EB833D3FA87664B71396076EC912E97867CF97360CC168448651BB3FA28F4C5EC8377444F4A9ED21C0C29BB10F8E8A3F26C6C58517D6163BC1A2F0076551F264D96A37A83B307679B15C4A43A03EE5463C6EDDF0C1B1B2E713FF98BAD41650A39C61508877F51AECE0554E7CDFFBAE4B57E1775540F8D4B5C802220DEE3651D6B54AB539BE4100D55192E296C04446C91C2C32DE5E0CA083C4635352BFDC7D727C927AE7F62E280308DC32F4F17750EFC0903276F66A7AA713F82A6B492C3932D86200E969D6E31544846757919A2CAFEEED2EAF024F89B721BC30926078E2B3D6F6701A9DD9D43EBAD8C52E8B7C42D40A9810181F5A3180691F8C230D4218A2B213F43AD5C5A6BEB928D11E99259A6DDBE5D08E9E2BA01DAE35A1E41742FEA1B665C15FC73E98CD138145254B4DDD810F4BDE08EACD001987BF10B6CBE53AD93E2424FCE5B4907E0EFA03D85C1BF12EAB6074623EA6887C309D3F3DA86687E0625960ECEAB5ABEB2A0D812DD41EF812EC22565F213BB8271AB523F58E8B6A2A3AA602710A422326C860EB65108A8A95BB40F611CAD9DBD435B939A1966696EA8DDB433C4806D008FB20C312E28B1B1737F8ECE9A66C2D1C073DA91BEE56C2E7C2180613BC80B600C6508E979CDDDD55A42470B9483E00A0F4CF6E8514342247B6EDE1B0DF1B4E6B8D66A90204F52E4D4500D2887E564C62615708AA27B6712002B158B36EF98B765904DDB2DD2DCBE29BD4559D22F975C8F392C9E3593494E267812AE1036F4D0B2D4FF03D272E35B878ED4E102CF88E1D742A40CF6957E95A94722F29ACACB80EB9F5680CF67882F2ECF145B8258ABC320F940180DA004296B280964E43B0447B60F2CDDA025EF35B5D44B741A05AA2B372A979828E0ADADEE6C6016E82E90DC85C1877724723C3E60DA329142EE5D8022286D2BD70FA657793FADE521967DA0FE33D0D8DD6FBD2A2DF879D83014428B8020097030107BC8A507075690B3651EEEC6E2C2DEFBAA0D44194B8E2200F099756E35618B727ED8AE74D3B47DDA2A098015CA33EB8751581C6C73707C0C86791951EF4C24ABBD308AAA5B21DB6AB76B5843496D7668592A1E666E0167AD1FC55139D86F8E9760AEC20F6C19E2F114E05B0EA7D7F5A6A576B41B55CA90C690062AB52F3C8F2ED6F6690D220D9B7F18FE083FDCB0EB98B7133A4AB1CF43AE4821DA416162C1F5176056FAE5A711A127960C087FF960230F007B3DA9156A10144211081D4A84D1E41D9FE5E5FE5C1291F1C0F7F4EA6093958B469343E992D9A296A949E18C62F9D83406C01338E0F074B75BDBA42638D57915A6DADC860BCB2BC6CD19D62CB2B5BD2DFDCD9595EDF5D9F8C1125C2372FAF088487662B8CEC92F913DED40CB5226DAB8E4344A020101704EC33F509D3922200E106E988F0123AF50AFCDF22C26DF8E04EA9E7D7AA0338C3E2A819B5CF1ED787E7D5F46DC3F23180B3AD544B050A5EF9605490100BE1D00987D2AFF491F28AD23494B2530BDB3446C80853E60AC66644151DE7E1F9242A1500B0C82247E374696E18368157AFA8A6403281711A1279606D01391711B2D5943519F78518424C90FE315521F052D41C4D76505DDC903927F84DB407627F0980BA453AD29A43FD3D5A39FA34AFEB17B74D7BE0A80805F54D0FB2A33C0FFF058D57875FA2A578D9A19B8F7777E8A320B384689C5640CA3389200CDB84A0D3EB6DE53C100024E808433A5CE3908B0014923A67007AB731F5877EB51FD88D46B5365D94768DD8A06694EC2F30054C9D0F08347D169D99BBA5A2C074F336C063330A0A852FAA9DB00633EB57BACDBA94F55EBFDC2877C2807A876E083F2E3F1A0CC596CE1DE5A7724CD1CF82F7B3F4FD5A0C20B739BB9A32F2C2D7741AC2AFE481750CA89261BFD615F5B0B185234C1F62BE474EFD36D00380FD541E9CBA50B2CFD3982B06509B14C8640CD5ACDF15D28765BC68FDE2BA133B058A15D43BEE99E2FBCD04DD0B3B567745E004F1821FE513751CFCA56D7874A65A471B49AFD1E884EDA614639CE256A60CA22C18C66F9BFD30CC1F4483630ACEDAA7E05F38218D40852D2C89C0E9C8662DA4FB409087D22F66EA93DA1A993AE98E12FAA892B132F6C16657F7D8A55DE14CE8316BDD462DAC7644C9AAF4A7487961F8BA6DE4D5C2188F3F57317EF4163FE63A2358C35CD291B78966564E006A5DD5B92E00D4BD213C2DC20F53838C5A435122006CB7B7EBA2E6938D5675C01A17E413545828971EDBC0940F4E1F55667AE9B922DB6D5A9198333D0286A507C890E1217FA706CCC4A11775402802112E8C0BEC49DE8CEBD72874C914A82F2B2DC44BEAAE3A4230FD24B63809C181D1B8ACE4CA50E99021304D9384C85A276C88760950D744E057118B21118D784F9A4E20D037F2347DFCAAE98368E7AE15F9609327DF0F9B0336F54150A9371683762DEC952B3D4E791178A8E7D3A4FBF60A64E007E1BD711F745A055C24879300B873952DE0550250F786244DD26CFA084058425FD48EF4677E08E760040985C9040188FAEA0F7BA898940FCED4228DCBD76FF7137D0B69AEAE4188DFA60C9EB27458444F96D1CB89457E036D50BDBB94B9F17081DCF59A3B8F645CB07EB45816C04115B589F04C7D7487A94E6F1E8FAF45174472A01737A21DF388528F5A41A46C5865BF24A45BAEC334D5EA751D8B99AE26AA4FA28F8719646C1F0B250F4246DB191F4C7D29B2DB6B00B44EB52AFCB210958EBF18048D05428F220EAD7DEA83A63740FE9ABACE405FE44D72CAEFCA484C620037C9CF2210A4DE8EA837E45DE481DF45E87198487C1289F48410D1AC569B56026071730A592CD4D770D0437CD4A33159F11DCCD9ED3510FB4B019889FD4C20D9124640C2FAF142483B60689D432FD806F56B6987361E59CA7EA946359671A0AA1A53007AB051A5BE2F6B83B8EA806092EDD3CD2C5A7C08C6B1725F305C3A7C38F7EB85C3A69495A054AFC244D56573D1AFD5FBD87D26D051878CDCD3D1F3A719719FDA00C2F951626AC73E589D273DE3D7970D501E0CCB93662D58F465B31E960721CDBB40E26F935261A321C71E21C7CCADC6756B50959669B3B5127A23005DCA8261DF281701649C86FC70EC81D9003286F45FBA9DDA91468FAE97C831CC79702AD5158E0BB68FCC1F9BC0E897F33701A76D7AA1687F3BBA2A1325954A034F12D64C5213179C4E838DFB1EF8790DEA44E08623EE529705E72F26802047F89DC54AB56A36428FFBF18C790980EAB09256181E5EC8E4C91237F7F5FC725754823A7CAE3F2D55EA6D0A725C23C8D1726CA28FDAFBD2F4254CD073CBB119348A7D3017B7EF95BAB0B28DB0E48861ABB2C8F79994A821064791E1BCD007C7F7F4E45A5B507779CE940C32C79B6B17E935763CEA310DA41DF2BE28771046B8A9F4437B60650055268295BE555F6D575BD450111DF71C74B8AEF01F5E09F4711A823FEACC72D9D28D2048F010675C99115E519D327A067F2945D670E3623A46533FC8B7B6910F510780E3D68797B690BCDA045048A40B41D0EF87E981F848BA14823180D1612541209D8BA0F9D7682875ADD9298941D9AB84C3B26C94A7539BB38EA48F2C56441FCD1C94B67DEA90893E3A4206D08E7D300328E460D10380D4D551AF79959E55AAD4DA342C2D9AB032516155C4D76BEEB8F69BC5555DCCEECEE6C5CF4074947119AAC73490AE803E0D1ABDB00F8E3CB032803A15BE4A53C37895410B47EE361AEA2921F972624500C222507334DDEC839A51879A35E2AC783A9562F1772808E4EAD400EA2A5579C83CFE2E46590ABE9B0270A4EE5BA54B928E561B3E4B370DA5FB10E8005C13403F087BA5C5DA30ECA57B81B119E20D1AA4A4072318463B368104A027DB3559B103BFE53417DB61BB5A0982922DBD20D01DFF19F795D097B4F7C5A4E060D9F6E11D9D050318FB60F5187D219B15BAAB6E500E4BF6A08CD4896D488E3EC8AC9F644EA4A8720ACCC77CE108C70A3ED2262F8A76A40024EFA3E923912B26F74B0CC203AB41326421E92FFEECF9B566380BBB1D1747CF059531144AE3F168DB1E538B1FA222EA12260B08E954B8185A97E6B2D0EFB352B7A0EC107964D014527ABCA77A31B3E1B4B4D54C01A8D8D3F7AD42491C3362F0A8BA1170F3122D7AFC6C5C3342B645D816CDF2A239512244C7A910747A7D3A22E3B2889CB06A06F4BD45BBE20BDF2AB5DBD530A80140B8E564D889195851D631973E08ABF527D5D04C00C63E5825F38E276A8D4637908BD376B926043DC1D7881D528A7C30D7BD7A9BA8D03ECE13AEEE1D4D1FB4468BE2CA07803426CDA00FB2AE5A57280F26009FBAB27D95D212E82A3755E3FF9E53F37165355BB5280D312E1777ACFA04D5C3D93D1A9D4323526926D788409589E4A7AD55A296ADCC880A2D3E6B57A7C1946950B2ABB95AE36E0600C877DEF2242EBC82724F7A470D70DC28A362401A8917DFAF1F0991B43E8F312C069D04295DD4F8A8B711C20F5BA2050643277A548052643739E8DD805136F88B6154000ABF5A2A3525651D8D458F1E216E8CF427C53FAF73DEB9F48D50D0B1B9A47DBB6C02631F4C99EB36ECA757AE74C3B0DE9FA921E1999F33447BE77A27E965B10A2D4EA15C1B5E6DE26AFA200E02636016902D45F47D75EFEB72EFAB7843968E47E62304BC041855455CE1061A650185F49D7657F6A22B7F6C213727EEE8E1B1FC9C6C3E6DA56064D1BD719404539F1CA4AA3DEBDF62099AEA2D7F86CEFA0EDFE2AC4D08B56AA87764DEB8AF01A2456473F82E70F0462E9096459BC2F5A1A6B6A9A32A0FB99E865BCDA60D1C0B3671B723A344E354FCB05723179CBA17DDB8B2E89CBBDD54EB4B7428D40A83AB53B46A5EB56CF9A54A7BE08186AC375485446D1CF3735EDA8AF696A482C4870230E90FC679632985813D9EC04BD1473F39D5DF4A0B3F455428E965B16E1040A6CF219FA13DF0DAE678CC3727C500B25B25ED513440FA6A06C0AB88FB6004D578D5AF520BA6947B7B7EB5D9ACD61B42198A2D7E6871F26CE2193DB2D875465B23971A48C9027264AE01D44E785E1FDCDE1EDCEC7A9641FD70C2D89CA01E95A9D3364E290D1B6D4E18328BF4022EB7797AA67492E7A8A49C6FAD882D303C348C64CA4642C4024B36ECEEA2087DB7596EA60CA0313C7EC8E3207BDDBE49A0BA54707ED41F051F2C65979E57041EB2F441C09D7E910A56CEA18F8E895F8CC5080799BFC807875B38282E50118CC15E4C1FCB4B1546A46D579191C70FBF7803005277AF4A77F1C39B307D9B63150BD2AFE9437517F44F5C93F2C50FBDEDAD6FFDFE5F82492697CC59C87BDFFB2E447E57E866258485D44843511F312AFC2313D1AB043309EA62ECC05DFCDC447A26B6BB4253A7B8B31903484E5813A8AB680E817B7BDCA99B6650F16704790AB3B56D2C30882397CC1650777845B19F1601C8BB8BEB8AA6994012A2BA03F183387283B971BEB94803E8CB76A356AF225BA06651A33E8C240572FB6A2C060C21F1CF0781C35D5BE7C1CB6491AA1D9428DDA5ABBE90118E8707F815B536D3C1B3B5D5BE04469B5FA191E62FF6C1F8925A4BCF92D6DC258A27473085AF1019FA535A056D7B69117D71EDD9F664BCE34E764021894C200E9942702B0250CA27EF51FAFE17E51E16F0346D04602C3282D7BE2AFFFE5FFCBF19C04EAD516D4B3A3B9C91309EC56E4EF8B94A7F2C0700D2C95316AC09D49B141228F604D7130406E108A9E5DD22FE4C9A54652A2F6C9A3CBC27A397C22E250520D799824F05825CADAEAEDD69B15752529BF883B65D91D5260DAF061589A554AB639117CE681BF445DEDD9334A3FE01F405B06885F4C1AD327BCAE9A3D2A3A3403D68691F0C93A5EE7B128A38FE9B286A44A212317405253F2E7AD874827A91288431FD17452D9B6B8A3E88F2606A6AA503D2007E9DF8FBD07F91F2D9B77D3F19B86BD7FEF3FDC41FB7C2803D6AA3E1771180D7E084BB555F6C337574BA85CFC4D6958D4AF0E988734EB89040411E380688930BF6B4696346D0E9251BB40D7959A422B459FCE5BE52EF49122C112F54C7A4A6774A32607D4D73FD3EFB890F7EF0E3CFD2C7B4A8250B2134B0C0560845DA6DE995FAB289172C1C29A4B2558373EFE32C7BAA59C41E0EB1C06CC4E08EB82245F48513A7883E5DC72A22D5EDC248F7F8159797FA3548DF1FEC8DF0757C45DDD28CEBCB7527C8113D0FB9540420051F2891449CB960999ECA9A6ED58DD6CC0790BE61D247C2E7B81946A721BA0C3480F20FEEB9E759F6AE10E125E5672FFF1A007C8AE683DE1B639328466400E903EC5E66A8635EAAB2910E0E1006E3CA50F491A27B340B08640FBC8F096321904AA2C1786300486F7B4F3EFA41D2A31F5762003FFE715AF8E8A3DB4F3EF92CE8E2A11B8694E774ACE9938F3EFAE474FAECA38F3E9B32839BBA250B5F426DACF3746C9E94BDB22CEBA628E5534DB848887FE9148DD37487C5937A9B8AE98373CFD1C7662AAA635EAC7D301C051D02F0531908490781014D5345C922E196269E721F02902E2C7C7D4C37E1EBA2D9012D7AD02F8CE1BA7A18B592DA202BDAA0A02517178876BF2C3E6455220AC03DF9A17B7E5AF1A5B5F7DCBFFBECEF5FFECCAFFD9EFCEA67BF8A8FF8EF7FF90F680D018805BFFB1C02D9742B468162007BC18C66F5E48609A598C02CC3DA031F406034050CC9F0C0FD1E307BF4E34F6A789085E11AA60B192129BF3CFB2C00FC38E84259A50A8A4DC9F449EBD127B5ED2304D53B5674052380B16C9AEE4F0D1014F56AD41400A384402B7B3AA9B1095AC93C3985DA9F3ECAFA14682CB645D1F4A023E482941123F48EA56F50E796400DA03721B0D680D5CECE3806505F3A51931D4A73D3A466135FA2A5F4AD71D4149012DD19A2E99B3EFB89478DEB975229DE8992F2C1BC4601F875F9B67BBE2C019996FFCB6FBFF7DE7BFFF9EFFFFE677FED87DEF9CE77FE10ADF925C4877FF99EB72900FF1956FFD5E7CDFECF62E97241F0678533EA8FD41E981411989DD748ECE949FD62C00AC4B987568C2AECDEA39F60F6E03C46049DE1B3582E358ED3654E743988C4F472AE7472BD9F30BFF1AC49605417283CC7DABCB8A698A0FBC59309035CD440DE00EA7786683AA979C23E0EA20F6F121FC76374228F881C6AE4BA74E6892CDA0BB210D5B6C92E98004CE4D092EBD7AF0701FE5CBF2E5F2A960CF41B485E97BC6D4AC805D41EAE5FFFDA7F82BEA63F90B0467F95F4755A24796305A0946FBDE7458997BF447A9BFFCBF7BEFD9FBC8B08FC2CE8BBFF87DEF9835F057F7FE9431FBA4703F82FEE7DFB3FFD27F7BE7DAFF8BE10431AC061BF4FC3C3E9D2D4F491D49C95547AA9EAF0540E4C119E7A4D0BF11E457BFA1314CD27DE534E13B9D5286EC0CBE240DAA62DC60A41F2642AC5B16CB85E7C3F15DC3C6B5CC5118014C00040FC2EEC14A27FBA5ED516A42C81385FB54315F5EFE95965FAEAE194B09CBC9C279BE13F1E3C3BE1A2E90BE161E32051877DDC02621C26B558AA12C48951E3A5E22E92DA110FC9A2B11664EE7CCF34479FE1DF559090E601F8477FA4DF400030622D112D09FEF06BF4F2B5FFF4B53FFCC3FFF487BC98857D9BFBD58BA0C802BEF59E3F0080FE5BA17BDEBA77EFBDCFC9CF5EBAF7DECFBEE79DEF4101BFFB9D4FBD780F3690CF6A00DF7EEFFFBBF7C9BF72EFBF0832CFE4CB29021049878360988A4FD347D9483436CB4DBB61B1A94D5ABE6397E8E30E900440DDB5D5278769B2C72A0490FED07C9E4010A1E1A0DF679F8CC08F5618CE0DFAF893FA0D56E8EAFA0CBD574D92EB162C0A8FA38E844032CE4658C838D427E981731AFC42BC4B6F30913E2C0F7053F3D0C8B12711528B90ACE97822091A9A4603EB68321AA1E853A7C38565F8E0684202C414141D2AEE223962DC63003D6AA6766C0520DCECE66E380B77E9B262171C13714300FE51B4B1292C0960F8083B5E199800CAEBC6D7F17D2C3200DC933F7DCF2FF9EA5687FF72CFDB7EF7DEBF2EBF7EE9F7FFEABD977EF09DBF27F7E467DFF943CFDEF3FDF2EB30940CE073F7FEB57FFAF67BFFCA27F7D23D5005D200F689356A0F445119616032423FE586C789534DB961451FE177713B1ED6A4DEAC3D097EF20F0988DBDB4DA963E28145CF7276F22C8B16A2FAD2E678FAC1C4042AFC7834871B3DCA30FB8076FEB2B10B1840B58190742FFBD25610A8F967A62E16D09D78639A87661C044BAB882797C48C6F799FC0F362FDD22ADD2BBAB4BC34F169AE0BBA6C685FCC90B2A8822C28C23A586130EAFB1C757802B0D34043BC7AC2AFB719405C27FE642C24350202C05D5E389BEDC6001EFD3110D1397AFDEB1A124387E80F00BC9D3F410460B774E850A9777D78F4F0D1CF5FFFFCD1D2D1DF08AE4F0FC3F3060F1C3EFA1B04D7756C72B8CFEF0837FD5DD2215AC45E5C01F855FFD97BDEFA22F38774E4431AC0BF76EFBF5300FE1E01F8D378A3017C1E11E05FFF5DA4C1E92EF802F125EBD2E40844A09F26103630AE3EB3DECD1C988C1DB5C1705B0C2DE4DC83321045A022F4C90F3E392D7A0EC93E00625D260D66F3494FDAD19F594F3EAADF701682005C311ECDB9B69DBEA34A7F970631F01B36FD2C2197E99ECF259A7F46FA4BAB53CF577C9DC5E29595402CC1414CB07A7985B01016CDC40542A503FACEAEFAC82DB0170EDC85DF858641AFDBF5A41FD85DBCF1A7B69CF8034F0040D7EFC193FB28601BA6B5D76BF6ECD900DEDCE9C3C6BAC350C2F0EE307FF54E08022F12CB93EBD70F1D15D7FDA3874C4E223180308DFC4A0AAE079F3CDC0561877B477B2FBDFFE8D7BFF7FDFEFBEB41F7E82198C0D6FBE4278F125C5D6CD239AC58048006D90C209B4002F0AA7545C204BEED3F127FC8355E6417FC7BDA05E3E8DEF3CEFBC905FBC0F46DFEDFFF8BFFC07FFBBDBF1B045FFDE4FC91149108C03111C735A20834DA62122F6CB8619EDC05C68E6B18668FFE44230B9453E66986C0E086A2B0F7E8C7A7A9D9CF13ED0720E78A608E0E9103472CA3EDD36EFBD1D809C76D1390A34659D1F07E93C0F8AB63150AC200EAC35213206D9D0D7D50E52F5972BA7A76754506CE1220719C70B22467C1EAD970B6BC4A0F2AC2B7601C6906249A94065F8D1C2FAF5868341AED60A1512FD765D8388A4FD366D913F2681700DAA2BFD0F7273E362AD724B66A343AB385F62CEC1DC58E9B8B214CA0ABEC5F7D99DA083709401700BEBF73BDFBBE43D7FBDF513EFC632F1DFA57878F6E132BA3EF28FFD8A19778E1A143FA0D62B8E050AF5B3AFCBE6E091EFB2BE5970E7FE52551096EFF12010883A804FB089BFAFEEBD3DB0FDF3E95D3DBCB7FFA775EDA397AF8FD875E3A14D0B22F61F5821A6CF555E97FFF3DF77CFF877EFAADDC1E8824E39FBCEBED9484FCE03B7FE8294E423E74CF5BE32424F8E4BD6FFF67FFECEDF7FE3F07BA60AA06CB05815C0FD63613C863F323D11CE64ADA0D3B5CB5DAF671C372041FAC20BF25AF1B1119077F05E60FDA1F4016B7B6EACE1BDE4BBAF3CD74C29140224F7AA5C6B626049A4D30DC2A388C537D5F2EAD3A5B4BAB6134FFCC74696B75390073C25A5D9DCC00A21FAE2ECF664B67E99E64FA8AB4967C21009F0FA3891D46C70600612882007FBD4A3BA43B7380E142430240DFB65DBF5EAAC3432F00ABC54180176F365B28053300E88B72B9170237959728DFCCDE9C00FCD203D71FF88D43D72B3FF69FFFC3E1970EFDC8577E843DEEEDEFFBCA8F1C7A090B3F8F852FD11BAC2500155F6414BB0FB06D2CC1A41180875A878FFE2601C8760E7AE07DFEFB1E08EAD8D1ED7A7787E4039DA0733BD62DE8B17E5F95F249C00708FF237553FF329CECBDFFFCF2EFFFFE533FF8CE77BEF3077F8F5D3356DEF3B61709C0E0936FBFF7DEB7FF726E18774E001071F940374520C0CA786192E1866D6CCE5445A286657D27E37AD4F0A2A23EE5812F5E54F8C514677403009A628074035524C309B376D6A8298627DED5F7B545762F3DBE8C5A05933B107C0FB1DDCA960CA3F967BA4BD616ACDFCAF26CB20A2E89BDD9F24AE02E6D59483AF82BAB6711E4C14FC33DC3D3C43E1800C23D13803E3DB78100F4C3467D71A000F4FC52AF842A24004B3180CD1A00F4A5556AD7E083118DFB35255448046070FBF5A3C1A13F1A3FF0BD7F12888CC9B041E5AFBCB47BE8252C3C8A852FD11BAC5500767B47FF088B766FFFCA4BB4E99F2000FF1000BE5FFE06BB600018C06A5E3FFCE2F5170F07875FA43D62775FC18EBE7E182B0EC393AB1810A2A6BE3F78F6CB2FE29CE9FDDEEFAA86E8CFCADFA38668C8FF2F580B007D6AEE09FCDFFD5DFF06668741DDA0CC7A7D6508F0A988C0C40D23838CC08A95DCD8019B08BBA3D30F65173F4EC19F113E66946149693E80BA5D3DB3BFC4094F26575563CC45EC05BFAE378CE6FDCF4601746B887E3B412CC7A54873BE49B8DAE02C2C1DE23E8017F84B2E5E91FF2E6DC140C24C49E1DA235BAC2CC316C063D35C70D845E48301E0D1A34787E102C0EB1E0D1BE5A347EBC0B07D9400741CBF53F6CB5D492EF8681D2E18DBDAB38559794016B05E178B22200067ADD3247A4826F85300BEBFF3C0F5437FF41DEFFF57DB4004A044008E0FBD84852F30806A6DE4827FA373E8A5DFA9EFC030EEBE343E2C1580FFC38BD783C304209948E42A3180520188DD1D7AE9B0C03A14480C20F7B5E1487840E0B53D1FE0FDDA7BDFFBDEA7B8D880E04FFF258488BF74CF87247295809E3274700008B10B862150568E3F151098B86158C1EC9CCA89B3859206187A7DF2D14F4C3373D2A7951E98A2152721E47B59BA7F73AC3D683A0D499CB031AC7C4C8F1E88A73650AE37F7630876639308E84016E23435FF4CB87D761ACC96B666D6D2AABBB2148678B59697E18597E8808465237F25EF2BE1909757B82130F2C1DA02860B20950084EF15F4F7681B00BAAE5F6BFACD1A6AB6D7AB9701202C4A080007E5DED120280DC25A3BD4009EDD3A1B01280840E922693824CBFFE177EA40E4F6DFF991EF2500BFF747B62B875E2AFF07F7012C1CE30DD6524372E730F0FAC53FD1F94504762FBD546F7DA5F5BD2F05B08B7FF887F0AE7DF2AE94A2049488D4E1826FBF7EFBFB5E820BFEDEF76D7F0776246F7F9FECDC0E936900C8935F45BA72ED291E12AD47C3ECD16085BFFC97A931F09A6A11881E69B7BF1839847CC9A788C0B83D90A5EF13218D47FC78C1582900A3F478037970FFD18F3FEBCEEB9354DA17C0581ABF64144FE686B0273FCE2FE96EA9F1F6C564220836853943AC271065C92DB852729F6AFE99708566785ADD0A67CECAF28A2B840FFCB67C196CD1AC33168D8E42F867498F26A3D9923C5E2FF2C10420CD9BB520A4AC93ED038001FEDA8BE5AE3FF1FC45D8BC459FC883338E019CD58F1E0D875857A985485108C0ADD9160148065050161C5CBF5D02C0F71F3EDC0222EFA79401FA9D3F5DF9D7875EC242E40EB7FF097AD36200E5274BF0A29D97C8971E7AE95F1D3E74F85F3380D7AFBFF8C0E1A3945F7033CC21E4CA9470B8D7DDDB0F7FC708BBFB939D329C33961DFD4DA4C10B575957AE5CD93647E55FB9CAF7A627C3B11022BE0D08FE471EAA754531B88FF8497ED4F64E2E3876B2EA4B9A4097866AEA31FA90D13B8AE8296E864903A85BA669104CFFE34F3E4BCDC9FB1EC78D01985366CEF9A9EA91BBA4E123C1075BC6D41AE4843376130BCD7382CDA2FBE6E87E8F891FCC026F3A55F347069403085E0F90E8050BE8A96D588C6DE92FA5C9B40FED8329090180E182F0DA8B360044AA1236816163A1EB7B7EE728802A77409EF08F3280140382B3C5A361BD2143B12082C9FA6C76F6747BAB7D1AC9B7AD01D47D1BBA1D9AB28A94A4D13E432D78DC88926933CC778F60016F482F12FBA6E0B5C301223ED30A0D20E0BB6A251395D38D1F1AC04BF4F10A08F4E58B2FBEE8137FBC24C760CC5C347AC7A6A13C701AFDD813E961B44420854D0ED60CE2CE6163EA360A06559A49B4E95748B5BA7024F8F1479FB4B9E1397D10197D83006659523D72D7347C2C987073261C7C83CDBBA97EAAC397EFA076F5FD1CA1CD7968E8237ED53D29D46E4C276EDB63E0CFAC8D78C518CBD5C811ED838584893BDA08F1A70E785AF4C9EAB45141D501BC72A303C4DBADE028006CF402DE767614A4B7EB61D506B8F57E30F98C7356272175675D01083E589AA91B0330DB6BA2618B45511E8146130DE2156B1F385CFA9F7E537DE62D12170CFCD46D6F10CD04A8007C37034864BAB83CBFAE9E96A4C40CE6984340A57183E095C800466D11D1386E1018701D3BB0803181A61FA62AD5C16002209B3F8E01A9E159A70CDF0E007337653FF909FA9B8CA8E42109A98DACECA09EB16D1A4012354FE3D203761EBF881175261BA2CB8E466323CE53C68E4F904F8137D43E983AAC7C9F9E562A7CE1A8193DE8060F5ABE473735793616622DAD0B00971A912A840CF1C10F43A43B9F3937E185B3D9E41C8D452000353B051D21AC1B04108BE94F24DA23D38677D12FD082F8FD029C2F8DB8BF469344EBBB93AEF2E0D30440BE655847886A9DD6559E183DCD9C293680DB495B4404E0C45283B3209ACD2751CAF5513008E4E280101FA8174E353C63BDDA590C60E1214489860EF258DBFCB7F888B5B2D6EC598E024D1FFC19DA37AF534A1E5AA644ADED26FD097D3CD840D1675A5A9A6654DF0BE05A7AC081B27BFC967F2BF2C190E3E1DBAAF9923E42FAF6490FE8DB542334E0DD198D6CC71E3369B842C478EC914B1793CF7CE6DC05E2525C38A706C34CE2E12D1AA59CD28361344EC6321656C4DCE5A46CAC49DFF5EBD7FF7FCE0D4086A6E66EE70000000049454E44AE426082, CAST(6730.9 AS Decimal(10, 1)))
GO
/****** Object:  Index [PK__aspnet_A__C93A4C9801B04258]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE4788EC8FC]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__309103313B806212]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4DF3BF8A10]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58870DA972]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC069E0F5A92]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 7/19/2016 12:46:41 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1B0D012F4D]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4DF8FE0A9D]    Script Date: 7/19/2016 12:46:41 AM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 7/19/2016 12:46:41 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 7/19/2016 12:46:41 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DEVICE_IMEI]    Script Date: 7/19/2016 12:46:41 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [DEVICE_IMEI] ON [dbo].[DEVICE]
(
	[IMEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
USE [master]
GO
ALTER DATABASE [MAINSYSTEM] SET  READ_WRITE 
GO
