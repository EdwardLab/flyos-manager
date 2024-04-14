.class Lcom/onesignal/OSInAppMessageDummyController;
.super Lcom/onesignal/OSInAppMessageController;
.source "OSInAppMessageDummyController.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method


# virtual methods
.method addTriggers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method displayPreviewMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method getCurrentDisplayedInAppMessage()Lcom/onesignal/OSInAppMessage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0

    return-void
.end method

.method initWithCachedInAppMessages()V
    .locals 0

    return-void
.end method

.method isInAppMessageShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public messageTriggerConditionChanged()V
    .locals 0

    return-void
.end method

.method public messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V
    .locals 0

    return-void
.end method

.method onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method receivedInAppMessageJson(Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-void
.end method

.method removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method setInAppMessagingEnabled(Z)V
    .locals 0

    return-void
.end method
