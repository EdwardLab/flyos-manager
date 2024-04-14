.class final Lcom/google/appinventor/components/runtime/SQLite$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SQLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
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

.field private R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/SQLite;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/SQLite;B)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite$c;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/Void;
    .locals 3

    .line 108
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$a;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 109
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SQLite$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/SQLite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/util/List;

    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    .line 118
    :try_start_1
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    return-object v0

    .line 120
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    throw v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SQLite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Done"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1129
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Z

    if-eqz p1, :cond_1

    .line 1130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/util/List;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/SQLite;->AfterQuery(Ljava/util/List;I)V

    return-void

    .line 1132
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SQLite;

    const-string v0, "Invalid SQL Statement"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
