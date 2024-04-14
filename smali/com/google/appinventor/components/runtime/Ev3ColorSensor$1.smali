.class final Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v0

    sget-object v3, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v4, ""

    if-ne v0, v3, :cond_2

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v0

    .line 71
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    goto/16 :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v0

    .line 83
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_3

    .line 84
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 91
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 92
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v0, v3, :cond_5

    .line 94
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gt v3, v4, :cond_7

    .line 95
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_0

    .line 97
    :cond_5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-le v3, v4, :cond_7

    .line 98
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    .line 101
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 105
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
