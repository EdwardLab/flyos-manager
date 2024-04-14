.class public Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "at"

    const-string v1, "be"

    const-string v2, "bg"

    const-string v3, "cy"

    const-string v4, "cz"

    const-string v5, "de"

    const-string v6, "dk"

    const-string v7, "ee"

    const-string v8, "es"

    const-string v9, "fi"

    const-string v10, "fr"

    const-string v11, "gb"

    const-string v12, "gr"

    const-string v13, "hr"

    const-string v14, "hu"

    const-string v15, "ie"

    const-string v16, "it"

    const-string v17, "lt"

    const-string v18, "lu"

    const-string v19, "lv"

    const-string v20, "mt"

    const-string v21, "nl"

    const-string v22, "pl"

    const-string v23, "pt"

    const-string v24, "ro"

    const-string v25, "se"

    const-string v26, "si"

    const-string v27, "sk"

    .line 21
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRequestLocationInEurope(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 33
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Kodular GDPR Util"

    if-nez v0, :cond_0

    const-string p0, "It was not possible to get the country code. We returned the value true as default to cover the EU privacy policy."

    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Current user country is: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string p0, "There was a error to retrieve the current user location."

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 50
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current user is in EUROPE: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
