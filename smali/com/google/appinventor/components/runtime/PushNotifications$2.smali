.class final Lcom/google/appinventor/components/runtime/PushNotifications$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;->GetValue(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

.field final synthetic wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/PushNotifications$2;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 251
    new-instance v0, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PushNotifications$2$1;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications$2;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    return-void
.end method
