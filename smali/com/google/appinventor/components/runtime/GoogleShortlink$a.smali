.class final Lcom/google/appinventor/components/runtime/GoogleShortlink$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GoogleShortlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
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
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->url:Ljava/net/URL;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;B)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;-><init>(Lcom/google/appinventor/components/runtime/GoogleShortlink;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MalformedURLException"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->url:Ljava/net/URL;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->getFinalURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 168
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exception"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    const/4 v0, 0x0

    const-string v1, "There was a error. Please try again.."

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
