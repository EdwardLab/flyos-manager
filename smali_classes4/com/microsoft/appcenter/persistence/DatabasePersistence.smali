.class public Lcom/microsoft/appcenter/persistence/DatabasePersistence;
.super Lcom/microsoft/appcenter/persistence/Persistence;
.source "DatabasePersistence.java"


# static fields
.field private static final COLUMN_DATA_TYPE:Ljava/lang/String; = "type"

.field static final COLUMN_GROUP:Ljava/lang/String; = "persistence_group"

.field static final COLUMN_LOG:Ljava/lang/String; = "log"

.field static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"

.field static final COLUMN_TARGET_KEY:Ljava/lang/String; = "target_key"

.field static final COLUMN_TARGET_TOKEN:Ljava/lang/String; = "target_token"

.field static final CREATE_LOGS_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"

.field private static final CREATE_PRIORITY_INDEX_LOGS:Ljava/lang/String; = "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

.field static final DATABASE:Ljava/lang/String; = "com.microsoft.appcenter.persistence"

.field private static final DROP_LOGS_SQL:Ljava/lang/String; = "DROP TABLE `logs`"

.field private static final GET_SORT_ORDER:Ljava/lang/String; = "priority DESC, oid"

.field private static final PAYLOAD_FILE_EXTENSION:Ljava/lang/String; = ".json"

.field private static final PAYLOAD_LARGE_DIRECTORY:Ljava/lang/String; = "/appcenter/database_large_payloads"

.field static final PAYLOAD_MAX_SIZE:I = 0x1e6666

.field static final SCHEMA:Landroid/content/ContentValues;

.field static final TABLE:Ljava/lang/String; = "logs"

.field private static final VERSION:I = 0x6

.field static final VERSION_TIMESTAMP_COLUMN:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

.field private final mLargePayloadDirectory:Ljava/io/File;

.field private mLargePayloadsSize:J

.field final mPendingDbIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingDbIdentifiersGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "version",
            "schema"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lcom/microsoft/appcenter/persistence/Persistence;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    .line 219
    new-instance v0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    new-instance v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;

    invoke-direct {v8, p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;-><init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V

    const-string v3, "com.microsoft.appcenter.persistence"

    const-string v4, "logs"

    const-string v7, "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    .line 241
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/appcenter/database_large_payloads"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 246
    invoke-direct {p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->checkLargePayloadFilesAndCollectTheirSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    return-void
.end method

.method private checkLargePayloadFilesAndCollectTheirSize()J
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "AppCenter"

    .line 663
    new-instance v2, Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;

    invoke-direct {v2, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;-><init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V

    .line 670
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    .line 671
    invoke-direct {v0, v3, v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 672
    iget-object v5, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    return-wide v6

    .line 676
    :cond_0
    array-length v8, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    aget-object v10, v5, v9

    .line 677
    invoke-virtual {v10, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 681
    :cond_1
    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 684
    :try_start_0
    invoke-static {v13}, Lcom/microsoft/appcenter/utils/storage/FileManager;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v14, v14

    .line 689
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 690
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    add-long/2addr v6, v13

    goto :goto_2

    .line 693
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot delete redundant large payload file with id "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 697
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Lasted large payload file with name "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " has been deleted."

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 686
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "A file was found whose name does not match the pattern of naming log files: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    return-wide v6
.end method

.method private deleteLog(Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupLargePayloadDirectory",
            "id"
        }
    .end annotation

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 377
    iget-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    return-void
.end method

.method private deleteTheOldestLog(I)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "oid"

    .line 640
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "persistence_group"

    .line 641
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v3, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v4, "priority"

    invoke-virtual {v3, v0, v4, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->deleteTheOldestRecord(Ljava/util/Set;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 646
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 647
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 648
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    .line 652
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 653
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const-string v4, "AppCenter"

    if-eqz p1, :cond_2

    .line 654
    iget-wide v5, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Large payload file with id "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " has been deleted. "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " KB of memory has been freed."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete large payload file with id "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0
.end method

.method private static getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "logJ",
            "targetToken",
            "type",
            "targetKey",
            "priority"
        }
    .end annotation

    .line 260
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "persistence_group"

    .line 261
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "log"

    .line 262
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "target_token"

    .line 263
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "type"

    .line 264
    invoke-virtual {v0, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "target_key"

    .line 265
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "priority"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private varargs getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "selectionArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    sget-object v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 709
    iget-object p2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {p2, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object p2

    const-string v1, "oid"

    .line 710
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 711
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 714
    :cond_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 715
    throw p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "AppCenter"

    const-string v1, "Failed to get corrupted ids: "

    .line 717
    invoke-static {p2, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private getStoredDataSize()J
    .locals 4

    .line 629
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCurrentSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clearPendingLogState()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 607
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "AppCenter"

    const-string v1, "Cleared pending log states"

    .line 608
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->close()V

    return-void
.end method

.method public countLogs(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 436
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    const-string v1, "persistence_group = ?"

    .line 437
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v3, "COUNT(*)"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 p1, 0x0

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 443
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 446
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AppCenter"

    const-string v2, "Failed to get logs count: "

    .line 448
    invoke-static {v0, v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public deleteLogs(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting all logs from the Persistence database for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 409
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 412
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 420
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v2, "persistence_group"

    invoke-virtual {v0, v2, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " logs."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public deleteLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "id"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting logs from the Persistence database for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "The IDs for deleting log(s) is/are:"

    .line 385
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 389
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 391
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 394
    iget-object v2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteLogsThatNotFitMaxSize()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v0

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getStoredDataSize()J

    move-result-wide v1

    iget-object v3, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getMaxSize()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 622
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteTheOldestLog(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    :cond_1
    return-void
.end method

.method getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "databaseId"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "pausedTargetKeys",
            "limit",
            "outLogs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to get "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " logs from the Persistence database for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppCenter"

    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v5

    const-string v0, "persistence_group = ?"

    .line 462
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 467
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    const-string v9, "?,"

    .line 468
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v8, " AND "

    .line 471
    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "target_key NOT IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v6, p2

    .line 473
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 478
    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 479
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-virtual/range {p0 .. p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/String;

    .line 481
    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 485
    :try_start_0
    iget-object v0, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v12, "priority DESC, oid"

    invoke-virtual {v0, v5, v11, v10, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v12, "Failed to get logs: "

    .line 487
    invoke-static {v4, v12, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v11

    :goto_1
    const/4 v12, 0x0

    :cond_2
    :goto_2
    if-eqz v7, :cond_9

    .line 489
    iget-object v0, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    .line 490
    invoke-virtual {v0, v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_9

    if-ge v12, v3, :cond_9

    const-string v13, "oid"

    .line 492
    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-nez v13, :cond_4

    const-string v0, "Empty database record, probably content was larger than 2MB, need to delete as it\'s now corrupted."

    .line 501
    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {v1, v5, v10}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 504
    iget-object v14, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 507
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v1, v9, v14, v15}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Empty database corrupted empty record deleted, id="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 516
    :cond_4
    iget-object v14, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    :try_start_1
    const-string v14, "log"

    .line 521
    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    .line 523
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v1, v9, v14, v15}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v14

    .line 524
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read payload file "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {v14}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    goto :goto_3

    .line 527
    :cond_5
    new-instance v0, Lorg/json/JSONException;

    const-string v11, "Log payload is null and not stored as a file."

    invoke-direct {v0, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    const-string v11, "type"

    .line 532
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v15

    invoke-interface {v15, v14, v11}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v11

    const-string v14, "target_token"

    .line 536
    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 538
    iget-object v14, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->decrypt(Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getDecryptedData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/microsoft/appcenter/ingestion/models/Log;->addTransmissionTarget(Ljava/lang/String;)V

    .line 543
    :cond_7
    invoke-interface {v6, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v11, "Cannot deserialize a log in the database"

    .line 548
    invoke-static {v4, v11, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_9
    if-eqz v7, :cond_a

    .line 557
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 563
    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 564
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 565
    invoke-direct {v1, v9, v7, v8}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    goto :goto_6

    :cond_b
    const-string v0, "Deleted logs that cannot be deserialized"

    .line 567
    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_c
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_d

    const-string v0, "No logs found in the Persistence database at the moment"

    .line 572
    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    .line 577
    :cond_d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " log(s) with an ID, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "The SID/ID pairs for returning log(s) is/are:"

    .line 581
    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 583
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 584
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 587
    iget-object v8, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/appcenter/ingestion/models/Log;

    move-object/from16 v9, p4

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-interface {v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->getSid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 600
    :cond_e
    iget-object v4, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "log",
            "group",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    const-string v3, "AppCenter"

    .line 282
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing a log to the Persistence database for log type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    const v6, 0x1e6666

    if-lt v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 291
    :goto_0
    instance-of v8, v0, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    if-nez v6, :cond_1

    .line 295
    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 296
    invoke-static {v8}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    iget-object v11, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    move-object v14, v10

    goto :goto_1

    .line 293
    :cond_1
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v2, "Log is larger than 1992294 bytes, cannot send to OneCollector."

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v9

    move-object v14, v12

    .line 302
    :goto_1
    iget-object v8, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v8}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getMaxSize()J

    move-result-wide v10

    const-wide/16 v16, -0x1

    cmp-long v8, v10, v16

    if-eqz v8, :cond_b

    int-to-long v7, v5

    cmp-long v15, v10, v7

    if-lez v15, :cond_a

    const/4 v13, 0x0

    .line 310
    invoke-static {v2, v13}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v2

    if-eqz v6, :cond_3

    move-object v5, v9

    goto :goto_2

    :cond_3
    move-object v5, v4

    .line 311
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-wide v0, v10

    move-object/from16 v10, p2

    move-object v11, v5

    move v15, v2

    :try_start_1
    invoke-static/range {v10 .. v15}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    const-string v10, "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log."

    if-eqz v6, :cond_5

    .line 312
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getStoredDataSize()J

    move-result-wide v11

    add-long/2addr v11, v7

    cmp-long v13, v11, v0

    if-lez v13, :cond_5

    .line 313
    invoke-static {v3, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v10, v0

    move-object/from16 v1, p0

    .line 314
    :try_start_3
    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteTheOldestLog(I)J

    move-result-wide v12

    cmp-long v0, v12, v16

    if-eqz v0, :cond_4

    move-wide v0, v10

    goto :goto_3

    .line 315
    :cond_4
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v2, "Failed to clear space for new log record."

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    move-object/from16 v1, p0

    :cond_6
    :goto_4
    if-nez v9, :cond_7

    .line 321
    :try_start_4
    iget-object v0, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0, v5}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->put(Landroid/content/ContentValues;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 323
    :catch_0
    :try_start_5
    invoke-static {v3, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteTheOldestLog(I)J

    move-result-wide v7

    cmp-long v0, v7, v16

    if-nez v0, :cond_6

    .line 325
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    goto :goto_4

    .line 329
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v7, v16

    if-eqz v0, :cond_9

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored a log to the Persistence database for log type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with databaseId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    const-string v0, "Payload is larger than what SQLite supports, storing payload in a separate file."

    .line 334
    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 335
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 339
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v0, v5, v6}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 341
    :try_start_6
    invoke-static {v0, v4}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    iget-wide v4, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Store extra "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " KB as a separated payload file."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 350
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Payload written to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 347
    iget-object v2, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 348
    throw v0

    .line 352
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLogsThatNotFitMaxSize()V

    .line 353
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 330
    :cond_9
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store a log to the Persistence database for log type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7

    .line 307
    :cond_a
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log is too large ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes) to store in database. Current maximum database size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_b
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v2, "Failed to store a log to the Persistence database."

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v0

    .line 357
    :goto_6
    new-instance v2, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v3, "Cannot save large payload in a file."

    invoke-direct {v2, v3, v0}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    .line 355
    :goto_7
    new-instance v2, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v3, "Cannot convert to JSON string."

    invoke-direct {v2, v3, v0}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMaxStorageSize(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxStorageSizeInBytes"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->setMaxSize(J)Z

    move-result p1

    .line 273
    invoke-virtual {p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLogsThatNotFitMaxSize()V

    return p1
.end method
