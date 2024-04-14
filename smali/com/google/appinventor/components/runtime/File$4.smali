.class final Lcom/google/appinventor/components/runtime/File$4;
.super Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

.field final synthetic jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 793
    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$4;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$4;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/io/IOException;)V
    .locals 6

    .line 829
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->onError(Ljava/io/IOException;)V

    .line 831
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$4;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$4;->getScopedFile()Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$4;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$4;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$4;->method:Ljava/lang/String;

    const/16 v3, 0x838

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final process(Ljava/io/OutputStreamWriter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$4;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 818
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$4;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/File$4$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/File$4$1;-><init>(Lcom/google/appinventor/components/runtime/File$4;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 6

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$4;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 800
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 801
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileComponent"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 806
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File$4;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$4;->method:Ljava/lang/String;

    const/16 v4, 0x837

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 807
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 806
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 811
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    return-void
.end method
