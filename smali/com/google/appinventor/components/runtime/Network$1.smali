.class final Lcom/google/appinventor/components/runtime/Network$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Network;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 119
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Z)Z

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Network;)Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Network$1$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Network$1$1;-><init>(Lcom/google/appinventor/components/runtime/Network$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    const-string p2, "NONE"

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Network$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Network;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Network$1$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Network$1$2;-><init>(Lcom/google/appinventor/components/runtime/Network$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Network"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
