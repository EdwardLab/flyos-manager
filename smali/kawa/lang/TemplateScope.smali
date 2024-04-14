.class public Lkawa/lang/TemplateScope;
.super Lgnu/expr/LetExp;
.source "TemplateScope.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field macroContext:Lgnu/expr/Declaration;

.field private syntax:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ScopeExp;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 29
    iput-object p1, p0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public static make()Lkawa/lang/TemplateScope;
    .locals 1

    .line 34
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-static {v0}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;
    .locals 3

    .line 39
    new-instance v0, Lkawa/lang/TemplateScope;

    invoke-direct {v0}, Lkawa/lang/TemplateScope;-><init>()V

    .line 40
    invoke-virtual {p0}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v1

    .line 41
    instance-of v2, v1, Lkawa/lang/Macro;

    if-eqz v2, :cond_0

    .line 43
    move-object v2, v1

    check-cast v2, Lkawa/lang/Macro;

    invoke-virtual {v2}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    iput-object v2, v0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 44
    iget-object p0, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    iput-object p0, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    .line 46
    :cond_0
    iput-object v1, v0, Lkawa/lang/TemplateScope;->syntax:Lkawa/lang/Syntax;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/ScopeExp;

    iput-object p1, p0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lgnu/expr/LetExp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkawa/lang/TemplateScope;->syntax:Lkawa/lang/Syntax;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
