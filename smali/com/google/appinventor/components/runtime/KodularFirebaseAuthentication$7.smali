.class final Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->GetIdToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 328
    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    .line 1331
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->GotIdToken(Ljava/lang/String;)V

    return-void

    .line 1335
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->GotIdToken(Ljava/lang/String;)V

    return-void
.end method
