.class public Lgnu/kawa/lispexpr/ReaderParens;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderParens.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderParens;


# instance fields
.field close:C

.field command:Ljava/lang/Object;

.field kind:I

.field open:C


# direct methods
.method public constructor <init>(CCILjava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 51
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderParens;->open:C

    .line 52
    iput-char p2, p0, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    .line 53
    iput p3, p0, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    .line 54
    iput-object p4, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 1

    const/4 v0, 0x5

    .line 24
    invoke-static {p0, p1, v0}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_1

    const/16 v1, 0x29

    if-ne p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 31
    sget-object v1, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v1, p0, p1, p2, v0}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    sput-object v1, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    .line 33
    :cond_0
    sget-object p0, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    return-object p0

    .line 37
    :cond_1
    new-instance v1, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v1, p0, p1, p2, v0}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance(CCILjava/lang/Object;)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 1

    if-nez p3, :cond_0

    .line 44
    invoke-static {p0, p1, p2}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    return-object v0
.end method

.method public static readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 80
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_0

    const/16 v3, 0x5b

    goto :goto_0

    :cond_0
    const/16 v3, 0x28

    .line 81
    :goto_0
    invoke-virtual {v1, v3}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v3

    .line 82
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v4

    .line 83
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v5

    .line 87
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v6

    .line 90
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    .line 93
    :goto_2
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v13

    .line 94
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v14

    .line 95
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v15, v0, :cond_1

    goto :goto_4

    :cond_1
    const-string v8, "unexpected EOF in list starting here"

    if-gez v15, :cond_2

    add-int/lit8 v9, v4, 0x1

    .line 99
    :try_start_1
    invoke-virtual {v1, v8, v9, v5}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    :cond_2
    const/16 v9, 0x2e

    move-object/from16 v16, v10

    const/4 v10, 0x1

    if-ne v15, v9, :cond_8

    .line 104
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v15

    .line 105
    invoke-virtual {v7, v15}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v17

    .line 106
    invoke-virtual/range {v17 .. v17}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v9

    if-eq v9, v10, :cond_4

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    if-nez v9, :cond_3

    goto :goto_3

    .line 135
    :cond_3
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v17

    move-object/from16 v10, v16

    const/16 v15, 0x2e

    goto :goto_6

    .line 111
    :cond_4
    :goto_3
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->skip()V

    add-int/lit8 v14, v14, 0x1

    if-ne v15, v0, :cond_5

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' after \'.\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_4
    invoke-virtual {v1, v3}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    return-object v6

    :cond_5
    if-gez v15, :cond_6

    add-int/lit8 v9, v4, 0x1

    .line 120
    :try_start_2
    invoke-virtual {v1, v8, v9, v5}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    :cond_6
    if-eqz v11, :cond_7

    const-string v6, "multiple \'.\' in list"

    .line 124
    invoke-virtual {v1, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v10, v16

    :goto_5
    const/4 v11, 0x1

    goto :goto_6

    .line 139
    :cond_8
    invoke-virtual {v7, v15}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v17

    move-object/from16 v10, v16

    :goto_6
    move-object/from16 v8, v17

    .line 140
    invoke-virtual {v1, v15, v8, v7}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v8

    .line 141
    sget-object v9, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v8, v9, :cond_9

    goto/16 :goto_2

    .line 143
    :cond_9
    invoke-virtual {v1, v8, v7, v13, v14}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v8

    if-eqz v12, :cond_a

    const-string v6, "multiple values after \'.\'"

    .line 152
    invoke-virtual {v1, v6}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_a
    if-eqz v11, :cond_b

    const/4 v12, 0x1

    goto :goto_7

    :cond_b
    if-nez v10, :cond_c

    add-int/lit8 v14, v5, -0x1

    move v13, v4

    .line 169
    :cond_c
    invoke-virtual {v1, v8, v13, v14}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v8

    :goto_7
    if-nez v10, :cond_d

    move-object v6, v8

    goto :goto_8

    .line 174
    :cond_d
    invoke-virtual {v1, v10, v8}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    move-object v10, v8

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 181
    invoke-virtual {v1, v3}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    throw v0
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .line 17
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 63
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    iget-char v1, p0, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    invoke-static {v0, p2, p3, v1}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object p2

    .line 64
    iget-object p3, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result p3

    .line 68
    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result p1

    .line 69
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    invoke-virtual {v0, v1, p3, p1}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object p1

    .line 70
    invoke-virtual {v0, p1, p2}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, p1

    :cond_0
    return-object p2
.end method
