.class final Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GooglePlayServicesUpgradePrompt;->showUpdateGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 46
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$Builder;->mDisableGmsMissingPrompt:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onesignal_gms_missing_alert_text"

    const-string v2, "To receive push notifications please press \'Update\' to enable \'Google Play services\'."

    .line 51
    invoke-static {v0, v1, v2}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onesignal_gms_missing_alert_button_update"

    const-string v3, "Update"

    .line 52
    invoke-static {v0, v2, v3}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onesignal_gms_missing_alert_button_skip"

    const-string v4, "Skip"

    .line 53
    invoke-static {v0, v3, v4}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onesignal_gms_missing_alert_button_close"

    const-string v5, "Close"

    .line 54
    invoke-static {v0, v4, v5}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$2;

    invoke-direct {v5, p0, v0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$2;-><init>(Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$1;

    invoke-direct {v1, p0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$1;-><init>(Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;)V

    .line 62
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
