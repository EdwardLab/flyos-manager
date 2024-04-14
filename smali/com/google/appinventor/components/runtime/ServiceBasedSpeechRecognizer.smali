.class public Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    .line 26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 27
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xedb

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xedf

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xede

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xee1

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xeda

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xee0

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xed9

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xedc

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xedd

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/SpeechListener;->onError(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "results_recognition"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/SpeechListener;->onPartialResult(Ljava/lang/String;)V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "results_recognition"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/SpeechListener;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    .line 33
    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    :cond_0
    return-void
.end method
