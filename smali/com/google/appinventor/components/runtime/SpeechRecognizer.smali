.class public Lcom/google/appinventor/components/runtime/SpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/SpeechListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using Voice Recognition to convert from speech to text"
    iconName = "images/speechRecognizer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO",
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

.field private ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    const-string v1, ""

    .line 56
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 67
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 68
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->UseLegacy(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SpeechRecognizer;)Z
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    return v0
.end method


# virtual methods
.method public AfterGettingText(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 169
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "AfterGettingText"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BeforeGettingText()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeforeGettingText"

    .line 159
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetText()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 115
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    invoke-direct {v1, p0, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Lcom/google/appinventor/components/runtime/SpeechRecognizer;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->BeforeGettingText()V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 1019
    iput-object p0, v0, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechListener;

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->start()V

    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "android.speech.extra.LANGUAGE"

    if-eqz v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    return-object v0
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->stop()V

    :cond_0
    return-void
.end method

.method public UseLegacy(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, a separate dialog is used to recognize speech. If false, speech is recognized without changing the user interface and partial results are also provided."
    .end annotation

    .line 224
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    .line 225
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    if-eqz p1, :cond_0

    .line 227
    new-instance p1, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    return-void

    .line 229
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    return-void
.end method

.method public UseLegacy()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, an app can retain their older behaviour."
    .end annotation

    .line 210
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    return v0
.end method

.method public onClear()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 203
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Intent;

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GetText"

    invoke-virtual {v0, p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .locals 1

    .line 177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    return-void
.end method
