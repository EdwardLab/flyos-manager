.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accerleromter and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

.field private D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

.field private FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

.field private G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

.field private MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Z

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

.field private Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

.field private RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

.field private final context:Landroid/content/Context;

.field private gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:I

.field private hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

.field private pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x7d0

    .line 55
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    .line 57
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    const/16 v2, 0x64

    new-array v2, v2, [F

    .line 59
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    const v2, 0x3f3ae148    # 0.73f

    .line 60
    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    .line 61
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    const/4 v3, 0x2

    new-array v3, v3, [J

    .line 62
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    const-wide/16 v3, 0x0

    .line 63
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    .line 64
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 65
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    const/4 v5, 0x1

    .line 67
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    .line 68
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    const/16 v6, 0xa

    new-array v6, v6, [F

    .line 70
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    .line 71
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:I

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 78
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    .line 79
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    .line 80
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 81
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    .line 83
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Z

    .line 84
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    const-string v5, "sensor"

    .line 86
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const-string v5, "PedometerPrefs"

    .line 89
    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v5, "Pedometer.stridelength"

    .line 90
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    const-string v2, "Pedometer.distance"

    .line 91
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    const-string v1, "Pedometer.prevStepCount"

    .line 92
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    const-string v0, "Pedometer.clockTime"

    .line 93
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 94
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    const-string p1, "Pedometer"

    const-string v0, "Pedometer Created"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .line 270
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    if-eqz v0, :cond_0

    .line 282
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    return-wide v0

    .line 284
    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public GPSAvailable()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public GPSLost()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 134
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    return-void
.end method

.method public Save()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    const-string v2, "Pedometer.stridelength"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    const-string v2, "Pedometer.distance"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    const-string v2, "Pedometer.prevStepCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    const-string v2, "Pedometer.clockTime"

    if-eqz v1, :cond_0

    .line 172
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 174
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 174
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 177
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "Pedometer.closeTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "Pedometer"

    const-string v1, "Pedometer state saved."

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SimpleStep(IF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "SimpleStep"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SimpleSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .line 296
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    return v0
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 108
    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:J

    :cond_0
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 259
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .line 249
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    return-void
.end method

.method public StoppedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 234
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .line 223
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    return-void
.end method

.method public UseGPS(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public WalkStep(IF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "WalkStep"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WalkSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .line 307
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    const-string p1, "Pedometer"

    const-string p2, "Accelerometer accuracy changed."

    .line 362
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 367
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 372
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    aget v8, v1, v6

    mul-float v8, v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 375
    :cond_1
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    add-int/lit8 v2, v1, 0x32

    const/16 v6, 0x64

    rem-int/2addr v2, v6

    .line 378
    iget-boolean v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_a

    add-int/lit8 v1, v1, 0x32

    .line 1336
    rem-int/2addr v1, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_3

    if-eq v8, v1, :cond_2

    .line 1338
    iget-object v10, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    aget v11, v10, v8

    aget v10, v10, v1

    cmpl-float v10, v11, v10

    if-lez v10, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_a

    .line 379
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    aget v1, v1, v2

    iget v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    sub-float/2addr v1, v8

    const/high16 v8, 0x42200000    # 40.0f

    cmpl-float v1, v1, v8

    if-lez v1, :cond_a

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 382
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    iget v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    iget-wide v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    sub-long v12, v10, v12

    aput-wide v12, v1, v8

    add-int/2addr v8, v3

    .line 383
    rem-int/lit8 v8, v8, 0x2

    iput v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:I

    .line 384
    iput-wide v10, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    .line 2317
    array-length v8, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v10, v8, :cond_5

    aget-wide v13, v1, v10

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_4

    add-int/lit8 v12, v12, 0x1

    long-to-float v13, v13

    add-float/2addr v11, v13

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    int-to-float v1, v12

    div-float/2addr v11, v1

    .line 2324
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[J

    array-length v8, v1

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_7

    aget-wide v12, v1, v10

    long-to-float v12, v12

    sub-float/2addr v12, v11

    .line 2325
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x437a0000    # 250.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_9

    .line 386
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    if-eqz v1, :cond_8

    .line 387
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 388
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    mul-float v8, v8, v9

    add-float/2addr v1, v8

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    .line 389
    iput-boolean v5, v0, Lcom/google/appinventor/components/runtime/Pedometer;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    .line 391
    :cond_8
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:I

    .line 392
    iget v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    invoke-virtual {v0, v1, v8}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 393
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:F

    add-float/2addr v1, v8

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    goto :goto_6

    .line 395
    :cond_9
    iput-boolean v3, v0, Lcom/google/appinventor/components/runtime/Pedometer;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    .line 397
    :goto_6
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:I

    .line 398
    iget v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:F

    invoke-virtual {v0, v1, v8}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 399
    iput-boolean v5, v0, Lcom/google/appinventor/components/runtime/Pedometer;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Z

    .line 403
    :cond_a
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    if-eqz v1, :cond_d

    .line 2349
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    add-int/lit8 v1, v1, 0x32

    rem-int/2addr v1, v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_c

    if-eq v8, v1, :cond_b

    .line 2351
    iget-object v10, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    aget v11, v10, v8

    aget v10, v10, v1

    cmpg-float v10, v11, v10

    if-gez v10, :cond_b

    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_d

    .line 404
    iput-boolean v3, v0, Lcom/google/appinventor/components/runtime/Pedometer;->MPU09J1AwAGHHipshACCcxJb3sgE9iJCZW8vEkhwkK7OZvOaOd0ZOicUGCeoxucl:Z

    .line 405
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    aget v1, v1, v2

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:F

    .line 408
    :cond_d
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    iget v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:I

    aput v7, v1, v2

    add-int/2addr v2, v3

    .line 409
    array-length v7, v1

    rem-int/2addr v2, v7

    iput v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:I

    .line 410
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    aput v4, v2, v7

    .line 411
    array-length v2, v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_e

    aget v7, v1, v4

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    iget v10, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    aget v11, v8, v10

    add-float/2addr v11, v7

    aput v11, v8, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 412
    :cond_e
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[F

    iget v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    aget v4, v1, v2

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[F

    array-length v7, v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    aput v4, v1, v2

    .line 413
    iget-boolean v7, v0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    if-nez v7, :cond_10

    if-le v2, v3, :cond_f

    goto :goto_a

    :cond_f
    if-nez v7, :cond_13

    if-ne v2, v3, :cond_13

    .line 421
    aget v2, v1, v3

    aget v4, v1, v5

    add-float/2addr v2, v4

    div-float/2addr v2, v9

    aput v2, v1, v3

    goto :goto_b

    :cond_10
    :goto_a
    add-int/lit8 v5, v2, -0x1

    if-gez v5, :cond_11

    add-int/lit8 v5, v5, 0x64

    .line 416
    :cond_11
    aget v7, v1, v5

    mul-float v7, v7, v9

    add-float/2addr v4, v7

    aput v4, v1, v2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_12

    add-int/lit8 v5, v5, 0x64

    .line 418
    :cond_12
    aget v5, v1, v5

    add-float/2addr v4, v5

    aput v4, v1, v2

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    .line 419
    aput v4, v1, v2

    .line 424
    :cond_13
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 425
    iget-wide v4, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    sub-long v4, v1, v4

    iget v7, v0, Lcom/google/appinventor/components/runtime/Pedometer;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:I

    int-to-long v7, v7

    cmp-long v9, v4, v7

    if-lez v9, :cond_14

    .line 426
    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:J

    .line 429
    :cond_14
    iget v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_15

    iget-boolean v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    if-nez v2, :cond_15

    .line 430
    iput-boolean v3, v0, Lcom/google/appinventor/components/runtime/Pedometer;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Z

    :cond_15
    add-int/2addr v1, v3

    .line 433
    rem-int/2addr v1, v6

    iput v1, v0, Lcom/google/appinventor/components/runtime/Pedometer;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:I

    return-void
.end method
