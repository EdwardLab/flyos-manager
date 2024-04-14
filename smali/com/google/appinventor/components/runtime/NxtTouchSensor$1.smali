.class final Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtTouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;

    move-result-object v0

    .line 59
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Z

    if-eqz v1, :cond_3

    .line 60
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:I

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 63
    sget v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Pressed()V

    .line 66
    :cond_1
    sget v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$a;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Released()V

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;I)I

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
