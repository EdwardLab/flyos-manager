.class public Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Consent"
.end annotation


# static fields
.field private static hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/content/Context;)V
    .locals 2

    .line 194
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    const/4 v0, 0x0

    .line 189
    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

    .line 190
    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Lcom/google/android/ump/ConsentInformation;
    .locals 1

    .line 107
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    return-object v0
.end method

.method public static request(Landroid/app/Activity;Landroid/content/Context;Z)V
    .locals 2

    .line 117
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    move-result-object v0

    .line 120
    invoke-static {p0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    if-eqz p2, :cond_0

    .line 123
    new-instance p2, Lcom/google/android/ump/ConsentDebugSettings$Builder;

    invoke-direct {p2, p0}, Lcom/google/android/ump/ConsentDebugSettings$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 124
    invoke-virtual {p2, v1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->setDebugGeography(I)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object p2

    .line 125
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->addTestDeviceHashedId(Ljava/lang/String;)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->build()Lcom/google/android/ump/ConsentDebugSettings;

    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setConsentDebugSettings(Lcom/google/android/ump/ConsentDebugSettings;)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 130
    sget-boolean p1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

    if-nez p1, :cond_0

    .line 131
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->reset()V

    .line 132
    sput-boolean v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hibTQF3buaJTulLZvSVkxWzq69D3X99LEonIrTaR8DG6SkVpYpvjF3tGUybbhvWG:Z

    .line 136
    :cond_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    .line 138
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$2;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$2;-><init>()V

    .line 136
    invoke-interface {p1, p0, p2, v0, v1}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 181
    sget-object p1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/content/Context;)V

    return-void
.end method
