.class Lcom/onesignal/UserStatePushSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStatePushSynchronizer.java"


# static fields
.field private static serverSuccess:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 10
    sput-boolean p0, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    return p0
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "email"

    .line 178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    :cond_0
    return-void
.end method

.method getExternalId(Z)Ljava/lang/String;
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStatePushSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->getSyncValues()Lcom/onesignal/ImmutableJSONObject;

    move-result-object v0

    const-string v1, "external_user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/ImmutableJSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 83
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 1

    .line 23
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0
.end method

.method getSubscribed()Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->isSubscribed()Z

    move-result v0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 4

    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?app_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onesignal/UserStatePushSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer$1;-><init>(Lcom/onesignal/UserStatePushSynchronizer;)V

    const-string v1, "CACHE_KEY_GET_TAGS"

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalRestClient;->getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 75
    :try_start_0
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    sget-boolean v1, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2}, Lcom/onesignal/UserState;->getSyncValues()Lcom/onesignal/ImmutableJSONObject;

    move-result-object v2

    const-string v3, "tags"

    invoke-static {v2, v3}, Lcom/onesignal/JSONUtils;->getJSONObjectWithoutBlankValues(Lcom/onesignal/ImmutableJSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;-><init>(ZLorg/json/JSONObject;)V

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserSubscribePreference()Z
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->getDependValues()Lcom/onesignal/ImmutableJSONObject;

    move-result-object v0

    const-string v1, "userSubscribePref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/ImmutableJSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method logoutEmail()V
    .locals 3

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    const-string v1, "logoutEmail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/UserState;->putOnDependValues(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .locals 1

    .line 18
    new-instance v0, Lcom/onesignal/UserStatePush;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStatePush;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "email"

    .line 184
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    :cond_0
    const-string v0, "identifier"

    .line 186
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    :cond_1
    return-void
.end method

.method protected scheduleSyncToServer()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStatePushSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    return-void
.end method

.method setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    const-string v1, "email_auth_hash"

    .line 123
    invoke-virtual {v0, v1, p2}, Lcom/onesignal/UserState;->putOnDependValues(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "email"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/onesignal/UserState;->generateJsonDiffFromIntoSyncValued(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPermission(Z)V
    .locals 2

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    const-string v1, "androidPermission"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onesignal/UserState;->putOnDependValues(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setSubscription(Z)V
    .locals 2

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    const-string v1, "userSubscribePref"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onesignal/UserState;->putOnDependValues(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateUserIdDependents(Ljava/lang/String;)V

    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "parent_player_id"

    const-string v1, "identifier"

    const-string v2, "androidPermission"

    const-string v3, "device_type"

    const-string v4, "subscribableStatus"

    const/4 v5, 0x0

    .line 94
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 95
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    :cond_0
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v6, v5}, Lcom/onesignal/UserState;->generateJsonDiffFromIntoSyncValued(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0, v5}, Lcom/onesignal/UserState;->generateJsonDiffFromIntoDependValues(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
