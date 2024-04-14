.class public Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InternalTTS"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private volatile isTtsInitialized:Z

.field private mHandler:Landroid/os/Handler;

.field private nextUtteranceId:I

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private ttsMaxRetries:I

.field private ttsRetryDelay:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    const/16 v0, 0x1f4

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsRetryDelay:I

    const/16 v0, 0x14

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 55
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method

.method private initializeTts()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    const-string v0, "InternalTTS"

    const-string v1, "INTERNAL TTS is reinitializing"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 4

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS speak called, message = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    if-le p3, v0, :cond_0

    const-string v0, "max number of speak retries exceeded: speak will fail"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TTS initialized after "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " retries."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3, p2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 94
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance p3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 117
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 p3, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, p3, v0, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "speak called and tts.speak result was an error"

    .line 119
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "speak called when TTS not initialized"

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V

    iget p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsRetryDelay:I

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onDestroy"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onResume"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onStop"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPitch(F)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    return-void
.end method

.method public setSpeechRate(F)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got speak"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method
