.class final Lcom/google/appinventor/components/runtime/PushNotifications$5;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

.field private synthetic J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

.field private synthetic iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Ljava/lang/Boolean;
    .locals 4

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/PushNotifications;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 366
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Push Notifications"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PushNotifications$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 360
    check-cast p1, Ljava/lang/Boolean;

    .line 1372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/PushNotifications;->SendMessageDone(Z)V

    return-void
.end method
