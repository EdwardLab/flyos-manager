.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET, POST, PUT, and DELETE requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "json.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$CapturedProperties;,
        Lcom/google/appinventor/components/runtime/Web$a;,
        Lcom/google/appinventor/components/runtime/Web$b;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Web"

.field private static final mimeTypeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private haveReadPermission:Z

.field private haveWritePermission:Z

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private saveResponse:Z

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 176
    sput-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "application/zip"

    const-string v2, "zip"

    .line 177
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    .line 178
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    .line 179
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    .line 180
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image/gif"

    const-string v2, "gif"

    .line 181
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    .line 182
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image/png"

    const-string v2, "png"

    .line 183
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    .line 184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text/plain"

    const-string v2, "txt"

    .line 185
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text/html"

    const-string v2, "html"

    .line 186
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text/xml"

    const-string v2, "xml"

    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v1, ""

    .line 194
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 196
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 198
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 199
    iput v1, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 203
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    .line 204
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    .line 223
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 224
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 212
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 194
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 196
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 198
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 203
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    .line 204
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    .line 213
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 215
    new-instance p1, Ljava/net/CookieManager;

    invoke-direct {p1}, Ljava/net/CookieManager;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/Web;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Web;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Web;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$b;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/Web;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    return p1
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1258
    :try_start_0
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/appinventor/components/runtime/Web$b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 1263
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Web$b;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v2, Lcom/google/appinventor/components/runtime/Web$b;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, p0, p1, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1260
    :catch_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x455

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {v2, p0, p1, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 1177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x3b

    .line 1184
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 1186
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1188
    :cond_1
    sget-object p1, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "tmp"

    .line 1192
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 773
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 775
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "jsonText is not a legal JSON value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 1165
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1170
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 1167
    throw p0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 1110
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 1118
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x0

    .line 1119
    invoke-virtual {v2, p0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1121
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1124
    throw p0
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 0

    .line 1087
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1007
    iget v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1008
    iget v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "PUT"

    .line 1010
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1013
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1017
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1018
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1019
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1020
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 1026
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1027
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1028
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1029
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    .line 871
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_0

    .line 874
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v10}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v13, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 875
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_0
    iget-boolean v1, v13, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v8, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    iget-object v3, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 881
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    .line 880
    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v1

    .line 882
    iget-object v2, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v13, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    if-nez v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 883
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v13, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    xor-int/2addr v2, v7

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 890
    iget-object v14, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v15, Lcom/google/appinventor/components/runtime/Web$6;

    new-array v1, v9, [Ljava/lang/String;

    .line 891
    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/google/appinventor/components/runtime/Web$6;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    return-void

    :cond_3
    move-object/from16 v1, p4

    .line 915
    :try_start_0
    invoke-static {v8, v1}, Lcom/google/appinventor/components/runtime/Web;->openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v11
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v11, :cond_7

    if-eqz v0, :cond_4

    .line 919
    :try_start_1
    invoke-static {v11, v0}, Lcom/google/appinventor/components/runtime/Web;->writeRequestData(Ljava/net/HttpURLConnection;[B)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_5

    .line 921
    invoke-direct {v13, v11, v10}, Lcom/google/appinventor/components/runtime/Web;->writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 925
    :cond_5
    :goto_1
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 926
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/Web;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 927
    invoke-direct {v13, v11}, Lcom/google/appinventor/components/runtime/Web;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    .line 929
    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v0, :cond_6

    .line 930
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    invoke-direct {v13, v11, v0, v5}, Lcom/google/appinventor/components/runtime/Web;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 934
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/google/appinventor/components/runtime/Web$7;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web$7;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 941
    :cond_6
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/Web;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 944
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/google/appinventor/components/runtime/Web$8;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web$8;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :goto_2
    :try_start_2
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 954
    :catch_0
    :try_start_3
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Web$9;

    invoke-direct {v1, v13, v8}, Lcom/google/appinventor/components/runtime/Web$9;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 960
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 962
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 963
    throw v0
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    return-void

    :catch_1
    nop

    const-string v0, "Get"

    .line 977
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x450

    if-eqz v0, :cond_8

    const/16 v1, 0x44d

    goto :goto_4

    :cond_8
    const-string v0, "PostFile"

    .line 979
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const-string v0, "PutFile"

    .line 981
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const-string v0, "Delete"

    .line 983
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x45a

    goto :goto_4

    :cond_b
    const/16 v1, 0x44f

    .line 988
    :goto_4
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-virtual {v0, v13, v12, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 973
    :catch_2
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x45d

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-virtual {v0, v13, v12, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_3
    move-exception v0

    .line 971
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v12, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception v0

    .line 968
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 969
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v0

    new-array v2, v9, [Ljava/lang/Object;

    .line 968
    invoke-virtual {v1, v13, v12, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_5
    move-exception v0

    .line 966
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v13, v12, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$b;
        }
    .end annotation

    .line 1202
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1203
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1204
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 1206
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1207
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1208
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 1210
    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1212
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 1216
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1221
    instance-of v6, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_0

    .line 1223
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x0

    .line 1224
    :goto_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1225
    invoke-virtual {v3, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 1226
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1231
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_1
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    :cond_2
    new-instance p0, Lcom/google/appinventor/components/runtime/Web$b;

    const/16 v0, 0x457

    add-int/2addr v2, v5

    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/Web$b;-><init>(II)V

    throw p0

    .line 1242
    :cond_3
    new-instance p0, Lcom/google/appinventor/components/runtime/Web$b;

    const/16 v0, 0x456

    add-int/2addr v2, v5

    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/Web$b;-><init>(II)V

    throw p0

    :cond_4
    return-object v0
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1092
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 1094
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 576
    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 582
    :cond_0
    new-instance v7, Lcom/google/appinventor/components/runtime/Web$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1129
    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/Web;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 1132
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 1133
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 p2, 0x83c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1135
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw p1

    .line 1138
    :cond_1
    :goto_0
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-direct {p3, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1140
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1144
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1148
    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1151
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1154
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    .line 1157
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 1151
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1152
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1154
    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    .line 1155
    throw p1
.end method

.method private static writeRequestData(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1043
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1045
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1046
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p0, 0x0

    .line 1048
    :try_start_0
    array-length v1, p1

    invoke-virtual {v0, p1, p0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1049
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1052
    throw p0
.end method

.method private writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x1

    .line 1066
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    .line 1067
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1068
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1071
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1075
    invoke-virtual {p2, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1082
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 1079
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1080
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1082
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1083
    throw p1
.end method


# virtual methods
.method public AllowCookies(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-nez p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AllowCookies"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public AllowCookies()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    .line 282
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method public BuildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 654
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v1, p1, Lcom/google/appinventor/components/runtime/Web$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p1, p1, Lcom/google/appinventor/components/runtime/Web$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "BuildRequestData"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public ClearCookies()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ClearCookies"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Delete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "Delete"

    .line 543
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$4;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Get()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "Get"

    .line 390
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 630
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotFile"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 615
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "GotText"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as &amp;amp;, &amp;lt;, &amp;gt;, &amp;apos;, and &amp;quot; are changed to &amp;, &lt;, &gt;, &#39;, and &quot;. Entities such as &amp;#xhhhh, and &amp;#nnnn are changed to the appropriate characters."
    .end annotation

    .line 838
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 840
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x452

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "HtmlTextDecode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 755
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 757
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x451

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "JsonTextDecode"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method public PostFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PostFile"

    .line 453
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public PostText(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "PostText"

    const-string v2, "POST"

    .line 417
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PostTextWithEncoding"

    const-string v1, "POST"

    .line 435
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PutFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PutFile"

    .line 516
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public PutText(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "PutText"

    const-string v2, "PUT"

    .line 480
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PutTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    const-string v0, "PutTextWithEncoding"

    const-string v1, "PUT"

    .line 498
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 268
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    .line 269
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/Web$b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v1, p1, Lcom/google/appinventor/components/runtime/Web$b;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p1, p1, Lcom/google/appinventor/components/runtime/Web$b;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "RequestHeaders"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ResponseFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-void
.end method

.method public SaveResponse(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 315
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return-void
.end method

.method public SaveResponse()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method public TimedOut(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TimedOut"

    .line 641
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Timeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of milliseconds that a web request will wait for a response before giving up. If set to 0, then there is no time limit on how long the request will wait."
    .end annotation

    .line 350
    iget v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return v0
.end method

.method public Timeout(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-ltz p1, :cond_0

    .line 364
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return-void

    .line 362
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string v0, "Web Timeout must be a non-negative integer."

    invoke-direct {p1, v0}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UriDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 725
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Web"

    const-string v1, "UTF-8 is unsupported?"

    .line 730
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    return-object p1
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 705
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Web"

    const-string v1, "UTF-8 is unsupported?"

    .line 710
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    return-object p1
.end method

.method public Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-void
.end method

.method public XMLTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML string to produce a list structure.  See the App Inventor documentation on \"Other topics, notes, and details\" for information."
    .end annotation

    .line 807
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception in XMLTextDecode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x451

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "XMLTextDecode"

    .line 813
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 816
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$a;
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    .line 673
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 674
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 676
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 677
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 678
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 680
    invoke-virtual {v4, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 682
    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 683
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const-string v2, "&"

    goto :goto_0

    .line 685
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/Web$a;

    const/16 v0, 0x459

    add-int/2addr v3, v6

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/Web$a;-><init>(II)V

    throw p1

    .line 689
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/Web$a;

    const/16 v0, 0x458

    add-int/2addr v3, v6

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/Web$a;-><init>(II)V

    throw p1

    .line 693
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
