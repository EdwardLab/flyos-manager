.class Lcom/onesignal/outcomes/OSOutcomeEventsCache;
.super Ljava/lang/Object;
.source "OSOutcomeEventsCache.java"


# static fields
.field private static final PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT:Ljava/lang/String; = "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"


# instance fields
.field private dbHelper:Lcom/onesignal/OneSignalDb;

.field private logger:Lcom/onesignal/OSLogger;

.field private preferences:Lcom/onesignal/OSSharedPreferences;


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    .line 38
    iput-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    .line 39
    iput-object p3, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-void
.end method

.method private addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lcom/onesignal/influence/model/OSInfluenceChannel;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;

    invoke-direct {v2, v1, p3}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;-><init>(Ljava/lang/String;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 227
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;",
            ">;",
            "Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object p2

    .line 238
    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-direct {p0, p1, v0, v1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    .line 239
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-direct {p0, p1, p2, v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized deleteOldOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 7

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v1, "outcome"

    const-string v2, "timestamp = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 69
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OneSignalDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getAllEventsToSend()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSOutcomeEventParams;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v2, "outcome"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    const-string v2, "notification_influence_type"

    .line 152
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    const-string v3, "iam_influence_type"

    .line 154
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v3

    const-string v4, "notification_ids"

    .line 158
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "[]"

    :goto_0
    const-string v5, "iam_ids"

    .line 160
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "[]"

    :goto_1
    const-string v6, "name"

    .line 164
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, "weight"

    .line 165
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    const-string v6, "timestamp"

    .line 166
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    new-instance v6, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v6}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    .line 170
    new-instance v7, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v7}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    .line 173
    sget-object v9, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v2

    aget v2, v9, v2

    const/4 v9, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v2, v13, :cond_4

    if-eq v2, v9, :cond_3

    move-object v2, v14

    goto :goto_2

    .line 179
    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 180
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v2, v14, v7}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_2

    .line 175
    :cond_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 176
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v2, v6, v14}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 190
    :goto_2
    sget-object v4, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v13, :cond_7

    if-eq v3, v9, :cond_5

    :goto_3
    move-object v9, v2

    goto :goto_4

    .line 196
    :cond_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    if-nez v2, :cond_6

    .line 197
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v2, v14, v7}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v7}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->setIndirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    goto :goto_3

    .line 192
    :cond_7
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    if-nez v2, :cond_8

    .line 193
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v2, v6, v14}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v6}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->setDirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    goto :goto_3

    .line 207
    :goto_4
    new-instance v2, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;FJ)V

    .line 208
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v2

    .line 210
    :try_start_2
    iget-object v3, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v4, "Generating JSONArray from notifications ids outcome:JSON Failed."

    invoke-interface {v3, v4, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNotCachedUniqueInfluencesForOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 277
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 281
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/influence/model/OSInfluence;

    .line 282
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 283
    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 288
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 289
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 290
    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v10

    new-array v13, v7, [Ljava/lang/String;

    const-string v14, "channel_influence_id = ? AND channel_type = ? AND name = ?"

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/String;

    aput-object v9, v15, v7

    .line 298
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v15, v11

    const/4 v10, 0x2

    aput-object p1, v15, v10

    .line 300
    iget-object v11, v1, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v12, "cached_unique_outcome"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "1"

    invoke-interface/range {v11 .. v19}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 312
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 313
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 317
    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluence;->copy()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v4

    .line 318
    invoke-virtual {v4, v5}, Lcom/onesignal/influence/model/OSInfluence;->setIds(Lorg/json/JSONArray;)V

    .line 319
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 325
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 326
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 323
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    .line 325
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_5

    goto :goto_2

    .line 329
    :cond_5
    :goto_3
    monitor-exit p0

    return-object v2

    :goto_4
    if-eqz v3, :cond_6

    .line 325
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 326
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUnattributedUniqueOutcomeEventsSentByChannel()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 51
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    const/4 v3, 0x0

    .line 50
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isOutcomesV2ServiceEnabled()Z
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 44
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 45
    invoke-interface {v2}, Lcom/onesignal/OSSharedPreferences;->getOutcomesV2KeyName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 43
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method declared-synchronized saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 8

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 81
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 82
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 83
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 85
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 92
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 93
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v0

    .line 96
    :cond_0
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 97
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 98
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 102
    :cond_1
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 106
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 107
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 110
    :cond_2
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 111
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 112
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 116
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "notification_ids"

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iam_ids"

    .line 119
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_influence_type"

    .line 121
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iam_influence_type"

    .line 122
    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    .line 124
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weight"

    .line 125
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getWeight()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "timestamp"

    .line 126
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    iget-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v0, "outcome"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v4}, Lcom/onesignal/OneSignalDb;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method saveUnattributedUniqueOutcomeEventsSentByChannel(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 58
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    .line 57
    invoke-interface {v0, v1, v2, p1}, Lcom/onesignal/OSSharedPreferences;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method declared-synchronized saveUniqueOutcomeEventParams(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 5

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal saveUniqueOutcomeEventParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    .line 256
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object p1

    .line 258
    invoke-direct {p0, v1, v2}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 259
    invoke-direct {p0, v1, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;

    .line 262
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "channel_influence_id"

    .line 264
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->getInfluenceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "channel_type"

    .line 265
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->getChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 266
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v3, "cached_unique_outcome"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v2}, Lcom/onesignal/OneSignalDb;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
