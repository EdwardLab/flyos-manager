.class final Lcom/google/appinventor/components/runtime/MakeroidFtp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidFtp;->UploadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Ljava/lang/String;

.field private synthetic bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 241
    :try_start_0
    new-instance p1, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->DQyzcUACK1E7EOZ6u3x9ArvpeLM1Qtq6g7Sbq12R8AspY4PE6CpW0lfACU69Eund:Ljava/lang/String;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Ljava/lang/String;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidFtp$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Makeroid Ftp"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    .line 243
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    const-string v1, "UploadFile"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void

    .line 248
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFtp;

    const-string v1, "DownloadFile"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
