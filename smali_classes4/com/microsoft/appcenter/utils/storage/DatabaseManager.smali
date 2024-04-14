.class public Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    }
.end annotation


# static fields
.field public static final OPERATION_FAILED_FLAG:J = -0x1L

.field public static final PRIMARY_KEY:Ljava/lang/String; = "oid"

.field public static final SELECT_PRIMARY_KEY:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Ljava/lang/String;

.field private final mDefaultTable:Ljava/lang/String;

.field private final mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

.field private mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mSchema:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oid"

    .line 44
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "context",
            "database",
            "defaultTable",
            "version",
            "schema",
            "sqlCreateCommand",
            "listener"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSchema:Landroid/content/ContentValues;

    .line 97
    iput-object p7, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    .line 98
    new-instance p3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;

    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;-><init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    iput-object p3, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    return-object p0
.end method

.method private static buildValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "schema"
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 123
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 126
    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oid"

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 130
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    .line 132
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_2

    .line 133
    :cond_2
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_3

    .line 134
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_2

    .line 135
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 136
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 137
    :cond_4
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 138
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 139
    :cond_5
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_6

    .line 140
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 141
    :cond_6
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_7

    .line 142
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_2

    .line 143
    :cond_7
    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 144
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 146
    :cond_9
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method private delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "key",
            "value"
        }
    .end annotation

    const-string v0, " = ?"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 260
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, p1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v0, p3, p2

    const-string p2, "Failed to delete values that match condition=\"%s\" and values=\"%s\" from database %s."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppCenter"

    invoke-static {p3, p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method


# virtual methods
.method public buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSchema:Landroid/content/ContentValues;

    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 3

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Failed to clear the table."

    .line 276
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Failed to close the database."

    .line 290
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public delete(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "oid"

    invoke-direct {p0, v0, p2, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method

.method public deleteTheOldestRecord(Ljava/util/Set;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnsToReturn",
            "priorityColumn",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <= ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v1, "oid"

    .line 227
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 228
    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "AppCenter"

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 233
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted log id="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 236
    iget-object p3, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object p3, p1, v2

    const-string p3, "Failed to delete the oldest log from database %s."

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentSize()J
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "queryBuilder",
            "columns",
            "selectionArgs",
            "sortOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 319
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method getCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "queryBuilder",
            "columns",
            "selectionArgs",
            "sortOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 335
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 337
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Failed to open database. Trying to delete database (may be corrupted)."

    .line 354
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The database was successfully deleted."

    .line 358
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Failed to delete database."

    .line 360
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 3

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Could not get maximum database size."

    .line 424
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getRowCount()J
    .locals 3

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Failed to get row count of database."

    .line 303
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "AppCenter"

    const-string v1, "Failed to get next cursor value: "

    .line 176
    invoke-static {v0, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Landroid/content/ContentValues;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 200
    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    iget-object v4, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v4, v3, p1

    const-string p1, "Failed to insert values (%s) to database %s."

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "AppCenter"

    invoke-static {v3, p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catch_1
    move-exception p1

    .line 197
    throw p1
.end method

.method public setMaxSize(J)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxStorageSizeInBytes"
        }
    .end annotation

    const-string v0, "AppCenter"

    const/4 v1, 0x0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 388
    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide v3

    .line 391
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v5

    .line 392
    div-long v7, p1, v5

    .line 393
    rem-long v9, p1, v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_0

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    :cond_0
    mul-long v7, v7, v5

    const-string v2, " bytes."

    cmp-long v5, v3, v7

    if-eqz v5, :cond_1

    .line 400
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not change maximum database size to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes, current maximum size is "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :cond_1
    const-string v5, "Changed maximum database size to "

    cmp-long v6, p1, v3

    if-nez v6, :cond_2

    .line 404
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes (next multiple of page size)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Could not change maximum database size."

    .line 410
    invoke-static {v0, p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method setSQLiteOpenHelper(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 376
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method
