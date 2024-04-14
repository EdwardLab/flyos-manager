.class final Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3GyroSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D

    move-result-wide v3

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    sget-object v5, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ne v0, v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v0, v8, v6

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .line 69
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    sget-object v5, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v8

    sub-double v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v0, v8, v6

    if-ltz v0, :cond_3

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-virtual {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
