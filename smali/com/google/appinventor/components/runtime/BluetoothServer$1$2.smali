.class final Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;Ljava/lang/Object;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->setConnection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->ConnectionAccepted()V

    return-void

    .line 148
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->Disconnect()V

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Ljava/lang/String;

    const/16 v3, 0x1fd

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
