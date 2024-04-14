.class public Lcom/google/appinventor/components/runtime/util/FileReadOperation;
.super Lcom/google/appinventor/components/runtime/util/FileStreamOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V
    .locals 8

    .line 42
    sget-object v6, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic openFile()Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->openFile()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected openFile()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->process(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileReadOperation;->process([B)Z

    move-result p1

    return p1
.end method

.method public process([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
