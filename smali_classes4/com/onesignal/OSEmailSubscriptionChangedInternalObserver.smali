.class Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSEmailSubscriptionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/onesignal/OSEmailSubscriptionStateChanges;

    invoke-direct {v0}, Lcom/onesignal/OSEmailSubscriptionStateChanges;-><init>()V

    .line 42
    sget-object v1, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    iput-object v1, v0, Lcom/onesignal/OSEmailSubscriptionStateChanges;->from:Lcom/onesignal/OSEmailSubscriptionState;

    .line 43
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSEmailSubscriptionState;

    iput-object v1, v0, Lcom/onesignal/OSEmailSubscriptionStateChanges;->to:Lcom/onesignal/OSEmailSubscriptionState;

    .line 45
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSEmailSubscriptionState;

    sput-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 48
    sget-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->persistAsFrom()V

    :cond_0
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSEmailSubscriptionState;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V

    return-void
.end method
