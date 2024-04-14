.class final Lcom/google/appinventor/components/runtime/NxtColorSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 96
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Z

    if-eqz v1, :cond_7

    .line 97
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChanged(I)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    goto/16 :goto_1

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 109
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Z

    if-eqz v1, :cond_7

    .line 111
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 112
    sget v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:I

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 114
    sget v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:I

    goto :goto_0

    .line 116
    :cond_3
    sget v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->yTV71ZsokI1cWCTQFF82CwpCeeVC4RDXPNMp7sNxPH2Pf25hYzf1pp0KzV43yJiS:I

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 120
    sget v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRange()V

    .line 123
    :cond_4
    sget v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->yTV71ZsokI1cWCTQFF82CwpCeeVC4RDXPNMp7sNxPH2Pf25hYzf1pp0KzV43yJiS:I

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRange()V

    .line 126
    :cond_5
    sget v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$a;->g16lHC6pRQoq0FWou0AzFVTKqyDojHRb8fcaYD4yg7tKEFm8ChlIf2uMkTa8F6nE:I

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRange()V

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    .line 135
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method
