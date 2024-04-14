.class public Lgnu/ecmascript/Lexer;
.super Lgnu/text/Lexer;
.source "Lexer.java"


# static fields
.field public static final colonToken:Lgnu/text/Char;

.field public static final commaToken:Lgnu/text/Char;

.field public static final condToken:Lgnu/text/Char;

.field public static final dotToken:Lgnu/text/Char;

.field public static final elseToken:Lgnu/ecmascript/Reserved;

.field public static final eofToken:Ljava/lang/Object;

.field public static final eolToken:Ljava/lang/Object;

.field public static final equalToken:Lgnu/text/Char;

.field public static final lbraceToken:Lgnu/text/Char;

.field public static final lbracketToken:Lgnu/text/Char;

.field public static final lparenToken:Lgnu/text/Char;

.field public static final newToken:Lgnu/ecmascript/Reserved;

.field public static final notToken:Lgnu/text/Char;

.field public static final rbraceToken:Lgnu/text/Char;

.field public static final rbracketToken:Lgnu/text/Char;

.field static reserved:Ljava/util/Hashtable;

.field public static final rparenToken:Lgnu/text/Char;

.field public static final semicolonToken:Lgnu/text/Char;

.field public static final tildeToken:Lgnu/text/Char;


# instance fields
.field private prevWasCR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x28

    .line 20
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    const/16 v0, 0x29

    .line 21
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    const/16 v0, 0x7b

    .line 22
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    const/16 v0, 0x7d

    .line 23
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    const/16 v0, 0x5b

    .line 24
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    const/16 v0, 0x5d

    .line 25
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    const/16 v0, 0x2e

    .line 26
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    const/16 v0, 0x3f

    .line 27
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    const/16 v0, 0x2c

    .line 28
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    const/16 v0, 0x3a

    .line 29
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    const/16 v0, 0x3d

    .line 30
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    const/16 v0, 0x7e

    .line 31
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    const/16 v0, 0x21

    .line 32
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    const/16 v0, 0x3b

    .line 33
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    const/16 v0, 0xa

    .line 34
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 36
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "else"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    .line 38
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "new"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    return-void
.end method

.method public static checkReserved(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 69
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lgnu/ecmascript/Lexer;->initReserved()V

    .line 71
    :cond_0
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getToken(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 459
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p0}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized initReserved()V
    .locals 6

    const-class v0, Lgnu/ecmascript/Lexer;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "null"

    .line 47
    new-instance v3, Lgnu/expr/QuoteExp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "true"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "false"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "var"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "var"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "if"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "if"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "while"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "while"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "for"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "for"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "continue"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "continue"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "break"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "break"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "return"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "return"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "with"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "with"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "function"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "function"

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "this"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "this"

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "else"

    sget-object v3, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "new"

    sget-object v3, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 464
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object p0

    .line 465
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p0}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    .line 470
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object p0

    .line 471
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    const-string v2, "token:"

    .line 472
    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v1, p0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 475
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    return-void

    :catch_0
    move-exception p0

    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIdentifier(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget p1, p1, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, p1, -0x1

    .line 264
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v1, v1, Lgnu/text/LineBufferedReader;->limit:I

    .line 265
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    :goto_0
    if-ge p1, v1, :cond_0

    .line 266
    aget-char v3, v2, p1

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput p1, v3, Lgnu/text/LineBufferedReader;->pos:I

    if-ge p1, v1, :cond_1

    .line 270
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 271
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sub-int/2addr p1, v0

    .line 272
    invoke-virtual {v1, v2, v0, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 275
    :goto_1
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    int-to-char p1, p1

    .line 278
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 282
    :cond_3
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 286
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumericLiteral(I)Ljava/lang/Double;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x45

    const/16 v1, 0x65

    const/16 v2, 0x2e

    const/16 v3, 0xa

    const/16 v4, 0x30

    if-ne p1, v4, :cond_3

    .line 80
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    const/16 v4, 0x78

    if-eq p1, v4, :cond_2

    const/16 v4, 0x58

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    :goto_0
    const/16 v4, 0x10

    .line 84
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v4, 0xa

    .line 90
    :goto_2
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v5, v5, Lgnu/text/LineBufferedReader;->pos:I

    if-ltz p1, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 93
    :cond_4
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v5, p1, Lgnu/text/LineBufferedReader;->pos:I

    .line 94
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-static {p1, v4}, Lgnu/ecmascript/Lexer;->readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J

    move-result-wide v6

    .line 95
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget p1, p1, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le p1, v5, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_7

    .line 96
    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v10, v10, Lgnu/text/LineBufferedReader;->pos:I

    iget-object v11, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v11, v11, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v10, v11, :cond_7

    .line 98
    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v10, v10, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v11, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v11, v11, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v10, v10, v11

    int-to-char v11, v10

    .line 99
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_7

    if-eq v10, v2, :cond_7

    const-wide/16 v0, 0x0

    cmp-long p1, v6, v0

    if-ltz p1, :cond_6

    long-to-double v0, v6

    goto :goto_4

    .line 105
    :cond_6
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object p1, p1, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v0, v4, v9}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v0

    .line 107
    :goto_4
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1

    :cond_7
    if-eq v4, v3, :cond_8

    const-string v6, "invalid character in non-decimal number"

    .line 111
    invoke-virtual {p0, v6}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 112
    :cond_8
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p1, :cond_9

    .line 114
    iget-object v7, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v7, v7, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v10, v10, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v10, v5

    invoke-virtual {v6, v7, v5, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_9
    const/4 v5, -0x1

    .line 122
    :goto_5
    iget-object v7, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    int-to-char v10, v7

    .line 123
    invoke-static {v10, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    if-ltz v11, :cond_a

    .line 126
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    goto :goto_5

    :cond_a
    if-eq v7, v2, :cond_11

    if-eq v7, v0, :cond_b

    if-eq v7, v1, :cond_b

    goto :goto_6

    :cond_b
    if-ne v4, v3, :cond_e

    .line 142
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_c

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_c

    int-to-char v0, v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_c

    goto :goto_6

    :cond_c
    if-nez p1, :cond_d

    const-string p1, "mantissa with no digits"

    .line 146
    invoke-virtual {p0, p1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 147
    :cond_d
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->readOptionalExponent()I

    move-result v9

    .line 149
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v7

    :cond_e
    :goto_6
    if-ltz v7, :cond_f

    .line 156
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->unread()V

    :cond_f
    if-eqz v9, :cond_10

    .line 160
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    :cond_10
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_11
    if-ltz v5, :cond_12

    const-string v7, "duplicate \'.\' in number"

    .line 133
    invoke-virtual {p0, v7}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 136
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 137
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5
.end method

.method public getStringLiteral(C)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 171
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v1, v1, Lgnu/text/LineBufferedReader;->limit:I

    .line 172
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v2, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    move v3, v0

    :goto_0
    const/16 v4, 0x5c

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ge v3, v1, :cond_2

    .line 176
    aget-char v7, v2, v3

    if-ne v7, p1, :cond_0

    .line 179
    iget-object p1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    add-int/lit8 v1, v3, 0x1

    iput v1, p1, Lgnu/text/LineBufferedReader;->pos:I

    .line 180
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-direct {p1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    if-eq v7, v4, :cond_2

    if-eq v7, v6, :cond_2

    if-ne v7, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_2
    :goto_1
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v3, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 186
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sub-int/2addr v3, v0

    .line 187
    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 190
    :goto_2
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-gez v0, :cond_4

    const-string v2, "unterminated string literal"

    .line 194
    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    :cond_4
    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_6

    :cond_5
    const-string v2, "string literal not terminated before end of line"

    .line 196
    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    :cond_6
    const/16 v2, 0x8

    if-ne v0, v4, :cond_e

    .line 199
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    const/16 v7, 0x30

    if-lt v0, v7, :cond_e

    const/16 v7, 0x37

    if-le v0, v7, :cond_a

    goto/16 :goto_6

    :sswitch_0
    const/16 v2, 0x78

    if-ne v0, v2, :cond_7

    const/4 v2, 0x2

    goto :goto_3

    :cond_7
    const/4 v2, 0x4

    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_d

    .line 218
    iget-object v7, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    const-string v8, "\' in string"

    if-gez v7, :cond_8

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eof following \'\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    :cond_8
    int-to-char v7, v7

    const/16 v9, 0x10

    .line 222
    invoke-static {v7, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    if-gez v7, :cond_9

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid char following \'\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    const/16 v0, 0x3f

    goto :goto_6

    :cond_9
    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v7

    goto :goto_3

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_6

    :sswitch_2
    const/16 v0, 0xd

    goto :goto_6

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_6

    :sswitch_4
    const/16 v0, 0xc

    goto :goto_6

    :sswitch_5
    const/16 v0, 0x8

    goto :goto_6

    :sswitch_6
    const-string v2, "eof following \'\\\' in string"

    .line 204
    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    :sswitch_7
    const-string v2, "line terminator following \'\\\' in string"

    .line 206
    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const/4 v0, 0x3

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_d

    .line 239
    iget-object v7, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    if-gez v7, :cond_b

    const-string v8, "eof in octal escape in string literal"

    .line 241
    invoke-virtual {p0, v8}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    :cond_b
    int-to-char v7, v7

    .line 242
    invoke-static {v7, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    if-gez v7, :cond_c

    .line 245
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_5

    :cond_c
    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v7

    goto :goto_4

    :cond_d
    :goto_5
    move v0, v3

    :cond_e
    :goto_6
    :sswitch_8
    int-to-char v0, v0

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_6
        0xa -> :sswitch_7
        0xd -> :sswitch_7
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public getToken()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    :goto_0
    if-gez v0, :cond_0

    .line 329
    sget-object v0, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    return-object v0

    :cond_0
    int-to-char v1, v0

    .line 330
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v2, 0x21

    const/16 v3, 0x3d

    if-eq v0, v2, :cond_12

    const/16 v2, 0x22

    if-eq v0, v2, :cond_11

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_10

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_f

    const/16 v2, 0x5e

    if-eq v0, v2, :cond_e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 445
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getIdentifier(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lgnu/ecmascript/Lexer;->checkReserved(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    return-object v0

    .line 453
    :cond_2
    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0

    .line 380
    :pswitch_0
    sget-object v0, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    return-object v0

    .line 360
    :pswitch_1
    sget-object v0, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    return-object v0

    .line 407
    :pswitch_2
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_3

    .line 409
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 410
    sget-object v0, Lgnu/ecmascript/Reserved;->opBoolOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 412
    :cond_3
    sget-object v0, Lgnu/ecmascript/Reserved;->opBitOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 359
    :pswitch_3
    sget-object v0, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    return-object v0

    .line 361
    :pswitch_4
    sget-object v0, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    return-object v0

    .line 414
    :pswitch_5
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    if-eq v0, v3, :cond_6

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_4

    .line 429
    sget-object v0, Lgnu/ecmascript/Reserved;->opGreater:Lgnu/ecmascript/Reserved;

    return-object v0

    .line 418
    :cond_4
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 419
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 421
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 422
    sget-object v0, Lgnu/ecmascript/Reserved;->opRshiftUnsigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 424
    :cond_5
    sget-object v0, Lgnu/ecmascript/Reserved;->opRshiftSigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 426
    :cond_6
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 427
    sget-object v0, Lgnu/ecmascript/Reserved;->opGreaterEqual:Lgnu/ecmascript/Reserved;

    return-object v0

    .line 366
    :pswitch_6
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 368
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 369
    sget-object v0, Lgnu/ecmascript/Reserved;->opEqual:Lgnu/ecmascript/Reserved;

    return-object v0

    .line 371
    :cond_7
    sget-object v0, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    return-object v0

    .line 432
    :pswitch_7
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_9

    if-eq v0, v3, :cond_8

    .line 442
    sget-object v0, Lgnu/ecmascript/Reserved;->opLess:Lgnu/ecmascript/Reserved;

    return-object v0

    .line 439
    :cond_8
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 440
    sget-object v0, Lgnu/ecmascript/Reserved;->opLessEqual:Lgnu/ecmascript/Reserved;

    return-object v0

    .line 436
    :cond_9
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 437
    sget-object v0, Lgnu/ecmascript/Reserved;->opLshift:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 363
    :pswitch_8
    sget-object v0, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    return-object v0

    .line 362
    :pswitch_9
    sget-object v0, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    return-object v0

    .line 352
    :pswitch_a
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 382
    :pswitch_b
    sget-object v0, Lgnu/ecmascript/Reserved;->opDivide:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 346
    :pswitch_c
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 348
    new-instance v0, Lgnu/expr/QuoteExp;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 349
    :cond_a
    sget-object v0, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    return-object v0

    .line 393
    :pswitch_d
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    .line 395
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 396
    sget-object v0, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 398
    :cond_b
    sget-object v0, Lgnu/ecmascript/Reserved;->opMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 364
    :pswitch_e
    sget-object v0, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    return-object v0

    .line 386
    :pswitch_f
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_c

    .line 388
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 389
    sget-object v0, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 391
    :cond_c
    sget-object v0, Lgnu/ecmascript/Reserved;->opPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 381
    :pswitch_10
    sget-object v0, Lgnu/ecmascript/Reserved;->opTimes:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 356
    :pswitch_11
    sget-object v0, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    return-object v0

    .line 355
    :pswitch_12
    sget-object v0, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    return-object v0

    .line 400
    :pswitch_13
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_d

    .line 402
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 403
    sget-object v0, Lgnu/ecmascript/Reserved;->opBoolAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 405
    :cond_d
    sget-object v0, Lgnu/ecmascript/Reserved;->opBitAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 384
    :pswitch_14
    sget-object v0, Lgnu/ecmascript/Reserved;->opRemainder:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 383
    :cond_e
    sget-object v0, Lgnu/ecmascript/Reserved;->opBitXor:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 358
    :cond_f
    sget-object v0, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    return-object v0

    .line 357
    :cond_10
    sget-object v0, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    return-object v0

    .line 354
    :cond_11
    :pswitch_15
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->getStringLiteral(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 373
    :cond_12
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 375
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 376
    sget-object v0, Lgnu/ecmascript/Reserved;->opNotEqual:Lgnu/ecmascript/Reserved;

    return-object v0

    .line 378
    :cond_13
    sget-object v0, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    return-object v0

    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 335
    sget-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    return-object v0

    :cond_15
    const/16 v1, 0xa

    if-ne v0, v1, :cond_16

    .line 337
    iget-boolean v0, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    if-nez v0, :cond_16

    .line 338
    sget-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 340
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    const-string v1, "assignment operation not implemented"

    .line 296
    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    :cond_0
    if-ltz v0, :cond_1

    .line 300
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    :cond_1
    return-object p1
.end method
