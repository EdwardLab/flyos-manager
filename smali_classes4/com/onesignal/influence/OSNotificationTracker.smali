.class Lcom/onesignal/influence/OSNotificationTracker;
.super Lcom/onesignal/influence/OSChannelTracker;
.source "OSNotificationTracker.java"


# static fields
.field private static final DIRECT_TAG:Ljava/lang/String; = "direct"

.field private static final NOTIFICATIONS_IDS:Ljava/lang/String; = "notification_ids"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final TAG:Ljava/lang/String; = "com.onesignal.influence.OSNotificationTracker"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/onesignal/influence/OSChannelTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    return-void
.end method


# virtual methods
.method addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V
    .locals 2

    .line 80
    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "direct"

    .line 82
    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "notification_ids"

    .line 83
    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    iget-object p2, p0, Lcom/onesignal/influence/OSNotificationTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "Generating notification tracker addSessionData JSONObject "

    invoke-interface {p2, v0, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public cacheState()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez v1, :cond_0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->cacheNotificationInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 92
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->directId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->cacheNotificationOpenId(Ljava/lang/String;)V

    return-void
.end method

.method getChannelLimit()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getNotificationLimit()I

    move-result v0

    return v0
.end method

.method getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 1

    .line 47
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_id"

    return-object v0
.end method

.method getIndirectAttributionWindow()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getNotificationIndirectAttributionWindow()I

    move-result v0

    return v0
.end method

.method getLastChannelObjects()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getLastNotificationsReceivedData()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSNotificationTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Generating Notification tracker getLastChannelObjects JSONObject "

    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method initInfluencedTypeFromCache()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getNotificationCachedInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSNotificationTracker;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 70
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/onesignal/influence/OSNotificationTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSNotificationTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getCachedNotificationOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSNotificationTracker;->setDirectId(Ljava/lang/String;)V

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal NotificationTracker initInfluencedTypeFromCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSNotificationTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method saveChannelObjects(Lorg/json/JSONArray;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->saveNotifications(Lorg/json/JSONArray;)V

    return-void
.end method
