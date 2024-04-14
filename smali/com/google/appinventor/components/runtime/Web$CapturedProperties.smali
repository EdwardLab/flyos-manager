.class Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CapturedProperties"
.end annotation


# instance fields
.field final allowCookies:Z

.field final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final responseFileName:Ljava/lang/String;

.field final saveResponse:Z

.field final timeout:I

.field final url:Ljava/net/URL;

.field final urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/appinventor/components/runtime/Web$b;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    .line 151
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$100(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->allowCookies:Z

    .line 152
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$200(Lcom/google/appinventor/components/runtime/Web;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->saveResponse:Z

    .line 153
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$400(Lcom/google/appinventor/components/runtime/Web;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    .line 155
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$500(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Web;->access$600(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;

    move-result-object p1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 167
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    return-void
.end method
