.class public Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewInterface"
.end annotation


# instance fields
.field private PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/content/Context;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/Context;

    const-string p1, ""

    .line 1051
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWebViewString()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    return-object v0
.end method

.method public setWebViewString(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1071
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->access$200(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebViewStringFromBlocks(Ljava/lang/String;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->PSE7l4KPPlsF25SGtLyfrRQNAOx6mjYRNm7iKMXDtxC5YDpv0OiYAkqPZjvcwjm5:Ljava/lang/String;

    return-void
.end method
