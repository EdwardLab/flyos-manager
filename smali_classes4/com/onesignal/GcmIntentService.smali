.class public Lcom/onesignal/GcmIntentService;
.super Landroid/app/IntentService;
.source "GcmIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GcmIntentService"

    .line 47
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/onesignal/GcmIntentService;->setIntentRedelivery(Z)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v1, v0}, Lcom/onesignal/BundleCompatBundle;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 65
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
