.class public Lcom/google/appinventor/components/runtime/Sound;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A multimedia component that plays sound files and optionally vibrates for the number of milliseconds (thousandths of a second) specified in the Blocks Editor.  The name of the sound file to play can be specified either in the Designer or in the Blocks Editor.</p> <p>For supported sound file formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>This <code>Sound</code> component is best for short sound files, such as sound effects, while the <code>Player</code> component is more efficient for longer sounds, such as songs.</p><p>You might get an error if you attempt to play a sound immediately after setting the source.</p>"
    iconName = "images/soundEffect.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.VIBRATE",
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Sound$a;
    }
.end annotation


# static fields
.field private static final LOOP_MODE_NO_LOOP:I = 0x0

.field private static final MAX_PLAY_DELAY_RETRIES:I = 0xa

.field private static final MAX_STREAMS:I = 0xa

.field private static final PLAYBACK_RATE_NORMAL:F = 1.0f

.field private static final PLAY_DELAY_LENGTH:I = 0x32

.field private static final VOLUME_FULL:F = 1.0f


# instance fields
.field private delayRetries:I

.field private loadComplete:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private minimumInterval:I

.field private final playWaitHandler:Landroid/os/Handler;

.field private soundId:I

.field private final soundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field private sourcePath:Ljava/lang/String;

.field private streamId:I

.field private final thisComponent:Lcom/google/appinventor/components/runtime/Component;

.field private timeLastPlayed:J

.field private final vibe:Landroid/os/Vibrator;

.field private final waitForLoadToComplete:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 114
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->waitForLoadToComplete:Z

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->playWaitHandler:Landroid/os/Handler;

    .line 115
    iput-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->thisComponent:Lcom/google/appinventor/components/runtime/Component;

    .line 116
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    const-string v0, ""

    .line 119
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    .line 120
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 122
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    const/16 p1, 0x1f4

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sound;->MinimumInterval(I)V

    .line 132
    new-instance p1, Lcom/google/appinventor/components/runtime/Sound$a;

    invoke-direct {p1, p0, v3}, Lcom/google/appinventor/components/runtime/Sound$a;-><init>(Lcom/google/appinventor/components/runtime/Sound;B)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    .line 1069
    new-instance v1, Lcom/google/appinventor/components/runtime/Sound$a$1;

    invoke-direct {v1, p1}, Lcom/google/appinventor/components/runtime/Sound$a$1;-><init>(Lcom/google/appinventor/components/runtime/Sound$a;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Sound;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    return p0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Sound;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->thisComponent:Lcom/google/appinventor/components/runtime/Component;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playAndCheckResult()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Sound;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    return p0
.end method

.method static synthetic access$410(Lcom/google/appinventor/components/runtime/Sound;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Sound;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    return-object p0
.end method

.method private playAndCheckResult()V
    .locals 7

    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 300
    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundPool.play returned stream id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Play"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private playWhenLoadComplete()V
    .locals 4

    .line 274
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playAndCheckResult()V

    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sound not ready:  retrying.  Remaining retries = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->playWaitHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sound$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sound$2;-><init>(Lcom/google/appinventor/components/runtime/Sound;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private prepareToDie()V
    .locals 2

    .line 423
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between sounds.  If you play a sound, all further Play() calls will be ignored until the interval has elapsed."
    .end annotation

    .line 227
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 241
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playing the sound if it is being played."
    .end annotation

    .line 318
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    return-void

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to pause. Did you remember to call the Play function?"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Play()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Plays the sound specified by the Source property."
    .end annotation

    .line 253
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    const-string v1, "Sound"

    if-eqz v0, :cond_2

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 255
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unable to play because MinimumInterval has not elapsed since last play."

    .line 261
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    const/16 v0, 0xa

    .line 257
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    .line 258
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V

    return-void

    :cond_2
    const-string v0, "Sound Id was 0. Did you remember to set the Source property?"

    .line 266
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Play"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Resume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes playing the sound after a pause."
    .end annotation

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    return-void

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to resume. Did you remember to call the Play function?"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SoundNormal()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ringer mode that may be audible and may vibrate."
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public SoundSilent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ringer mode that will be silent and will not vibrate."
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public SoundVibrate()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ringer mode that will be silent and will vibrate."
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the sound file.  Only certain formats are supported.  See http://developer.android.com/guide/appendix/media-formats.html."
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "audio_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    const-string v0, "Source"

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/Sound$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Sound$1;-><init>(Lcom/google/appinventor/components/runtime/Sound;Ljava/lang/String;)V

    invoke-static {v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestAudioPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 177
    :cond_1
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    .line 180
    iget p1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 181
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 182
    iput v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 184
    :cond_2
    iput v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 186
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 187
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    return-void

    .line 192
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "No existing sound with path "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Sound"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/16 v4, 0x2bd

    .line 194
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 196
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successfully began loading sound: setting soundId to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput v5, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 200
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    return-void

    .line 202
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, p1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-virtual {v2, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 208
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v3, p1, v1

    invoke-virtual {v2, p0, v0, v4, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 206
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops playing the sound if it is being played."
    .end annotation

    .line 342
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    return-void

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to stop. Did you remember to call the Play function?"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Vibrate(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Vibrates for the specified number of milliseconds."
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public VibratePattern(IIZ)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Vibrate with a given pattern"
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    const/4 v0, 0x1

    int-to-long v2, p1

    aput-wide v2, v1, v0

    const/4 p1, 0x2

    int-to-long v2, p2

    aput-wide v2, v1, p1

    .line 367
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    invoke-virtual {p1, v1, p3}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 412
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Sound"

    const-string v1, "Got onResume"

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Sound"

    const-string v1, "Got onStop"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    :cond_0
    return-void
.end method
