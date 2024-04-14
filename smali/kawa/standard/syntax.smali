.class public Lkawa/standard/syntax;
.super Lkawa/lang/Quote;
.source "syntax.java"


# static fields
.field static final makeTemplateScopeMethod:Lgnu/bytecode/Method;

.field public static final quasiSyntax:Lkawa/standard/syntax;

.field public static final syntax:Lkawa/standard/syntax;

.field static final typeTemplateScope:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lkawa/standard/syntax;

    const-string v1, "syntax"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/syntax;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/syntax;->syntax:Lkawa/standard/syntax;

    .line 10
    new-instance v0, Lkawa/standard/syntax;

    const-string v1, "quasisyntax"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkawa/standard/syntax;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/syntax;->quasiSyntax:Lkawa/standard/syntax;

    const-string v0, "kawa.lang.TemplateScope"

    .line 22
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    const-string v1, "make"

    .line 24
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/standard/syntax;->makeTemplateScopeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static makeSyntax(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .line 65
    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    .line 66
    sget-object p0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 67
    iget-object v1, p1, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v1, :cond_0

    .line 68
    iget-object v2, v1, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 69
    new-instance p0, Lgnu/expr/ReferenceExp;

    iget-object v1, v1, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    invoke-direct {p0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    .line 70
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    new-instance p0, Lgnu/expr/ReferenceExp;

    iget-object p1, p1, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    invoke-direct {p0, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 p1, 0x2

    aput-object p0, v1, p1

    .line 71
    new-instance p0, Lgnu/expr/ApplyExp;

    const-string v0, "kawa.lang.SyntaxTemplate"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v2, "execute"

    invoke-virtual {v0, v2, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object p0
.end method


# virtual methods
.method protected expandColonForms()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 60
    invoke-static {p1, p2}, Lkawa/standard/syntax;->makeSyntax(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .line 29
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    iget-object v0, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p2}, Lkawa/lang/Translator;->letStart()V

    .line 36
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lkawa/standard/syntax;->makeTemplateScopeMethod:Lgnu/bytecode/Method;

    sget-object v3, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    const/4 v2, 0x0

    .line 39
    sget-object v3, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v2, v3, v1}, Lkawa/lang/Translator;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lgnu/expr/Declaration;->setCanRead()V

    .line 41
    iput-object v1, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    .line 42
    invoke-virtual {p2}, Lkawa/lang/Translator;->letEnter()V

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    iget-boolean v1, p0, Lkawa/standard/syntax;->isQuasi:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, p1, v1, p2}, Lkawa/standard/syntax;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lkawa/standard/syntax;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_3
    iput-object v0, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    throw p1

    :cond_4
    :goto_1
    const-string p1, "syntax forms requires a single form"

    .line 31
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
