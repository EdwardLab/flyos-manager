.class public Lgnu/text/FilePath;
.super Lgnu/text/Path;
.source "FilePath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable<",
        "Lgnu/text/FilePath;",
        ">;"
    }
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    .line 37
    iput-object p1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    .line 38
    iput-object p2, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    return-void
.end method

.method public static coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;
    .locals 1

    .line 73
    instance-of v0, p0, Lgnu/text/FilePath;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Lgnu/text/FilePath;

    return-object p0

    .line 75
    :cond_0
    instance-of v0, p0, Lgnu/text/URIPath;

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/io/File;

    check-cast p0, Lgnu/text/URIPath;

    iget-object p0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Ljava/io/File;

    check-cast p0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p0

    return-object p0

    .line 85
    :cond_2
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_3

    .line 86
    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p0

    return-object p0

    .line 88
    :cond_3
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 90
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 91
    check-cast p0, Ljava/lang/String;

    .line 94
    :goto_0
    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;
    .locals 4

    .line 98
    invoke-static {p0}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v2, -0x4

    const-string v3, "filepath"

    invoke-direct {v0, v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method private static toUri(Ljava/io/File;)Ljava/net/URI;
    .locals 2

    .line 244
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 251
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 252
    :cond_1
    new-instance v0, Ljava/net/URI;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 256
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static valueOf(Ljava/io/File;)Lgnu/text/FilePath;
    .locals 1

    .line 68
    new-instance v0, Lgnu/text/FilePath;

    invoke-direct {v0, p0}, Lgnu/text/FilePath;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/FilePath;
    .locals 2

    .line 63
    new-instance v0, Lgnu/text/FilePath;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lgnu/text/FilePath;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/FilePath;)I
    .locals 1

    .line 174
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    iget-object p1, p1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lgnu/text/FilePath;

    invoke-virtual {p0, p1}, Lgnu/text/FilePath;->compareTo(Lgnu/text/FilePath;)I

    move-result p1

    return p1
.end method

.method public delete()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 186
    instance-of v0, p1, Lgnu/text/FilePath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    check-cast p1, Lgnu/text/FilePath;

    iget-object p1, p1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public exists()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 2

    .line 307
    :try_start_0
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    return-object p0
.end method

.method public getContentLength()J
    .locals 5

    .line 143
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 144
    iget-object v2, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 133
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParent()Lgnu/text/FilePath;
    .locals 1

    .line 165
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lgnu/text/Path;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lgnu/text/FilePath;->getParent()Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lgnu/text/FilePath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 191
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 106
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDirectory()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 118
    iget-object v2, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    .line 119
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 2

    .line 286
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p1

    return-object p1

    .line 288
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    .line 291
    :cond_1
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 293
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 296
    :cond_2
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_3

    .line 297
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lgnu/text/FilePath;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    :goto_1
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p1

    return-object p1
.end method

.method public toFile()Ljava/io/File;
    .locals 1

    .line 201
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    .line 206
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 207
    invoke-virtual {p0, v0}, Lgnu/text/FilePath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lgnu/text/FilePath;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lgnu/text/FilePath;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    :try_start_0
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .line 263
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 264
    invoke-virtual {p0, v0}, Lgnu/text/FilePath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-static {v0}, Lgnu/text/FilePath;->toUri(Ljava/io/File;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
