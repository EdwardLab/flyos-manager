.class public Lkawa/standard/define_alias;
.super Lkawa/lang/Syntax;
.source "define_alias.java"


# static fields
.field public static final define_alias:Lkawa/standard/define_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/define_alias;

    invoke-direct {v0}, Lkawa/standard/define_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    const-string v1, "define-alias"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/define_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const-string p1, "define-alias is only allowed in a <body>"

    .line 88
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 7

    .line 16
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 18
    :goto_0
    instance-of v1, p1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    .line 20
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 21
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_0
    instance-of v1, p1, Lgnu/lists/Pair;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 25
    check-cast p1, Lgnu/lists/Pair;

    .line 27
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    .line 28
    :goto_1
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_1

    .line 30
    move-object v3, v1

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 31
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 34
    :goto_2
    instance-of v4, p1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_2

    .line 36
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 37
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 39
    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_3

    instance-of v4, v1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_8

    :cond_3
    instance-of v4, p1, Lgnu/lists/Pair;

    if-eqz v4, :cond_8

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_8

    .line 43
    invoke-virtual {p4, v1, v3, p3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p3

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p3, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 45
    invoke-virtual {p3, v1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 46
    invoke-virtual {p4, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object p1

    .line 47
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    const-wide/16 v3, 0x4000

    if-eqz v0, :cond_6

    .line 49
    move-object v0, p1

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 50
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 52
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    instance-of v6, v5, Lgnu/expr/ClassExp;

    if-nez v6, :cond_4

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_5

    .line 56
    :cond_4
    invoke-virtual {p3, v2}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 57
    invoke-virtual {p3, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    .line 60
    :cond_5
    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    goto :goto_3

    .line 62
    :cond_6
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {p3, v2}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 65
    invoke-virtual {p3, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    .line 69
    :cond_7
    invoke-static {p1, p4}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    const-string v0, "gnu.mapping.Location"

    .line 70
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 72
    :goto_3
    invoke-virtual {p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 73
    invoke-virtual {p4, p3}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 74
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p3, p1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 75
    invoke-virtual {p4, v0}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V

    .line 76
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 77
    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 78
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v1

    :cond_8
    const/16 p1, 0x65

    const-string p2, "invalid syntax for define-alias"

    .line 82
    invoke-virtual {p4, p1, p2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v2
.end method
