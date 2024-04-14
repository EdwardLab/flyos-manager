.class final Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularRecaptcha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularRecaptcha;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "missing-input-secret"

    const-string v0, "The secret parameter is missing."

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "invalid-input-secret"

    const-string v0, "The secret parameter is invalid or malformed."

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "missing-input-response"

    const-string v0, "The response parameter is missing."

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "invalid-input-response"

    const-string v0, "The response parameter is invalid or malformed."

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bad-request"

    const-string v0, "The request is invalid or malformed."

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timeout-or-duplicate"

    const-string v0, "The response is no longer valid: either is too old or has been used previously."

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
