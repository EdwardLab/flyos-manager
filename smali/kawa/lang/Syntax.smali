.class public abstract Lkawa/lang/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Lgnu/mapping/Named;


# instance fields
.field name:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lkawa/lang/Syntax;->setName(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<syntax "

    .line 87
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "<unnamed>"

    .line 89
    :cond_0
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 90
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "rewrite method not defined"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 60
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Syntax;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public rewriteForm(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1

    .line 52
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "non-list form for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 0

    .line 81
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 1

    .line 65
    iget-object v0, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, p1, v0, p2, p3}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance p2, Lgnu/expr/ErrorExp;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error expanding "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-void
.end method
