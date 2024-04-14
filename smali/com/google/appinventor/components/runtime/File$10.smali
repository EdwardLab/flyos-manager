.class final Lcom/google/appinventor/components/runtime/File$10;
.super Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->ReadFrom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)V
    .locals 7

    .line 532
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$10;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/io/IOException;)V
    .locals 6

    .line 547
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ReadFrom"

    const-string v4, "FileComponent"

    if-eqz v0, :cond_0

    const-string v0, "FileNotFoundException"

    .line 548
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$10;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$10;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    const/16 v4, 0x835

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$10;->fileName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "IOException"

    .line 552
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$10;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$10;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    const/16 v4, 0x836

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$10;->fileName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final process(Ljava/lang/String;)Z
    .locals 2

    .line 535
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$10;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$10$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/File$10$1;-><init>(Lcom/google/appinventor/components/runtime/File$10;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
