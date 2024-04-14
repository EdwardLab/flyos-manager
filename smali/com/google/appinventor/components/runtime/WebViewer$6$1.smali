.class final Lcom/google/appinventor/components/runtime/WebViewer$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$6;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Sh2mKYKwuehs0F1mmv0TRntZIP9rdF7C9GwSzNCd1X4nGlljhrD3h4lWlup0CGLh:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/webkit/GeolocationPermissions$Callback;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$6;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$6;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$6$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$6;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$6$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$6$1;->Sh2mKYKwuehs0F1mmv0TRntZIP9rdF7C9GwSzNCd1X4nGlljhrD3h4lWlup0CGLh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 991
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$6$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$6$1;->Sh2mKYKwuehs0F1mmv0TRntZIP9rdF7C9GwSzNCd1X4nGlljhrD3h4lWlup0CGLh:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
