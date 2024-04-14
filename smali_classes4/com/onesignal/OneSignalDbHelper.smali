.class Lcom/onesignal/OneSignalDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OneSignalDbHelper.java"

# interfaces
.implements Lcom/onesignal/OneSignalDb;


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "OneSignal.db"

.field static final DATABASE_VERSION:I = 0x8

.field private static final DB_OPEN_RETRY_BACKOFF:I = 0x190

.field private static final DB_OPEN_RETRY_MAX:I = 0x5

.field private static final FLOAT_TYPE:Ljava/lang/String; = " FLOAT"

.field private static final INTEGER_PRIMARY_KEY_TYPE:Ljava/lang/String; = " INTEGER PRIMARY KEY"

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final LOCK:Ljava/lang/Object;

.field protected static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')),expire_time TIMESTAMP);"

.field private static final SQL_CREATE_IN_APP_MESSAGE_ENTRIES:Ljava/lang/String; = "CREATE TABLE in_app_message (_id INTEGER PRIMARY KEY,display_quantity INTEGER,last_display INTEGER,message_id TEXT,displayed_in_session INTEGER,click_ids TEXT);"

.field protected static final SQL_INDEX_ENTRIES:[Ljava/lang/String;

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static final TIMESTAMP_TYPE:Ljava/lang/String; = " TIMESTAMP"

.field private static logger:Lcom/onesignal/OSLogger;

.field private static outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

.field private static sInstance:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    const-string v1, "CREATE INDEX notification_notification_id_idx ON notification(notification_id); "

    const-string v2, "CREATE INDEX notification_android_notification_id_idx ON notification(android_notification_id); "

    const-string v3, "CREATE INDEX notification_group_id_idx ON notification(group_id); "

    const-string v4, "CREATE INDEX notification_collapse_id_idx ON notification(collapse_id); "

    const-string v5, "CREATE INDEX notification_created_time_idx ON notification(created_time); "

    const-string v6, "CREATE INDEX notification_expire_time_idx ON notification(expire_time); "

    .line 98
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->SQL_INDEX_ENTRIES:[Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/onesignal/OSLogWrapper;

    invoke-direct {v0}, Lcom/onesignal/OSLogWrapper;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    .line 109
    new-instance v0, Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-direct {v0}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 123
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->getDbVersion()I

    move-result v0

    const-string v1, "OneSignal.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static cleanOutcomeDatabaseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "outcome"

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static getDbVersion()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;
    .locals 2

    .line 128
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    if-nez v0, :cond_1

    .line 129
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignalDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    .line 132
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 134
    :cond_1
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    return-object p0
.end method

.method private getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 147
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 157
    :goto_0
    throw v1

    .line 159
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 169
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 173
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    mul-int/lit16 v2, v1, 0x190

    int-to-long v2, v2

    .line 177
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 176
    :cond_0
    throw v2

    .line 180
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized internalOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 336
    :try_start_0
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 339
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    .line 342
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    .line 345
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV5(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    if-ne p2, v0, :cond_4

    .line 349
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeFromV5ToV6(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    const/4 v0, 0x7

    if-ge p2, v0, :cond_5

    .line 352
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV7(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const/16 v0, 0x8

    if-ge p2, v0, :cond_6

    .line 355
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV8(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    .line 356
    :cond_6
    :goto_2
    monitor-exit p0

    return-void
.end method

.method static recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;
    .locals 7

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long v2, v0, v2

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created_time > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dismissed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0 AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "opened"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_summary"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    sget-object v2, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "OS_RESTORE_TTL_FILTER"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND expire_time > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v4
.end method

.method private static safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 413
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 415
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static upgradeFromV5ToV6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 399
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-virtual {v0, p0}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;->upgradeOutcomeTableRevision1To2(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE notification ADD COLUMN collapse_id TEXT;"

    .line 360
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX notification_group_id_idx ON notification(group_id); "

    .line 364
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE notification ADD COLUMN expire_time TIMESTAMP;"

    .line 370
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "UPDATE notification SET expire_time = created_time + 259200;"

    .line 375
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX notification_expire_time_idx ON notification(expire_time); "

    .line 381
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_ids TEXT,name TEXT,session TEXT,params TEXT,timestamp TIMESTAMP);"

    .line 385
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static upgradeToV5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE cached_unique_outcome_notification (_id INTEGER PRIMARY KEY,notification_id TEXT,name TEXT);"

    .line 390
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 392
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->upgradeFromV5ToV6(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static upgradeToV7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE in_app_message (_id INTEGER PRIMARY KEY,display_quantity INTEGER,last_display INTEGER,message_id TEXT,displayed_in_session INTEGER,click_ids TEXT);"

    .line 403
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized upgradeToV8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    monitor-enter p0

    .line 407
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;->upgradeOutcomeTableRevision2To3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 408
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;->upgradeCacheOutcomeTableRevision1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 287
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 291
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 304
    :try_start_3
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_0
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 302
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_1
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception v2

    .line 296
    :try_start_4
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error under delete transaction under table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with whereClause: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and whereArgs: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 304
    :try_start_6
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_4
    move-exception p1

    .line 302
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_5
    move-exception v2

    .line 294
    :try_start_7
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting on table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with whereClause: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and whereArgs: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_6
    move-exception p1

    .line 304
    :try_start_9
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_7
    move-exception p1

    .line 302
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_1

    .line 308
    :cond_0
    :goto_2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :goto_3
    if-eqz v1, :cond_1

    .line 300
    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_8
    move-exception p2

    .line 304
    :try_start_b
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {p3, v1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_9
    move-exception p2

    .line 302
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {p3, v1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :cond_1
    :goto_4
    throw p1

    :catchall_1
    move-exception p1

    .line 308
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    .line 203
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 207
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 208
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 216
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 220
    :try_start_3
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_0
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 218
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_1
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception v2

    .line 212
    :try_start_4
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error under inserting transaction under table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with nullColumnHack: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and values: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    .line 216
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 220
    :try_start_6
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_4
    move-exception p1

    .line 218
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_5
    move-exception v2

    .line 210
    :try_start_7
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting on table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with nullColumnHack: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and values: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_0

    .line 216
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_6
    move-exception p1

    .line 220
    :try_start_9
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_7
    move-exception p1

    .line 218
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_1

    .line 224
    :cond_0
    :goto_2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :goto_3
    if-eqz v1, :cond_1

    .line 216
    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_8
    move-exception p2

    .line 220
    :try_start_b
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {p3, v1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_9
    move-exception p2

    .line 218
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {p3, v1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :cond_1
    :goto_4
    throw p1

    :catchall_1
    move-exception p1

    .line 224
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 235
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 243
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 247
    :try_start_3
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_0
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 245
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_1
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception v2

    .line 239
    :try_start_4
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error under inserting or throw transaction under table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with nullColumnHack: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and values: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    .line 243
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 247
    :try_start_6
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_4
    move-exception p1

    .line 245
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_5
    move-exception v2

    .line 237
    :try_start_7
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting or throw on table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with nullColumnHack: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and values: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_0

    .line 243
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_6
    move-exception p1

    .line 247
    :try_start_9
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_7
    move-exception p1

    .line 245
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_1

    .line 251
    :cond_0
    :goto_2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :goto_3
    if-eqz v1, :cond_1

    .line 243
    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_8
    move-exception p2

    .line 247
    :try_start_b
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {p3, v1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_9
    move-exception p2

    .line 245
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {p3, v1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :cond_1
    :goto_4
    throw p1

    :catchall_1
    move-exception p1

    .line 251
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')),expire_time TIMESTAMP);"

    .line 313
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_influence_type TEXT,iam_influence_type TEXT,notification_ids TEXT,iam_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);"

    .line 314
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE cached_unique_outcome (_id INTEGER PRIMARY KEY,channel_influence_id TEXT,channel_type TEXT,name TEXT);"

    .line 315
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE in_app_message (_id INTEGER PRIMARY KEY,display_quantity INTEGER,last_display INTEGER,message_id TEXT,displayed_in_session INTEGER,click_ids TEXT);"

    .line 316
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->SQL_INDEX_ENTRIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 318
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 421
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p3, "SDK version rolled back! Clearing OneSignal.db as it could be in an unexpected state."

    invoke-static {p2, p3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-string p2, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 p3, 0x0

    .line 423
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 425
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 428
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "sqlite_"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 433
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 436
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 439
    invoke-virtual {p0, p1}, Lcom/onesignal/OneSignalDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    .line 436
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 437
    throw p1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 324
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal Database onUpgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 326
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OneSignalDbHelper;->internalOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p3, "Error in upgrade, migration may have already run! Skipping!"

    invoke-static {p2, p3, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 187
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 196
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setOutcomeTableProvider(Lcom/onesignal/outcomes/OSOutcomeTableProvider;)V
    .locals 0

    .line 115
    sput-object p1, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 257
    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 260
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 265
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 273
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 277
    :try_start_3
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_0
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 275
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    :goto_1
    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p2

    .line 269
    :try_start_4
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error under update transaction under table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with whereClause: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and whereArgs: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    .line 273
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 277
    :try_start_6
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_4
    move-exception p1

    .line 275
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_5
    move-exception p2

    .line 267
    :try_start_7
    sget-object v3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error updating on table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with whereClause: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and whereArgs: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    .line 273
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_6
    move-exception p1

    .line 277
    :try_start_9
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_0

    :catch_7
    move-exception p1

    .line 275
    sget-object p2, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Error closing transaction! "

    goto :goto_1

    .line 281
    :cond_1
    :goto_2
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return v0

    :goto_3
    if-eqz v2, :cond_2

    .line 273
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_8
    move-exception p2

    .line 277
    :try_start_b
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p4, "Error closing transaction! "

    invoke-interface {p3, p4, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_9
    move-exception p2

    .line 275
    sget-object p3, Lcom/onesignal/OneSignalDbHelper;->logger:Lcom/onesignal/OSLogger;

    const-string p4, "Error closing transaction! "

    invoke-interface {p3, p4, p2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    :cond_2
    :goto_4
    throw p1

    :catchall_1
    move-exception p1

    .line 281
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1

    :cond_3
    :goto_5
    return v0
.end method
