.class public Lgnu/kawa/lispexpr/ReaderDispatch;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatch.java"


# instance fields
.field kind:I

.field table:Lgnu/kawa/util/RangeTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 11
    new-instance v0, Lgnu/kawa/util/RangeTable;

    invoke-direct {v0}, Lgnu/kawa/util/RangeTable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    const/4 v0, 0x5

    .line 31
    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 11
    new-instance v0, Lgnu/kawa/util/RangeTable;

    invoke-direct {v0}, Lgnu/kawa/util/RangeTable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 36
    :goto_0
    iput p1, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    return-void
.end method

.method public static create(Lgnu/kawa/lispexpr/ReadTable;)Lgnu/kawa/lispexpr/ReaderDispatch;
    .locals 3

    .line 44
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>()V

    .line 45
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v1

    const/16 v2, 0x3a

    .line 46
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x42

    .line 47
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x44

    .line 48
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x45

    .line 49
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x46

    .line 50
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x49

    .line 51
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x4f

    .line 52
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x52

    .line 53
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x53

    .line 54
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x54

    .line 55
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x55

    .line 56
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x58

    .line 57
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x7c

    .line 58
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x3b

    .line 59
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x21

    .line 60
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x5c

    .line 61
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x3d

    .line 62
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x23

    .line 63
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x2f

    .line 65
    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 67
    new-instance v1, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v2, "function"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 p0, 0x27

    invoke-virtual {v0, p0, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 68
    new-instance p0, Lgnu/kawa/lispexpr/ReaderVector;

    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lgnu/kawa/lispexpr/ReaderVector;-><init>(C)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p0}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 70
    new-instance p0, Lgnu/kawa/lispexpr/ReaderXmlElement;

    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReaderXmlElement;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p0}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .line 16
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    return v0
.end method

.method public lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 2

    .line 26
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/util/RangeTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object p1
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 p2, -0x1

    .line 81
    :goto_0
    invoke-virtual {p1}, Lgnu/text/Lexer;->read()I

    move-result p3

    if-gez p3, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected EOF after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x10000

    if-le p3, v0, :cond_1

    goto :goto_1

    :cond_1
    int-to-char p3, p3

    const/16 v0, 0xa

    .line 86
    invoke-static {p3, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_3

    .line 89
    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    .line 94
    :goto_1
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lgnu/kawa/util/RangeTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    if-nez v0, :cond_2

    const/16 v2, 0x65

    .line 98
    invoke-virtual {p1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/text/Lexer;->getLineNumber()I

    move-result p2

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p1}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid dispatch character \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 101
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 103
    :cond_2
    invoke-virtual {v0, p1, p3, p2}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v0

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    invoke-virtual {v0, p1, p1, p2}, Lgnu/kawa/util/RangeTable;->set(IILjava/lang/Object;)V

    return-void
.end method
