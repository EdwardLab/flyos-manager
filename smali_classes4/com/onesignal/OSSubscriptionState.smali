.class public Lcom/onesignal/OSSubscriptionState;
.super Ljava/lang/Object;
.source "OSSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accepted:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userSubscriptionSetting:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    if-eqz p1, :cond_0

    .line 44
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-static {p1, p2, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 46
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PLAYER_ID_LAST"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 48
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PUSH_TOKEN_LAST"

    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-static {p1, p2, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserSubscribePreference()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 55
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    :goto_0
    return-void
.end method

.method private setAccepted(Z)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v0

    .line 113
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    .line 114
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result p1

    if-eq v0, p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/onesignal/OSSubscriptionState;->setAccepted(Z)V

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1

    .line 142
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method compare(Lcom/onesignal/OSSubscriptionState;)Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    iget-boolean v1, p1, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 135
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v2, p1, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v1, v2

    .line 136
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    iget-boolean p1, p1, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eq v0, p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x1

    :goto_4
    return p1
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribed()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSubscriptionSetting()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    return v0
.end method

.method persistAsFrom()V
    .locals 3

    .line 123
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    const-string v2, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    const-string v2, "ONESIGNAL_PLAYER_ID_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    const-string v2, "ONESIGNAL_PUSH_TOKEN_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    const-string v2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method setPushToken(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 90
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method setUserId(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 77
    :goto_0
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 79
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method setUserSubscriptionSetting(Z)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "userId"

    if-eqz v1, :cond_0

    .line 153
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 155
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "pushToken"

    if-eqz v1, :cond_1

    .line 158
    :try_start_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 160
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "userSubscriptionSetting"

    .line 162
    iget-boolean v2, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "subscribed"

    .line 163
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
