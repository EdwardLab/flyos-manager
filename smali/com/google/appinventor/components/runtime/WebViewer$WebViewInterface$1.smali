.class final Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->setWebViewString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

.field private synthetic rJWxANjNJzenLOhFGOM8bv7U8Qw2bZkEFFRrWhEK33fiMPh8xnV3JndH9sVxgqEq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;Ljava/lang/String;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->rJWxANjNJzenLOhFGOM8bv7U8Qw2bZkEFFRrWhEK33fiMPh8xnV3JndH9sVxgqEq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->rJWxANjNJzenLOhFGOM8bv7U8Qw2bZkEFFRrWhEK33fiMPh8xnV3JndH9sVxgqEq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/WebViewer;->WebViewStringChange(Ljava/lang/String;)V

    return-void
.end method
