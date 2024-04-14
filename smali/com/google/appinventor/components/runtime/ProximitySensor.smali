.class public Lcom/google/appinventor/components/runtime/ProximitySensor;
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
    description = "<p>Non-visible component that can measures the proximity of an object in cm relative to the view screen of a device. This sensor is typically used to determine whether a handset is being held up to a persons ear; i.e. lets you determine how far away an object is from a device. Many devices return the absolute distance, in cm, but some return only near and far values. In this case, the sensor usually reports its maximum range value in the far state and a lesser value in the near state.</p>"
    iconName = "images/proximitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

.field private boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

.field private enabled:Z

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

    .line 61
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the device has a proximity sensor"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the distance from the object to the device"
    .end annotation

    .line 214
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes in proximity"
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz p1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 155
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, it will keep sensing for proximity changes even when the app is not visible"
    .end annotation

    .line 197
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 185
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports the Maximum Range of the device\'s ProximitySensor"
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public ProximityChanged(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when distance (in cm) of the object to the device changes. "
    .end annotation

    .line 202
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProximityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    .line 128
    aget p1, p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:F

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->ProximityChanged(F)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :cond_0
    return-void
.end method
