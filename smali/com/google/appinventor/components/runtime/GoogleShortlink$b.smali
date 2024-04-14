.class final Lcom/google/appinventor/components/runtime/GoogleShortlink$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GoogleShortlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

.field private final fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;)V
    .locals 2

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.googleapis.com/urlshortener/v1/url?key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleShortlink;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Ljava/lang/String;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;B)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;-><init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "application/json"

    const/4 v1, 0x0

    .line 110
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

    const/4 p1, 0x0

    .line 113
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x1388

    .line 115
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x2710

    .line 117
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 119
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 121
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v4, "Content-type"

    .line 122
    invoke-virtual {v2, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept"

    .line 123
    invoke-virtual {v2, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "longUrl"

    .line 126
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 129
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 132
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 134
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Exception"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    const-string v2, "There was a error. Please try again.."

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "id"

    .line 104
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1152
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1154
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleShortlink;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;-><init>(Lcom/google/appinventor/components/runtime/GoogleShortlink$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONException"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    const/4 v0, 0x0

    const-string v1, "There was a error. Please try again.."

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
