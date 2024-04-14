.class final Lcom/google/appinventor/components/runtime/SQLite$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SQLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/SQLite;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/SQLite;B)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite$b;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/Void;
    .locals 4

    .line 63
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 64
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 75
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    .line 76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 80
    :catch_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    return-object v0

    .line 82
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    throw v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1090
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SQLite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1091
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Done"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1093
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/SQLite;->AfterExecution(Z)V

    .line 1094
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    if-nez p1, :cond_1

    .line 1095
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    const-string v0, "Invalid SQL Statement"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
