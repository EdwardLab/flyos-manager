.class public Lkawa/standard/define_unit;
.super Lkawa/lang/Syntax;
.source "define_unit.java"


# static fields
.field public static final define_base_unit:Lkawa/standard/define_unit;

.field public static final define_unit:Lkawa/standard/define_unit;


# instance fields
.field base:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/define_unit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    const-string v1, "define-unit"

    .line 15
    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/define_unit;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    const-string v1, "define-base-unit"

    .line 17
    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 24
    iput-boolean p1, p0, Lkawa/standard/define_unit;->base:Z

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6

    .line 75
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 79
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_6

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 83
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Symbol;

    .line 84
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gnu.math.Unit"

    .line 85
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 87
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    instance-of v4, v3, Lgnu/expr/QuoteExp;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/math/Unit;

    if-eqz v4, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    iget-boolean v3, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v3, :cond_3

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_2

    .line 95
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    :cond_2
    invoke-static {v1, p2}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object p1

    .line 98
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_4

    const-string p1, "missing value for define-unit"

    .line 103
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 104
    :cond_4
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 105
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    .line 107
    instance-of p2, p1, Lgnu/expr/QuoteExp;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lgnu/expr/QuoteExp;

    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of v3, p2, Lgnu/math/Quantity;

    if-eqz v3, :cond_5

    .line 110
    new-instance v3, Lgnu/expr/QuoteExp;

    check-cast p2, Lgnu/math/Quantity;

    invoke-static {v1, p2}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object p1

    invoke-direct {v3, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x2

    new-array p2, p2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    .line 115
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, p2, v3

    aput-object p1, p2, v5

    const-string p1, "make"

    .line 117
    invoke-static {v2, p1, p2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    .line 121
    :goto_0
    new-instance p1, Lgnu/expr/SetExp;

    invoke-direct {p1, v0, v3}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 122
    invoke-virtual {p1, v5}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 123
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-object p1

    .line 81
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid syntax for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/define_unit;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 6

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 33
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 34
    instance-of v2, v1, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v2, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v2, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/16 v3, 0x77

    .line 38
    invoke-virtual {p3, v2, v3, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 39
    invoke-virtual {p4, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 40
    invoke-static {v2, v0}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    const-wide/16 v3, 0x4000

    .line 41
    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 42
    instance-of p3, p3, Lgnu/expr/ModuleExp;

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {v2, p4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 45
    :cond_0
    iget-boolean p3, p0, Lkawa/standard/define_unit;->base:Z

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p3, v4, :cond_1

    .line 46
    move-object p3, v3

    check-cast p3, Ljava/lang/String;

    invoke-static {v1, v3}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v3

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lgnu/lists/Pair;

    if-eqz p3, :cond_3

    .line 49
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgnu/lists/Pair;

    invoke-virtual {p3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p3

    .line 50
    iget-boolean v4, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v4, :cond_2

    instance-of v5, p3, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 58
    instance-of v4, p3, Lgnu/math/Quantity;

    if-eqz v4, :cond_3

    .line 59
    check-cast p3, Lgnu/math/Quantity;

    invoke-static {v1, p3}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v3

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 62
    new-instance p3, Lgnu/expr/QuoteExp;

    invoke-direct {p3, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 63
    :cond_4
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, v2, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    .line 64
    invoke-static {p1, p0, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return p4

    :cond_5
    const/16 p1, 0x65

    const-string p2, "missing name in define-unit"

    .line 69
    invoke-virtual {p4, p1, p2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
