.class public Lcom/onesignal/NotificationOpenedActivity;
.super Landroid/app/Activity;
.source "NotificationOpenedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/onesignal/NotificationOpenedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->processFromContext(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/onesignal/NotificationOpenedActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/onesignal/NotificationOpenedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->processFromContext(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/onesignal/NotificationOpenedActivity;->finish()V

    return-void
.end method
