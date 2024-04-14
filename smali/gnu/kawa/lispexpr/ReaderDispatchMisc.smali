.class public Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatchMisc.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;


# instance fields
.field protected code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 33
    iput p1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    .locals 1

    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-object v0
.end method

.method public static readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 213
    iget p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 214
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lgnu/mapping/InPort;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 219
    move-object v3, v0

    check-cast v3, Lgnu/mapping/InPort;

    iget-char v4, v3, Lgnu/mapping/InPort;->readState:C

    const/16 v5, 0x2f

    .line 220
    iput-char v5, v3, Lgnu/mapping/InPort;->readState:C

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 228
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "unexpected EOF in regex literal"

    if-gez v3, :cond_1

    .line 230
    :try_start_1
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    :cond_1
    if-ne v3, p1, :cond_a

    .line 250
    new-instance p1, Ljava/lang/String;

    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v5, p2

    invoke-direct {p1, v3, p2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 254
    :goto_1
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v3

    const/16 v5, 0x69

    if-eq v3, v5, :cond_9

    const/16 v5, 0x49

    if-ne v3, v5, :cond_2

    goto :goto_4

    :cond_2
    const/16 v5, 0x73

    if-eq v3, v5, :cond_8

    const/16 v5, 0x53

    if-ne v3, v5, :cond_3

    goto :goto_3

    :cond_3
    const/16 v5, 0x6d

    if-eq v3, v5, :cond_7

    const/16 v5, 0x4d

    if-ne v3, v5, :cond_4

    goto :goto_2

    .line 270
    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognized regex option \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 278
    :cond_5
    invoke-static {p1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    iput p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eqz v1, :cond_6

    .line 284
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v4, v0, Lgnu/mapping/InPort;->readState:C

    :cond_6
    return-object p1

    :cond_7
    :goto_2
    or-int/lit8 v2, v2, 0x8

    goto :goto_5

    :cond_8
    :goto_3
    or-int/lit8 v2, v2, 0x20

    goto :goto_5

    :cond_9
    :goto_4
    or-int/lit8 v2, v2, 0x42

    .line 276
    :goto_5
    :try_start_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->skip()V

    goto :goto_1

    :cond_a
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_e

    .line 235
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    const/16 v7, 0x20

    if-eq v3, v7, :cond_b

    const/16 v7, 0x9

    if-eq v3, v7, :cond_b

    const/16 v7, 0xd

    if-eq v3, v7, :cond_b

    const/16 v7, 0xa

    if-ne v3, v7, :cond_c

    .line 236
    :cond_b
    instance-of v7, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_c

    .line 239
    move-object v7, p0

    check-cast v7, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v7, v3}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v3

    const/4 v7, -0x2

    if-ne v3, v7, :cond_c

    goto/16 :goto_0

    :cond_c
    if-gez v3, :cond_d

    .line 244
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    :cond_d
    if-eq v3, p1, :cond_e

    .line 246
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 248
    :cond_e
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 282
    iput p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eqz v1, :cond_f

    .line 284
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v4, v0, Lgnu/mapping/InPort;->readState:C

    :cond_f
    throw p1
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 39
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    .line 44
    iget v1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    if-ltz v1, :cond_0

    move p2, v1

    :cond_0
    const/16 v1, 0x23

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_0

    const-string p2, "An invalid #-construct was read."

    .line 204
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 205
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 96
    :sswitch_0
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    .line 97
    instance-of p2, p1, Lgnu/mapping/InPort;

    const/16 p3, 0x7c

    if-eqz p2, :cond_1

    .line 99
    move-object v2, p1

    check-cast v2, Lgnu/mapping/InPort;

    iget-char v3, v2, Lgnu/mapping/InPort;->readState:C

    .line 100
    iput-char p3, v2, Lgnu/mapping/InPort;->readState:C

    .line 104
    :cond_1
    :try_start_0
    invoke-virtual {v0, v1, p3}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 109
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    .line 111
    :cond_2
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_3

    .line 109
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    :cond_3
    throw p3

    .line 58
    :sswitch_1
    invoke-static {v0}, Lgnu/kawa/lispexpr/LispReader;->readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_2
    const/16 p1, 0x10

    .line 79
    invoke-static {v3, v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :sswitch_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :sswitch_4
    int-to-char p1, p2

    .line 70
    invoke-static {v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object p1

    return-object p1

    :sswitch_5
    const/16 p2, 0x24

    if-le p3, p2, :cond_4

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the radix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is too big (max is 36)"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    const/16 p3, 0x24

    .line 77
    :cond_4
    invoke-static {v3, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_6
    const/16 p1, 0x8

    .line 83
    invoke-static {v3, v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 64
    :sswitch_7
    invoke-virtual {p1}, Lgnu/text/Lexer;->peek()I

    move-result p1

    int-to-char p1, p1

    .line 65
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x46

    .line 66
    invoke-static {v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object p1

    return-object p1

    .line 67
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 88
    :sswitch_8
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 89
    invoke-virtual {v0, p2}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 90
    invoke-static {v2, v0, v3}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_9
    const/16 p1, 0xa

    .line 81
    invoke-static {v3, v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 85
    :sswitch_a
    invoke-static {v3, v0, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 175
    :sswitch_b
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p2

    .line 176
    instance-of p1, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz p1, :cond_7

    .line 179
    iget-object p1, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    if-nez p1, :cond_6

    .line 182
    new-instance p1, Lgnu/kawa/util/GeneralHashTable;

    invoke-direct {p1}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 183
    iput-object p1, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 185
    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object p2

    .line 113
    :sswitch_c
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    .line 114
    instance-of p2, p1, Lgnu/mapping/InPort;

    if-eqz p2, :cond_8

    .line 116
    move-object p3, p1

    check-cast p3, Lgnu/mapping/InPort;

    iget-char v3, p3, Lgnu/mapping/InPort;->readState:C

    const/16 v1, 0x3b

    .line 117
    iput-char v1, p3, Lgnu/mapping/InPort;->readState:C

    .line 121
    :cond_8
    :try_start_1
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_9

    .line 126
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    .line 128
    :cond_9
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_a

    .line 126
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    :cond_a
    throw p3

    .line 51
    :sswitch_d
    iget p1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 52
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p2

    const/16 p3, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 53
    iget p2, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr p2, p1

    .line 54
    new-instance p3, Ljava/lang/String;

    iget-object v1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {p3, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 55
    iput p1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object p1

    return-object p1

    .line 93
    :sswitch_e
    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 130
    :sswitch_f
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result p2

    const/16 p3, 0x28

    if-ne p2, p3, :cond_f

    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result p3

    if-lez p3, :cond_f

    check-cast p2, Lgnu/lists/Pair;

    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_f

    .line 138
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown reader constructor "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_b
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-nez v2, :cond_c

    instance-of v2, v1, Lgnu/bytecode/Type;

    if-nez v2, :cond_c

    const-string p2, "reader constructor must be procedure or type name"

    .line 143
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    add-int/lit8 p3, p3, -0x1

    .line 147
    instance-of v2, v1, Lgnu/bytecode/Type;

    add-int v4, v2, p3

    .line 148
    new-array v4, v4, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p3, :cond_d

    .line 152
    check-cast p2, Lgnu/lists/Pair;

    add-int v6, v2, v5

    .line 153
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    .line 154
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_d
    if-lez v2, :cond_e

    .line 160
    :try_start_2
    aput-object v1, v4, v3

    .line 161
    sget-object p2, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {p2, v4}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 163
    :cond_e
    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_2
    move-exception p2

    .line 167
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caught "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " applying reader constructor "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const-string p2, "a non-empty list starting with a symbol must follow #,"

    .line 172
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 173
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 189
    :sswitch_10
    instance-of p2, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz p2, :cond_10

    .line 192
    iget-object p2, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    if-eqz p2, :cond_10

    .line 195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 196
    invoke-virtual {p2, p3, p1}, Lgnu/kawa/util/GeneralHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_10

    return-object p2

    :cond_10
    const-string p2, "an unrecognized #n# back-reference was read"

    .line 201
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 202
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 60
    :sswitch_11
    invoke-static {v0}, Lgnu/kawa/lispexpr/LispReader;->readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_11
        0x23 -> :sswitch_10
        0x2c -> :sswitch_f
        0x2f -> :sswitch_e
        0x3a -> :sswitch_d
        0x3b -> :sswitch_c
        0x3d -> :sswitch_b
        0x42 -> :sswitch_a
        0x44 -> :sswitch_9
        0x45 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_8
        0x4f -> :sswitch_6
        0x52 -> :sswitch_5
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x55 -> :sswitch_4
        0x58 -> :sswitch_2
        0x5c -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method
