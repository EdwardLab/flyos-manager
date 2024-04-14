.class public Lkawa/standard/module_implements;
.super Lkawa/lang/Syntax;
.source "module_implements.java"


# static fields
.field public static final module_implements:Lkawa/standard/module_implements;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/module_implements;

    invoke-direct {v0}, Lkawa/standard/module_implements;-><init>()V

    sput-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    const-string v1, "module-implements"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/module_implements;->setName(Ljava/lang/String;)V

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
    .locals 3

    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 16
    invoke-static {p1, p2}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v0

    if-gez v0, :cond_0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "improper argument list for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/standard/module_implements;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 22
    :cond_0
    new-array v1, v0, [Lgnu/bytecode/ClassType;

    :goto_0
    if-ge p2, v0, :cond_1

    .line 25
    check-cast p1, Lgnu/lists/Pair;

    .line 26
    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    aput-object v2, v1, p2

    .line 27
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v1}, Lgnu/expr/ModuleExp;->setInterfaces([Lgnu/bytecode/ClassType;)V

    const/high16 p2, 0x20000

    .line 31
    invoke-virtual {p1, p2}, Lgnu/expr/ModuleExp;->setFlag(I)V

    return-void
.end method
