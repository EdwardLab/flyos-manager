.class final Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtSoundSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 63
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Z

    if-eqz v1, :cond_5

    .line 65
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    sget v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:I

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 68
    sget v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:I

    goto :goto_0

    .line 70
    :cond_1
    sget v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:I

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 74
    sget v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->BelowRange()V

    .line 77
    :cond_2
    sget v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->WithinRange()V

    .line 80
    :cond_3
    sget v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$a;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->AboveRange()V

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;I)I

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
