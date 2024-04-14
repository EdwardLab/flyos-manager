.class public Lcom/google/appinventor/components/runtime/MagneticFieldSensor;
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
    description = "<p>Non-visible component that measures the ambient geomagnetic field for all three physical axes (x, y, z) in Tesla https://en.wikipedia.org/wiki/Tesla_(unit). </p>"
    iconName = "images/magneticSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

.field private enabled:Z

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    .line 41
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    .line 42
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 127
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    .line 137
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    .line 138
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    :cond_0
    return-void
.end method


# virtual methods
.method public AbsoluteStrength()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 80
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

    return-wide v0
.end method

.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

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

    .line 63
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 64
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    .line 66
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz p1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    return v0
.end method

.method public MagneticChanged(FFFD)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the magnetic sensor data has changed. "
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
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

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "MagneticChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public Xstrength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 85
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    return v0
.end method

.method public Ystrength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 90
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    return v0
.end method

.method public Zstrength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 143
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 145
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    .line 146
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    .line 147
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    .line 148
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:D

    .line 149
    iget v3, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->MagneticChanged(FFFD)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    :cond_0
    return-void
.end method
