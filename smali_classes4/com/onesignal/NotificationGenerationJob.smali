.class Lcom/onesignal/NotificationGenerationJob;
.super Ljava/lang/Object;
.source "NotificationGenerationJob.java"


# instance fields
.field context:Landroid/content/Context;

.field isInAppPreviewPush:Z

.field jsonPayload:Lorg/json/JSONObject;

.field orgFlags:Ljava/lang/Integer;

.field orgSound:Landroid/net/Uri;

.field overriddenBodyFromExtender:Ljava/lang/CharSequence;

.field overriddenFlags:Ljava/lang/Integer;

.field overriddenSound:Landroid/net/Uri;

.field overriddenTitleFromExtender:Ljava/lang/CharSequence;

.field overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field restoring:Z

.field showAsAlert:Z

.field shownTimeStamp:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getAndroidId()Ljava/lang/Integer;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    return-object v0
.end method

.method getAndroidIdWithoutCreate()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method getApiNotificationId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getBody()Ljava/lang/CharSequence;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, "alert"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasExtender()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroidx/core/app/NotificationCompat$Extender;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNotificationToDisplay()Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object p1, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    return-void
.end method
