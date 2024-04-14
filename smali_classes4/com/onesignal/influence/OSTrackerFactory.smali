.class public Lcom/onesignal/influence/OSTrackerFactory;
.super Ljava/lang/Object;
.source "OSTrackerFactory.java"


# instance fields
.field private dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

.field private trackers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/onesignal/influence/OSChannelTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/OSLogger;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-direct {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;-><init>(Lcom/onesignal/OSSharedPreferences;)V

    iput-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    .line 27
    iget-object p1, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/onesignal/influence/OSInAppMessageTracker;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/onesignal/influence/OSInAppMessageTracker;

    iget-object v2, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-direct {v1, v2, p2}, Lcom/onesignal/influence/OSInAppMessageTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/onesignal/influence/OSNotificationTracker;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/onesignal/influence/OSNotificationTracker;

    iget-object v2, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-direct {v1, v2, p2}, Lcom/onesignal/influence/OSNotificationTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addSessionData(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/model/OSInfluence;

    .line 37
    sget-object v1, Lcom/onesignal/influence/OSTrackerFactory$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/onesignal/influence/OSChannelTracker;->addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getChannelByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Lcom/onesignal/influence/OSChannelTracker;
    .locals 0

    .line 81
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isNotificationClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/OSChannelTracker;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getChannelsToResetByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OneSignal$AppEntryAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/OSChannelTracker;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isAppClose()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isAppOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/onesignal/influence/OSInAppMessageTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    return-object v0
.end method

.method public getInfluences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/OSChannelTracker;

    .line 55
    invoke-virtual {v2}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/onesignal/influence/OSNotificationTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    return-object v0
.end method

.method public getSessionInfluences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/OSChannelTracker;

    .line 64
    instance-of v3, v2, Lcom/onesignal/influence/OSInAppMessageTracker;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v2}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public initFromCache()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/OSChannelTracker;

    .line 48
    invoke-virtual {v1}, Lcom/onesignal/influence/OSChannelTracker;->initInfluencedTypeFromCache()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveInfluenceParams(Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->saveInfluenceParams(Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    return-void
.end method
