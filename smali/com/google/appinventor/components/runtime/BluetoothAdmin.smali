.class public Lcom/google/appinventor/components/runtime/BluetoothAdmin;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "BluetoothAdmin component to control the Bluetooth."
    iconName = "images/bluetoothAdmin.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH_ADMIN",
        "android.permission.BLUETOOTH",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.ACCESS_COARSE_LOCATION"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;,
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$b;
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/BroadcastReceiver;

.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Ljava/lang/String;

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

.field private final activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/BroadcastReceiver;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 163
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$b;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$b;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    .line 165
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 166
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    .line 167
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->activity:Landroid/app/Activity;

    .line 169
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 170
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    const-string p1, "BluetoothAdmin"

    const-string v0, "BluetoothAdmin Created"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    .line 539
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz p1, :cond_0

    const-string p1, "13"

    return-object p1

    :cond_0
    const-string p1, "STATE_TURNING_OFF"

    return-object p1

    .line 533
    :pswitch_1
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz p1, :cond_1

    const-string p1, "12"

    return-object p1

    :cond_1
    const-string p1, "STATE_ON"

    return-object p1

    .line 527
    :pswitch_2
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz p1, :cond_2

    const-string p1, "11"

    return-object p1

    :cond_2
    const-string p1, "STATE_TURNING_ON"

    return-object p1

    .line 521
    :pswitch_3
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz p1, :cond_3

    const-string p1, "10"

    return-object p1

    :cond_3
    const-string p1, "STATE_OFF"

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/List;

    return-object p1
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()V

    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()V
    .locals 2

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 505
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 508
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdmin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;I)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    .line 583
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 585
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/List;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/List;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)V
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 562
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 563
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "pair"

    .line 565
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 569
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()V
    .locals 2

    .line 487
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v0, :cond_1

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 493
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdmin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_1
    return-void
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()V
    .locals 4

    .line 478
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public AfterPairing(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when Pairing has finished."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterPairing"

    .line 450
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AfterScanning(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when Scanning has finished."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AfterScanning"

    .line 440
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AfterUnpairing(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when Unpairing has finished."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterUnpairing"

    .line 460
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Disable()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disable Bluetooth"
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "Device has no Bluetooth"

    .line 286
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method public Enable()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable Bluetooth"
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "Device has no Bluetooth"

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when an error occurred."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 419
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HasBluetooth()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if the device has Bluetooth"
    .end annotation

    .line 314
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Initialize()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public MacAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the Bluetooth MacAddress."
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Device has no Bluetooth"

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public Pair(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pair Bluetooth device."
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Ljava/lang/String;

    const-string p1, "pair"

    .line 398
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)V

    return-void
.end method

.method public Scan()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Scan Bluetooth devices. Caution: Performing device discovery is a heavy procedure for the Bluetooth adapter and will consume a lot of its resources. If you already hold a connection with a device, then performing discovery can significantly reduce the bandwidth available for the connection, so you should not perform discovery while connected."
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothAdmin$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public ScanMode()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the scan mode of the Bluetooth Adapter"
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "UNKNOWN"

    if-nez v0, :cond_0

    const-string v0, "Device has no Bluetooth"

    .line 326
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    return-object v1

    .line 328
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_2

    .line 329
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz v0, :cond_1

    const-string v0, "20"

    return-object v0

    :cond_1
    const-string v0, "SCAN_MODE_NONE"

    return-object v0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_4

    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz v0, :cond_3

    const-string v0, "21"

    return-object v0

    :cond_3
    const-string v0, "SCAN_MODE_CONNECTABLE"

    return-object v0

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_6

    .line 341
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    if-eqz v0, :cond_5

    const-string v0, "23"

    return-object v0

    :cond_5
    const-string v0, "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    return-object v0

    :cond_6
    return-object v1
.end method

.method public State()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the state of the Bluetooth Adapter."
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "Device has no Bluetooth"

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    const-string v0, "UNKNOWN"

    return-object v0

    .line 262
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public StateChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when the bluetooth state changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "StateChanged"

    .line 429
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Toggle()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle Bluetooth"
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "Device has no Bluetooth"

    .line 299
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method public Unpair(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unpair Bluetooth device."
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:Ljava/lang/String;

    const-string p1, "unpair"

    .line 409
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)V

    return-void
.end method

.method public UseCodes(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 204
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    return-void
.end method

.method public UseCodes()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use codes instead of strings in returns for ScanMode and State."
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Z

    return v0
.end method

.method public ValidateMacAddress(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the MacAddress is valid."
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Device has no Bluetooth"

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public ValidateUserMacAddress()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the User MacAddress is valid."
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Device has no Bluetooth"

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->ErrorOccurred(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()V

    .line 474
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 469
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()V

    return-void
.end method
