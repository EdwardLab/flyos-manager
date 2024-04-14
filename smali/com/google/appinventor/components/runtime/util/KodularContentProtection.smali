.class public Lcom/google/appinventor/components/runtime/util/KodularContentProtection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;,
        Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Content Protection"


# instance fields
.field private CURRENT_COUNTRY:Ljava/lang/String;

.field private ENGLISH:[Ljava/lang/String;

.field private GERMAN:[Ljava/lang/String;

.field private SPANISH:[Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field private canStartValidation:Z

.field private failReason:Ljava/lang/String;

.field private isAccepted:Z

.field private kActivity:Landroid/app/Activity;

.field private kAppId:Ljava/lang/String;

.field public kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isAccepted:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->canStartValidation:Z

    .line 48
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    const-string v0, "Handlung erforderlich!"

    const-string v1, "Ihre App wurde nicht f\u00fcr das Anzeigen von Werbung genehmigt. Bitte beantragen Sie die Aktivierung in ihren Kodular Account."

    const-string v2, "Anfrage"

    const-string v3, "Sp\u00e4ter"

    .line 170
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->GERMAN:[Ljava/lang/String;

    const-string v0, "Acci\u00f3n requerida"

    const-string v1, "Esta app no ha sido aprobada para mostrar anuncios. Por favor, ve a My Kodular y env\u00eda tu solicitud."

    const-string v2, "Solicitar ahora"

    const-string v3, "Luego"

    .line 171
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->SPANISH:[Ljava/lang/String;

    const-string v0, "Action required!"

    const-string v1, "Your app has not been approved to serve ads. Please go to my.kodular.io and request approval for your app."

    const-string v2, "Request now"

    const-string v3, "Later"

    .line 172
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->ENGLISH:[Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    const-string v0, "phone"

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "default"

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isApproved()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isAccepted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isAccepted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;ZZLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Landroid/app/AlertDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getResult(I)Ljava/lang/String;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->ENGLISH:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->SPANISH:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->GERMAN:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc33 -> :sswitch_3
        0xc65 -> :sswitch_2
        0xc81 -> :sswitch_1
        0xcae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isApproved()Z
    .locals 8

    const-string v0, "success"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.creator.kodular.io/ads/"

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/check/v1"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking for App ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content Protection"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 216
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "GET"

    .line 218
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_6

    .line 221
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "approved"

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, ""

    .line 231
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    const-string v0, "The application is ready to serve ads."

    .line 232
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_2
    :try_start_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Your app has not been approved to serve ads. Please go to my.kodular.io and request approval for your app."

    .line 235
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    const-string v0, "The application is not approved to serve ads."

    .line 236
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 252
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return v2

    :cond_4
    :try_start_4
    const-string v0, "An unexpected response from Admob Validation System was received. Please try again."

    .line 239
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    const-string v0, "Internal error! The server response is NULL. Please try again."

    .line 240
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Response from server: "

    .line 241
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    .line 252
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return v2

    :cond_6
    :try_start_5
    const-string v0, "No response got from validation System. Please try again."

    .line 244
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->failReason:Ljava/lang/String;

    const-string v0, "Internal error! No response was received from server."

    .line 245
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_7

    .line 252
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return v2

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 248
    :goto_1
    :try_start_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_8

    .line 252
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    return v2

    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 254
    :cond_9
    throw v0
.end method

.method private isConnected()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInstalledFromGooglePlay()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.google.android.feedback"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setInterfaceHelper(ZZLjava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;->onResult(ZZLjava/lang/String;)V

    :cond_0
    const-string p1, "Your app has not been approved to serve ads. Please go to my.kodular.io and request approval for your app."

    .line 135
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->showWarningDialog()V

    :cond_1
    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->canStartValidation:Z

    return-void
.end method

.method private showWarningDialog()V
    .locals 4

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    const v2, 0x1030239

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$1;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->getResult(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kOnValidationResultListener:Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;

    return-void
.end method

.method public startContentValidation(Ljava/lang/String;)V
    .locals 4

    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kAppId:Ljava/lang/String;

    .line 77
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->canStartValidation:Z

    const-string v0, "Content Protection"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isInstalledFromGooglePlay()Z

    move-result p1

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string p1, "Application was installed from Play Store"

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0, v3, v3, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->kActivity:Landroid/app/Activity;

    check-cast p1, Lcom/google/appinventor/components/runtime/Form;

    .line 87
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Application is Companion"

    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, v3, v3, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Start now application content check."

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance p1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;

    invoke-direct {p1, p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;-><init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;B)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    const-string p1, "There was an internal error while loading the ad. No internet connection."

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, v1, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "Can not load a new ad until the old requested one has finished loading or was shown."

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, v1, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setInterfaceHelper(ZZLjava/lang/String;)V

    return-void
.end method
