.class public Lcom/google/appinventor/components/runtime/SQLite;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Tool developed by Carlos Pedroza to access the application\'s SQlite database."
    helpUrl = "https://docs.kodular.io/components/storage/sqlite/"
    iconName = "images/SQLite.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SQLite$a;,
        Lcom/google/appinventor/components/runtime/SQLite$c;,
        Lcom/google/appinventor/components/runtime/SQLite$b;
    }
.end annotation


# static fields
.field private static BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String; = "DATABASE.sqlite"


# instance fields
.field private HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:[Ljava/lang/String;

.field private Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Z

.field private TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/database/sqlite/SQLiteDatabase;

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:[Ljava/lang/String;

.field private pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

.field private rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 187
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

    .line 188
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 189
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    const-string p1, "SQLite"

    const-string v0, "SQLite created"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/appinventor/components/runtime/SQLite;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Z

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 145
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :try_start_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 149
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 150
    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 157
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 158
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 160
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 163
    :cond_3
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 164
    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    :cond_4
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    :try_start_5
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    if-eqz v0, :cond_5

    .line 169
    aget-object v0, v1, v4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 172
    :cond_5
    :goto_3
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 176
    :cond_6
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_4
    return-object v2

    :catchall_1
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 177
    throw v0
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-object v0, v2

    :catch_1
    const-string p1, "Error during managing the cursor"

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SQLite;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:[Ljava/lang/String;

    return-object p0
.end method

.method public static toCsvRow([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, ","

    if-ge v3, v1, :cond_0

    aget-object v5, p0, v3

    .line 564
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 567
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public AfterExecution(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterExecution"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AfterQuery(Ljava/util/List;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "AfterQuery"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ClearDatabase()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears the database to version 1. Use only while developing, this shouldn\'t be use on production."
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/appinventor/components/runtime/SQLite;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    const-string v1, "Database cleared"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public Delete(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled DELETE statement with specified parameters. Parameters: 1) String table - Name of the table. 2) String whereClause - Optional WHERE clause to apply when deleting (Example: \'ID = ?\'), pasing an empty a string will delete all rows. 3) List whereArgs - List with arguments for the WHERE clause. These arguments will be replaced by \'?\' in the whereClause. Returns the number of rows affected if a whereClause is passed in, 0 otherwise."
    .end annotation

    .line 332
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 333
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    const-string v1, ""

    .line 335
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 337
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 338
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Something went wrong deleting"

    .line 341
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public DisplayTables()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to retrieve list of existing tables from the database"
        userVisible = true
    .end annotation

    .line 554
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    const-string v1, "SELECT tbl_name FROM sqlite_master WHERE type=\'table\' and tbl_name != \'android_metadata\'"

    .line 557
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SQLite$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite$a;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public DropTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to drop / delete table from database. Please note that this event will DELETE any data you may have on the table and will then delete table from the database. After this operation is completed, it cannot be undone!"
        userVisible = true
    .end annotation

    .line 535
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "drop table if exists "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->RunQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 512
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the path to the database"
    .end annotation

    .line 235
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 236
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/database/sqlite/SQLiteDatabase;

    .line 237
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Insert(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)J
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled INSERT statement with specified parameters. Parameters: 1) String table - Name of the table. 2) YailList columns - List with the columns that will contain the data to be inserted in the database. 3) YailList values - List with the data to be inserted in the database. Returns the row ID of the newly inserted row, or -1 if an error occurred."
    .end annotation

    .line 360
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 361
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 363
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 364
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 365
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 366
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 367
    aget-object v3, p2, v2

    aget-object v4, p3, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 369
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 370
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-string p1, "Something went wrong inserting"

    .line 373
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public MultipleSQL(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Execute Multiple SQL Statement asynchronously and returns whether the transaction was successful in the AfterExecution Event Handler. Use it when returned data isn\'t needed. Parameter: 1 ) List of SQL."
    .end annotation

    .line 276
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

    .line 278
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$b;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/SQLite$b;-><init>(Lcom/google/appinventor/components/runtime/SQLite;B)V

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/SQLite$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Something went wrong MultipleSQL"

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public Query(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled QUERY statement with specified parameters. Parameters: 1) String table: Name of the table. 2) YailList columns: List of which columns to return, passing an empty list will return all columns. 3) String selection: Filter declaring which rows to return, formatted as an SQL WHERE clause, passing an empty string will return all rows. 4) YailList selectionArgs: List with the arguments that will replace onto \'?\' in the selection filter. 5) String groupBy: A filter declaring how to group rows, formatted as an SQL GROUP BY clause (excluding the GROUP BY itself), passing an empty string will cause the row to not be grouped. 6) String having: A filter declare which row groups to include if row grouping is being used, passing an empty string will cause all row groups to be included. 7) String orderBy: How to order the rows, formatted as an SQL ORDER BY clause (excluding the ORDER BY itself), passing an empty string will use the default sort order (unordered). 8) String limit: Limits the number of rows returned by the query, formatted as LIMIT clause, passing an empty string denotes no LIMIT clause. The result query is available in the AfterQuery event handler"
    .end annotation

    move-object v1, p0

    .line 471
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 472
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 473
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual/range {p4 .. p4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    move-object/from16 v2, p3

    .line 476
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v2, p5

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v2

    move-object/from16 v2, p5

    .line 477
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v2, p6

    move-object v8, v5

    goto :goto_1

    :cond_1
    move-object v8, v2

    move-object/from16 v2, p6

    .line 478
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v2, p7

    move-object v9, v5

    goto :goto_2

    :cond_2
    move-object v9, v2

    move-object/from16 v2, p7

    .line 479
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v2, p8

    move-object v10, v5

    goto :goto_3

    :cond_3
    move-object v10, v2

    move-object/from16 v2, p8

    .line 480
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v5

    goto :goto_4

    :cond_4
    move-object v0, v2

    .line 482
    :goto_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v13, 0x0

    move-object v2, v11

    move-object v3, p1

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    .line 487
    :try_start_0
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 488
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v12

    .line 489
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 491
    :try_start_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 496
    throw v0

    :catch_0
    const/4 v0, 0x0

    .line 495
    :catch_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v2, 0x0

    .line 497
    :goto_5
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 499
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/SQLite;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Z

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    const-string v4, "Done"

    invoke-static {v3, v4, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_5
    if-eqz v2, :cond_6

    .line 501
    invoke-virtual {p0, v12, v0}, Lcom/google/appinventor/components/runtime/SQLite;->AfterQuery(Ljava/util/List;I)V

    return-void

    :cond_6
    const-string v0, "Something went wrong querying"

    .line 503
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public RawQuery(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes the provided rawQuery Statement asynchronously. Returns a YailList with the selected data and number of records in the AfterQuery Event. Parameter: 1) String sql. 2) YailList selectionArgs: List with the arguments that will replace \'?\' in where clause in the query, to prevent SQL injections"
    .end annotation

    .line 302
    :try_start_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SQLite;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:[Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

    .line 304
    new-instance p1, Lcom/google/appinventor/components/runtime/SQLite$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/SQLite$c;-><init>(Lcom/google/appinventor/components/runtime/SQLite;B)V

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/SQLite$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Something went wrong RawQuery"

    .line 306
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public Replace(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)J
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled REPLACE OR INSERT INTO statement with specified parameters. Parameters: 1) String table - Name of the table. 2) YailList columns - List with the columns that will contain the data to be replaced in the database. 3) YailList values - List with the data to be replaced in the database. Returns the row ID of the newly replaced row, or -1 if an error occurred."
    .end annotation

    .line 392
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 393
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 396
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 397
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 398
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 399
    aget-object v3, p2, v2

    aget-object v4, p3, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 401
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-string p1, "Something went wrong replacing"

    .line 405
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public ReturnHeader(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 208
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    return-void
.end method

.method public ReturnHeader()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether the header row should be returned in the result of a Select statement."
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Z

    return v0
.end method

.method public RowsAffected()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the number of rows affected after a raw SQL has been executed using SQL Query."
    .end annotation

    .line 549
    iget v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

    return v0
.end method

.method public RunQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to run any valid SQLite query and return results in same block."
        userVisible = true
    .end annotation

    .line 518
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "explain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SQLite$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite$a;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    goto :goto_1

    .line 523
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SQLite$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite$a;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public SingleSQL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Execute a Single SQL Statement asynchronously and returns whether the transaction was successful in the AfterExecution Event Handler. Use it when returned data isn\'t needed. Parameter: 1) String sql."
    .end annotation

    .line 259
    :try_start_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Z

    .line 261
    new-instance p1, Lcom/google/appinventor/components/runtime/SQLite$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/appinventor/components/runtime/SQLite$b;-><init>(Lcom/google/appinventor/components/runtime/SQLite;B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/SQLite$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Something went wrong SingleSQL"

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public SuppressToast(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 227
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SQLite;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Z

    return-void
.end method

.method public SuppressToast()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether Success Toast should be suppressed."
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Z

    return v0
.end method

.method public Update(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled UPDATE statement with specified parameters. Parameters: 1) String table - Name of the table. 2) YailList columns - List with the columns that will contain the data to be inserted in the database. 3) YailList values - List with the data to be inserted in the database. 4) String whereClause - optional WHERE clause to apply when updating, leave an empty string to update all rows. Include ?s, which will be updated by the values from whereArgs. 5) YailList whereArgs - List with the columns that will contain the data to be updated in the database. Returns the row ID of the newly inserted row, or -1 if an error occurred."
    .end annotation

    .line 428
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 429
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 430
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 432
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 435
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 436
    aget-object v3, p2, v2

    aget-object v4, p3, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    .line 439
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    .line 440
    :cond_1
    invoke-virtual {v0, p1, v1, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 441
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Something went wrong updating"

    .line 444
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method
