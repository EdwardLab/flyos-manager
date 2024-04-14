.class public Lgnu/kawa/lispexpr/ReaderQuote;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderQuote.java"


# instance fields
.field magicSymbol:Ljava/lang/Object;

.field magicSymbol2:Ljava/lang/Object;

.field next:C


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;CLjava/lang/Object;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 26
    iput-char p2, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    .line 27
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 34
    check-cast p1, Lgnu/kawa/lispexpr/LispReader;

    .line 35
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    .line 37
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 38
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 39
    iget-char v2, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    .line 42
    iget-char v3, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-ne v2, v3, :cond_0

    .line 43
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    .line 45
    invoke-virtual {p1, v2}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 48
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 49
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 50
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1, p2, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    invoke-static {v1, p1, p2, p3, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    return-object p1
.end method
