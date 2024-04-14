.class final Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ATUMLOoHHffbHqXfKo1DqLB6OFxsAaTmX7VyjvAowYdVLTiF9JXThRDL9odeah0z:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

.field private synthetic wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Ljava/lang/String;

.field private synthetic wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

    iput p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->ATUMLOoHHffbHqXfKo1DqLB6OFxsAaTmX7VyjvAowYdVLTiF9JXThRDL9odeah0z:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient$1;->ATUMLOoHHffbHqXfKo1DqLB6OFxsAaTmX7VyjvAowYdVLTiF9JXThRDL9odeah0z:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "ErrorOccurred"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
