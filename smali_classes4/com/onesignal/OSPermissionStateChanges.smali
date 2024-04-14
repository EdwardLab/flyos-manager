.class public Lcom/onesignal/OSPermissionStateChanges;
.super Ljava/lang/Object;
.source "OSPermissionStateChanges.java"


# instance fields
.field from:Lcom/onesignal/OSPermissionState;

.field to:Lcom/onesignal/OSPermissionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/onesignal/OSPermissionState;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/onesignal/OSPermissionStateChanges;->from:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method public getTo()Lcom/onesignal/OSPermissionState;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/onesignal/OSPermissionStateChanges;->to:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "from"

    .line 47
    iget-object v2, p0, Lcom/onesignal/OSPermissionStateChanges;->from:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    .line 48
    iget-object v2, p0, Lcom/onesignal/OSPermissionStateChanges;->to:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionStateChanges;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
