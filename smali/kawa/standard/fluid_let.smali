.class public Lkawa/standard/fluid_let;
.super Lkawa/lang/Syntax;
.source "fluid_let.java"


# static fields
.field public static final fluid_let:Lkawa/standard/fluid_let;


# instance fields
.field defaultInit:Lgnu/expr/Expression;

.field star:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/fluid_let;

    invoke-direct {v0}, Lkawa/standard/fluid_let;-><init>()V

    sput-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    const-string v1, "fluid-set"

    .line 15
    invoke-virtual {v0, v1}, Lkawa/standard/fluid_let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lkawa/standard/fluid_let;->star:Z

    return-void
.end method

.method public constructor <init>(ZLgnu/expr/Expression;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 26
    iput-boolean p1, p0, Lkawa/standard/fluid_let;->star:Z

    .line 27
    iput-object p2, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12

    .line 45
    iget-boolean v0, p0, Lkawa/standard/fluid_let;->star:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v0

    .line 46
    :goto_0
    new-array v2, v0, [Lgnu/expr/Expression;

    .line 47
    new-instance v3, Lgnu/expr/FluidLetExp;

    invoke-direct {v3, v2}, Lgnu/expr/FluidLetExp;-><init>([Lgnu/expr/Expression;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_b

    .line 50
    check-cast p1, Lgnu/lists/Pair;

    .line 51
    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 57
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_8

    instance-of v8, v7, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_1

    goto/16 :goto_4

    .line 61
    :cond_1
    instance-of v8, v7, Lgnu/lists/Pair;

    if-eqz v8, :cond_7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_7

    .line 66
    :cond_2
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 67
    instance-of v9, v8, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_3

    .line 68
    check-cast v8, Lkawa/lang/SyntaxForm;

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    .line 70
    :cond_3
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v10, :cond_4

    .line 71
    iget-object v7, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    :goto_2
    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    goto :goto_5

    .line 72
    :cond_4
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lgnu/lists/Pair;

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_5

    goto :goto_3

    .line 77
    :cond_5
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p3, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_2

    .line 74
    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad syntax for value of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p1

    .line 80
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " syntax"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p1

    .line 59
    :cond_8
    :goto_4
    :try_start_2
    iget-object v8, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .line 81
    :goto_5
    invoke-virtual {v3, v7}, Lgnu/expr/FluidLetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 82
    iget-object v10, p3, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v10, v7, v4}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 85
    invoke-virtual {v10, p3}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 86
    iput-object v10, v9, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 87
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 88
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 90
    :cond_9
    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 91
    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 92
    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    if-nez v8, :cond_a

    .line 94
    new-instance v8, Lgnu/expr/ReferenceExp;

    invoke-direct {v8, v7}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 95
    :cond_a
    aput-object v8, v2, v5

    const/4 v7, 0x0

    .line 96
    invoke-virtual {v9, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p1

    .line 104
    :cond_b
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    iget-boolean v0, p0, Lkawa/standard/fluid_let;->star:Z

    if-eqz v0, :cond_c

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v0, :cond_c

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, v3, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    goto :goto_6

    .line 108
    :cond_c
    invoke-virtual {p3, p2}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, v3, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    .line 109
    :goto_6
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    return-object v3
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1

    .line 37
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    const-string p1, "missing let arguments"

    .line 38
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    .line 40
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
