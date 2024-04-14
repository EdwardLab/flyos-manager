.class public Lcom/onesignal/OSPermissionSubscriptionState;
.super Ljava/lang/Object;
.source "OSPermissionSubscriptionState.java"


# instance fields
.field emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

.field permissionStatus:Lcom/onesignal/OSPermissionState;

.field subscriptionStatus:Lcom/onesignal/OSSubscriptionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmailSubscriptionStatus()Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method public getPermissionStatus()Lcom/onesignal/OSPermissionState;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method public getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "permissionStatus"

    .line 53
    iget-object v2, p0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "subscriptionStatus"

    .line 54
    iget-object v2, p0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "emailSubscriptionStatus"

    .line 55
    iget-object v2, p0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
