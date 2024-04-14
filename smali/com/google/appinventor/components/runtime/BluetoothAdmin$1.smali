.class final Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothAdmin;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 182
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "bluetooth"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 183
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    return-void

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    const-string v1, "Initialize"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
