.class final Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 438
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "KodularFirebaseAuth"

    if-eqz v0, :cond_1

    const-string p1, "signInWithCredential:success"

    .line 440
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->access$300(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "signInWithCredential:failure"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    return-void
.end method
