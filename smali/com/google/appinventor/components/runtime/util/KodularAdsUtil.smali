.class public Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADMOB_BANNER_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/6300978111"

.field public static final ADMOB_INTERSTITIAL_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/1033173712"

.field public static final ADMOB_REWARDED_VIDEO_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/5224354917"

.field public static final AD_COLONY_APP_ID:Ljava/lang/String; = "appb235d39ba30f401783"

.field public static final AD_COLONY_ZONE_ID:Ljava/lang/String; = "vzc8fd72c1e5494edca6"

.field public static final AD_MANAGER_BANNER_TEST_ID:Ljava/lang/String; = "/6499/example/banner"

.field public static final AD_MANAGER_INTERSTITIAL_TEST_ID:Ljava/lang/String; = "/6499/example/interstitial"

.field public static final AD_MANAGER_REWARDED_TEST_ID:Ljava/lang/String; = "/6499/example/rewarded"

.field private static LOG_TAG:Ljava/lang/String; = "Kodular Ads Util"

.field public static final STARTAPP_APP_ID:Ljava/lang/String; = "204085028"

.field public static final UNITY_ADS_GAME_ID:Ljava/lang/String; = "3140736"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device id: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    .line 40
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
