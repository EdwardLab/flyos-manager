.class final Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->onDismissCancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->OnDissmissKeyguardRequest(ZZ)V

    return-void
.end method
