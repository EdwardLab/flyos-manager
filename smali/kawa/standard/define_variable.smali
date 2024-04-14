.class public Lkawa/standard/define_variable;
.super Lkawa/lang/Syntax;
.source "define_variable.java"


# static fields
.field public static final define_variable:Lkawa/standard/define_variable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkawa/standard/define_variable;

    invoke-direct {v0}, Lkawa/standard/define_variable;-><init>()V

    sput-object v0, Lkawa/standard/define_variable;->define_variable:Lkawa/standard/define_variable;

    const-string v1, "define-variable"

    .line 12
    invoke-virtual {v0, v1}, Lkawa/standard/define_variable;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .line 43
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 47
    instance-of v0, p1, Lgnu/lists/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 49
    check-cast p1, Lgnu/lists/Pair;

    .line 50
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 51
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_3

    instance-of v2, v0, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, v0, Lgnu/expr/Declaration;

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 56
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_1

    .line 59
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_2

    .line 60
    :cond_1
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 52
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/standard/define_variable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is only allowed in a <body>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    move-object p1, v1

    move-object v0, p1

    :goto_2
    if-nez v0, :cond_5

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid syntax for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/define_variable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    .line 67
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p1

    .line 68
    :cond_6
    new-instance p2, Lgnu/expr/SetExp;

    invoke-direct {p2, v0, p1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    const/4 v2, 0x1

    .line 69
    invoke-virtual {p2, v2}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 70
    invoke-virtual {p2, v2}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {p2, v0}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 75
    iget-object v2, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p1

    .line 78
    :goto_3
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_8
    return-object p2
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 6

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    return p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 20
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 21
    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_3

    .line 23
    :cond_1
    invoke-virtual {p3, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v2, 0x65

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate declaration for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v2, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 26
    :cond_2
    invoke-virtual {p3, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p3

    .line 27
    invoke-virtual {p4, p3}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    const/4 p4, 0x0

    .line 28
    invoke-virtual {p3, p4}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 29
    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->setPrivate(Z)V

    const-wide/32 v1, 0x10040000

    .line 30
    invoke-virtual {p3, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 32
    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 33
    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 34
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p4

    invoke-static {v0, p3, p4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    .line 35
    invoke-static {p1, p0, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 37
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v3
.end method
