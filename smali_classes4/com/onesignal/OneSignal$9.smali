.class final Lcom/onesignal/OneSignal$9;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$emailAuthHash:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1506
    iput-object p1, p0, Lcom/onesignal/OneSignal$9;->val$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OneSignal$9;->val$emailAuthHash:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/onesignal/OneSignal$9;->val$email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1511
    iget-object v1, p0, Lcom/onesignal/OneSignal$9;->val$emailAuthHash:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1513
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1515
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$2100(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailAddress(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
