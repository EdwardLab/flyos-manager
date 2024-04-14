.class final Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularRecaptcha;->Prompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 122
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    .line 128
    invoke-static {p1}, Lcom/google/android/gms/safetynet/SafetyNetStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptErrored(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    const/4 v0, -0x1

    const-string v1, "Unknown ApiException"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->PromptErrored(ILjava/lang/String;)V

    return-void
.end method
