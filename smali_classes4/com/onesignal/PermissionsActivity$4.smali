.class final Lcom/onesignal/PermissionsActivity$4;
.super Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
.source "PermissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PermissionsActivity;->startPrompt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;-><init>()V

    return-void
.end method


# virtual methods
.method public available(Landroid/app/Activity;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onesignal/PermissionsActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/PermissionsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 169
    sget v0, Lcom/onesignal/R$anim;->onesignal_fade_in:I

    sget v1, Lcom/onesignal/R$anim;->onesignal_fade_out:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
