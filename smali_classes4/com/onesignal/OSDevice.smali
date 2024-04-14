.class public Lcom/onesignal/OSDevice;
.super Ljava/lang/Object;
.source "OSDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailUserId()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->getPushToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationEnabled()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 53
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v0

    return v0
.end method

.method public isUserSubscribed()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->getUserSubscriptionSetting()Z

    move-result v0

    return v0
.end method
