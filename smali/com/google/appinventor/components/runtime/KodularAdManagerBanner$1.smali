.class final Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->FailedToLoad(Ljava/lang/String;)V

    return-void
.end method
