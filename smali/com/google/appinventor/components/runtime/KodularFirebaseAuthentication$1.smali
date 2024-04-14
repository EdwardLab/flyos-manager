.class final Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    .line 127
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->access$202(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->access$100(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "VerificationId"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->access$000(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->access$100(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "VerificationId"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    return-void
.end method
