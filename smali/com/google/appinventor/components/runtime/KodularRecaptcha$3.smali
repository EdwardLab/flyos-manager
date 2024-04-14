.class final Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularRecaptcha;->Prompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 104
    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;

    .line 1109
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;->getTokenResult()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1110
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptSucceeded(Ljava/lang/String;)V

    return-void

    .line 1115
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    const/4 v0, -0x2

    const-string v1, "No UserResponse"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptErrored(ILjava/lang/String;)V

    return-void
.end method
