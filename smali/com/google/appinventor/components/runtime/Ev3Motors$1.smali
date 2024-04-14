.class final Lcom/google/appinventor/components/runtime/Ev3Motors$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3Motors;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3Motors;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;I)I

    move-result v0

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Z

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3Motors;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChanged(I)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
