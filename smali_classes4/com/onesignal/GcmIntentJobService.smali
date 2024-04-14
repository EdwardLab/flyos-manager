.class public Lcom/onesignal/GcmIntentJobService;
.super Lcom/onesignal/JobIntentService;
.source "GcmIntentJobService.java"


# static fields
.field public static final BUNDLE_EXTRA:Ljava/lang/String; = "Bundle:Parcelable:Extras"

.field private static final JOB_ID:I = 0x1e3f2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/onesignal/JobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 26
    const-class v0, Lcom/onesignal/GcmIntentJobService;

    const v1, 0x1e3f2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/onesignal/GcmIntentJobService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isStopped()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->isStopped()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreate()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2

    .line 19
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "Bundle:Parcelable:Extras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/onesignal/BundleCompat;->setBundle(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 22
    invoke-static {p0, v0, p1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    return-void
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/onesignal/JobIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopCurrentWork()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setInterruptIfStopped(Z)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->setInterruptIfStopped(Z)V

    return-void
.end method
