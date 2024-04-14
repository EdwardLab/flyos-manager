.class public Lgnu/kawa/lispexpr/ReaderColon;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderColon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 15
    check-cast p1, Lgnu/kawa/lispexpr/LispReader;

    .line 16
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object p3

    .line 17
    iget v0, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 18
    iget-char v1, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p2, v1, :cond_1

    .line 20
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    const-string p1, "::"

    .line 22
    invoke-virtual {p3, p1}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1, p2}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    move p2, v1

    .line 27
    :cond_1
    invoke-virtual {p1, p2, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
