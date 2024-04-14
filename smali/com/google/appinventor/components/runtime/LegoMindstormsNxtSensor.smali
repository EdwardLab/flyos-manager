.class public abstract Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$a;
    }
.end annotation


# instance fields
.field protected port:Lcom/google/appinventor/components/common/NxtSensorPort;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/NxtSensorPort;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract SensorPort(Ljava/lang/String;)V
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    const-string p1, "Connect"

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract initializeSensor(Ljava/lang/String;)V
.end method

.method protected final setSensorPort(Ljava/lang/String;)V
    .locals 5

    .line 57
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v0

    const-string v1, "SensorPort"

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 65
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
