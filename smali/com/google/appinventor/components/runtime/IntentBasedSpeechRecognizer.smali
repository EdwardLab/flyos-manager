.class public Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 27
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    .line 46
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/google/appinventor/components/runtime/SpeechListener;->onResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 32
    iget v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
