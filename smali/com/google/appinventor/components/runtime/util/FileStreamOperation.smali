.class public Lcom/google/appinventor/components/runtime/util/FileStreamOperation;
.super Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Closeable;",
        ">",
        "Lcom/google/appinventor/components/runtime/util/SingleFileOperation;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileStreamOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 2

    .line 86
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IO error in file operation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected openFile()Ljava/io/Closeable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclasses must implement FileOperation#openFile."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected process(Ljava/io/Closeable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Subclasses must implement FileOperation#process."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 2

    const/4 p1, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->openFile()Ljava/io/Closeable;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->process(Ljava/io/Closeable;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->onError(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 75
    throw v0
.end method
