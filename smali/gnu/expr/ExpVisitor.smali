.class public Lgnu/expr/ExpVisitor;
.super Ljava/lang/Object;
.source "ExpVisitor.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgnu/text/SourceLocator;"
    }
.end annotation


# instance fields
.field comp:Lgnu/expr/Compilation;

.field protected currentLambda:Lgnu/expr/LambdaExp;

.field protected exitValue:Ljava/lang/Object;

.field protected messages:Lgnu/text/SourceMessages;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 153
    iput-object v0, p0, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public error(CLjava/lang/String;)V
    .locals 2

    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    .line 188
    :cond_0
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getColumnNumber()I
    .locals 1

    .line 203
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    return-object v0
.end method

.method public final getCurrentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .line 157
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public getExitValue()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 202
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .line 18
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noteError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2

    .line 196
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    .line 197
    invoke-virtual {v0, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 198
    :cond_0
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setColumn(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setContext(Lgnu/expr/Compilation;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    .line 34
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1

    .line 216
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    return-void
.end method

.method protected update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TR;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    return-object p1
.end method

.method public visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    .line 45
    iget-object v1, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v2}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v2

    .line 49
    iget-object v3, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v3}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v3

    .line 50
    iget-object v4, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 51
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {p2, v1, v2, v3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ApplyExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/BeginExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/BlockExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ClassExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final visitDeclarationType(Lgnu/expr/Declaration;)V
    .locals 2

    .line 75
    iget-object v0, p1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    :cond_0
    return-void
.end method

.method protected final visitDeclarationTypes(Lgnu/expr/ScopeExp;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lgnu/expr/ExpVisitor;->visitDeclarationType(Lgnu/expr/Declaration;)V

    .line 87
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "TD;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    return-void
.end method

.method protected visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ExitExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .line 27
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Expression;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgnu/expr/Expression;",
            "ITD;)[",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 174
    iget-object v1, p0, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 175
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p3}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgnu/expr/Expression;",
            "TD;)[",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 166
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/FluidLetExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/IfExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitLangExp(Lgnu/expr/LangExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LangExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LetExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ModuleExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitObjectExp(Lgnu/expr/ObjectExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ObjectExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/QuoteExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ReferenceExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ScopeExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lgnu/expr/ExpVisitor;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/SetExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 112
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    iget-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    iget-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, Lgnu/expr/ExpVisitor;->visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    iput-object v1, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 125
    iget-object v1, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v1, v1, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/LambdaExp;

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 128
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;",
            "Lgnu/expr/Declaration;",
            ")",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/SynchronizedExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ThisExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/TryExp;",
            "TD;)TR;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
