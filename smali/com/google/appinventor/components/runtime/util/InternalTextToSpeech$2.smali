.class final Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->access$200(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
