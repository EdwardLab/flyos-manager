.class final Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

.field private synthetic f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iput p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delaying call to speak.  Retries is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Locale;

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->access$300(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method
