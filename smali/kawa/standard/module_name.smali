.class public Lkawa/standard/module_name;
.super Lkawa/lang/Syntax;
.source "module_name.java"


# static fields
.field public static final module_name:Lkawa/standard/module_name;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/module_name;

    invoke-direct {v0}, Lkawa/standard/module_name;-><init>()V

    sput-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    const-string v1, "module-name"

    .line 10
    invoke-virtual {v0, v1}, Lkawa/standard/module_name;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 9

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    .line 16
    :goto_0
    instance-of v2, p1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 18
    move-object v1, p1

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 19
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 22
    :goto_1
    instance-of v2, p1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_2

    .line 24
    move-object v1, p1

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 25
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 31
    :cond_2
    instance-of v2, p1, Lgnu/lists/Pair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "quote"

    if-ne v5, v6, :cond_5

    .line 33
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 34
    instance-of p2, p1, Lgnu/lists/Pair;

    if-eqz p2, :cond_4

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p2, v1, :cond_4

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_4
    :goto_2
    const-string p1, "invalid quoted symbol for \'module-name\'"

    :goto_3
    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    goto :goto_6

    .line 41
    :cond_5
    instance-of v2, p1, Lgnu/lists/FString;

    if-nez v2, :cond_9

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_4

    .line 43
    :cond_6
    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_8

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_7

    sub-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_7

    .line 51
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_7
    invoke-virtual {p3, p1, v1, p2}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p1

    move-object p2, p1

    move-object p1, v2

    goto :goto_6

    :cond_8
    const-string p1, "un-implemented expression in module-name"

    goto :goto_3

    .line 42
    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object p2, v0

    :goto_6
    if-eqz v0, :cond_a

    .line 58
    iget-object p1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_a
    const/16 v0, 0x2e

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    add-int/2addr v0, v4

    .line 64
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object v0, p1

    goto :goto_7

    .line 67
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 70
    :goto_7
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 71
    iget-object v2, p3, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v2, :cond_c

    .line 72
    new-instance v2, Lgnu/bytecode/ClassType;

    invoke-direct {v2, p1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v2, p3, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_8

    .line 75
    :cond_c
    iget-object v2, p3, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 77
    iget-object v2, p3, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, p1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 78
    :cond_d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate module-name: old name: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 81
    :cond_e
    :goto_8
    iget-object p1, p3, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 82
    invoke-virtual {v1, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    if-eqz p2, :cond_10

    .line 86
    new-instance p1, Lgnu/expr/QuoteExp;

    iget-object v0, p3, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-direct {p1, v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    invoke-virtual {p2, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/32 v2, 0x1004000

    .line 87
    invoke-virtual {p2, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    iget-object p1, v1, Lgnu/expr/ModuleExp;->outer:Lgnu/expr/ScopeExp;

    if-nez p1, :cond_f

    const-wide/16 v0, 0x800

    .line 89
    invoke-virtual {p2, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 90
    :cond_f
    invoke-virtual {p2, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 91
    sget-object p1, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 93
    :cond_10
    invoke-virtual {p3}, Lkawa/lang/Translator;->mustCompileHere()V

    :goto_9
    return-void
.end method
