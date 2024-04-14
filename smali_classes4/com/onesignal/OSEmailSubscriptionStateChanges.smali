.class public Lcom/onesignal/OSEmailSubscriptionStateChanges;
.super Ljava/lang/Object;
.source "OSEmailSubscriptionStateChanges.java"


# instance fields
.field from:Lcom/onesignal/OSEmailSubscriptionState;

.field to:Lcom/onesignal/OSEmailSubscriptionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionStateChanges;->from:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method public getTo()Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionStateChanges;->to:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "from"

    .line 48
    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionStateChanges;->from:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    .line 49
    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionStateChanges;->to:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionStateChanges;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
