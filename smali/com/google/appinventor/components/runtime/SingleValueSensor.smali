.class public abstract Lcom/google/appinventor/components/runtime/SingleValueSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

.field protected enabled:Z

.field protected refreshTime:I

.field protected final sensorManager:Landroid/hardware/SensorManager;

.field protected sensorType:I

.field protected value:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 1

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 36
    iput p2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    const/16 v0, 0x3e8

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 43
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    .line 44
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether or not the device has an ambient air pressure sensor."
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public Enabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes."
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    return v0
.end method

.method public RefreshTime()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The requested minimum time in milliseconds between changes in air pressure being reported. Android is not guaranteed to honor the request. Setting this property has no effect on pre-Gingerbread devices."
    .end annotation

    .line 109
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    return v0
.end method

.method public RefreshTime(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 122
    iput p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 123
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 125
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    :cond_0
    return-void
.end method

.method protected getValue()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    return v0
.end method

.method protected isAvailable()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

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

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    if-ne v0, v1, :cond_0

    .line 132
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 133
    aget p1, p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onValueChanged(F)V

    :cond_0
    return-void
.end method

.method protected abstract onValueChanged(F)V
.end method

.method protected setEnabled(Z)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 148
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    return-void
.end method

.method protected startListening()V
    .locals 3

    .line 53
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 54
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method protected stopListening()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
