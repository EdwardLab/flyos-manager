.class public Lcom/google/appinventor/components/runtime/Audio;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/audio.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.MODIFY_AUDIO_SETTINGS"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Audio;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Audio;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Audio;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const-string p1, "Audio"

    const-string v0, "Audio Created"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when a error occurred."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 51
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetAudioMode()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current audio mode as string. Possible returns are \"NORMAL\", \"RINGTONE\", \"CALL\" or \"COMMUNICATION\"."
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Not found"

    goto :goto_0

    :cond_0
    const-string v0, "COMMUNICATION"

    goto :goto_0

    :cond_1
    const-string v0, "CALL"

    goto :goto_0

    :cond_2
    const-string v0, "RINGTONE"

    goto :goto_0

    :cond_3
    const-string v0, "NORMAL"

    :goto_0
    return-object v0
.end method

.method public IsSoundEffectsEnabled(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)Z
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true whether a component should have sound effects enabled for events such as clicking and touching."
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result p1

    return p1
.end method

.method public RingerModeNormal()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the ringer mode to \"normal\"."
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Audio"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Audio;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public RingerModeSilent()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the ringer mode to \"silent\"."
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Audio"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Audio;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public RingerModeVibrate()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the ringer mode to \"vibrate\"."
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Audio"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Audio;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ShowUI(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true you will see system ui."
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Audio;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    return-void
.end method

.method public ShowUI()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 146
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Audio;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    return v0
.end method

.method public SoundEffectsEnabled(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set whether a component should have sound effects enabled for events such as clicking and touching."
    .end annotation

    .line 173
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public VolumeAlarm()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current volume index in percent."
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 123
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    .line 124
    div-int/2addr v0, v1

    return v0
.end method

.method public VolumeAlarm(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume index for a particular stream in percent."
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Audio;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int v1, v1, p1

    .line 134
    div-int/lit8 v1, v1, 0x64

    .line 135
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public VolumeMusic()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current volume index in percent."
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 105
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    .line 106
    div-int/2addr v0, v1

    return v0
.end method

.method public VolumeMusic(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume index for a particular stream in percent."
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Audio;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int v1, v1, p1

    .line 116
    div-int/lit8 v1, v1, 0x64

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public VolumeRing()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current volume index in percent."
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 87
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    .line 88
    div-int/2addr v0, v1

    return v0
.end method

.method public VolumeRing(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume index for a particular stream in percent."
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Audio;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Z

    .line 97
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int v1, v1, p1

    .line 98
    div-int/lit8 v1, v1, 0x64

    .line 99
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Audio;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
