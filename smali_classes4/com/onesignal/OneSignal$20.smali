.class final Lcom/onesignal/OneSignal$20;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->setSubscription(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 2568
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$20;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2571
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1300(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onesignal/OneSignal$20;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSubscriptionState;->setUserSubscriptionSetting(Z)V

    .line 2572
    iget-boolean v0, p0, Lcom/onesignal/OneSignal$20;->val$enable:Z

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->setSubscription(Z)V

    return-void
.end method
