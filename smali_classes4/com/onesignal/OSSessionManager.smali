.class public Lcom/onesignal/OSSessionManager;
.super Ljava/lang/Object;
.source "OSSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSSessionManager$SessionListener;
    }
.end annotation


# static fields
.field private static final OS_END_CURRENT_SESSION:Ljava/lang/String; = "OS_END_CURRENT_SESSION"


# instance fields
.field private logger:Lcom/onesignal/OSLogger;

.field private sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

.field protected trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSessionManager$SessionListener;Lcom/onesignal/influence/OSTrackerFactory;Lcom/onesignal/OSLogger;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/onesignal/OSSessionManager;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    .line 41
    iput-object p2, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    .line 42
    iput-object p3, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSSessionManager;)Lcom/onesignal/OSSessionManager$SessionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/onesignal/OSSessionManager;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    return-object p0
.end method

.method private attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager attemptSessionUpgrade with entryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSTrackerFactory;->getChannelByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v1, p1}, Lcom/onesignal/influence/OSTrackerFactory;->getChannelsToResetByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Ljava/util/List;

    move-result-object v1

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v4

    .line 148
    sget-object v5, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez p2, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object p2

    .line 148
    :cond_0
    invoke-direct {p0, v0, v5, p2, v3}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move-object v4, v3

    :goto_0
    if-eqz p2, :cond_3

    .line 155
    iget-object p2, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OneSignal SessionManager attemptSessionUpgrade channel updated, search for ending direct influences on channels: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 156
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    .line 161
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->resetAndInitInfluence()V

    goto :goto_1

    .line 167
    :cond_3
    iget-object p2, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal SessionManager attemptSessionUpgrade try UNATTRIBUTED to INDIRECT upgrade"

    invoke-interface {p2, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    .line 170
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isUnattributed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isAppClose()Z

    move-result v4

    if-nez v4, :cond_4

    .line 176
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v4

    .line 177
    sget-object v5, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-direct {p0, v0, v5, v3, v1}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 185
    :cond_5
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trackers after update attempt: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/onesignal/OSSessionManager;->sendSessionEndingWithInfluences(Ljava/util/List;)V

    return-void
.end method

.method private sendSessionEndingWithInfluences(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager sendSessionEndingWithInfluences with influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSSessionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSSessionManager$1;-><init>(Lcom/onesignal/OSSessionManager;Ljava/util/List;)V

    const-string p1, "OS_END_CURRENT_SESSION"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 5

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/OSSessionManager;->willChangeSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSChannelTracker changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nfrom:\ninfluenceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", directNotificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", indirectNotificationIds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nto:\ninfluenceType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, p2}, Lcom/onesignal/influence/OSChannelTracker;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 209
    invoke-virtual {p1, p3}, Lcom/onesignal/influence/OSChannelTracker;->setDirectId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, p4}, Lcom/onesignal/influence/OSChannelTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    .line 211
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->cacheState()V

    .line 213
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trackers changed to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {p3}, Lcom/onesignal/influence/OSTrackerFactory;->getChannels()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private willChangeSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 2

    .line 222
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object p2

    .line 227
    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 234
    :cond_1
    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 235
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 237
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/onesignal/JSONUtils;->compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addSessionIds(Lorg/json/JSONObject;Ljava/util/List;)V
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

    .line 51
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager addSessionData with influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/onesignal/influence/OSTrackerFactory;->addSessionData(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 53
    iget-object p2, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneSignal SessionManager addSessionIds on jsonObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    return-void
.end method

.method getInfluences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getInfluences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getSessionInfluences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getSessionInfluences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method initSessionFromCache()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "OneSignal SessionManager initSessionFromCache"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->initFromCache()V

    return-void
.end method

.method onDirectInfluenceFromIAMClick(Ljava/lang/String;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onDirectInfluenceFromIAMClick messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    return-void
.end method

.method onDirectInfluenceFromIAMClickFinished()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "OneSignal SessionManager onDirectInfluenceFromIAMClickFinished"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->resetAndInitInfluence()V

    return-void
.end method

.method onDirectInfluenceFromNotificationOpen(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onDirectInfluenceFromNotificationOpen notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onInAppMessageReceived(Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onInAppMessageReceived messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSChannelTracker;->saveLastId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->resetAndInitInfluence()V

    return-void
.end method

.method onNotificationReceived(Ljava/lang/String;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onNotificationReceived notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSChannelTracker;->saveLastId(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method restartSessionIfNeeded(Lcom/onesignal/OneSignal$AppEntryAction;)V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSTrackerFactory;->getChannelsToResetByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Ljava/util/List;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignal SessionManager restartSessionIfNeeded with entryAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n channelTrackers: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    .line 62
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OneSignal SessionManager restartSessionIfNeeded lastIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v3

    .line 67
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 68
    sget-object v4, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    goto :goto_1

    .line 70
    :cond_1
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-direct {p0, v0, v2, v5, v5}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0, v1}, Lcom/onesignal/OSSessionManager;->sendSessionEndingWithInfluences(Ljava/util/List;)V

    return-void
.end method
