.class abstract Lcom/onesignal/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field public static final DEVICE_TYPE_ANDROID:I = 0x1

.field public static final DEVICE_TYPE_EMAIL:I = 0xb

.field public static final DEVICE_TYPE_FIREOS:I = 0x2

.field public static final DEVICE_TYPE_HUAWEI:I = 0xd

.field private static final LOCATION_FIELDS:[Ljava/lang/String;

.field private static final LOCATION_FIELDS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field static final PUSH_STATUS_FIREBASE_FCM_ERROR_IOEXCEPTION:I = -0xb

.field static final PUSH_STATUS_FIREBASE_FCM_ERROR_MISC_EXCEPTION:I = -0xc

.field static final PUSH_STATUS_FIREBASE_FCM_ERROR_SERVICE_NOT_AVAILABLE:I = -0x9

.field static final PUSH_STATUS_FIREBASE_FCM_INIT_ERROR:I = -0x8

.field public static final PUSH_STATUS_HMS_API_EXCEPTION_OTHER:I = -0x1b

.field public static final PUSH_STATUS_HMS_ARGUMENTS_INVALID:I = -0x1a

.field public static final PUSH_STATUS_HMS_TOKEN_TIMEOUT:I = -0x19

.field static final PUSH_STATUS_INVALID_FCM_SENDER_ID:I = -0x6

.field static final PUSH_STATUS_MISSING_ANDROID_SUPPORT_LIBRARY:I = -0x3

.field static final PUSH_STATUS_MISSING_FIREBASE_FCM_LIBRARY:I = -0x4

.field public static final PUSH_STATUS_MISSING_HMS_PUSHKIT_LIBRARY:I = -0x1c

.field static final PUSH_STATUS_NO_PERMISSION:I = 0x0

.field static final PUSH_STATUS_OUTDATED_ANDROID_SUPPORT_LIBRARY:I = -0x5

.field static final PUSH_STATUS_OUTDATED_GOOGLE_PLAY_SERVICES_APP:I = -0x7

.field public static final PUSH_STATUS_SUBSCRIBED:I = 0x1

.field static final PUSH_STATUS_UNSUBSCRIBE:I = -0x2

.field public static final TAGS:Ljava/lang/String; = "tags"


# instance fields
.field private dependValues:Lorg/json/JSONObject;

.field private persistKey:Ljava/lang/String;

.field private syncValues:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    const-string v1, "lat"

    const-string v2, "long"

    const-string v3, "loc_acc"

    const-string v4, "loc_type"

    const-string v5, "loc_bg"

    const-string v6, "loc_time_stamp"

    const-string v7, "ad_id"

    .line 46
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/UserState;->LOCATION_FIELDS:[Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/onesignal/UserState;->LOCATION_FIELDS_SET:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/onesignal/UserState;->loadState()V

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 101
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method private static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getGroupChangeFields(Lcom/onesignal/UserState;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/UserState;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "loc_bg"

    const-string v1, "loc_time_stamp"

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v3, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v2}, Lcom/onesignal/UserState;->putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    .line 135
    sget-object p1, Lcom/onesignal/UserState;->LOCATION_FIELDS_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadState()V
    .locals 5

    .line 254
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/UserState;->setDependValues(Lorg/json/JSONObject;)V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    const-string v1, "CURRENT_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "ONESIGNAL_SUBSCRIPTION"

    invoke-static {v0, v3, v1}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 267
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "ONESIGNAL_SYNCED_SUBSCRIPTION"

    invoke-static {v0, v3, v1}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    const/4 v0, 0x1

    .line 275
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "subscribableStatus"

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userSubscribePref"

    .line 277
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v3}, Lcom/onesignal/UserState;->putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 282
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v1}, Lcom/onesignal/UserState;->setDependValues(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    :catch_1
    :goto_2
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 294
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 295
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "GT_REGISTRATION_ID"

    invoke-static {v1, v3, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    .line 297
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 299
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 302
    :goto_3
    invoke-virtual {p0, v0}, Lcom/onesignal/UserState;->setSyncValues(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 160
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract addDependFields()V
.end method

.method clearLocation()V
    .locals 5

    const-string v0, "loc_time_stamp"

    const-string v1, "loc_bg"

    .line 211
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "lat"

    const/4 v4, 0x0

    .line 212
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "long"

    .line 213
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "loc_acc"

    .line 214
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "loc_type"

    .line 215
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v2}, Lcom/onesignal/UserState;->putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    .line 220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v2}, Lcom/onesignal/UserState;->putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method deepClone(Ljava/lang/String;)Lcom/onesignal/UserState;
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Lcom/onesignal/UserState;->newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;

    move-result-object p1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserState;->getDependValuesCopy()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 112
    invoke-virtual {p0}, Lcom/onesignal/UserState;->getSyncValuesCopy()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "external_user_id_auth_hash"

    const-string v1, "email_auth_hash"

    const-string v2, "app_id"

    .line 230
    invoke-virtual {p0}, Lcom/onesignal/UserState;->addDependFields()V

    invoke-virtual {p1}, Lcom/onesignal/UserState;->addDependFields()V

    .line 231
    invoke-direct {p0, p1}, Lcom/onesignal/UserState;->getGroupChangeFields(Lcom/onesignal/UserState;)Ljava/util/Set;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5, v3}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "{}"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v5

    .line 239
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 240
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_1
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 242
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_2
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 244
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 246
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p1
.end method

.method generateJsonDiffFromDependValues(Lcom/onesignal/UserState;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/UserState;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method generateJsonDiffFromIntoDependValues(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v1, p1, v1, p2}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method generateJsonDiffFromIntoSyncValued(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v1, p1, v1, p2}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 372
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method generateJsonDiffFromSyncValued(Lcom/onesignal/UserState;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/UserState;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 378
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDependValues()Lcom/onesignal/ImmutableJSONObject;
    .locals 2

    .line 55
    :try_start_0
    new-instance v0, Lcom/onesignal/ImmutableJSONObject;

    invoke-virtual {p0}, Lcom/onesignal/UserState;->getDependValuesCopy()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onesignal/ImmutableJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    new-instance v0, Lcom/onesignal/ImmutableJSONObject;

    invoke-direct {v0}, Lcom/onesignal/ImmutableJSONObject;-><init>()V

    return-object v0
.end method

.method getDependValuesCopy()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSyncValues()Lcom/onesignal/ImmutableJSONObject;
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Lcom/onesignal/ImmutableJSONObject;

    invoke-virtual {p0}, Lcom/onesignal/UserState;->getSyncValuesCopy()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onesignal/ImmutableJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    new-instance v0, Lcom/onesignal/ImmutableJSONObject;

    invoke-direct {v0}, Lcom/onesignal/ImmutableJSONObject;-><init>()V

    return-object v0
.end method

.method public getSyncValuesCopy()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract isSubscribed()Z
.end method

.method mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "tags"

    .line 331
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserState;->getSyncValuesCopy()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tags"

    .line 337
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 339
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "tags"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 344
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v0, "tags"

    .line 346
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 352
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 353
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 354
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 358
    :cond_5
    sget-object p1, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "{}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 360
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v0, "tags"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 362
    :cond_6
    iget-object p2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v0, "tags"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :goto_2
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 365
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method abstract newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;
.end method

.method persistState()V
    .locals 4

    .line 309
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v1, p1, v1, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_1

    .line 322
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v1, p2, v1, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {p0, p2, v0}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/onesignal/UserState;->persistState()V

    :cond_3
    return-void
.end method

.method putOnDependValues(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method putOnSyncValues(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeFromDependValues(Ljava/lang/String;)V
    .locals 2

    .line 178
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeFromDependValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeFromSyncValues(Ljava/lang/String;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeFromSyncValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setDependValues(Lorg/json/JSONObject;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iput-object p1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 3

    .line 193
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "lat"

    .line 194
    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    .line 195
    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->log:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loc_acc"

    .line 196
    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->accuracy:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loc_type"

    .line 197
    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0}, Lcom/onesignal/UserState;->putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "loc_bg"

    .line 201
    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->bg:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loc_time_stamp"

    .line 202
    iget-object p1, p1, Lcom/onesignal/LocationController$LocationPoint;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lcom/onesignal/UserState;->putValues(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSyncValues(Lorg/json/JSONObject;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/onesignal/UserState;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iput-object p1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserState{persistKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dependValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
