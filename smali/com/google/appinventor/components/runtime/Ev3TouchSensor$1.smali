.class final Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3TouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;Ljava/lang/String;)I

    move-result v0

    .line 63
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v3

    if-gez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    .line 70
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lt v0, v4, :cond_2

    .line 71
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Pressed()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ge v0, v4, :cond_2

    .line 74
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Released()V

    .line 77
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
