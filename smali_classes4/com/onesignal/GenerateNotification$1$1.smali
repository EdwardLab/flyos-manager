.class Lcom/onesignal/GenerateNotification$1$1;
.super Ljava/lang/Object;
.source "GenerateNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GenerateNotification$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/GenerateNotification$1;

.field final synthetic val$finalButtonIds:Ljava/util/List;

.field final synthetic val$finalButtonIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/onesignal/GenerateNotification$1;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iput-object p2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIds:Ljava/util/List;

    iput-object p3, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    add-int/lit8 p2, p2, 0x3

    .line 147
    iget-object p1, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 149
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object v0, v0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "actionId"

    .line 150
    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIds:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    iget-object p2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    const-string v0, "onesignalData"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object p1, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object p1, p1, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object p1, p1, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :catchall_0
    :goto_0
    return-void
.end method
