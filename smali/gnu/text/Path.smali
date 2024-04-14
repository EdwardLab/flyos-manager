.class public abstract Lgnu/text/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static defaultPath:Lgnu/text/Path;

.field private static pathLocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/text/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final userDirPath:Lgnu/text/FilePath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    sput-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    .line 22
    sput-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 1

    .line 53
    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Lgnu/text/Path;

    return-object p0

    .line 55
    :cond_0
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 56
    check-cast p0, Ljava/net/URL;

    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 59
    check-cast p0, Ljava/net/URI;

    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    return-object p0

    .line 61
    :cond_2
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_3

    .line 62
    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p0

    return-object p0

    .line 64
    :cond_3
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_5
    check-cast p0, Ljava/lang/String;

    .line 70
    :goto_0
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p0

    return-object p0

    .line 73
    :cond_6
    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object p0

    return-object p0
.end method

.method public static currentPath()Lgnu/text/Path;
    .locals 1

    .line 35
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/text/Path;

    if-eqz v0, :cond_0

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    return-object v0
.end method

.method public static openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/URIPath;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x2f

    if-ge v3, v1, :cond_3

    if-ge v3, v2, :cond_3

    .line 342
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 343
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-ne v7, v6, :cond_1

    move v4, v3

    :cond_1
    const/16 v6, 0x3a

    if-ne v7, v6, :cond_2

    move v5, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v5, :cond_7

    add-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_4

    if-le v1, v5, :cond_4

    .line 351
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 360
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 372
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_5

    const-string v2, "../"

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 374
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public static setCurrentPath(Lgnu/text/Path;)V
    .locals 1

    .line 45
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 88
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 100
    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static uriSchemeLength(Ljava/lang/String;)I
    .locals 5

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    if-nez v1, :cond_1

    .line 118
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 5

    .line 131
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 132
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 4

    .line 78
    invoke-static {p0}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v2, -0x4

    const-string v3, "path"

    invoke-direct {v0, v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public delete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 5

    .line 167
    invoke-virtual {p0}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAbsolute()Lgnu/text/Path;
    .locals 1

    .line 385
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 386
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDirectory()Lgnu/text/Path;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ""

    .line 201
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 7

    .line 235
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    return-object v1

    .line 243
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x2e

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, v2, -0x1

    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    :cond_3
    const/16 v5, 0x2f

    if-eq v3, v5, :cond_5

    .line 250
    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v3, v5, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_1

    add-int/2addr v2, v6

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 6

    .line 211
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    :goto_0
    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    const-string v0, ""

    return-object v0

    .line 220
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3

    .line 221
    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_1

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_1

    :cond_3
    add-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_4

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLastModified()J
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lgnu/text/Path;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isAbsolute()Z
.end method

.method public isDirectory()Z
    .locals 3

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 154
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public resolve(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 1

    .line 289
    invoke-virtual {p1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p1

    return-object p1
.end method

.method public abstract resolve(Ljava/lang/String;)Lgnu/text/Path;
.end method

.method public final toURI()Ljava/net/URI;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toURL()Ljava/net/URL;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
