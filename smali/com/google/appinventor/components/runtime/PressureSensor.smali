.class public Lcom/google/appinventor/components/runtime/PressureSensor;
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
    description = "<p>Non-visible component that measures the ambient air pressure in hPa or mbar.</p>"
    iconName = "images/pressureSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:F

.field private PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:F

.field private accuracy:I

.field private boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

.field private enabled:Z

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:F

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:F

    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x6

    .line 44
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/hardware/Sensor;

    .line 45
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->startListening()V

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 131
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Altitude()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 94
    iget v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:F

    return v0
.end method

.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

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

    .line 66
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eq v0, p1, :cond_1

    .line 67
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->startListening()V

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 84
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 78
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public Pressure()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 89
    iget v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:F

    return v0
.end method

.method public PressureChanged(FF)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event is invoked when pressure is changed."
    .end annotation

    .line 99
    iput p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:F

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Queue;

    .line 1151
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 1152
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 1154
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "PressureChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:F

    const v1, 0x447d5000    # 1013.25f

    .line 144
    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:F

    .line 145
    iget p1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->accuracy:I

    .line 146
    iget p1, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:F

    iget v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->PW8gZZwgOCTWcD2kHUmkv6AgL0mFh4d5ZW9zStIiy43FwfJpRxeUshErA0Pq6Vc5:F

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PressureSensor;->PressureChanged(FF)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PressureSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PressureSensor;->stopListening()V

    :cond_0
    return-void
.end method
