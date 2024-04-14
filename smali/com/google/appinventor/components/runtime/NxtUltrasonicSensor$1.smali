.class final Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 63
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Z

    if-eqz v1, :cond_5

    .line 65
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    sget v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 68
    sget v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

    goto :goto_0

    .line 70
    :cond_1
    sget v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 74
    sget v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRange()V

    .line 77
    :cond_2
    sget v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRange()V

    .line 80
    :cond_3
    sget v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$a;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRange()V

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;I)I

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
