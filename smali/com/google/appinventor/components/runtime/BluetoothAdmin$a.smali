.class final Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BluetoothAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$c;,
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$a;,
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$b;
    }
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/16 p1, 0xc

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    .line 1150
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 1151
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne v0, p1, :cond_4

    const/16 v1, 0xb

    if-ne p2, v1, :cond_4

    .line 1153
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$a;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$a;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1154
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    return-void

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    if-ne p2, p1, :cond_5

    .line 1156
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$c;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$c;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1157
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_1
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 1129
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    if-eq p2, p1, :cond_6

    .line 1132
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1134
    :cond_6
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1139
    :pswitch_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_7

    .line 1140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_7
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_8
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$b;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$b;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1146
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_2
        0x459717c3 -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
