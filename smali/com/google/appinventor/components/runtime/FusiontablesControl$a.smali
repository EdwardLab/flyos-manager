.class final Lcom/google/appinventor/components/runtime/FusiontablesControl$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
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
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 529
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->progress:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;B)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "FUSION"

    const/4 v1, 0x0

    .line 543
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 546
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 547
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 528
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 528
    check-cast p1, Ljava/lang/String;

    .line 1561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fusiontables"

    const-string v2, "processing query..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$a;->progress:Landroid/app/ProgressDialog;

    return-void
.end method
