.class public Lcom/google/appinventor/components/runtime/OrientationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to -90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to -90      degrees, then further decreases to -180 degrees as it gets turned all the way      over.</li> <li> <strong>Azimuth</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    iconName = "images/orientationsensor.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

.field private final accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Z

.field private d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

.field private enabled:Z

.field private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

.field private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

.field private final vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 101
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 81
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

    new-array v1, v0, [F

    .line 82
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 91
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

    new-array v1, v1, [F

    .line 92
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[F

    new-array v0, v0, [F

    .line 93
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    .line 105
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x2

    .line 107
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 111
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->Enabled(Z)V

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 119
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    .line 133
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

    .line 134
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 248
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    float-to-double v2, v0

    .line 1268
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    float-to-double v0, v1

    .line 1270
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    .line 1268
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    .line 166
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Azimuth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 233
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

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

    .line 190
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eq v0, p1, :cond_1

    .line 191
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    return v0
.end method

.method public Magnitude()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 293
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 294
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 295
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public OrientationChanged(FFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
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

    const-string p1, "OrientationChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 209
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    return v0
.end method

.method public Roll()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 221
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 326
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_6

    .line 327
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const-string v1, "OrientationSensor"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    .line 346
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected sensor type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Z

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

    invoke-static {v0, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

    .line 336
    iget p1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accuracy:I

    .line 351
    :goto_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Z

    if-eqz p1, :cond_6

    .line 352
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[F

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[F

    invoke-static {p1, v0, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 356
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 359
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    aget p1, p1, v4

    float-to-double v6, p1

    .line 360
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    .line 359
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeAzimuth(F)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

    .line 361
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    aget p1, p1, v5

    float-to-double v6, p1

    .line 362
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float p1, v6

    .line 361
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizePitch(F)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 365
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[F

    aget p1, p1, v3

    float-to-double v6, p1

    .line 366
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float p1, v6

    .line 365
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeRoll(F)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    .line 1310
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "window"

    .line 1311
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1312
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1313
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 387
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Illegal value for getScreenRotation(): "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 382
    :cond_2
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 383
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 384
    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    goto :goto_1

    .line 379
    :cond_3
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    neg-float p1, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    goto :goto_1

    .line 374
    :cond_4
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    neg-float p1, p1

    .line 375
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    neg-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    .line 376
    iput p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    .line 393
    :cond_5
    :goto_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:F

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->OrientationChanged(FFF)V

    :cond_6
    return-void
.end method
