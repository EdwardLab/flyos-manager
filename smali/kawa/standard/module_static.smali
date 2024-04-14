.class public Lkawa/standard/module_static;
.super Lkawa/lang/Syntax;
.source "module_static.java"


# static fields
.field public static final module_static:Lkawa/standard/module_static;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/module_static;

    invoke-direct {v0}, Lkawa/standard/module_static;-><init>()V

    sput-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    const-string v1, "module-static"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/module_static;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 9

    .line 16
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 17
    instance-of p2, p3, Lgnu/expr/ModuleExp;

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-nez p2, :cond_0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not at module level"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v0

    .line 22
    :cond_0
    move-object p2, p3

    check-cast p2, Lgnu/expr/ModuleExp;

    .line 23
    instance-of v2, p1, Lgnu/lists/Pair;

    const v3, 0x8000

    const/high16 v4, 0x10000

    if-eqz v2, :cond_2

    move-object v5, p1

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 27
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, p3, :cond_1

    .line 28
    invoke-virtual {p2, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto/16 :goto_2

    .line 30
    :cond_1
    invoke-virtual {p2, v3}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x27

    if-eqz v2, :cond_4

    .line 32
    move-object v2, p1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_4

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "quote"

    invoke-virtual {p4, v7, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 37
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    sget-object p3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, p3, :cond_3

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lgnu/mapping/SimpleSymbol;

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "init-run"

    if-ne p1, p3, :cond_3

    .line 42
    invoke-virtual {p2, v3}, Lgnu/expr/ModuleExp;->setFlag(I)V

    const/high16 p1, 0x40000

    .line 43
    invoke-virtual {p2, p1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_2

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid quoted symbol for \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v5

    .line 53
    :cond_4
    invoke-virtual {p2, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 56
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v2, :cond_8

    .line 58
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_7

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_5

    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    .line 65
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    const-wide/16 v7, 0x200

    .line 66
    invoke-virtual {v2, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 67
    invoke-static {v2, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    :cond_6
    const-wide/16 v7, 0x800

    .line 68
    invoke-virtual {v2, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 69
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid syntax in \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return v5

    .line 72
    :cond_8
    :goto_2
    invoke-virtual {p2, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, v3}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "inconsistent module-static specifiers"

    .line 74
    invoke-virtual {p4, v1, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_9
    return v0
.end method
