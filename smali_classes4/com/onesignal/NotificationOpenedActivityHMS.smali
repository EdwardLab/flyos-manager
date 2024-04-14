.class public Lcom/onesignal/NotificationOpenedActivityHMS;
.super Landroid/app/Activity;
.source "NotificationOpenedActivityHMS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private processIntent()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/onesignal/NotificationOpenedActivityHMS;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/NotificationOpenedActivityHMS;->processOpen(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/onesignal/NotificationOpenedActivityHMS;->finish()V

    return-void
.end method

.method private processOpen(Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lcom/onesignal/NotificationPayloadProcessorHMS;->handleHMSNotificationOpenIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/onesignal/NotificationOpenedActivityHMS;->processIntent()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-direct {p0}, Lcom/onesignal/NotificationOpenedActivityHMS;->processIntent()V

    return-void
.end method
