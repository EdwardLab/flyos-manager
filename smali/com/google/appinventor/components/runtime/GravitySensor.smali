.class public Lcom/google/appinventor/components/runtime/GravitySensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that measures the force of gravity in m/s2 that is applied to a device on all three physical axes (x, y, z).</p>"
    iconName = "images/gravitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private enabled:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Sensor;

.field private ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

.field private xAccel:F

.field private yAccel:F

.field private zAccel:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->xAccel:F

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->yAccel:F

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->zAccel:F

    const/16 v0, 0x9

    .line 35
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 43
    iget v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Sensor;

    .line 44
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->startListening()V

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 124
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->xAccel:F

    .line 134
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->yAccel:F

    .line 135
    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->zAccel:F

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 65
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    if-eq v0, p1, :cond_1

    .line 66
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->startListening()V

    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->stopListening()V

    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 59
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    return v0
.end method

.method public GravityChanged(FFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the gravity sensor data has changed. "
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "GravityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public XAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 82
    iget v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->xAccel:F

    return v0
.end method

.method public YAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 87
    iget v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->yAccel:F

    return v0
.end method

.method public ZAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 92
    iget v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->zAccel:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:I

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 142
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->xAccel:F

    .line 143
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->yAccel:F

    .line 144
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->zAccel:F

    .line 145
    iget v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->xAccel:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->yAccel:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/appinventor/components/runtime/GravitySensor;->GravityChanged(FFF)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GravitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GravitySensor;->stopListening()V

    :cond_0
    return-void
.end method
