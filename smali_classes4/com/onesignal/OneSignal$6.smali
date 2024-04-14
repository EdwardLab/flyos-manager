.class final Lcom/onesignal/OneSignal$6;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalFullMessage:Ljava/lang/String;

.field final synthetic val$level:Lcom/onesignal/OneSignal$LOG_LEVEL;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 0

    .line 1246
    iput-object p1, p0, Lcom/onesignal/OneSignal$6;->val$level:Lcom/onesignal/OneSignal$LOG_LEVEL;

    iput-object p2, p0, Lcom/onesignal/OneSignal$6;->val$finalFullMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1249
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/onesignal/OneSignal$6;->val$level:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 1252
    invoke-virtual {v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OneSignal$6;->val$finalFullMessage:Ljava/lang/String;

    .line 1253
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
