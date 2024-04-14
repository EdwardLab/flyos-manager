.class public Lgnu/ecmascript/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field public static final emptyArgs:[Lgnu/expr/Expression;

.field static emptyStatement:Lgnu/expr/Expression;

.field public static eofExpr:Lgnu/expr/Expression;


# instance fields
.field public errors:I

.field lexer:Lgnu/ecmascript/Lexer;

.field port:Lgnu/mapping/InPort;

.field previous_token:Ljava/lang/Object;

.field token:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 183
    sput-object v0, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    .line 351
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    .line 21
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p1}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    iput-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 504
    new-instance p0, Lkawa/standard/Scheme;

    invoke-direct {p0}, Lkawa/standard/Scheme;-><init>()V

    .line 506
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object p0

    .line 507
    instance-of v0, p0, Lgnu/mapping/TtyInPort;

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Lgnu/ecmascript/Prompter;

    invoke-direct {v0}, Lgnu/ecmascript/Prompter;-><init>()V

    .line 510
    move-object v1, p0

    check-cast v1, Lgnu/mapping/TtyInPort;

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v1, v0}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 513
    :cond_0
    new-instance v0, Lgnu/ecmascript/Parser;

    invoke-direct {v0, p0}, Lgnu/ecmascript/Parser;-><init>(Lgnu/mapping/InPort;)V

    .line 514
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .line 530
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v1

    .line 531
    sget-object v2, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const-string v2, "[Expression: "

    .line 533
    invoke-virtual {p0, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1, p0}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    const-string v2, "]"

    .line 535
    invoke-virtual {p0, v2}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "result: "

    .line 537
    invoke-virtual {p0, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 543
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method


# virtual methods
.method public buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0, v1, p2, p3, p4}, Lgnu/ecmascript/Parser;->buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p2

    aput-object p2, v0, p1

    .line 385
    new-instance p1, Lgnu/expr/BeginExp;

    invoke-direct {p1, v0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object p1

    .line 387
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "not implemented - buildLoop"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 228
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "missing identifier"

    .line 230
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    const-string v0, "??"

    return-object v0
.end method

.method public getSemicolon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 148
    sget-object v1, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lgnu/ecmascript/Parser;->previous_token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "missing \';\' after expression"

    .line 155
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_2
    :goto_0
    return-void
.end method

.method public getToken()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    return-object v0
.end method

.method public makeCallExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1

    .line 221
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1

    if-nez p2, :cond_0

    .line 214
    sget-object p2, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    :cond_0
    const/4 p1, 0x0

    .line 216
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public parseArguments()[Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 189
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 190
    sget-object v1, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 193
    sget-object v0, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 198
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 201
    sget-object v2, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v1, v2, :cond_2

    .line 206
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    .line 203
    :cond_2
    sget-object v2, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' in argument list"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public parseAssignmentExpression()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseConditionalExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    .line 44
    sget-object v2, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 46
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 47
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 48
    instance-of v2, v0, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lgnu/expr/SetExp;

    check-cast v0, Lgnu/expr/ReferenceExp;

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 51
    invoke-virtual {v2, v3}, Lgnu/expr/SetExp;->setDefining(Z)V

    return-object v2

    :cond_0
    const-string v0, "unmplemented non-symbol ihs in assignment"

    .line 54
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    instance-of v2, v1, Lgnu/ecmascript/Reserved;

    if-nez v2, :cond_2

    return-object v0

    .line 60
    :cond_2
    check-cast v1, Lgnu/ecmascript/Reserved;

    .line 61
    invoke-virtual {v1}, Lgnu/ecmascript/Reserved;->isAssignmentOp()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 64
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v3

    .line 66
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object v1, v1, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v2, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public parseBinaryExpression(I)Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseUnaryExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 338
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 339
    instance-of v2, v1, Lgnu/ecmascript/Reserved;

    if-nez v2, :cond_0

    return-object v0

    .line 341
    :cond_0
    check-cast v1, Lgnu/ecmascript/Reserved;

    .line 342
    iget v2, v1, Lgnu/ecmascript/Reserved;->prio:I

    if-ge v2, p1, :cond_1

    return-object v0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    .line 345
    iget v2, v1, Lgnu/ecmascript/Reserved;->prio:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Parser;->parseBinaryExpression(I)Lgnu/expr/Expression;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v3

    .line 347
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object v1, v1, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v2, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_0
.end method

.method public parseBlock()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_0

    const-string v0, "extened \'{\'"

    .line 444
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 448
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 450
    sget-object v4, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    if-ne v3, v4, :cond_2

    .line 452
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    if-nez v1, :cond_1

    .line 454
    sget-object v0, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-object v0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-nez v1, :cond_3

    new-array v1, v4, [Lgnu/expr/Expression;

    goto :goto_4

    .line 461
    :cond_3
    array-length v5, v1

    if-eqz v3, :cond_4

    if-eq v5, v2, :cond_6

    goto :goto_2

    :cond_4
    if-gt v5, v2, :cond_6

    :goto_2
    if-eqz v3, :cond_5

    move v5, v2

    goto :goto_3

    .line 463
    :cond_5
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    .line 464
    :goto_3
    new-array v4, v5, [Lgnu/expr/Expression;

    .line 465
    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 469
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-direct {v0, v1}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v0

    :cond_7
    add-int/lit8 v3, v2, 0x1

    .line 470
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0
.end method

.method public parseConditionalExpression()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->parseBinaryExpression(I)Lgnu/expr/Expression;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    .line 29
    sget-object v2, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_0

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 32
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    if-eq v2, v3, :cond_1

    const-string v0, "expected \':\' in conditional expression"

    .line 34
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v2

    .line 36
    new-instance v3, Lgnu/expr/IfExp;

    invoke-direct {v3, v0, v1, v2}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v3
.end method

.method public parseExpression()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    if-nez v1, :cond_2

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    new-array v1, v5, [Lgnu/expr/Expression;

    goto :goto_4

    .line 85
    :cond_2
    array-length v6, v1

    if-eqz v4, :cond_3

    add-int/lit8 v7, v2, 0x1

    if-eq v6, v7, :cond_5

    goto :goto_2

    :cond_3
    if-gt v6, v2, :cond_5

    :goto_2
    if-eqz v4, :cond_4

    add-int/lit8 v5, v2, 0x1

    goto :goto_3

    .line 87
    :cond_4
    array-length v6, v1

    mul-int/lit8 v5, v6, 0x2

    .line 88
    :goto_3
    new-array v5, v5, [Lgnu/expr/Expression;

    .line 89
    invoke-static {v1, v0, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :cond_5
    :goto_4
    add-int/lit8 v5, v2, 0x1

    .line 92
    aput-object v3, v1, v2

    if-eqz v4, :cond_6

    .line 94
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-direct {v0, v1}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v0

    .line 95
    :cond_6
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    move v2, v5

    goto :goto_0
.end method

.method public parseFunctionDefinition()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 409
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 411
    sget-object v2, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \'(\' - got:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 413
    :cond_0
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 414
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_1

    .line 416
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_1

    .line 422
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v2

    .line 425
    sget-object v3, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_2

    .line 431
    :goto_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseBlock()Lgnu/expr/Expression;

    move-result-object v1

    .line 432
    new-instance v2, Lgnu/expr/LambdaExp;

    invoke-direct {v2, v1}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    .line 433
    invoke-virtual {v2, v0}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 434
    new-instance v1, Lgnu/expr/SetExp;

    invoke-direct {v1, v0, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    const/4 v0, 0x1

    .line 435
    invoke-virtual {v1, v0}, Lgnu/expr/SetExp;->setDefining(Z)V

    return-object v1

    .line 427
    :cond_2
    sget-object v3, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v2, v3, :cond_1

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid token \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' in argument list"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public parseIfStatement()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 357
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 358
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \'(\' - got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 362
    sget-object v2, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \')\' - got:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v1

    .line 365
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    .line 367
    sget-object v3, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    if-ne v2, v3, :cond_2

    .line 369
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 370
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 374
    :goto_0
    new-instance v3, Lgnu/expr/IfExp;

    invoke-direct {v3, v0, v1, v2}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v3
.end method

.method public parseLeftHandSideExpression()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 241
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parsePrimaryExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 246
    :goto_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    .line 247
    sget-object v3, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_1

    .line 249
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 250
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 251
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Lgnu/ecmascript/Parser;->makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_1

    .line 253
    :cond_1
    sget-object v3, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_3

    .line 255
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 256
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v2

    .line 257
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v3

    .line 258
    sget-object v4, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    if-eq v3, v4, :cond_2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected \']\' - got:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 260
    :cond_2
    invoke-virtual {p0, v1, v2}, Lgnu/ecmascript/Parser;->makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_1

    .line 262
    :cond_3
    sget-object v3, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_5

    .line 264
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseArguments()[Lgnu/expr/Expression;

    move-result-object v2

    .line 265
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after parseArgs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-lez v0, :cond_4

    .line 268
    invoke-virtual {p0, v1, v2}, Lgnu/ecmascript/Parser;->makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 272
    :cond_4
    invoke-virtual {p0, v1, v2}, Lgnu/ecmascript/Parser;->makeCallExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_2
    if-lez v0, :cond_6

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, v1, v2}, Lgnu/ecmascript/Parser;->makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method public parsePostfixExpression()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseLeftHandSideExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekTokenOrLine()Ljava/lang/Object;

    move-result-object v1

    .line 289
    sget-object v2, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    if-eq v1, v2, :cond_0

    sget-object v2, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    if-eq v1, v2, :cond_0

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 293
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/QuoteExp;

    check-cast v1, Lgnu/ecmascript/Reserved;

    iget-object v1, v1, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public parsePrimaryExpression()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 163
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Lgnu/expr/QuoteExp;

    return-object v0

    .line 165
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 166
    new-instance v1, Lgnu/expr/ReferenceExp;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 167
    :cond_1
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_3

    .line 169
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 171
    sget-object v2, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \')\' - got:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    :cond_2
    return-object v0

    .line 175
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public parseStatement()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 478
    instance-of v1, v0, Lgnu/ecmascript/Reserved;

    if-eqz v1, :cond_3

    .line 480
    move-object v1, v0

    check-cast v1, Lgnu/ecmascript/Reserved;

    iget v1, v1, Lgnu/ecmascript/Reserved;->prio:I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseFunctionDefinition()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 483
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseWhileStatement()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 482
    :cond_2
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseIfStatement()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 487
    :cond_3
    :goto_0
    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 488
    sget-object v0, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    return-object v0

    .line 489
    :cond_4
    sget-object v1, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_5

    .line 491
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 492
    sget-object v0, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-object v0

    .line 494
    :cond_5
    sget-object v1, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_6

    .line 495
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseBlock()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 497
    :cond_6
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getSemicolon()V

    return-object v0
.end method

.method public parseUnaryExpression()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parsePostfixExpression()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public parseWhileStatement()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 394
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 395
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \'(\' - got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 399
    sget-object v2, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \')\' - got:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0, v2, v0, v2, v1}, Lgnu/ecmascript/Parser;->buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public peekToken()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 121
    iget-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public peekTokenOrLine()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public final skipToken()V
    .locals 2

    .line 136
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/ecmascript/Parser;->previous_token:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 5

    .line 310
    iget v0, p0, Lgnu/ecmascript/Parser;->errors:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/ecmascript/Parser;->errors:I

    .line 311
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 312
    iget-object v2, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v2}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v2

    .line 313
    iget-object v3, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v3}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v3

    add-int/2addr v3, v1

    .line 314
    iget-object v4, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v4}, Lgnu/mapping/InPort;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v1

    if-lez v3, :cond_2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v0, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x3a

    .line 319
    invoke-virtual {v0, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 320
    invoke-virtual {v0, v3}, Lgnu/mapping/OutPort;->print(I)V

    if-le v4, v1, :cond_1

    .line 323
    invoke-virtual {v0, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 324
    invoke-virtual {v0, v4}, Lgnu/mapping/OutPort;->print(I)V

    :cond_1
    const-string v1, ": "

    .line 326
    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 328
    :cond_2
    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
