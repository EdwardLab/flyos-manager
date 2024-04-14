.class final Lcom/onesignal/GenerateNotification$1;
.super Ljava/lang/Object;
.source "GenerateNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gcmJson:Lorg/json/JSONObject;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    iput p3, p0, Lcom/onesignal/GenerateNotification$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v2, "alert"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v3, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-static {v3, v4, v1, v2}, Lcom/onesignal/GenerateNotification;->access$100(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    .line 134
    iget v3, p0, Lcom/onesignal/GenerateNotification$1;->val$notificationId:I

    invoke-static {v3}, Lcom/onesignal/GenerateNotification;->access$200(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "action_button"

    const/4 v5, 0x1

    .line 135
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "from_alert"

    .line 136
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    iget-object v4, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "onesignalData"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v4, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v6, "grp"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_0
    new-instance v4, Lcom/onesignal/GenerateNotification$1$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/onesignal/GenerateNotification$1$1;-><init>(Lcom/onesignal/GenerateNotification$1;Ljava/util/List;Landroid/content/Intent;)V

    .line 161
    new-instance v2, Lcom/onesignal/GenerateNotification$1$2;

    invoke-direct {v2, p0, v3}, Lcom/onesignal/GenerateNotification$1$2;-><init>(Lcom/onesignal/GenerateNotification$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 168
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    if-nez v3, :cond_1

    .line 170
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    if-ne v3, v5, :cond_2

    .line 172
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 174
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
