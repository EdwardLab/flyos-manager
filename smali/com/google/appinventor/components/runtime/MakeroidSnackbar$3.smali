.class final Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->showSnackbar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const-string p1, "UNDEFINED"

    goto :goto_0

    :cond_0
    const-string p1, "CONSECUTIVE"

    goto :goto_0

    :cond_1
    const-string p1, "MANUAL"

    goto :goto_0

    :cond_2
    const-string p1, "TIMEOUT"

    goto :goto_0

    :cond_3
    const-string p1, "ACTION"

    goto :goto_0

    :cond_4
    const-string p1, "SWIPE"

    .line 164
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->OnDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 143
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public final onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSnackbar;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->OnShown()V

    return-void
.end method

.method public final bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
