.class public abstract Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileStreamWriteOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected final process(Ljava/io/OutputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->process(Ljava/io/OutputStreamWriter;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 55
    throw p1
.end method

.method protected abstract process(Ljava/io/OutputStreamWriter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
