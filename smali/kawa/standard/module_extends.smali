.class public Lkawa/standard/module_extends;
.super Lkawa/lang/Syntax;
.source "module_extends.java"


# static fields
.field public static final module_extends:Lkawa/standard/module_extends;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/module_extends;

    invoke-direct {v0}, Lkawa/standard/module_extends;-><init>()V

    sput-object v0, Lkawa/standard/module_extends;->module_extends:Lkawa/standard/module_extends;

    const-string v1, "module-extends"

    .line 10
    invoke-virtual {v0, v1}, Lkawa/standard/module_extends;->setName(Ljava/lang/String;)V

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
    .locals 0

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p2

    .line 16
    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p1}, Lgnu/expr/ModuleExp;->setSuperType(Lgnu/bytecode/ClassType;)V

    const/high16 p1, 0x20000

    .line 17
    invoke-virtual {p2, p1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    return-void
.end method
