.class final Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D

    move-result-wide v3

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v0

    int-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRange()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v0

    int-to-double v7, v0

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRange()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v0

    int-to-double v7, v0

    cmpg-double v0, v5, v7

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v0

    int-to-double v7, v0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_4

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRange()V

    .line 85
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
