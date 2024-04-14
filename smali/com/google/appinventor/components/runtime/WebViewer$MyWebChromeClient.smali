.class public Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->OnConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 361
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->ProgressChanged(I)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 373
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 375
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->access$302(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->access$302(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 379
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x1

    .line 380
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "*/*"

    .line 381
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :try_start_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/WebViewer;->access$500(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/app/Activity;

    move-result-object p3

    const-string v2, "Choose file"

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/WebViewer;->access$400()I

    move-result v2

    invoke-virtual {p3, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "WebViewer"

    const-string v2, "No activity found to handle file chooser intent."

    .line 385
    invoke-static {p3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_0
    return v1
.end method
