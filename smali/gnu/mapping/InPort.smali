.class public Lgnu/mapping/InPort;
.super Lgnu/text/LineBufferedReader;
.source "InPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field public static final inLocation:Lgnu/mapping/ThreadLocation;

.field private static systemInPort:Lgnu/mapping/InPort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    new-instance v0, Lgnu/mapping/TtyInPort;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v2, "/dev/stdin"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    sget-object v3, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    sput-object v0, Lgnu/mapping/InPort;->systemInPort:Lgnu/mapping/InPort;

    .line 67
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "in-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    .line 69
    sget-object v1, Lgnu/mapping/InPort;->systemInPort:Lgnu/mapping/InPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-virtual {p0, p2}, Lgnu/mapping/InPort;->setPath(Lgnu/text/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 50
    invoke-static {p1, p3}, Lgnu/mapping/InPort;->convertToReader(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 51
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p3, p1, :cond_0

    const/16 p1, 0x800

    :try_start_0
    new-array p1, p1, [C

    .line 57
    invoke-virtual {p0, p1}, Lgnu/mapping/InPort;->setBuffer([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lgnu/mapping/InPort;->setConvertCR(Z)V

    :catch_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    .line 16
    invoke-virtual {p0, p2}, Lgnu/mapping/InPort;->setPath(Lgnu/text/Path;)V

    return-void
.end method

.method public static convertToReader(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/Reader;
    .locals 2

    if-eqz p1, :cond_1

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    const-string p1, "8859_1"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown character encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method public static inDefault()Lgnu/mapping/InPort;
    .locals 1

    .line 73
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/InPort;

    return-object v0
.end method

.method public static openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 93
    new-instance v0, Lgnu/mapping/InPort;

    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v1

    const-string v2, "port-char-encoding"

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    invoke-static {v1, p0}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object p0

    return-object p0
.end method

.method public static setInDefault(Lgnu/mapping/InPort;)V
    .locals 1

    .line 78
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 2

    const-string v0, "#<input-port"

    .line 99
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    .line 103
    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 104
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3e

    .line 106
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method
