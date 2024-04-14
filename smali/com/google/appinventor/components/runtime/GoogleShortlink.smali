.class public final Lcom/google/appinventor/components/runtime/GoogleShortlink;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create Short links with the Google API"
    iconName = "images/google.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "httpcore.jar",
        "httpmime.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GoogleShortlink$a;,
        Lcom/google/appinventor/components/runtime/GoogleShortlink$b;
    }
.end annotation


# instance fields
.field private AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Ljava/lang/String;

.field private KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/NetworkInfo;

.field private final xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Ljava/lang/String;

    const-string v1, "https://www.googleapis.com/urlshortener/v1/url"

    .line 54
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    const-string p1, "GoogleShortlink"

    const-string v0, "GoogleShortlink Created"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getFinalURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.8"

    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 202
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_2

    :cond_0
    const-string v1, "Location"

    .line 204
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->getFinalURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleShortlink;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleShortlink;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here your api key to use the service. How to get a api key? Read here more: \"https://goo.gl/AFks2R\""
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Ljava/lang/String;

    return-void
.end method

.method public final DefaultApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Don\'t use this default api key for your final app\'s. This default api key is only for development mode. Sponsored by NMD (Next Mobile Development)."
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final GotResponse(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a link was converted."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotResponse"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ShortToUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a short link from google into a normal link. Powerd by Google."
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;-><init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string p1, "There was a error. Please try again.."

    .line 84
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    return-void
.end method

.method public final UrlToShort(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a link into a short link. Powerd by Google."
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;-><init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string p1, "There was a error. Please try again.."

    .line 73
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    return-void
.end method
