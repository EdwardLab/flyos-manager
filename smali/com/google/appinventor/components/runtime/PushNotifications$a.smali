.class final Lcom/google/appinventor/components/runtime/PushNotifications$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/OneSignal$NotificationOpenedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/PushNotifications$a;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V

    return-void
.end method


# virtual methods
.method public final notificationOpened(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 4

    .line 330
    iget-object v0, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v0, v0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    .line 331
    iget-object v1, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v1, v1, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v1, v1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    .line 332
    iget-object p1, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object p1, p1, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object p1, p1, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    .line 334
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PushNotifications$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v3

    :cond_2
    invoke-virtual {v2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/PushNotifications;->NotificationOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
