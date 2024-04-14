.class public Lgnu/kawa/util/FixupHtmlToc;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static argFiles:[Lgnu/kawa/util/FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 36
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lgnu/kawa/util/FileInfo;

    sput-object v0, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 39
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v2

    const/4 v3, 0x1

    .line 40
    iput-boolean v3, v2, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    .line 41
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 46
    sget-object v1, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 47
    sget-object v1, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/kawa/util/FileInfo;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method
