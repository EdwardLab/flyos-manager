.class final Lcom/google/appinventor/components/runtime/PushNotifications$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/OneSignal$GetTagsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PushNotifications$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications$2;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tagsAvailable(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/PushNotifications$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/PushNotifications$2;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PushNotifications$2;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/PushNotifications;->GotValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/PushNotifications$2;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/PushNotifications$2;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Ljava/lang/String;

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/PushNotifications$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/PushNotifications$2;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/PushNotifications;->GotValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
