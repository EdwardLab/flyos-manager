.class public Lcom/google/appinventor/components/runtime/SoundSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Physical world component that can detect such data as: sound amplitude (measurement of the degree of change [positive or negative] )."
    iconName = "images/soundSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

.field private LOG_TAG:Ljava/lang/String;

.field private enabled:Z

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 29
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "SoundSensor"

    .line 21
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 24
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    .line 26
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v1, 0x64

    invoke-direct {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    return-void
.end method


# virtual methods
.method public Amplitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the real sound amplitude which can be between 0 to 32768."
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Decibel()D
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->Amplitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public Listen(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Starts or Stops listening to sound changes"
    .end annotation

    .line 53
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 57
    :try_start_0
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    .line 58
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    const-string v1, "/dev/null"

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    return-void
.end method

.method public Listen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if listening to sound changes, else false."
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    return v0
.end method

.method public MaxSoundlevel()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the max sound level."
    .end annotation

    .line 34
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    return-wide v0
.end method

.method public MaxSoundlevel(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    int-to-double v0, p1

    .line 41
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    return-void
.end method

.method public SoundChanged(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the sound level has changed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SoundChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SoundLevel()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the sound level."
    .end annotation

    .line 98
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    return-wide v0
.end method

.method public alarm()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->Amplitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:D

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:D

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SoundSensor;->SoundChanged(D)V

    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SoundSensor;->Listen(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method
