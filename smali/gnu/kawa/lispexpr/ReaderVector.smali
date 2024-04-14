.class public Lgnu/kawa/lispexpr/ReaderVector;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderVector.java"


# instance fields
.field close:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 16
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    return-void
.end method

.method public static readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 29
    instance-of p2, p1, Lgnu/mapping/InPort;

    if-eqz p2, :cond_1

    .line 31
    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    iget-char v1, v0, Lgnu/mapping/InPort;->readState:C

    const/16 v2, 0x5d

    if-ne p3, v2, :cond_0

    const/16 v2, 0x5b

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    .line 32
    :goto_0
    iput-char v2, v0, Lgnu/mapping/InPort;->readState:C

    goto :goto_1

    :cond_1
    const/16 v1, 0x20

    .line 36
    :goto_1
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 37
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    .line 40
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    if-gez v3, :cond_3

    const-string v4, "unexpected EOF in vector"

    .line 42
    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    :cond_3
    if-ne v3, p3, :cond_5

    .line 60
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 62
    new-instance p3, Lgnu/lists/FVector;

    invoke-direct {p3, p0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    .line 67
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v1, p1, Lgnu/mapping/InPort;->readState:C

    :cond_4
    return-object p3

    .line 45
    :cond_5
    :try_start_1
    invoke-virtual {p0, v3, v2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    instance-of v4, v3, Lgnu/mapping/Values;

    if-eqz v4, :cond_6

    .line 48
    check-cast v3, Lgnu/mapping/Values;

    invoke-virtual {v3}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v3

    .line 49
    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_2

    .line 51
    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 55
    :cond_6
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne v3, v4, :cond_7

    .line 56
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 57
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_8

    .line 67
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v1, p1, Lgnu/mapping/InPort;->readState:C

    :cond_8
    throw p0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 22
    move-object p2, p1

    check-cast p2, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    iget-char v0, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    invoke-static {p2, p1, p3, v0}, Lgnu/kawa/lispexpr/ReaderVector;->readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1
.end method
