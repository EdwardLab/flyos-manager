.class public Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a gyro sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const-string v0, "Ev3GyroSensor"

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 44
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:D

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    .line 79
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChangedEventEnabled(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:D

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:D

    return-wide p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)D
    .locals 6

    .line 185
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 189
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    const/16 v4, 0x20

    move-object v0, p0

    move-object v1, p1

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-eq p1, v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 194
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:D

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-void
.end method


# virtual methods
.method public GetSensorValue()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current angle or rotation speed based on current mode, or -1 if the value cannot be read from sensor."
    .end annotation

    const-string v0, ""

    .line 93
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/GyroSensorMode;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor mode can be a text constant of either \"rate\" or \"angle\", which correspond to SetAngleMode or SetRateMode respectively."
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/GyroSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "angle"
        editorType = "lego_ev3_gyro_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/appinventor/components/common/GyroSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Mode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/GyroSensorMode;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public SensorValueChanged(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called then the sensor value changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SensorValueChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SensorValueChangedEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 173
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    return-void
.end method

.method public SensorValueChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the SensorValueChanged event should fire when the sensor value changed."
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:Z

    return v0
.end method

.method public SetAngleMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the orientation of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public SetRateMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the angular velocity of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    return-void
.end method
