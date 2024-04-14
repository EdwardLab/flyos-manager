.class public Lkawa/standard/define_syntax;
.super Lkawa/lang/Syntax;
.source "define_syntax.java"


# static fields
.field public static final define_macro:Lkawa/standard/define_syntax;

.field public static final define_syntax:Lkawa/standard/define_syntax;

.field static makeHygienic:Lgnu/expr/PrimProcedure;

.field static makeNonHygienic:Lgnu/expr/PrimProcedure;

.field static setCapturedScope:Lgnu/expr/PrimProcedure;

.field static typeMacro:Lgnu/bytecode/ClassType;


# instance fields
.field hygienic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lkawa/standard/define_syntax;

    const-string v1, "%define-macro"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_macro:Lkawa/standard/define_syntax;

    .line 16
    new-instance v0, Lkawa/standard/define_syntax;

    const-string v1, "%define-syntax"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_syntax:Lkawa/standard/define_syntax;

    const-string v0, "kawa.lang.Macro"

    .line 30
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v3, "make"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    .line 33
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v3, "makeNonHygienic"

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    .line 35
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v3, "setCapturedScope"

    invoke-virtual {v1, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    .line 38
    sget-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 39
    sget-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lkawa/standard/define_syntax;->hygienic:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-boolean p2, p0, Lkawa/standard/define_syntax;->hygienic:Z

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const-string p1, "define-syntax not in a body"

    .line 46
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 6

    .line 52
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    :goto_0
    instance-of v3, v0, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 55
    move-object v2, v0

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 56
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    instance-of v3, v0, Lgnu/lists/Pair;

    if-eqz v3, :cond_1

    .line 62
    check-cast v0, Lgnu/lists/Pair;

    .line 63
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    move-object v3, v2

    .line 69
    :goto_1
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_2

    .line 71
    move-object v3, v1

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 72
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    instance-of v4, v1, Lgnu/mapping/Symbol;

    if-nez v4, :cond_3

    .line 77
    iget-object p2, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing macro name for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v0, :cond_9

    .line 80
    invoke-static {v0}, Lkawa/lang/Translator;->safeCdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v4, :cond_4

    goto/16 :goto_3

    .line 86
    :cond_4
    invoke-virtual {p3, v1, v3, p2}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 87
    sget-object v3, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 90
    iget-object v3, p3, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 91
    invoke-static {p1}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v4

    .line 92
    iget-boolean v5, p0, Lkawa/standard/define_syntax;->hygienic:Z

    invoke-virtual {v4, v5}, Lkawa/lang/Macro;->setHygienic(Z)V

    .line 93
    iput-object v4, p3, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 94
    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {p3, v0, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v0

    .line 95
    iput-object v3, p3, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 96
    iput-object v0, v4, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 98
    instance-of v2, v0, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_5

    .line 99
    move-object v2, v0

    check-cast v2, Lgnu/expr/LambdaExp;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lgnu/expr/LambdaExp;->setFlag(I)V

    :cond_5
    const/4 v2, 0x3

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 101
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 103
    invoke-static {p2}, Lgnu/expr/ThisExp;->makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    .line 104
    new-instance v0, Lgnu/expr/ApplyExp;

    iget-boolean v5, p0, Lkawa/standard/define_syntax;->hygienic:Z

    if-eqz v5, :cond_6

    sget-object v5, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    goto :goto_2

    :cond_6
    sget-object v5, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    :goto_2
    invoke-direct {v0, v5, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 106
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 107
    invoke-virtual {p1, v3}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 109
    iget-object v2, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_8

    .line 111
    new-instance v2, Lgnu/expr/SetExp;

    invoke-direct {v2, p1, v0}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 112
    invoke-virtual {v2, v3}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 113
    invoke-virtual {p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {v2, v3}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 116
    :cond_7
    iget-object v0, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 118
    iget-boolean v0, p3, Lkawa/lang/Translator;->immediate:Z

    if-eqz v0, :cond_8

    new-array v0, v4, [Lgnu/expr/Expression;

    .line 121
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v2, v0, v1

    .line 122
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, p2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p1, v0, v3

    .line 123
    iget-object p1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance p2, Lgnu/expr/ApplyExp;

    sget-object p3, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    invoke-direct {p2, p3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    :cond_8
    return-void

    .line 82
    :cond_9
    :goto_3
    iget-object p1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid syntax for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/define_syntax;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    return-void
.end method
