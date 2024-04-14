.class public Lgnu/kawa/lispexpr/ResolveNamespace;
.super Lkawa/lang/Syntax;
.source "ResolveNamespace.java"


# static fields
.field public static final resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

.field public static final resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;


# instance fields
.field resolvingQName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v1, "$resolve-namespace$"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 14
    new-instance v2, Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v3, "$resolve-qname"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 25
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ResolveNamespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-boolean p2, p0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .line 29
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p2, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[default-element-namespace]"

    if-ne v0, v1, :cond_0

    .line 36
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x65

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown namespace prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 41
    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 42
    invoke-static {v0, v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    .line 45
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    if-eqz p2, :cond_2

    .line 47
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 48
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance p2, Lgnu/expr/QuoteExp;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-direct {p2, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 52
    :cond_2
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
