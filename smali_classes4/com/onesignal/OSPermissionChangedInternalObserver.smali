.class Lcom/onesignal/OSPermissionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSPermissionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V
    .locals 2

    .line 48
    new-instance v0, Lcom/onesignal/OSPermissionStateChanges;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionStateChanges;-><init>()V

    .line 49
    sget-object v1, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    iput-object v1, v0, Lcom/onesignal/OSPermissionStateChanges;->from:Lcom/onesignal/OSPermissionState;

    .line 50
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSPermissionState;

    iput-object v1, v0, Lcom/onesignal/OSPermissionStateChanges;->to:Lcom/onesignal/OSPermissionState;

    .line 52
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSPermissionState;

    sput-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 55
    sget-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->persistAsFrom()V

    :cond_0
    return-void
.end method

.method static handleInternalChanges(Lcom/onesignal/OSPermissionState;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 38
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result p0

    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->setPermission(Z)V

    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 33
    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    return-void
.end method
