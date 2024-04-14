.class final Lcom/google/appinventor/components/runtime/Sound$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound;->Source(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sound;Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sound$1;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 168
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Sound$1;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Sound;->Source(Ljava/lang/String;)V

    return-void

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->access$200(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v0

    const-string v1, "Source"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
