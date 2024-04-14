.class public Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
.super Ljava/lang/Object;
.source "OSOutcomeSourceBody.java"


# static fields
.field private static final IAM_IDS:Ljava/lang/String; = "in_app_message_ids"

.field private static final NOTIFICATION_IDS:Ljava/lang/String; = "notification_ids"


# instance fields
.field private inAppMessagesIds:Lorg/json/JSONArray;

.field private notificationIds:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->notificationIds:Lorg/json/JSONArray;

    .line 25
    iput-object p2, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->inAppMessagesIds:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getInAppMessagesIds()Lorg/json/JSONArray;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->inAppMessagesIds:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getNotificationIds()Lorg/json/JSONArray;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->notificationIds:Lorg/json/JSONArray;

    return-object v0
.end method

.method public setInAppMessagesIds(Lorg/json/JSONArray;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->inAppMessagesIds:Lorg/json/JSONArray;

    return-void
.end method

.method public setNotificationIds(Lorg/json/JSONArray;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->notificationIds:Lorg/json/JSONArray;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->notificationIds:Lorg/json/JSONArray;

    const-string v2, "notification_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->inAppMessagesIds:Lorg/json/JSONArray;

    const-string v2, "in_app_message_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSOutcomeSourceBody{notificationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->notificationIds:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inAppMessagesIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->inAppMessagesIds:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
