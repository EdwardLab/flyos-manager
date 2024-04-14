.class public Lkawa/standard/define_class;
.super Lkawa/lang/Syntax;
.source "define_class.java"


# static fields
.field public static final define_class:Lkawa/standard/define_class;

.field public static final define_simple_class:Lkawa/standard/define_class;


# instance fields
.field isSimple:Z

.field objectSyntax:Lkawa/standard/object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lkawa/standard/define_class;

    const-string v1, "define-class"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_class:Lkawa/standard/define_class;

    .line 11
    new-instance v0, Lkawa/standard/define_class;

    const-string v1, "define-simple-class"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_simple_class:Lkawa/standard/define_class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 26
    sget-object p1, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    iput-object p1, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 27
    iput-boolean p2, p0, Lkawa/standard/define_class;->isSimple:Z

    return-void
.end method

.method constructor <init>(Lkawa/standard/object;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/define_class;->isSimple:Z

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 3

    .line 100
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    .line 103
    move-object p1, v0

    check-cast p1, Lgnu/lists/Pair;

    .line 104
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lgnu/expr/Declaration;

    if-nez v1, :cond_0

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/standard/define_class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be used in <body>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    check-cast v0, Lgnu/expr/Declaration;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 109
    :goto_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    check-cast v1, Lgnu/expr/ClassExp;

    .line 110
    iget-object v2, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 111
    new-instance p1, Lgnu/expr/SetExp;

    invoke-direct {p1, v0, v1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    const/4 p2, 0x1

    .line 112
    invoke-virtual {p1, p2}, Lgnu/expr/SetExp;->setDefining(Z)V

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 10

    .line 33
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    :goto_0
    instance-of v2, v0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 37
    move-object v1, v0

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 38
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v2, v0, Lgnu/lists/Pair;

    if-nez v2, :cond_1

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    return p1

    .line 42
    :cond_1
    check-cast v0, Lgnu/lists/Pair;

    .line 43
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 44
    :goto_1
    instance-of v3, v2, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_2

    .line 46
    move-object v1, v2

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 47
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p4, v2}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    instance-of v3, v2, Ljava/lang/String;

    const/16 v4, 0x65

    const/4 v5, 0x0

    if-nez v3, :cond_3

    instance-of v3, v2, Lgnu/mapping/Symbol;

    if-nez v3, :cond_3

    const-string p1, "missing class name"

    .line 52
    invoke-virtual {p4, v4, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v5

    .line 55
    :cond_3
    invoke-virtual {p4, v2, v1, p3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p3

    .line 56
    instance-of v3, v0, Lgnu/lists/PairWithPosition;

    if-eqz v3, :cond_4

    .line 57
    move-object v3, v0

    check-cast v3, Lgnu/lists/PairWithPosition;

    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 58
    :cond_4
    new-instance v3, Lgnu/expr/ClassExp;

    iget-boolean v6, p0, Lkawa/standard/define_class;->isSimple:Z

    invoke-direct {v3, v6}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 59
    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/32 v6, 0x20004000

    .line 60
    invoke-virtual {p3, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 61
    iget-boolean v6, p0, Lkawa/standard/define_class;->isSimple:Z

    if-eqz v6, :cond_5

    sget-object v6, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_5
    sget-object v6, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    :goto_2
    invoke-virtual {p3, v6}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 62
    invoke-virtual {p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 64
    instance-of v6, v2, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_6

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-le v6, v7, :cond_7

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3c

    if-ne v7, v9, :cond_7

    sub-int/2addr v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3e

    if-ne v7, v9, :cond_7

    .line 68
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_7
    invoke-virtual {v3, v2}, Lgnu/expr/ClassExp;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_4
    instance-of v2, v0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_8

    .line 74
    move-object v1, v0

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 75
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 77
    :cond_8
    instance-of v2, v0, Lgnu/lists/Pair;

    if-nez v2, :cond_9

    const-string p1, "missing class members"

    .line 79
    invoke-virtual {p4, v4, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v5

    .line 82
    :cond_9
    check-cast v0, Lgnu/lists/Pair;

    .line 83
    invoke-virtual {p4}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    if-eqz v1, :cond_a

    .line 85
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {p4, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 86
    :cond_a
    iget-object v4, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    invoke-virtual {v4, v0, v3, p4}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_b

    .line 88
    invoke-virtual {p4, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    :cond_b
    if-nez v3, :cond_c

    return v5

    .line 91
    :cond_c
    invoke-static {v0, p3, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 92
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v8
.end method
