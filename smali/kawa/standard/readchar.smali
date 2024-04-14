.class public Lkawa/standard/readchar;
.super Lgnu/mapping/Procedure0or1;
.source "readchar.java"


# static fields
.field public static final peekChar:Lkawa/standard/readchar;

.field public static final readChar:Lkawa/standard/readchar;


# instance fields
.field peeking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lkawa/standard/readchar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    .line 13
    new-instance v0, Lkawa/standard/readchar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "peek-char"

    goto :goto_0

    :cond_0
    const-string v0, "read-char"

    .line 18
    :goto_0
    invoke-direct {p0, v0}, Lgnu/mapping/Procedure0or1;-><init>(Ljava/lang/String;)V

    .line 19
    iput-boolean p1, p0, Lkawa/standard/readchar;->peeking:Z

    return-void
.end method


# virtual methods
.method public final apply0()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 90
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lgnu/mapping/InPort;

    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Ljava/io/Reader;

    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 95
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "<input-port>"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method final readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 1

    .line 26
    :try_start_0
    iget-boolean v0, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/mapping/InPort;->peek()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/InPort;->read()I

    move-result p1

    :goto_0
    if-gez p1, :cond_1

    .line 28
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 29
    :cond_1
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 33
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IO Exception caught"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final readChar(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    .line 74
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 75
    :cond_1
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 79
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IO Exception caught"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final readChar(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/Reader;->mark(I)V

    .line 45
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    .line 51
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 52
    :cond_1
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 56
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IO Exception caught"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
