.class final Lcom/onesignal/OneSignal$13;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "create notification failed"

    .line 1816
    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1817
    iget-object p3, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    const-string p2, "{\"error\": \"HTTP no response error\"}"

    .line 1822
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1825
    :catchall_0
    :try_start_1
    iget-object p1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance p2, Lorg/json/JSONObject;

    const-string p3, "{\"error\": \"Unknown response!\"}"

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1827
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1800
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP create notification success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1801
    iget-object v0, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v0, :cond_2

    .line 1803
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errors"

    .line 1804
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1805
    iget-object p1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-interface {p1, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1809
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
