.class Lcom/onesignal/OneSignalStateSynchronizer;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;
    }
.end annotation


# static fields
.field private static userStateSynchronizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;",
            "Lcom/onesignal/UserStateSynchronizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 38
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    return-object v0
.end method

.method static clearLocation()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->clearLocation()V

    .line 88
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->clearLocation()V

    return-void
.end method

.method static getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;
    .locals 3

    .line 71
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    new-instance v2, Lcom/onesignal/UserStateEmailSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/UserStateEmailSynchronizer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/UserStateEmailSynchronizer;

    return-object v0
.end method

.method static getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;
    .locals 3

    .line 63
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    new-instance v2, Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/UserStatePushSynchronizer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/UserStatePushSynchronizer;

    return-object v0
.end method

.method static getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribed()Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSubscribed()Z

    move-result v0

    return v0
.end method

.method static getSyncAsNewSession()Z
    .locals 1

    .line 188
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 1

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object p0

    return-object p0
.end method

.method static getUserSubscribePreference()Z
    .locals 1

    .line 135
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserSubscribePreference()Z

    move-result v0

    return v0
.end method

.method static initUserState()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->initUserState()V

    .line 93
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->initUserState()V

    return-void
.end method

.method static logoutEmail()V
    .locals 1

    .line 197
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->logoutEmail()V

    .line 198
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->logoutEmail()V

    return-void
.end method

.method static persist()Z
    .locals 4

    .line 78
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->persist()Z

    move-result v0

    .line 79
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->persist()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method static readyToUpdate(Z)V
    .locals 1

    .line 247
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->readyToUpdate(Z)V

    .line 248
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->readyToUpdate(Z)V

    return-void
.end method

.method static refreshEmailState()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->refresh()V

    return-void
.end method

.method static resetCurrentState()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->resetCurrentState()V

    .line 161
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 164
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    const-wide/16 v0, -0xe4c

    .line 166
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    return-void
.end method

.method static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4

    .line 103
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tags"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 104
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStatePushSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 105
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStateEmailSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error attempting to serialize your tags into JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStatePushSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStateEmailSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 202
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    new-instance v1, Lcom/onesignal/OneSignalStateSynchronizer$1;

    invoke-direct {v1, v0, p2}, Lcom/onesignal/OneSignalStateSynchronizer$1;-><init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    .line 236
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v1}, Lcom/onesignal/UserStatePushSynchronizer;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;)V

    .line 239
    invoke-static {}, Lcom/onesignal/OneSignal;->hasEmailId()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 240
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v1}, Lcom/onesignal/UserStateEmailSynchronizer;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;)V

    :cond_0
    return-void
.end method

.method static setNewSession()V
    .locals 1

    .line 183
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->setNewSession()V

    .line 184
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    return-void
.end method

.method static setNewSessionForEmail()V
    .locals 1

    .line 193
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    return-void
.end method

.method static setPermission(Z)V
    .locals 1

    .line 139
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setPermission(Z)V

    return-void
.end method

.method static setSubscription(Z)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setSubscription(Z)V

    return-void
.end method

.method static syncHashedEmail(Ljava/lang/String;)V
    .locals 3

    .line 115
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "em_m"

    const-string v2, "MD5"

    .line 116
    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "em_s"

    const-string v2, "SHA-1"

    .line 117
    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStatePushSynchronizer;->syncHashedEmail(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static syncUserState(Z)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->syncUserState(Z)V

    .line 98
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->syncUserState(Z)V

    return-void
.end method

.method static updateDeviceInfo(Lorg/json/JSONObject;)V
    .locals 1

    .line 170
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 171
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 1

    .line 143
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    .line 144
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    return-void
.end method

.method static updatePushState(Lorg/json/JSONObject;)V
    .locals 1

    .line 175
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateState(Lorg/json/JSONObject;)V

    return-void
.end method
