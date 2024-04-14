.class final Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
