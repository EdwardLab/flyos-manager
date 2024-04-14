.class final Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->RequestDismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 2

    .line 183
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$2;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDismissError()V
    .locals 2

    .line 172
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$1;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularKeyguardManager;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3$3;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
