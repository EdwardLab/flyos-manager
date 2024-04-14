.class public Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.super Lcom/google/appinventor/components/runtime/util/FileStreamOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZ)V
    .locals 7

    if-eqz p5, :cond_0

    .line 64
    sget-object p5, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    goto :goto_0

    :cond_0
    sget-object p5, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    :goto_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 66
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object p1

    sget-object p2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-eq p1, p2, :cond_1

    return-void

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot perform a write operation on an asset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V
    .locals 8

    if-eqz p6, :cond_0

    .line 43
    sget-object p6, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    goto :goto_0

    :cond_0
    sget-object p6, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    :goto_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    const-string p1, "//"

    .line 45
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot perform a write operation on an asset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected bridge synthetic openFile()Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->openFile()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected openFile()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->fileName:Ljava/lang/String;

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne v2, v3, :cond_0

    const-string v2, "wt"

    goto :goto_0

    :cond_0
    const-string v2, "wa"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "file:"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 99
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/OutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
