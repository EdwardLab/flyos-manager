.class final Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 125
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SpeechRecognizer;)Z

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->GetText()V

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    const-string v0, "GetText"

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
