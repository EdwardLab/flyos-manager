.class public Lgnu/expr/ErrorExp;
.super Lgnu/expr/Expression;
.source "ErrorExp.java"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 26
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p2

    const/16 v0, 0x65

    invoke-virtual {p2, v0, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 27
    iput-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    const/16 v0, 0x65

    .line 20
    invoke-virtual {p2, v0, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 21
    iput-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 43
    new-instance p2, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": internal error: compiling error expression: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    const-string v0, "(Error"

    const/4 v1, 0x0

    const-string v2, ")"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 36
    iget-object v0, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method
