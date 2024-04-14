.class public Lkawa/standard/set_b;
.super Lkawa/lang/Syntax;
.source "set_b.java"


# static fields
.field public static final set:Lkawa/standard/set_b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/set_b;

    invoke-direct {v0}, Lkawa/standard/set_b;-><init>()V

    sput-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    const-string v1, "set!"

    .line 15
    invoke-virtual {v0, v1}, Lkawa/standard/set_b;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6

    .line 19
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 21
    :goto_0
    instance-of v1, p1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    .line 23
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 24
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_0
    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_1

    const-string p1, "missing name"

    .line 27
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 28
    :cond_1
    check-cast p1, Lgnu/lists/Pair;

    .line 29
    invoke-virtual {p2, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 31
    :goto_1
    instance-of v2, p1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_2

    .line 33
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 34
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 37
    :cond_2
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_a

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_3

    goto/16 :goto_3

    .line 40
    :cond_3
    invoke-virtual {p2, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object p1

    .line 42
    instance-of v0, v1, Lgnu/expr/ApplyExp;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 46
    check-cast v1, Lgnu/expr/ApplyExp;

    .line 47
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 48
    array-length v0, p2

    .line 50
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    .line 51
    array-length v3, p2

    const/4 v4, 0x0

    if-lez v3, :cond_4

    instance-of v3, v1, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lgnu/expr/ReferenceExp;

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    sget-object v5, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    if-ne v3, v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 56
    aget-object v1, p2, v4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object v1, v2, v4

    add-int/lit8 v1, v0, 0x1

    .line 59
    new-array v1, v1, [Lgnu/expr/Expression;

    .line 60
    invoke-static {p2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    aput-object p1, v1, v0

    .line 62
    sget-object p1, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 63
    new-instance p2, Lgnu/expr/ApplyExp;

    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v0, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-direct {p2, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p2

    .line 66
    :cond_5
    instance-of v0, v1, Lgnu/expr/ReferenceExp;

    if-nez v0, :cond_6

    const-string p1, "first set! argument is not a variable name"

    .line 67
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 69
    :cond_6
    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 70
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 71
    new-instance v3, Lgnu/expr/SetExp;

    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 72
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgnu/expr/SetExp;->setContextDecl(Lgnu/expr/Declaration;)V

    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 76
    invoke-virtual {v3, v0}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_7
    const-wide/16 v1, 0x4000

    .line 80
    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p1

    const-string v1, " is set!"

    if-eqz p1, :cond_8

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constant variable "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 82
    :cond_8
    iget-object p1, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v2, p2, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    if-eq p1, v2, :cond_9

    iget-object p1, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of p1, p1, Lgnu/expr/ModuleExp;

    if-eqz p1, :cond_9

    const-wide/32 v4, 0x10000000

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    const/high16 v2, 0x100000

    invoke-virtual {p1, v2}, Lgnu/expr/ScopeExp;->getFlag(I)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0x77

    const-string v2, "imported variable "

    .line 87
    invoke-virtual {p2, p1, v0, v2, v1}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v3

    :cond_a
    :goto_3
    const-string p1, "missing or extra arguments to set!"

    .line 39
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
