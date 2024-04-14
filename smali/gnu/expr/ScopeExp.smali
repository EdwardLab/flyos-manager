.class public abstract Lgnu/expr/ScopeExp;
.super Lgnu/expr/Expression;
.source "ScopeExp.java"


# static fields
.field static counter:I


# instance fields
.field decls:Lgnu/expr/Declaration;

.field protected frameSize:I

.field public id:I

.field last:Lgnu/expr/Declaration;

.field public outer:Lgnu/expr/ScopeExp;

.field private scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 316
    sget v0, Lgnu/expr/ScopeExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ScopeExp;->counter:I

    iput v0, p0, Lgnu/expr/ScopeExp;->id:I

    return-void
.end method

.method public static duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 3

    const/16 v0, 0x65

    const-string v1, "duplicate declaration of \'"

    const-string v2, "\'"

    .line 220
    invoke-virtual {p2, v0, p1, v1, v2}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "(this is the previous declaration of \'"

    const-string v1, "\')"

    .line 221
    invoke-virtual {p2, v0, p0, p1, v1}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static nesting(Lgnu/expr/ScopeExp;)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 277
    iget-object p0, p0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public add(Lgnu/expr/Declaration;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_0

    .line 43
    :cond_0
    iput-object p1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 44
    :goto_0
    iput-object p1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 45
    iput-object p0, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 1

    if-nez p1, :cond_0

    .line 54
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 55
    iput-object p2, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 60
    iput-object p2, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 62
    :goto_0
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p1, :cond_1

    .line 63
    iput-object p2, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 64
    :cond_1
    iput-object p0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public final addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 1

    .line 230
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0, v0}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    return-object v0
.end method

.method public final addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;
    .locals 1

    .line 242
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, p2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 243
    invoke-virtual {p0, v0}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    return-object v0
.end method

.method public final addDeclaration(Lgnu/expr/Declaration;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    return-void
.end method

.method public countDecls()I
    .locals 2

    .line 258
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public countNonDynamicDecls()I
    .locals 4

    .line 266
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-wide/32 v2, 0x10000000

    .line 267
    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 266
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lgnu/expr/LambdaExp;

    return-object v0

    .line 121
    :cond_1
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 151
    check-cast v0, Lgnu/expr/ModuleExp;

    return-object v0

    .line 146
    :cond_1
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;
    .locals 5

    .line 201
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p2

    if-nez p2, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p2

    goto :goto_0

    .line 204
    :cond_0
    iget-wide v0, p2, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x10200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 206
    iget-wide v0, p2, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, -0x10201

    and-long/2addr v0, v2

    iput-wide v0, p2, Lgnu/expr/Declaration;->flags:J

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 210
    invoke-static {p2, p1, p3}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 5

    .line 189
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 193
    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, 0x10200

    or-long/2addr v1, v3

    iput-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    :cond_0
    return-object v0
.end method

.method public getVarScope()Lgnu/bytecode/Scope;
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lgnu/bytecode/Scope;

    invoke-direct {v0}, Lgnu/bytecode/Scope;-><init>()V

    iput-object v0, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    :cond_0
    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 2

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 167
    iget-object v1, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 179
    iget-object v1, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0, p3}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public nestedIn(Lgnu/expr/ScopeExp;)Z
    .locals 1

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 286
    :cond_0
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public popScope(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 32
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 35
    iput-object v1, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    return-void
.end method

.method public remove(Lgnu/expr/Declaration;)V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 96
    invoke-virtual {p0, v1, p1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 1

    if-nez p1, :cond_0

    .line 106
    iget-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 109
    :goto_0
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p2, :cond_1

    .line 110
    iput-object p1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    :cond_1
    return-void
.end method

.method public replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 75
    iput-object p2, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 80
    iput-object p2, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    move-object p1, v0

    .line 82
    :goto_0
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 83
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p1, :cond_1

    .line 84
    iput-object p2, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    :cond_1
    const/4 v0, 0x0

    .line 85
    iput-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 86
    iput-object p0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-void
.end method

.method protected setIndexes()V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 302
    iput v1, v0, Lgnu/expr/Declaration;->evalIndex:I

    .line 300
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move v1, v2

    goto :goto_0

    .line 304
    :cond_0
    iput v1, p0, Lgnu/expr/ScopeExp;->frameSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/expr/ScopeExp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topLevel()Lgnu/expr/ScopeExp;
    .locals 3

    move-object v0, p0

    .line 136
    :goto_0
    iget-object v1, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    if-eqz v1, :cond_1

    .line 137
    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 309
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
