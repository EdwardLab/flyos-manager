.class public Lcom/google/appinventor/components/runtime/LightSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Light Sensor to get the Illuminance from the Phone Sensor"
    iconName = "images/lightSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private enabled:Z

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/SensorManager;

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:F

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:F

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->context:Landroid/content/Context;

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->activity:Landroid/app/Activity;

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->context:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 55
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/hardware/Sensor;

    .line 56
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->startListening()V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LightSensor;->Enabled(Z)V

    const-string p1, "LightSensor"

    const-string v0, "Light Sensor Created"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 96
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Sensor is Available"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

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
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Sensor should be Enabled"
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eq v0, p1, :cond_1

    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->startListening()V

    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->stopListening()V

    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    return v0
.end method

.method public Illuminance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the illuminance in lux. To return values the sensor must be enabled"
    .end annotation

    .line 86
    iget v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:F

    return v0
.end method

.method public LightChanged(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that fires when the illuminance is changed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LightChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LightSensor"

    const-string v1, "onDestroy"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->stopListening()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "LightSensor"

    const-string v1, "onPause"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "LightSensor"

    const-string v1, "onResume"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LightSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 131
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:F

    .line 133
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget p1, p0, Lcom/google/appinventor/components/runtime/LightSensor;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LightSensor;->LightChanged(F)V

    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
