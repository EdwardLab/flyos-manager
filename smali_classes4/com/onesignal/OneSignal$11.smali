.class final Lcom/onesignal/OneSignal$11;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completionCallback:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

.field final synthetic val$externalId:Ljava/lang/String;

.field final synthetic val$externalIdAuthHash:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 0

    .line 1588
    iput-object p1, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OneSignal$11;->val$externalIdAuthHash:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/OneSignal$11;->val$completionCallback:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1591
    iget-object v0, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1592
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "External id can\'t be null, set an empty string to remove an external id"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1596
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->useUserIdAuth:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/OneSignal$11;->val$externalIdAuthHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1598
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "External Id authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1602
    :cond_2
    iget-object v0, p0, Lcom/onesignal/OneSignal$11;->val$externalIdAuthHash:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1604
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1607
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    iget-object v2, p0, Lcom/onesignal/OneSignal$11;->val$completionCallback:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    invoke-static {v1, v0, v2}, Lcom/onesignal/OneSignalStateSynchronizer;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1609
    iget-object v1, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "remove"

    goto :goto_0

    :cond_4
    const-string v1, "set"

    .line 1610
    :goto_0
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " external ID but encountered a JSON exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
