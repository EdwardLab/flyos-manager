.class final Lcom/onesignal/OneSignal$4;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator$RegisteredHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerForPushToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 1035
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1036
    invoke-static {}, Lcom/onesignal/OneSignal;->access$900()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1037
    invoke-static {}, Lcom/onesignal/OneSignal;->access$900()I

    move-result v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$1000(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1038
    :cond_0
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$902(I)I

    goto :goto_0

    .line 1040
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->access$900()I

    move-result v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$1000(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$902(I)I

    .line 1043
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1202(Z)Z

    .line 1045
    sget-object p2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$1300(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onesignal/OSSubscriptionState;->setPushToken(Ljava/lang/String;)V

    .line 1046
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()V

    return-void
.end method
