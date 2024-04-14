.class final Lcom/google/appinventor/components/runtime/MakeroidFtp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidFtp;->DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

.field private synthetic t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "DownloadFile"

    if-eqz p2, :cond_0

    .line 298
    :try_start_0
    new-instance p1, Lcom/google/appinventor/components/runtime/MakeroidFtp$c;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Lcom/google/appinventor/components/runtime/MakeroidFtp$c;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->haiIuOdmUoc5XQFvR9GJKGOwB3ZezhsWV0MdG7MgpkerzHclvrTRoGLrsRSHUTL5:Ljava/lang/String;

    aput-object v2, p2, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->t2ckruxpPDflxUi8XRIoUkd3SPCNiaP1fIl9I8fgeRcif548vLOXCzLwJMVgcQrg:Ljava/lang/String;

    aput-object v2, p2, v1

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidFtp$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Makeroid Ftp"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    .line 300
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    invoke-virtual {p2, v1, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void

    .line 305
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    invoke-virtual {p2, v1, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
