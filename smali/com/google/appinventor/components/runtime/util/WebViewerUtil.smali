.class public Lcom/google/appinventor/components/runtime/util/WebViewerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:[Ljava/lang/String; = null

.field private static CURRENT_COUNTRY:Ljava/lang/String; = ""

.field private static ENGLISH:[Ljava/lang/String;

.field private static GERMAN:[Ljava/lang/String;

.field private static PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:[Ljava/lang/String;

.field private static moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:[Ljava/lang/String;

.field private static oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:[Ljava/lang/String;

.field private static tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:[Ljava/lang/String;

.field private static vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

.field private static wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:[Ljava/lang/String;

.field private static yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "Berechtigungsanfrage"

    const-string v1, "Diese Anwendung"

    const-string v2, " m\u00f6chte auf Ihren Standort zugreifen."

    const-string v3, "Zulassen"

    const-string v4, "Ablehnen"

    .line 82
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->GERMAN:[Ljava/lang/String;

    const-string v0, "Permission Request"

    const-string v1, "This Application"

    const-string v2, " would like to access your location."

    const-string v3, "Allow"

    const-string v4, "Denied"

    .line 83
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    const-string v0, "Permintaan Izin"

    const-string v1, "Aplikasi ini"

    const-string v2, " ingin mengakses lokasi Anda."

    const-string v3, "Mengizinkan"

    const-string v4, "Ditolak"

    .line 84
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

    const-string v0, "\u0130zin \u0130ste\u011fi"

    const-string v1, "Bu uygulama"

    const-string v2, " bulundu\u011funuz konuma eri\u015fmek istiyor."

    const-string v3, "\u0130zin Ver"

    const-string v4, "Reddet"

    .line 85
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;

    const-string v0, "Richiesta autorizzazione"

    const-string v1, "Questa applicazione"

    const-string v2, " vorrebbe accedere alla tua posizione."

    const-string v3, "Permetti"

    const-string v4, "Nega"

    .line 86
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:[Ljava/lang/String;

    const-string v0, "Requer Permiss\u00e3o"

    const-string v1, "Esta Aplica\u00e7\u00e3o"

    const-string v2, " gostaria de acessar sua localiza\u00e7\u00e3o."

    const-string v3, "Permitir"

    const-string v4, "Negado"

    .line 87
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:[Ljava/lang/String;

    const-string v0, "Toestemming geven"

    const-string v1, "Deze applicatie"

    const-string v2, " wil uw locatie weten."

    const-string v4, "Toestaan"

    const-string v5, "Weigeren"

    .line 88
    filled-new-array {v0, v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:[Ljava/lang/String;

    const-string v0, "\u0905\u0928\u0941\u092e\u0924\u093f \u0915\u093e \u0905\u0928\u0941\u0930\u094b\u0927"

    const-string v1, "\u092f\u0939 \u0905\u0945\u092a\u0932\u093f\u0915\u0947\u0936\u0928"

    const-string v2, " \u0906\u092a\u0915\u093e \u0938\u094d\u0925\u093e\u0928 \u091c\u093e\u0901\u091a\u0928\u093e \u091a\u093e\u0939\u0947\u0902\u0917\u0940\u0964"

    const-string v4, "\u0905\u0928\u0941\u092e\u0924\u093f \u0926\u0947\u0902"

    const-string v5, "\u0905\u0938\u094d\u0935\u0940\u0915\u0943\u0924 \u0915\u0930\u0947\u0902"

    .line 89
    filled-new-array {v0, v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:[Ljava/lang/String;

    const-string v0, "Solicitar Permiso"

    const-string v1, "Esta App"

    const-string v2, " solicita acceso a la ubicaci\u00f3n."

    const-string v4, "Rechazar"

    .line 90
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:[Ljava/lang/String;

    const-string v0, "Enged\u00e9lyk\u00e9r\u00e9s"

    const-string v1, "Ez az alkalmaz\u00e1s"

    const-string v2, " hozz\u00e1f\u00e9r\u00e9st k\u00e9r a tart\u00f3zkod\u00e1si hely\u00e9hez."

    const-string v3, "Enged\u00e9lyez"

    const-string v4, "Megtagad"

    .line 91
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionAllowString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 41
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionApplicationString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionDeniedString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 45
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionMessageString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 37
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionTitleString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getResult(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResult(I)Ljava/lang/String;
    .locals 3

    .line 50
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "ie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_9
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_a
    const-string v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_b
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_c
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_d
    const-string v1, "ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_e
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 78
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 70
    :pswitch_2
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 72
    :pswitch_3
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 68
    :pswitch_4
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 64
    :pswitch_5
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 62
    :pswitch_6
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 76
    :pswitch_7
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 60
    :pswitch_8
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ENGLISH:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 74
    :pswitch_9
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 56
    :pswitch_a
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->GERMAN:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc33 -> :sswitch_e
        0xc65 -> :sswitch_d
        0xc81 -> :sswitch_c
        0xcae -> :sswitch_b
        0xcdb -> :sswitch_a
        0xd0d -> :sswitch_9
        0xd1b -> :sswitch_8
        0xd1c -> :sswitch_7
        0xd25 -> :sswitch_6
        0xd2b -> :sswitch_5
        0xdbe -> :sswitch_4
        0xe04 -> :sswitch_3
        0xe7e -> :sswitch_2
        0xe9e -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 21
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "default"

    .line 24
    sput-object p0, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->CURRENT_COUNTRY:Ljava/lang/String;

    return-void
.end method
