.class final Lcom/google/appinventor/components/runtime/BatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BatteryManager;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 169
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v0, "health"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "plugged"

    .line 170
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 172
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v3, "USB"

    invoke-static {p1, v3}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 175
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v3, "AC"

    invoke-static {p1, v3}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v3, "UNKNOWN"

    invoke-static {p1, v3}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "present"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p1, v3}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;Z)Z

    const-string p1, "scale"

    .line 183
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 185
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v4, "level"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    div-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;I)I

    .line 186
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v0, "status"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;I)I

    .line 187
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    .line 188
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "NOT_CHARGING"

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "IS_CHARGING"

    .line 187
    :goto_3
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "technology"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v0, "temperature"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;F)F

    .line 195
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BatteryManager;

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;F)F

    return-void
.end method
