.class public Lgnu/kawa/lispexpr/ReaderDispatchMacro;
.super Lgnu/kawa/lispexpr/ReaderMisc;
.source "ReaderDispatchMacro.java"


# instance fields
.field procedure:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1

    const/4 v0, 0x5

    .line 19
    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 20
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMacro;->procedure:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public getProcedure()Lgnu/mapping/Procedure;
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMacro;->procedure:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-static {p2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p2

    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-virtual {v1, v0, p2, p3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reader macro \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' threw: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 43
    throw p1

    :catch_1
    move-exception p1

    .line 39
    throw p1
.end method
