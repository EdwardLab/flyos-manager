.class final Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;->onConsentInfoUpdateSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s: %s"

    .line 150
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KodularAdManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Lcom/google/android/ump/ConsentInformation;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Lcom/google/android/ump/ConsentInformation;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
