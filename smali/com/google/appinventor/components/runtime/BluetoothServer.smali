.class public final Lcom/google/appinventor/components/runtime/BluetoothServer;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth server component"
    iconName = "images/bluetoothServer.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH",
        "android.permission.BLUETOOTH_ADMIN",
        "android.permission.BLUETOOTH_ADVERTISE"
    }
.end annotation


# static fields
.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private final arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "BluetoothServer"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 78
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f5

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1f6

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :try_start_1
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->secure:Z

    if-nez v2, :cond_2

    .line 104
    invoke-static {v0, p2, p3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/Object;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {v0, p2, p3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->listenUsingRfcommWithServiceRecord(Ljava/lang/Object;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object p2

    .line 110
    :goto_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    new-instance p2, Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothServer$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 112
    :catch_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x1fc

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 95
    :catch_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x1fa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-virtual {p2, p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final AcceptConnection(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Accept an incoming connection with the Serial Port Profile (SPP)."
    .end annotation

    const-string v0, "AcceptConnection"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    .line 66
    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final AcceptConnectionWithUUID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Accept an incoming connection with a specific UUID."
    .end annotation

    const-string v0, "AcceptConnectionWithUUID"

    .line 74
    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ConnectionAccepted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a bluetooth connection has been accepted."
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->logTag:Ljava/lang/String;

    const-string v1, "Successfully accepted bluetooth connection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectionAccepted"

    .line 192
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final IsAccepting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final StopAccepting()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop accepting an incoming connection."
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothServerSocket(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 181
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while closing bluetooth server socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
